#include <8051.h>
#include <stdbool.h>
#include <math.h>

#include "temperature_control_unit.h"

/**
 *
 * TODO List
 * TODO:  Double check if we need to wait for ACK when sending bytes
 */

unsigned char number_table[] = {
	0x3F, /* 0 */
	0x06, /* 1 */
	0x5B, /* 2 */
	0x4F, /* 3 */
	0x66, /* 4 */
	0x6D, /* 5 */
	0x7D, /* 6 */
	0x07, /* 7 */
	0x7F, /* 8 */
	0x6F, /* 9 */
	0x77, /* a */
	0x7C, /* b */
	0x39, /* C */
	0x5E, /* d */
	0x79, /* E */
	0x71, /* F */
};

#define DISPLAY_BUFFER_SIZE 10
unsigned char display_buffer[] = {
	0x00, /* unsigned char 1 and period spot */
	0x00, /* not used */
	0x00, /* unsigned character 2 and period */
	0x00, /* not used */
	0x00, /* colon (0xFF for colon on, 0x00 for colon off) */
	0x00, /* not used */
	0x00, /* unsigned char 3 and period */
	0x00, /* not used */
	0x00, /* unsigned char 4 and period */
	0x00  /* not used */
};

//|   0   |  0   |   0  |   0   |
//| Green | Blue | Black| White |
//| BACK  | SET  | DOWN | UP    |
unsigned char currently_pressed_buttons = 0x0;

//|   0   |  0   |   0  |   0   |
//| Green | Blue | Black| White |
//| BACK  | SET  | DOWN | UP    |
unsigned char debounced_buttons = 0x0;

unsigned char display_brightness = FULL_BRIGHTNESS; //Defaults to FULL THROTTLE

// Available user modes:
//
// MODE_DISPLAY_TEMPERATURE     0x00;
// MODE_CONFIGURE_TEMP_HIGH     0x01;
// MODE_CONFIGURE_TEMP_LOW      0x02;
// MODE_CONFIGURE_TEMP_UNIT     0x03;
// MODE_CONFIGURE_TEMP_ROUNDING 0x04;
// MODE_CONFIGURE_BRIGHTNESS    0x05;
unsigned char current_user_mode = MODE_DISPLAY_TEMPERATURE; 

int user_setting_temp_high_threshold = 40; //Degress celsius
int user_setting_temp_low_threshold  = 0; //Degress celsius

// This method assumes a 12MHz oscillator
// Most operations on the 8051 take 1/12 oscillator periods, so we'll use that as a basis for the delay
// All arithmetic instructions execute in 1us (except increment data pointer)
// However, since we're realistically working with numbers outside of the range of the 8-bit BCD format
// there *are definitely* going to be more clock cycles used (possibly up to 10x or more) when waiting
// for operations on values greater than 256
// Check the assembly output of the keil (assumed) compiler if exact numbers of operations are needed
void delay(unsigned long min_clock_cycles_to_wait)
{
	int i;
	for(i = 0;i < min_clock_cycles_to_wait; i++);
}

// Idea taken from: https://stackoverflow.com/questions/44308679/8051-i2c-bitbang
// It's basically just a small delay to ensure that the clock rate is 
// no faster than 1/5th of the uC clock rate (500kHz/5 = 100kH, with a 12MHz oscillator)
// Addition is a single clock cycle operation on the 8051
// The HT16K33 controller has a maximum min-set-up time of 1.3us and the DS16 4.7us, so we need at least 5us
// (realistically, this whole operation will take slightly longer than 5us)
void i2c_delay(void)
{
	unsigned int i = 0;
	for (i = 0; i < 5; i++);
}

void i2c_sda_write(unsigned char sfr_address, unsigned char value)
{
	switch (sfr_address)
	{
		case DISPLAY_SFR: P2_0 = value; break;
		case TEMP_SENSOR_SFR: P3_5 = value; break;
		default:break;
	}
}

unsigned char i2c_sda_read(unsigned char sfr_address)
{
	unsigned char result = 0;
	switch (sfr_address)
	{
		case DISPLAY_SFR: result = (unsigned char) P2_0; break;
		case TEMP_SENSOR_SFR: result = (unsigned char) P3_5; break;
		default:break;
	}
	return result;
}

void i2c_scl_write(unsigned char sfr_address, unsigned char value)
{
	switch (sfr_address)
	{
		case DISPLAY_SFR: P2_1 = value; break;
		case TEMP_SENSOR_SFR: P3_6 = value; break;
		default:break;
	}
	i2c_delay();
}

void i2c_start(unsigned char sfr_address)
{
	i2c_scl_write(sfr_address, 0);
	i2c_sda_write(sfr_address, 1);
	i2c_scl_write(sfr_address, 1);
	i2c_sda_write(sfr_address, 0);
	i2c_scl_write(sfr_address, 0);
}
 
void i2c_stop(unsigned char sfr_address)
{
	i2c_scl_write(sfr_address, 0);
	i2c_sda_write(sfr_address, 0);
	i2c_scl_write(sfr_address, 1);
	i2c_sda_write(sfr_address, 1);
}
 
unsigned char i2c_send_byte(unsigned char sfr_address, unsigned char data_out)
{
	unsigned char i, ack_bit;
	for (i = 0; i < 8; i++) {
		i2c_scl_write(sfr_address, 0);
		if ((data_out & 0x80) == 0) {
			i2c_sda_write(sfr_address, 0);
		} else {
			i2c_sda_write(sfr_address, 1);
		}
		i2c_scl_write(sfr_address, 1);
		data_out<<=1;
	}
	i2c_scl_write(sfr_address, 0);
	i2c_sda_write(sfr_address, 1);
	i2c_scl_write(sfr_address, 1);
	ack_bit = i2c_sda_read(sfr_address);
	i2c_scl_write(sfr_address, 0);

	return ack_bit;
}
 
unsigned char i2c_read_byte(unsigned char sfr_address)
{
	unsigned char i, received = 0;
	for (i = 0; i < 8; i++) {
		i2c_scl_write(sfr_address, 1);
		if(i2c_sda_read(sfr_address))
			received |= 1;
		if(i < 7)
			received <<= 1;
		i2c_scl_write(sfr_address, 0);
	}
	return received;
}

// Reads the 2-byte values from the temperature sensor
// We can achieve greater than 0.5 degree C resolution by truncating the LSB
// from the read value and then reading COUNT_REMAIN value using the
// Read Counter command.
// The Read Slopw command should then be issued to obtain the COUNT_PER_C
// value.  The higher resolution temp can be calculated by:
//
// TEMP = TEMP_READ - 0.25 + (COUNT_PER_C - COUNT_REMAIN) / COUNT_PER_C
float read_temp_sensor(void)
{
	unsigned char address_byte = 0x91;

	unsigned long millisecond = 1000;

	//TO NOTE, from the sdcc manual:
	//> SDCC supports (single precision 4 bytes) floating point numbers; the format is somewhat similar to IEEE, but
	//> it is not IEEE; in particular, denormalized floating -point numbers are not supported. The floating point support
	//> routines are derived from gcc’s floatlib.c
	float temperature;

	//Slope and count_remaining are going to be implicitly cast into floats from unsigned char
	float slope;
	float count_remaining;

	write_temp_sensor_command(START_TEMP_SENSOR_CONVERSION);
	i2c_stop(TEMP_SENSOR_SFR);

	//Temperature conversion time is almost a full second_byte (750ms) and may take up to a full second_byte
	delay(1000*millisecond);//multiplication... this wait  maaay be (read: probably will be) longer than 1000ms

	write_temp_sensor_command(READ_TEMPERATURE);
	
	// A second_byte start signal is required for reading after sending the write command
	i2c_start(TEMP_SENSOR_SFR);
	i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	temperature = i2c_read_byte(TEMP_SENSOR_SFR);
	//Since we're going to perform the calculation for higher precision (same accuracy)
	//we basically just throw this second byte away (even then it's still only the first bit we care about)
	i2c_read_byte(TEMP_SENSOR_SFR);
	i2c_stop(TEMP_SENSOR_SFR);

	write_temp_sensor_command(READ_COUNT_REMAIN);
	i2c_start(TEMP_SENSOR_SFR);
	i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	count_remaining = i2c_read_byte(TEMP_SENSOR_SFR);
	i2c_stop(TEMP_SENSOR_SFR);
	
	write_temp_sensor_command(READ_SLOPE);
	i2c_start(TEMP_SENSOR_SFR);
	i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	slope = i2c_read_byte(TEMP_SENSOR_SFR);
	i2c_stop(TEMP_SENSOR_SFR);

	//More notes about this conversion available here:
	// https://casper.berkeley.edu/svn/trunk/roach/sw/linux/Documentation/hwmon/ds1621
	temperature = (float) (temperature - (0.25 + (slope - count_remaining) / slope));
	
//	if (second & 0x80) //MSB is set if it's fractional
//	{
//		if (temperature < 0)
//			temperature -= 0.50;
//		else
//			temperature += 0.50;
//	}
	
	return temperature;
}

void clear_display_buffer(void)
{
	int i;
	for (i = 0; i < DISPLAY_BUFFER_SIZE; i++)
	{
		display_buffer[i] = 0x00;
	}
}

void write_to_display(void)
{
	unsigned char address = 0x70 << 1; 
	unsigned char write_bit = 0x00; //LSB is 0 when writing over i2c (or twi)
	unsigned char address_with_write = address | write_bit;

	unsigned char i;

	i2c_start(DISPLAY_SFR);
	i2c_send_byte(DISPLAY_SFR, address_with_write);
	/*
		A byte write operation requires a START condition,
		slave address with R/W bit, a valid Command code /
		Register address, a Data and a STOP condition.
	*/
	/*
		When an address is provided, the address is stored and incremented
		by the lcd controller on its own
	*/
	i2c_send_byte(DISPLAY_SFR, 0x00); //0x00 is the starting address of the 7-set disp
	for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
		i2c_send_byte(DISPLAY_SFR, display_buffer[i]);
	}
	i2c_stop(DISPLAY_SFR);
}

//Writes a single byte to send a command to the display
void write_display_command(unsigned char command_byte)
{
	// The address is shifted left once because the address is only 7 bits,
	// followed by a read/write bit.
	// So in actuality, with the read/write bit being appended, it's value is
	// 0xE0 or 0xE1 for write/read respectively.
	// but the ACTUAL i2c address is 0x70
	unsigned char address = 0x70 << 1; 
	unsigned char write_bit = 0x00; //LSB is 0 when writing over i2c (or twi)
	unsigned char address_with_write = address | write_bit;

	i2c_start(DISPLAY_SFR);
	i2c_send_byte(DISPLAY_SFR, address_with_write);
	/*
		A byte write operation requires a START condition,
		slave address with R/W bit, a valid Command code /
		Register address, a Data and a STOP condition.
	*/
	i2c_send_byte(DISPLAY_SFR, command_byte);
	i2c_stop(DISPLAY_SFR);
}

void write_temp_sensor_config(unsigned char config)
{
	write_temp_sensor_command(ACCESS_TEMP_SENSOR_CONFIG);
	i2c_send_byte(TEMP_SENSOR_SFR, config);
	i2c_stop(TEMP_SENSOR_SFR);
}

//Writes a single byte to send a command to the temp sensor
void write_temp_sensor_command(unsigned char command_byte)
{
/*
	Writing to the E^2 requires a maximum of 10ms at room temperature. 
	After issuing a write command, no further writes should 
	be requested for at least 10ms.*
 */
	unsigned char control_byte = 0x90;
	unsigned char write_bit = 0x00; 
	// Keeping this for now just to show that the write bit (LSB) is 0
	// on purpose (will remove later)
	unsigned char address_with_write = control_byte | write_bit;
	/*
	The DS1621 I2C address is 000 (since there are no other temp sensors).
	These three bits (000) are the LEAST significant bits of the slave
	(the temp sensor) address.  They're 000 since all of the address lines
	are tied to ground.

	A control byte is the first byte received following the start 
	condition from the MASTER (the AT89S52)

	A control byte is a 4-bit control code (1001 for the DS1621) and 3 bits 
	for the address (A2, A1, A0), with the last bit being a 1 for a read 
	and 0 for a write:

		1001 0001  <-- Read operation from device 000
		1001 0000  <-- Write operation to device 000

	After receiving 1001 000x, the slave device outputs an ACK 
	signal on the SDA line
	*/

	i2c_start(TEMP_SENSOR_SFR);
	i2c_send_byte(TEMP_SENSOR_SFR, address_with_write);
	i2c_send_byte(TEMP_SENSOR_SFR, command_byte);
}

void update_displayed_temperature(float temperature)
{
	unsigned char first_digit, second_digit, third_digit, fourth_digit;
	float temp_fraction_part, temp_integer_part= 0.0;

	clear_display_buffer();

	temp_fraction_part = modff(temperature, &temp_integer_part);
	temp_fraction_part *= 100;

	if (temperature >= 100) //I sure hope not
	{
		first_digit  = number_table[1];
		second_digit = number_table[(int)temp_integer_part % 10];
		third_digit  = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
		fourth_digit = number_table[(int)temp_fraction_part/ 10];
	} 
	else if (temperature < 0) 
	{
		// Fractional part should always be positive for display
		temp_fraction_part*= -1;
		first_digit = HYPHEN_CHARACTER;
		if (temperature <= -10)
		{
			second_digit = number_table[(int)temp_integer_part / 10];
			third_digit  = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
			fourth_digit = number_table[(int)temp_fraction_part / 10];
		} else
		{ 
			second_digit = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
			third_digit  = number_table[(int)temp_fraction_part / 10];
			fourth_digit = number_table[(int)temp_fraction_part % 10];
		}
	}
	else
	{
		first_digit  = number_table[(int)temp_integer_part / 10];
		second_digit = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
		third_digit  = number_table[(int)temp_fraction_part / 10];
		fourth_digit = number_table[(int)temp_fraction_part % 10];
	}

		display_buffer[DISPLAY_FIRST_DIGIT]  = first_digit;
		display_buffer[DISPLAY_SECOND_DIGIT] = second_digit;
		display_buffer[DISPLAY_THIRD_DIGIT]  = third_digit;
		display_buffer[DISPLAY_FOURTH_DIGIT] = fourth_digit;
}

void updated_displayed_setting_selection(unsigned char selected_setting_mode)
{
	clear_display_buffer();

	switch(selected_setting_mode)
	{
	case MODE_CONFIGURE_TEMP_HIGH:
		display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_H;
		display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_I;
		break;
	case MODE_CONFIGURE_TEMP_LOW:
		display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_L;
		display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_O;
		break;
	case MODE_CONFIGURE_TEMP_UNIT:
		display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_U;
		display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_n;
		break;
	case MODE_CONFIGURE_TEMP_ROUNDING:
		display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_r;
		display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_n;
		display_buffer[DISPLAY_THIRD_DIGIT]  = LETTER_d;
		break;
	case MODE_CONFIGURE_BRIGHTNESS:
		display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_b;
		display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_r;
		break;
	default: return;
	}
}

void read_buttons(void)
{
	unsigned char white = BUTTON_WHITE;
	unsigned char black = BUTTON_BLACK;
	unsigned char blue  = BUTTON_BLUE;
	unsigned char green = BUTTON_GREEN;
	
	currently_pressed_buttons |= BUTTON_UP&((!white)<<0);
	currently_pressed_buttons |= BUTTON_DOWN&((!black)<<1);
	currently_pressed_buttons |= BUTTON_SET&((!blue) <<2);
	currently_pressed_buttons |= BUTTON_BACK&((!green)<<3);
}

void main(void)
{
	bool update_display = true;

	unsigned char temp_sensor_config = 0x00;

	unsigned char currently_picked_mode = MODE_CONFIGURE_TEMP_HIGH;

	float current_temp = 0, last_temp = 0;
	
	// Wait a tic for stuff to boot
	delay(100); 

	// Display setup
	write_display_command(ENABLE_DISPLAY_OSCILLATOR);
	write_display_command(ENABLE_DISPLAY);
	write_display_command(SET_DISPLAY_BRIGHTNESS|HALF_BRIGHTNESS);

	// Temp sensor setup
	temp_sensor_config |= TEMP_SENSOR_OUTPUT_HIGH;
	temp_sensor_config |= TEMP_SENSOR_ONE_SHOT_CONVERSION;

	write_temp_sensor_config(temp_sensor_config);

	// We need a loop in main, otherwise we do not have deterministic looping
	// behavior.  The program is re-executed once the instruction pointer has
	// run to the "end".  In other words, all global vars will be reset, and
	// the program begins execution as though it were being loaded and run
	// for the first time again.
	while (true)
	{
		read_buttons();
		switch(current_user_mode)
		{
		case MODE_DISPLAY_TEMPERATURE:
			if (currently_pressed_buttons & BUTTON_SET) 
			{
				current_user_mode = MODE_PICK_SETTING;
				continue;
			}
			current_temp = read_temp_sensor();
			if (last_temp != current_temp)
			{
				update_displayed_temperature(current_temp);
				last_temp = current_temp;
				update_display = true;
			}
			break;
		case MODE_CONFIGURE_TEMP_HIGH    :
			if (currently_pressed_buttons & BUTTON_SET)
			{
				current_user_mode = MODE_DISPLAY_TEMPERATURE;
			} 
			else if (currently_pressed_buttons & BUTTON_BACK)
			{
				current_user_mode = MODE_PICK_SETTING;
			}
			update_displayed_temperature(user_setting_temp_high_threshold);
			update_display = true;
			break;
		case MODE_CONFIGURE_TEMP_LOW     :
			if (currently_pressed_buttons & BUTTON_SET)
			{
				current_user_mode = MODE_DISPLAY_TEMPERATURE;
			} 
			else if (currently_pressed_buttons & BUTTON_BACK)
			{
				current_user_mode = MODE_PICK_SETTING;
			}
			update_displayed_temperature(user_setting_temp_low_threshold);
			update_display = true;
			break;
		case MODE_CONFIGURE_TEMP_UNIT    :
			break;
		case MODE_CONFIGURE_TEMP_ROUNDING:
			break;
		case MODE_CONFIGURE_BRIGHTNESS   :
			break;
		case MODE_PICK_SETTING:
			if (BUTTON_DOWN & currently_pressed_buttons & debounced_buttons)
			{
				--currently_picked_mode;
				if (currently_picked_mode < MODE_CONFIGURE_TEMP_HIGH) 
				{
					currently_picked_mode = MODE_CONFIGURE_BRIGHTNESS;
					updated_displayed_setting_selection(currently_picked_mode);
				}
				debounced_buttons |= BUTTON_DOWN;
			} else {
				debounced_buttons &= (!BUTTON_DOWN);
			}
			if (BUTTON_UP & currently_pressed_buttons & debounced_buttons)
			{
				++currently_picked_mode;
				if (currently_picked_mode > MODE_CONFIGURE_BRIGHTNESS) 
				{
					currently_picked_mode = MODE_CONFIGURE_TEMP_HIGH;
					updated_displayed_setting_selection(currently_picked_mode);
				}
				debounced_buttons |= BUTTON_UP;
			} else {
				debounced_buttons &= (!BUTTON_UP);
			}
			if (currently_pressed_buttons & BUTTON_SET & debounced_buttons)
			{
				current_user_mode = currently_picked_mode;
			} 
			else if (currently_pressed_buttons & BUTTON_BACK & debounced_buttons)
			{
				current_user_mode = MODE_DISPLAY_TEMPERATURE;
			}

			update_display = true;
			break;
		default: 
			current_user_mode = MODE_DISPLAY_TEMPERATURE; 
			update_display = true; 
			break;
		}

		if (update_display) 
		{
			write_to_display();
			update_display = false;
		}
	}
}

