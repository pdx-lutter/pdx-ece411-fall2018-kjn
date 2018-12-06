// Unfortunately, because of how memory is mapped in the 8051, the
// special registers are _not_ indirectly accessibly by memory
// They're only directly accessible.  This means we need to set up something
// of a roundabout method of referring to them when writing/reading
#define SDA P2_0 //Turn on LCD controller
#define SCL P2_1 //Display on, no blinking
#define DISPLAY_SFR 0xA0

#define ENABLE_DISPLAY_OSCILLATOR 0x21 //Turn on LCD controller
#define ENABLE_DISPLAY  0x81 //Display on, no blinking
#define DISABLE_DISPLAY 0x80 //Display off
#define SET_DISPLAY_BRIGHTNESS 0xE0 //Command only, set dimming
#define FULL_BRIGHTNESS 0x0F //Turns the brightness all of the way up
#define HALF_BRIGHTNESS 0x08

#define DISPLAY_FIRST_DIGIT  0x00
#define DISPLAY_SECOND_DIGIT 0x02
#define DISPLAY_COLON_DIGIT  0x04
#define DISPLAY_THIRD_DIGIT  0x06
#define DISPLAY_FOURTH_DIGIT 0x08

#define DISPLAY_COLON_ON  0xFF
#define DISPLAY_COLON_OFF 0x00

#define PERIOD_CHARACTER 0x80
#define HYPHEN_CHARACTER 0x40
#define LETTER_b 0x7C
#define LETTER_C 0x39
#define LETTER_d 0x5E
#define LETTER_G 0x7D
#define LETTER_H 0x76
#define LETTER_I 0x06
#define LETTER_L 0x38
#define LETTER_n 0x54
#define LETTER_O 0x3F
#define LETTER_r 0x50
#define LETTER_U 0x3E

#define TEMP_SENSOR_SFR 0xB0

#define READ_TEMPERATURE  0xAA
#define READ_COUNT_REMAIN 0xA8
#define READ_SLOPE 0xA9
#define START_TEMP_SENSOR_CONVERSION 0xEE
#define STOP_TEMP_SENSOR_CONVERSION  0x22

#define ACCESS_HIGH_TEMP_LIMIT_REGISTER 0xA1
#define ACCESS_LOW_TEMP_LIMIT_REGISTER  0xA2
#define ACCESS_TEMP_SENSOR_CONFIG 0xAC

//Config setting bits for the temperature sensor
#define TEMP_SENSOR_CONTINUOUS_CONVERSION 0x00
#define TEMP_SENSOR_ONE_SHOT_CONVERSION   0x01
#define TEMP_SENSOR_OUTPUT_HIGH           0x02

#define MODE_DISPLAY_TEMPERATURE     0x00
#define MODE_CONFIGURE_TEMP_HIGH     0x01
#define MODE_CONFIGURE_TEMP_LOW      0x02
#define MODE_CONFIGURE_TEMP_UNIT     0x03
#define MODE_CONFIGURE_TEMP_ROUNDING 0x04
#define MODE_CONFIGURE_BRIGHTNESS    0x05
#define MODE_PICK_SETTING            0x06

#define BUTTON_WHITE P1_0
#define BUTTON_BLACK P1_1
#define BUTTON_BLUE  P1_2
#define BUTTON_GREEN P1_3

#define BUTTON_UP   0x1
#define BUTTON_DOWN 0x2
#define BUTTON_SET  0x4
#define BUTTON_BACK 0x8

void delay(unsigned long min_clock_cycles_to_wait);

void i2c_delay();
void i2c_start(unsigned char sfr_address);
void i2c_stop(unsigned char sfr_address);
void i2c_scl_write(unsigned char sfr_address, unsigned char value);
void i2c_sda_write(unsigned char sfr_address, unsigned char value);
unsigned char i2c_sda_read(unsigned char sfr_address);
unsigned char i2c_send_byte(unsigned char sfr_address, unsigned char data_out);
unsigned char i2c_read_byte(unsigned char sfr_address);

void write_display_command(unsigned char command_byte);
void clear_display_buffer(void);
void write_display(void);

void write_temp_sensor_config(unsigned char config);
void write_temp_sensor_command(unsigned char command_byte);
float read_temp_sensor(void);
