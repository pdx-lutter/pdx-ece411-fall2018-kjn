#include <8051.h>
#include <stdbool.h>
#include <math.h>

// Unfortuantely, because of how memory is mapped in the 8051, the
// special registers are _not_ indirectly accessibly by memory
// They're only directly accessible.  This means we need to set up something
// of a roundabout method of referring to them when writing/reading
#define SDA P2_0 //Turn on LCD controller
#define SCL P2_1 //Display on, no blinking
#define DISPLAY_SFR 0xA0

#define ENABLE_DISPLAY_OSCILLATOR 0x21 //Turn on LCD controller
#define ENABLE_DISPLAY 0x81 //Display on, no blinking
#define DISABLE_DISPLAY 0x80 //Display off
#define FULL_BRIGHTNESS 0xEF //Turns the brightness all of the way up

#define TEMP_SENSOR_SFR 0xB0

#define READ_TEMPERATURE 0xAA
#define READ_COUNT_REMAIN 0xA8
#define READ_SLOPE 0xA9
#define START_TEMP_SENSOR_CONVERSION 0xEE
#define STOP_TEMP_SENSOR_CONVERSION 0x22

#define ACCESS_HIGH_TEMP_LIMIT_REGISTER 0xA1
#define ACCESS_LOW_TEMP_LIMIT_REGISTER 0xA2
#define ACCESS_TEMP_SENSOR_CONFIG 0xAC

//Config setting bits for the temperature sensor
#define TEMP_SENSOR_OUTPUT_HIGH 0x02
#define TEMP_SENSOR_CONTINUOUS_CONVERSION 0x00
#define TEMP_SENSOR_ONE_SHOT_CONVERSION 0x01

#define PERIOD_CHARACTER 0x80
#define LETTER_R 0x50
#define LETTER_C 0x39

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
	0x00, /* char 1 and period spot */
	0x00, /* not used */
	0x00, /* character 2 and period */
	0x00, /* not used */
	0x00, /* colon (0xFF for colon on, 0x00 for colon off) */
	0x00, /* not used */
	0x00, /* char 3 and period */
	0x00, /* not used */
	0x00, /* char 4 and period */
	0x00  /* not used */
};
// 0x1, 0x3, 0x5, 0x7, 0x9 are not used


void write_temp_sensor_command(unsigned char command_byte);
void clear_display_buffer(void);
void write_display(void);

// This method assumes a 12MHz oscillator
// Most operations on the 8051 take 1/12 oscillator periods, so we'll use that as a basis for the delay
// All arithmetic instructions execute in 1us (except increment data pointer)
// However, since we're realistically working with numbers outside of the range of the 8-bit BCD format
// there *are definitely* going to be more clock cycles used (possibly up to 10x or more) when waiting
// for operations on values greater than 256
// Check the assembly output of the keil (assumed) compiler if exact numbers of operations are needed
void delay(int min_clock_cycles_to_wait)
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
void i2c_delay()
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
	}
}

unsigned char i2c_sda_read(unsigned char sfr_address)
{
	unsigned char result = 0;
	switch (sfr_address)
	{
		case DISPLAY_SFR: result = P2_0; break;
		case TEMP_SENSOR_SFR: result = P3_5; break;
	}
	return result;
}

void i2c_scl_write(unsigned char sfr_address, unsigned char value)
{
	switch (sfr_address)
	{
		case DISPLAY_SFR: P2_1 = value; break;
		case TEMP_SENSOR_SFR: P3_6 = value; break;
	}
	i2c_delay();
}

unsigned char i2c_scl_read(unsigned char sfr_address)
{
	unsigned char result = 0;
	switch (sfr_address)
	{
		case DISPLAY_SFR: result = P2_1; break;
		case TEMP_SENSOR_SFR: result = P3_6; break;
	}
	i2c_delay();
	return result;
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
	unsigned char ack = 0;

	unsigned long millisecond = 1000;

	//TO NOTE, from the sdcc manual:
	//> SDCC supports (single precision 4 bytes) floating point numbers; the format is somewhat similar to IEEE, but
	//> it is not IEEE; in particular, denormalized floating -point numbers are not supported. The floating point support
	//> routines are derived from gcc’s floatlib.c
	float temperature = 0.0;

	//Slope and count_remaining are going to be implicitly cast into floats from unsigned char
	float slope = 0x00;
	float count_remaining = 0x00;

	write_temp_sensor_command(START_TEMP_SENSOR_CONVERSION);
	i2c_stop(TEMP_SENSOR_SFR);

	//Temperature conversion time is almost a full second_byte (750ms) and may take up to a full second_byte
	delay(1000*millisecond);//multiplication... this wait  maaay be (read: probably will be) longer than 1000ms

	write_temp_sensor_command(READ_TEMPERATURE);
	
	// A second_byte start signal is required for reading after sending the write command
	i2c_start(TEMP_SENSOR_SFR);
	ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	temperature = i2c_read_byte(TEMP_SENSOR_SFR);
	//Since we're going to perform the calculation for higher precision (same accuracy)
	//we basically just throw this second byte away (even then it's still only the first bit we care about)
	i2c_read_byte(TEMP_SENSOR_SFR);
	i2c_stop(TEMP_SENSOR_SFR);

	write_temp_sensor_command(READ_COUNT_REMAIN);
	i2c_start(TEMP_SENSOR_SFR);
	ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	count_remaining = i2c_read_byte(TEMP_SENSOR_SFR);
	i2c_stop(TEMP_SENSOR_SFR);
	
	write_temp_sensor_command(READ_SLOPE);
	i2c_start(TEMP_SENSOR_SFR);
	ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	slope = i2c_read_byte(TEMP_SENSOR_SFR);
	i2c_stop(TEMP_SENSOR_SFR);

	//More notes about this conversion available here:
	// https://casper.berkeley.edu/svn/trunk/roach/sw/linux/Documentation/hwmon/ds1621
	temperature = temperature - (0.25 + (slope - count_remaining) / slope);
	
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

void write_display(void)
{
	unsigned char address = 0x70 << 1; 
	unsigned char write_bit = 0x00; //LSB is 0 when writing over i2c (or twi)
	unsigned char address_with_write = address | write_bit;

	unsigned char i;
	unsigned char ack = 0;

	i2c_start(DISPLAY_SFR);
	ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
	/*
		A byte write operation requires a START condition,
		slave address with R/W bit, a valid Command code /
		Register address, a Data and a STOP condition.
	*/
	/*
		When an address is provided, the address is stored and incremented
		by the lcd controller on its own
	*/
	ack = i2c_send_byte(DISPLAY_SFR, 0x00); //0x00 is the starting address of the 7-set disp
	for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
		ack = i2c_send_byte(DISPLAY_SFR, display_buffer[i]);
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

	unsigned char ack = 0;

	i2c_start(DISPLAY_SFR);
	ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
	/*
		A byte write operation requires a START condition,
		slave address with R/W bit, a valid Command code /
		Register address, a Data and a STOP condition.
	*/
	ack = i2c_send_byte(DISPLAY_SFR, command_byte);
	i2c_stop(DISPLAY_SFR);
}

void write_temp_sensor_config(unsigned char config)
{
	unsigned char address_byte = 0x90;
	unsigned char ack = 0;
	
	write_temp_sensor_command(ACCESS_TEMP_SENSOR_CONFIG);
	ack = i2c_send_byte(TEMP_SENSOR_SFR, config);
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

	unsigned char ack = 0;

	i2c_start(TEMP_SENSOR_SFR);
	ack = i2c_send_byte(TEMP_SENSOR_SFR, address_with_write);
	ack = i2c_send_byte(TEMP_SENSOR_SFR, command_byte);
}

void main(void)
{
	bool update_display = true;
	unsigned char temp_sensor_config = 0x00;
	unsigned char first_num;
	unsigned char second_num; 
	float current_temp = 0, last_temp = 0;
	float temp_fraction = 0.0, temp_int = 0.0;
	// Wait a tic for stuff to boot
	delay(10); //delay is # clock cycles
	
	// Display setup
	write_display_command(ENABLE_DISPLAY_OSCILLATOR);
	write_display_command(ENABLE_DISPLAY);

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
		current_temp = read_temp_sensor();
		if (last_temp != current_temp)
		{
			//for simplicity at the moment, assume only 2 digits for temp
			if (current_temp < 0) 
			{
				//ignore for now...
				current_temp *= -1;
			}
			first_num = number_table[(int)current_temp / 10];
			second_num = number_table[(int)current_temp % 10] | PERIOD_CHARACTER;

			clear_display_buffer();

			display_buffer[0] = first_num;
			display_buffer[2] = second_num;
			temp_fraction = modff(current_temp, &temp_int);
			temp_fraction *= 100;
			display_buffer[6] = number_table[(int)temp_fraction / 10];
			display_buffer[8] = number_table[(int)temp_fraction % 10];

			update_display = true;
			last_temp = current_temp;
		}
		if (update_display) 
		{
			//Wait a moment for stuff to settle
			//Set the display buffer to the desired output
			// call write_display();
			write_display();
			update_display = false;
		}
	}
}
