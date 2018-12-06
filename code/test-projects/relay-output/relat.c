#include <8051.h>

#define BUTTON_WHITE P1_0
#define BUTTON_BLACK P1_1
#define BUTTON_BLUE  P1_2
#define BUTTON_GREEN P1_3

#define BUTTON_UP   0x1
#define BUTTON_DOWN 0x2
#define BUTTON_SET  0x4
#define BUTTON_BACK 0x8

#define LAMP_PIN P2_5
#define FAN_PIN P2_4

unsigned char currently_pressed_buttons = 0x0;

void read_buttons(void)
{
	unsigned char white = BUTTON_WHITE;
	unsigned char black = BUTTON_BLACK;
	unsigned char blue  = BUTTON_BLUE;
	unsigned char green = BUTTON_GREEN;
	
	currently_pressed_buttons |= BUTTON_UP&((white)<<0);
	currently_pressed_buttons |= BUTTON_DOWN&((black)<<1);
	currently_pressed_buttons |= BUTTON_SET&((blue) <<2);
	currently_pressed_buttons |= BUTTON_BACK&((green)<<3);
}

void main(void)
{
	while(1)
	{
		read_buttons();
		if (currently_pressed_buttons)
		{
			LAMP_PIN = 0;
			FAN_PIN = 0;
		}
		else
		{
			LAMP_PIN = 1;
			FAN_PIN = 1;
		}
		currently_pressed_buttons &= 0x00;
	}
}
