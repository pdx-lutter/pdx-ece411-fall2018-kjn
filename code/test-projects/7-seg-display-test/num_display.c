#include <8051.h>
#include <stdbool.h>

/*
//Create a number and display it on the LED screen
 --- 7-segment display --- 

The I2C address for the display is: 0x70

To display the number 21, the corresponding values for the digits '2' and '1' will be:

2: 0x5B
1: 0x06

Addresses 0x0, 0x2, 0x4, 0x6, 0x8 are used for (0.)(0.):(0.)(0.) respectively.
Odd numbered addresses are ignored.

When writing to display, start at address 0x00
  for (unsigned char i=0; i<8; i++) {
	Wire.write(displaybuffer[i] & 0xFF);	
	Wire.write(displaybuffer[i] >> 8);	
  }
Wire.endTransmission(); 

pin 19 (P2.1 on AT89) is SCL for led controller
pin 18 (P2.0 on AT89) is SDA for led controller
*/
// We're going to use a ~100kHz clock rate for sending the data
// over i2c (super rough guess based on determined processor clock rate)

// I'm pretty sure that as a master device, we're going to be
// specifying the read rate from the device as well

// I2C implemenation code was viewed here and taken as inspiration:
// https://www.8051projects.net/wiki/I2C_Implementation_on_8051#Implementing_I2C_in_C

//There was a look of good information here as well:

//http://www.8051projects.net/wiki/I2C_TWI_Tutorial

#define SDA P2_0
#define SCL P2_1

#define ENABLE_DISPLAY_OSCILLATOR 0x21 //Turn on LCD controller
#define ENABLE_DISPLAY 0x81 //Display on, no blinking
#define DISABLE_DISPLAY 0x80 //Display on, no blinking
#define FULL_BRIGHTNESS 0xEF //Turns the brightness all of the way up

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
	0x06, /* char 1 and period spot */
	0x00, /* not used */
	0x5B, /* character 2 and period */
	0x00, /* not used */
	0x00, /* colon (0xFF for colon on, 0x00 for colon off) */
	0x00, /* not used */
	0x4F, /* char 3 and period */
	0x00, /* not used */
	0x66, /* char 4 and period */
	0x00  /* not used */
};
// 0x1, 0x3, 0x5, 0x7, 0x9 are not used

// Idea taken from: https://stackoverflow.com/questions/44308679/8051-i2c-bitbang
// It's basically just a small delay to ensure that the clock rate is 
// no faster than 1/5th of the uC clock rate (500kHz/5 = 100kHz)
// Addition is a single clock cycle operation on the 8051
void i2c_delay()
{
	unsigned int i;
	for (i = 0; i < 5; i++);
}
 
void i2c_start()
{
	SCL = 0;
	SDA = 1;
	i2c_delay();
	SCL = 1;
	i2c_delay();
	SDA = 0;
	i2c_delay();
	SCL = 0;
}
 
void i2c_stop()
{
	SCL = 0;
	i2c_delay();
	SDA = 0;
	i2c_delay();
	SCL = 1;
	i2c_delay();
	SDA = 1;
}
 
unsigned char i2c_send(unsigned char data_out)
{
	unsigned char i, ack_bit;
	for (i = 0; i < 8; i++) {
		SCL = 0;
		i2c_delay();
		if ((data_out & 0x80) == 0) {
			SDA = 0;
		} else {
			SDA = 1;
		}
		i2c_delay();
		SCL = 1;
		i2c_delay();
		data_out<<=1;
	}
	SCL = 0;
	i2c_delay();
	SDA = 1;
	i2c_delay();
	SCL = 1;
	i2c_delay();
	ack_bit = SDA;
	i2c_delay();
	SCL = 0;
	return ack_bit;
}
 
unsigned char i2c_read()
{
	unsigned char i, Data=0;
	for (i = 0; i < 8; i++) {
		SCL = 1;
		if(SDA)
			Data |=1;
		if(i<7)
			Data<<=1;
		SCL = 0;
	}
	return Data;
}

void write_display(void)
{
	unsigned char address = 0x70 << 1; 
	unsigned char write_bit = 0x00; //LSB is 0 when writing over i2c (or twi)
	unsigned char address_with_write = address | write_bit;

	unsigned char i;
	unsigned char ack = 0;

	i2c_start();
	ack = i2c_send(address_with_write);
	/*
		A byte write operation requires a START condition,
		slave address with R/W bit, a valid Command code /
		Register address, a Data and a STOP condition.
	*/
	/*
		When an address is provided, the address is stored and incremented
		by the lcd controller on its own
	*/
	ack = i2c_send(0x00); //0x00 is the starting address of the 7-set disp
	for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
		i2c_delay();
		ack = i2c_send(display_buffer[i]);
	}
	i2c_stop();
}

//Writes a single byte to send a command to the display
void write_command(unsigned char command_byte)
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

	i2c_start();
	ack = i2c_send(address_with_write);
	/*
		A byte write operation requires a START condition,
		slave address with R/W bit, a valid Command code /
		Register address, a Data and a STOP condition.
	*/
	ack = i2c_send(command_byte);
	i2c_stop();
}

void delay(void)
{
	int i;
	for(i=0;i<500;i++);
}

bool once = true;

void main(void)
{
	// We need a loop in main, otherwise we do not have deterministic looping
	// behavior.  The program is re-executed once the instruction pointer has
	// run to the "end".  In other words, all global vars will be reset, and
	// the program begins execution as though it were being loaded and run
	// for the first time again.
	while (true) 
	{
		if (once) 
		{
			//Wait a moment for stuff to settle
			delay();
			//Turn on the oscillator for the display
			write_command(ENABLE_DISPLAY_OSCILLATOR);
			delay();
			write_command(ENABLE_DISPLAY);
			delay();
			//Set the display buffer to the desired output
			// call write_display();
			write_display();
			once = false;
		}
	}
}
