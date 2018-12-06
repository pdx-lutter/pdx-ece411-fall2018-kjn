;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Wed Dec  5 16:43:04 2018
;--------------------------------------------------------
	.module temperature_control_unit
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2c_sda_write_PARM_2
	.globl _main
	.globl _read_buttons
	.globl _updated_displayed_setting_selection
	.globl _update_displayed_temperature
	.globl _write_to_display
	.globl _modff
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _i2c_send_byte_PARM_2
	.globl _i2c_scl_write_PARM_2
	.globl _user_setting_temp_low_threshold
	.globl _user_setting_temp_high_threshold
	.globl _current_user_mode
	.globl _display_brightness
	.globl _debounced_buttons
	.globl _currently_pressed_buttons
	.globl _display_buffer
	.globl _number_table
	.globl _delay
	.globl _i2c_delay
	.globl _i2c_sda_write
	.globl _i2c_sda_read
	.globl _i2c_scl_write
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_send_byte
	.globl _i2c_read_byte
	.globl _read_temp_sensor
	.globl _clear_display_buffer
	.globl _write_display_command
	.globl _write_temp_sensor_config
	.globl _write_temp_sensor_command
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_number_table::
	.ds 16
_display_buffer::
	.ds 10
_currently_pressed_buttons::
	.ds 1
_debounced_buttons::
	.ds 1
_display_brightness::
	.ds 1
_current_user_mode::
	.ds 1
_user_setting_temp_high_threshold::
	.ds 2
_user_setting_temp_low_threshold::
	.ds 2
_i2c_scl_write_PARM_2:
	.ds 1
_i2c_send_byte_PARM_2:
	.ds 1
_read_temp_sensor_slope_1_63:
	.ds 4
_read_temp_sensor_count_remaining_1_63:
	.ds 4
_update_displayed_temperature_temperature_1_76:
	.ds 4
_update_displayed_temperature_temp_fraction_part_1_77:
	.ds 4
_update_displayed_temperature_temp_integer_part_1_77:
	.ds 4
_update_displayed_temperature_sloc0_1_0:
	.ds 2
_update_displayed_temperature_sloc1_1_0:
	.ds 1
_update_displayed_temperature_sloc2_1_0:
	.ds 1
_main_last_temp_1_89:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_delay_min_clock_cycles_to_wait_1_37:
	.ds 4
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_i2c_sda_write_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_main_update_display_1_89:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	temperature_control_unit.c:13: unsigned char number_table[] = {
	mov	_number_table,#0x3F
	mov	(_number_table + 0x0001),#0x06
	mov	(_number_table + 0x0002),#0x5B
	mov	(_number_table + 0x0003),#0x4F
	mov	(_number_table + 0x0004),#0x66
	mov	(_number_table + 0x0005),#0x6D
	mov	(_number_table + 0x0006),#0x7D
	mov	(_number_table + 0x0007),#0x07
	mov	(_number_table + 0x0008),#0x7F
	mov	(_number_table + 0x0009),#0x6F
	mov	(_number_table + 0x000a),#0x77
	mov	(_number_table + 0x000b),#0x7C
	mov	(_number_table + 0x000c),#0x39
	mov	(_number_table + 0x000d),#0x5E
	mov	(_number_table + 0x000e),#0x79
	mov	(_number_table + 0x000f),#0x71
;	temperature_control_unit.c:33: unsigned char display_buffer[] = {
	mov	_display_buffer,#0x00
	mov	(_display_buffer + 0x0001),#0x00
	mov	(_display_buffer + 0x0002),#0x00
	mov	(_display_buffer + 0x0003),#0x00
	mov	(_display_buffer + 0x0004),#0x00
	mov	(_display_buffer + 0x0005),#0x00
	mov	(_display_buffer + 0x0006),#0x00
	mov	(_display_buffer + 0x0007),#0x00
	mov	(_display_buffer + 0x0008),#0x00
	mov	(_display_buffer + 0x0009),#0x00
;	temperature_control_unit.c:49: unsigned char currently_pressed_buttons = 0x0;
	mov	_currently_pressed_buttons,#0x00
;	temperature_control_unit.c:54: unsigned char debounced_buttons = 0x0;
	mov	_debounced_buttons,#0x00
;	temperature_control_unit.c:56: unsigned char display_brightness = FULL_BRIGHTNESS; //Defaults to FULL THROTTLE
	mov	_display_brightness,#0x0F
;	temperature_control_unit.c:66: unsigned char current_user_mode = MODE_DISPLAY_TEMPERATURE; 
	mov	_current_user_mode,#0x00
;	temperature_control_unit.c:68: int user_setting_temp_high_threshold = 40; //Degress celsius
	mov	_user_setting_temp_high_threshold,#0x28
	mov	(_user_setting_temp_high_threshold + 1),#0x00
;	temperature_control_unit.c:69: int user_setting_temp_low_threshold  = 0; //Degress celsius
	clr	a
	mov	_user_setting_temp_low_threshold,a
	mov	(_user_setting_temp_low_threshold + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;min_clock_cycles_to_wait  Allocated with name '_delay_min_clock_cycles_to_wait_1_37'
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	temperature_control_unit.c:78: void delay(unsigned long min_clock_cycles_to_wait)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_delay_min_clock_cycles_to_wait_1_37,dpl
	mov	(_delay_min_clock_cycles_to_wait_1_37 + 1),dph
	mov	(_delay_min_clock_cycles_to_wait_1_37 + 2),b
	mov	(_delay_min_clock_cycles_to_wait_1_37 + 3),a
;	temperature_control_unit.c:81: for(i = 0;i < min_clock_cycles_to_wait; i++);
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	mov	ar0,r2
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,_delay_min_clock_cycles_to_wait_1_37
	mov	a,r1
	subb	a,(_delay_min_clock_cycles_to_wait_1_37 + 1)
	mov	a,r6
	subb	a,(_delay_min_clock_cycles_to_wait_1_37 + 2)
	mov	a,r7
	subb	a,(_delay_min_clock_cycles_to_wait_1_37 + 3)
	jnc	00105$
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	temperature_control_unit.c:90: void i2c_delay(void)
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
;	temperature_control_unit.c:93: for (i = 0; i < 5; i++);
	mov	r6,#0x05
	mov	r7,#0x00
00104$:
	mov	a,r6
	add	a,#0xFF
	mov	r4,a
	mov	a,r7
	addc	a,#0xFF
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_sda_write'
;------------------------------------------------------------
;value                     Allocated with name '_i2c_sda_write_PARM_2'
;sfr_address               Allocated to registers r7 
;------------------------------------------------------------
;	temperature_control_unit.c:96: void i2c_sda_write(unsigned char sfr_address, unsigned char value)
;	-----------------------------------------
;	 function i2c_sda_write
;	-----------------------------------------
_i2c_sda_write:
	mov	r7,dpl
;	temperature_control_unit.c:98: switch (sfr_address)
	cjne	r7,#0xA0,00113$
	sjmp	00101$
00113$:
;	temperature_control_unit.c:100: case DISPLAY_SFR: P2_0 = value; break;
	cjne	r7,#0xB0,00105$
	sjmp	00102$
00101$:
	mov	a,_i2c_sda_write_PARM_2
	add	a,#0xff
	mov	_P2_0,c
;	temperature_control_unit.c:101: case TEMP_SENSOR_SFR: P3_5 = value; break;
	ret
00102$:
	mov	a,_i2c_sda_write_PARM_2
	add	a,#0xff
	mov	_P3_5,c
;	temperature_control_unit.c:103: }
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_sda_read'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;result                    Allocated to registers r6 
;------------------------------------------------------------
;	temperature_control_unit.c:106: unsigned char i2c_sda_read(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_sda_read
;	-----------------------------------------
_i2c_sda_read:
	mov	r7,dpl
;	temperature_control_unit.c:108: unsigned char result = 0;
	mov	r6,#0x00
;	temperature_control_unit.c:109: switch (sfr_address)
	cjne	r7,#0xA0,00113$
	sjmp	00101$
00113$:
;	temperature_control_unit.c:111: case DISPLAY_SFR: result = (unsigned char) P2_0; break;
	cjne	r7,#0xB0,00104$
	sjmp	00102$
00101$:
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r6,a
;	temperature_control_unit.c:112: case TEMP_SENSOR_SFR: result = (unsigned char) P3_5; break;
	sjmp	00104$
00102$:
	mov	c,_P3_5
	clr	a
	rlc	a
	mov	r6,a
;	temperature_control_unit.c:114: }
00104$:
;	temperature_control_unit.c:115: return result;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_scl_write'
;------------------------------------------------------------
;value                     Allocated with name '_i2c_scl_write_PARM_2'
;sfr_address               Allocated to registers r7 
;------------------------------------------------------------
;	temperature_control_unit.c:118: void i2c_scl_write(unsigned char sfr_address, unsigned char value)
;	-----------------------------------------
;	 function i2c_scl_write
;	-----------------------------------------
_i2c_scl_write:
	mov	r7,dpl
;	temperature_control_unit.c:120: switch (sfr_address)
	cjne	r7,#0xA0,00113$
	sjmp	00101$
00113$:
;	temperature_control_unit.c:122: case DISPLAY_SFR: P2_1 = value; break;
	cjne	r7,#0xB0,00104$
	sjmp	00102$
00101$:
	mov	a,_i2c_scl_write_PARM_2
	add	a,#0xff
	mov	_P2_1,c
;	temperature_control_unit.c:123: case TEMP_SENSOR_SFR: P3_6 = value; break;
	sjmp	00104$
00102$:
	mov	a,_i2c_scl_write_PARM_2
	add	a,#0xff
	mov	_P3_6,c
;	temperature_control_unit.c:125: }
00104$:
;	temperature_control_unit.c:126: i2c_delay();
	ljmp	_i2c_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;------------------------------------------------------------
;	temperature_control_unit.c:129: void i2c_start(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	temperature_control_unit.c:131: i2c_scl_write(sfr_address, 0);
	mov	r7,dpl
	mov	_i2c_scl_write_PARM_2,#0x00
	push	ar7
	lcall	_i2c_scl_write
	pop	ar7
;	temperature_control_unit.c:132: i2c_sda_write(sfr_address, 1);
	mov	_i2c_sda_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
	pop	ar7
;	temperature_control_unit.c:133: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
	pop	ar7
;	temperature_control_unit.c:134: i2c_sda_write(sfr_address, 0);
	mov	_i2c_sda_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
	pop	ar7
;	temperature_control_unit.c:135: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	ljmp	_i2c_scl_write
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;------------------------------------------------------------
;	temperature_control_unit.c:138: void i2c_stop(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	temperature_control_unit.c:140: i2c_scl_write(sfr_address, 0);
	mov	r7,dpl
	mov	_i2c_scl_write_PARM_2,#0x00
	push	ar7
	lcall	_i2c_scl_write
	pop	ar7
;	temperature_control_unit.c:141: i2c_sda_write(sfr_address, 0);
	mov	_i2c_sda_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
	pop	ar7
;	temperature_control_unit.c:142: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
	pop	ar7
;	temperature_control_unit.c:143: i2c_sda_write(sfr_address, 1);
	mov	_i2c_sda_write_PARM_2,#0x01
	mov	dpl,r7
	ljmp	_i2c_sda_write
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_send_byte'
;------------------------------------------------------------
;data_out                  Allocated with name '_i2c_send_byte_PARM_2'
;sfr_address               Allocated to registers r7 
;i                         Allocated to registers r6 
;ack_bit                   Allocated to registers r6 
;------------------------------------------------------------
;	temperature_control_unit.c:146: unsigned char i2c_send_byte(unsigned char sfr_address, unsigned char data_out)
;	-----------------------------------------
;	 function i2c_send_byte
;	-----------------------------------------
_i2c_send_byte:
	mov	r7,dpl
;	temperature_control_unit.c:149: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00105$:
;	temperature_control_unit.c:150: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_scl_write
	pop	ar6
	pop	ar7
;	temperature_control_unit.c:151: if ((data_out & 0x80) == 0) {
	mov	a,_i2c_send_byte_PARM_2
	jb	acc.7,00102$
;	temperature_control_unit.c:152: i2c_sda_write(sfr_address, 0);
	mov	_i2c_sda_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_sda_write
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	temperature_control_unit.c:154: i2c_sda_write(sfr_address, 1);
	mov	_i2c_sda_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_sda_write
	pop	ar6
	pop	ar7
00103$:
;	temperature_control_unit.c:156: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_scl_write
	pop	ar6
	pop	ar7
;	temperature_control_unit.c:157: data_out<<=1;
	mov	a,_i2c_send_byte_PARM_2
	add	a,_i2c_send_byte_PARM_2
	mov	_i2c_send_byte_PARM_2,a
;	temperature_control_unit.c:149: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00120$
00120$:
	jc	00105$
;	temperature_control_unit.c:159: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
	pop	ar7
;	temperature_control_unit.c:160: i2c_sda_write(sfr_address, 1);
	mov	_i2c_sda_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
	pop	ar7
;	temperature_control_unit.c:161: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
	pop	ar7
;	temperature_control_unit.c:162: ack_bit = i2c_sda_read(sfr_address);
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_read
	mov	r6,dpl
	pop	ar7
;	temperature_control_unit.c:163: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar6
	lcall	_i2c_scl_write
	pop	ar6
;	temperature_control_unit.c:165: return ack_bit;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_byte'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;i                         Allocated to registers r5 
;received                  Allocated to registers r6 
;------------------------------------------------------------
;	temperature_control_unit.c:168: unsigned char i2c_read_byte(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_read_byte
;	-----------------------------------------
_i2c_read_byte:
	mov	r7,dpl
;	temperature_control_unit.c:170: unsigned char i, received = 0;
	mov	r6,#0x00
;	temperature_control_unit.c:171: for (i = 0; i < 8; i++) {
	mov	r5,#0x00
00106$:
;	temperature_control_unit.c:172: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_scl_write
	pop	ar5
	pop	ar6
	pop	ar7
;	temperature_control_unit.c:173: if(i2c_sda_read(sfr_address))
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_sda_read
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00102$
;	temperature_control_unit.c:174: received |= 1;
	orl	ar6,#0x01
00102$:
;	temperature_control_unit.c:175: if(i < 7)
	cjne	r5,#0x07,00124$
00124$:
	jnc	00104$
;	temperature_control_unit.c:176: received <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
00104$:
;	temperature_control_unit.c:177: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_scl_write
	pop	ar5
	pop	ar6
	pop	ar7
;	temperature_control_unit.c:171: for (i = 0; i < 8; i++) {
	inc	r5
	cjne	r5,#0x08,00126$
00126$:
	jc	00106$
;	temperature_control_unit.c:179: return received;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_temp_sensor'
;------------------------------------------------------------
;address_byte              Allocated to registers 
;millisecond               Allocated to registers 
;temperature               Allocated to registers r4 r5 r6 r7 
;slope                     Allocated with name '_read_temp_sensor_slope_1_63'
;count_remaining           Allocated with name '_read_temp_sensor_count_remaining_1_63'
;------------------------------------------------------------
;	temperature_control_unit.c:190: float read_temp_sensor(void)
;	-----------------------------------------
;	 function read_temp_sensor
;	-----------------------------------------
_read_temp_sensor:
;	temperature_control_unit.c:206: write_temp_sensor_command(START_TEMP_SENSOR_CONVERSION);
	mov	dpl,#0xEE
	lcall	_write_temp_sensor_command
;	temperature_control_unit.c:207: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_stop
;	temperature_control_unit.c:210: delay(1000*millisecond);//multiplication... this wait  maaay be (read: probably will be) longer than 1000ms
	mov	dptr,#0x4240
	mov	b,#0x0F
	clr	a
	lcall	_delay
;	temperature_control_unit.c:212: write_temp_sensor_command(READ_TEMPERATURE);
	mov	dpl,#0xAA
	lcall	_write_temp_sensor_command
;	temperature_control_unit.c:215: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_start
;	temperature_control_unit.c:216: i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	mov	_i2c_send_byte_PARM_2,#0x91
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temperature_control_unit.c:217: temperature = i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_read_byte
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	temperature_control_unit.c:220: i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read_byte
;	temperature_control_unit.c:221: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_stop
;	temperature_control_unit.c:223: write_temp_sensor_command(READ_COUNT_REMAIN);
	mov	dpl,#0xA8
	lcall	_write_temp_sensor_command
;	temperature_control_unit.c:224: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_start
;	temperature_control_unit.c:225: i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	mov	_i2c_send_byte_PARM_2,#0x91
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temperature_control_unit.c:226: count_remaining = i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_read_byte
	lcall	___uchar2fs
	mov	_read_temp_sensor_count_remaining_1_63,dpl
	mov	(_read_temp_sensor_count_remaining_1_63 + 1),dph
	mov	(_read_temp_sensor_count_remaining_1_63 + 2),b
	mov	(_read_temp_sensor_count_remaining_1_63 + 3),a
;	temperature_control_unit.c:227: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_stop
;	temperature_control_unit.c:229: write_temp_sensor_command(READ_SLOPE);
	mov	dpl,#0xA9
	lcall	_write_temp_sensor_command
;	temperature_control_unit.c:230: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_start
;	temperature_control_unit.c:231: i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	mov	_i2c_send_byte_PARM_2,#0x91
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temperature_control_unit.c:232: slope = i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_read_byte
	lcall	___uchar2fs
	mov	_read_temp_sensor_slope_1_63,dpl
	mov	(_read_temp_sensor_slope_1_63 + 1),dph
	mov	(_read_temp_sensor_slope_1_63 + 2),b
	mov	(_read_temp_sensor_slope_1_63 + 3),a
;	temperature_control_unit.c:233: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_stop
;	temperature_control_unit.c:237: temperature = (float) (temperature - (0.25 + (slope - count_remaining) / slope));
	push	_read_temp_sensor_count_remaining_1_63
	push	(_read_temp_sensor_count_remaining_1_63 + 1)
	push	(_read_temp_sensor_count_remaining_1_63 + 2)
	push	(_read_temp_sensor_count_remaining_1_63 + 3)
	mov	dpl,_read_temp_sensor_slope_1_63
	mov	dph,(_read_temp_sensor_slope_1_63 + 1)
	mov	b,(_read_temp_sensor_slope_1_63 + 2)
	mov	a,(_read_temp_sensor_slope_1_63 + 3)
	lcall	___fssub
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_read_temp_sensor_slope_1_63
	push	(_read_temp_sensor_slope_1_63 + 1)
	push	(_read_temp_sensor_slope_1_63 + 2)
	push	(_read_temp_sensor_slope_1_63 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	temperature_control_unit.c:247: return temperature;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_display_buffer'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	temperature_control_unit.c:250: void clear_display_buffer(void)
;	-----------------------------------------
;	 function clear_display_buffer
;	-----------------------------------------
_clear_display_buffer:
;	temperature_control_unit.c:253: for (i = 0; i < DISPLAY_BUFFER_SIZE; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	temperature_control_unit.c:255: display_buffer[i] = 0x00;
	mov	a,r6
	add	a,#_display_buffer
	mov	r0,a
	mov	@r0,#0x00
;	temperature_control_unit.c:253: for (i = 0; i < DISPLAY_BUFFER_SIZE; i++)
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
00110$:
	clr	c
	mov	a,r6
	subb	a,#0x0A
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_to_display'
;------------------------------------------------------------
;address                   Allocated to registers 
;write_bit                 Allocated to registers 
;address_with_write        Allocated to registers 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	temperature_control_unit.c:259: void write_to_display(void)
;	-----------------------------------------
;	 function write_to_display
;	-----------------------------------------
_write_to_display:
;	temperature_control_unit.c:267: i2c_start(DISPLAY_SFR);
	mov	dpl,#0xA0
	lcall	_i2c_start
;	temperature_control_unit.c:268: i2c_send_byte(DISPLAY_SFR, address_with_write);
	mov	_i2c_send_byte_PARM_2,#0xE0
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
;	temperature_control_unit.c:278: i2c_send_byte(DISPLAY_SFR, 0x00); //0x00 is the starting address of the 7-set disp
	mov	_i2c_send_byte_PARM_2,#0x00
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
;	temperature_control_unit.c:279: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
	mov	r7,#0x00
00102$:
;	temperature_control_unit.c:280: i2c_send_byte(DISPLAY_SFR, display_buffer[i]);
	mov	a,r7
	add	a,#_display_buffer
	mov	r1,a
	mov	_i2c_send_byte_PARM_2,@r1
	mov	dpl,#0xA0
	push	ar7
	lcall	_i2c_send_byte
	pop	ar7
;	temperature_control_unit.c:279: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
	inc	r7
	cjne	r7,#0x0A,00113$
00113$:
	jc	00102$
;	temperature_control_unit.c:282: i2c_stop(DISPLAY_SFR);
	mov	dpl,#0xA0
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'write_display_command'
;------------------------------------------------------------
;command_byte              Allocated to registers r7 
;address                   Allocated to registers 
;write_bit                 Allocated to registers 
;address_with_write        Allocated to registers 
;------------------------------------------------------------
;	temperature_control_unit.c:286: void write_display_command(unsigned char command_byte)
;	-----------------------------------------
;	 function write_display_command
;	-----------------------------------------
_write_display_command:
	mov	r7,dpl
;	temperature_control_unit.c:297: i2c_start(DISPLAY_SFR);
	mov	dpl,#0xA0
	push	ar7
	lcall	_i2c_start
;	temperature_control_unit.c:298: i2c_send_byte(DISPLAY_SFR, address_with_write);
	mov	_i2c_send_byte_PARM_2,#0xE0
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
	pop	ar7
;	temperature_control_unit.c:304: i2c_send_byte(DISPLAY_SFR, command_byte);
	mov	_i2c_send_byte_PARM_2,r7
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
;	temperature_control_unit.c:305: i2c_stop(DISPLAY_SFR);
	mov	dpl,#0xA0
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'write_temp_sensor_config'
;------------------------------------------------------------
;config                    Allocated to registers r7 
;------------------------------------------------------------
;	temperature_control_unit.c:308: void write_temp_sensor_config(unsigned char config)
;	-----------------------------------------
;	 function write_temp_sensor_config
;	-----------------------------------------
_write_temp_sensor_config:
	mov	r7,dpl
;	temperature_control_unit.c:310: write_temp_sensor_command(ACCESS_TEMP_SENSOR_CONFIG);
	mov	dpl,#0xAC
	push	ar7
	lcall	_write_temp_sensor_command
	pop	ar7
;	temperature_control_unit.c:311: i2c_send_byte(TEMP_SENSOR_SFR, config);
	mov	_i2c_send_byte_PARM_2,r7
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temperature_control_unit.c:312: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'write_temp_sensor_command'
;------------------------------------------------------------
;command_byte              Allocated to registers r7 
;control_byte              Allocated to registers 
;write_bit                 Allocated to registers 
;address_with_write        Allocated to registers 
;------------------------------------------------------------
;	temperature_control_unit.c:316: void write_temp_sensor_command(unsigned char command_byte)
;	-----------------------------------------
;	 function write_temp_sensor_command
;	-----------------------------------------
_write_temp_sensor_command:
	mov	r7,dpl
;	temperature_control_unit.c:348: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	push	ar7
	lcall	_i2c_start
;	temperature_control_unit.c:349: i2c_send_byte(TEMP_SENSOR_SFR, address_with_write);
	mov	_i2c_send_byte_PARM_2,#0x90
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
	pop	ar7
;	temperature_control_unit.c:350: i2c_send_byte(TEMP_SENSOR_SFR, command_byte);
	mov	_i2c_send_byte_PARM_2,r7
	mov	dpl,#0xB0
	ljmp	_i2c_send_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'update_displayed_temperature'
;------------------------------------------------------------
;temperature               Allocated with name '_update_displayed_temperature_temperature_1_76'
;first_digit               Allocated with name '_update_displayed_temperature_sloc2_1_0'
;second_digit              Allocated with name '_update_displayed_temperature_sloc1_1_0'
;third_digit               Allocated to registers r7 
;fourth_digit              Allocated to registers r4 
;temp_fraction_part        Allocated with name '_update_displayed_temperature_temp_fraction_part_1_77'
;temp_integer_part         Allocated with name '_update_displayed_temperature_temp_integer_part_1_77'
;sloc0                     Allocated with name '_update_displayed_temperature_sloc0_1_0'
;sloc1                     Allocated with name '_update_displayed_temperature_sloc1_1_0'
;sloc2                     Allocated with name '_update_displayed_temperature_sloc2_1_0'
;------------------------------------------------------------
;	temperature_control_unit.c:353: void update_displayed_temperature(float temperature)
;	-----------------------------------------
;	 function update_displayed_temperature
;	-----------------------------------------
_update_displayed_temperature:
	mov	_update_displayed_temperature_temperature_1_76,dpl
	mov	(_update_displayed_temperature_temperature_1_76 + 1),dph
	mov	(_update_displayed_temperature_temperature_1_76 + 2),b
	mov	(_update_displayed_temperature_temperature_1_76 + 3),a
;	temperature_control_unit.c:356: float temp_fraction_part, temp_integer_part= 0.0;
	clr	a
	mov	_update_displayed_temperature_temp_integer_part_1_77,a
	mov	(_update_displayed_temperature_temp_integer_part_1_77 + 1),a
	mov	(_update_displayed_temperature_temp_integer_part_1_77 + 2),a
	mov	(_update_displayed_temperature_temp_integer_part_1_77 + 3),a
;	temperature_control_unit.c:358: clear_display_buffer();
	lcall	_clear_display_buffer
;	temperature_control_unit.c:360: temp_fraction_part = modff(temperature, &temp_integer_part);
	mov	_modff_PARM_2,#_update_displayed_temperature_temp_integer_part_1_77
	mov	(_modff_PARM_2 + 1),#0x00
	mov	(_modff_PARM_2 + 2),#0x40
	mov	dpl,_update_displayed_temperature_temperature_1_76
	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
	lcall	_modff
	mov	_update_displayed_temperature_temp_fraction_part_1_77,dpl
	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 1),dph
	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 2),b
	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 3),a
;	temperature_control_unit.c:361: temp_fraction_part *= 100;
	push	_update_displayed_temperature_temp_fraction_part_1_77
	push	(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
	push	(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
	push	(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	_update_displayed_temperature_temp_fraction_part_1_77,dpl
	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 1),dph
	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 2),b
	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	temperature_control_unit.c:363: if (temperature >= 100) //I sure hope not
	clr	a
	push	acc
	push	acc
	mov	a,#0xC8
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,_update_displayed_temperature_temperature_1_76
	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	jnz	00108$
;	temperature_control_unit.c:365: first_digit  = number_table[1];
	mov	_update_displayed_temperature_sloc2_1_0,(_number_table + 0x0001)
;	temperature_control_unit.c:366: second_digit = number_table[(int)temp_integer_part % 10];
	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
	lcall	___fs2sint
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	a,dpl
	add	a,#_number_table
	mov	r1,a
	mov	ar7,@r1
	mov	_update_displayed_temperature_sloc1_1_0,r7
;	temperature_control_unit.c:367: third_digit  = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
	orl	ar7,#0x80
;	temperature_control_unit.c:368: fourth_digit = number_table[(int)temp_fraction_part/ 10];
	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
	push	ar7
	lcall	___fs2sint
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r3,dpl
	pop	ar7
	mov	a,r3
	add	a,#_number_table
	mov	r1,a
	mov	ar4,@r1
	ljmp	00109$
00108$:
;	temperature_control_unit.c:370: else if (temperature < 0) 
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_update_displayed_temperature_temperature_1_76
	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00122$
	ljmp	00105$
00122$:
;	temperature_control_unit.c:373: temp_fraction_part*= -1;
	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
	cpl	acc.7
	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 3),a
;	temperature_control_unit.c:374: first_digit = HYPHEN_CHARACTER;
	mov	_update_displayed_temperature_sloc2_1_0,#0x40
;	temperature_control_unit.c:375: if (temperature <= -10)
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0xC1
	push	acc
	mov	dpl,_update_displayed_temperature_temperature_1_76
	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00102$
;	temperature_control_unit.c:377: second_digit = number_table[(int)temp_integer_part / 10];
	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
	lcall	___fs2sint
	mov	_update_displayed_temperature_sloc0_1_0,dpl
	mov	(_update_displayed_temperature_sloc0_1_0 + 1),dph
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	a,dpl
	add	a,#_number_table
	mov	r1,a
	mov	_update_displayed_temperature_sloc1_1_0,@r1
;	temperature_control_unit.c:378: third_digit  = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_update_displayed_temperature_sloc0_1_0
	mov	dph,(_update_displayed_temperature_sloc0_1_0 + 1)
	lcall	__modsint
	mov	a,dpl
	add	a,#_number_table
	mov	r1,a
	mov	ar5,@r1
	mov	a,#0x80
	orl	a,r5
	mov	r7,a
;	temperature_control_unit.c:379: fourth_digit = number_table[(int)temp_fraction_part / 10];
	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
	push	ar7
	lcall	___fs2sint
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r3,dpl
	mov	r5,dph
	pop	ar7
	mov	a,r3
	add	a,#_number_table
	mov	r1,a
	mov	ar4,@r1
	ljmp	00109$
00102$:
;	temperature_control_unit.c:382: second_digit = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
	lcall	___fs2sint
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	a,dpl
	add	a,#_number_table
	mov	r1,a
	mov	ar3,@r1
	mov	a,#0x80
	orl	a,r3
	mov	_update_displayed_temperature_sloc1_1_0,a
;	temperature_control_unit.c:383: third_digit  = number_table[(int)temp_fraction_part / 10];
	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r5,dpl
	pop	ar2
	pop	ar3
	mov	a,r5
	add	a,#_number_table
	mov	r1,a
	mov	ar7,@r1
;	temperature_control_unit.c:384: fourth_digit = number_table[(int)temp_fraction_part % 10];
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r5
	add	a,#_number_table
	mov	r1,a
	mov	ar4,@r1
	ljmp	00109$
00105$:
;	temperature_control_unit.c:389: first_digit  = number_table[(int)temp_integer_part / 10];
	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
	lcall	___fs2sint
	mov	_update_displayed_temperature_sloc0_1_0,dpl
	mov	(_update_displayed_temperature_sloc0_1_0 + 1),dph
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	a,dpl
	add	a,#_number_table
	mov	r1,a
	mov	_update_displayed_temperature_sloc2_1_0,@r1
;	temperature_control_unit.c:390: second_digit = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_update_displayed_temperature_sloc0_1_0
	mov	dph,(_update_displayed_temperature_sloc0_1_0 + 1)
	lcall	__modsint
	mov	a,dpl
	add	a,#_number_table
	mov	r1,a
	mov	ar6,@r1
	mov	a,#0x80
	orl	a,r6
	mov	_update_displayed_temperature_sloc1_1_0,a
;	temperature_control_unit.c:391: third_digit  = number_table[(int)temp_fraction_part / 10];
	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
	lcall	___fs2sint
	mov	r3,dpl
	mov	r6,dph
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar6
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	pop	ar3
	pop	ar6
	mov	a,r2
	add	a,#_number_table
	mov	r1,a
	mov	ar7,@r1
;	temperature_control_unit.c:392: fourth_digit = number_table[(int)temp_fraction_part % 10];
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r6
	push	ar7
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r5
	add	a,#_number_table
	mov	r1,a
	mov	ar4,@r1
00109$:
;	temperature_control_unit.c:395: display_buffer[DISPLAY_FIRST_DIGIT]  = first_digit;
	mov	_display_buffer,_update_displayed_temperature_sloc2_1_0
;	temperature_control_unit.c:396: display_buffer[DISPLAY_SECOND_DIGIT] = second_digit;
	mov	(_display_buffer + 0x0002),_update_displayed_temperature_sloc1_1_0
;	temperature_control_unit.c:397: display_buffer[DISPLAY_THIRD_DIGIT]  = third_digit;
	mov	(_display_buffer + 0x0006),r7
;	temperature_control_unit.c:398: display_buffer[DISPLAY_FOURTH_DIGIT] = fourth_digit;
	mov	(_display_buffer + 0x0008),r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'updated_displayed_setting_selection'
;------------------------------------------------------------
;selected_setting_mode     Allocated to registers r7 
;------------------------------------------------------------
;	temperature_control_unit.c:401: void updated_displayed_setting_selection(unsigned char selected_setting_mode)
;	-----------------------------------------
;	 function updated_displayed_setting_selection
;	-----------------------------------------
_updated_displayed_setting_selection:
	mov	r7,dpl
;	temperature_control_unit.c:403: clear_display_buffer();
	push	ar7
	lcall	_clear_display_buffer
	pop	ar7
;	temperature_control_unit.c:405: switch(selected_setting_mode)
	mov	a,r7
	add	a,#0xff - 0x05
	jc	00106$
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	ljmp	00106$
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
;	temperature_control_unit.c:407: case MODE_CONFIGURE_TEMP_HIGH:
00101$:
;	temperature_control_unit.c:408: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_H;
	mov	_display_buffer,#0x76
;	temperature_control_unit.c:409: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_I;
	mov	(_display_buffer + 0x0002),#0x06
;	temperature_control_unit.c:410: break;
;	temperature_control_unit.c:411: case MODE_CONFIGURE_TEMP_LOW:
	ret
00102$:
;	temperature_control_unit.c:412: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_L;
	mov	_display_buffer,#0x38
;	temperature_control_unit.c:413: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_O;
	mov	(_display_buffer + 0x0002),#0x3F
;	temperature_control_unit.c:414: break;
;	temperature_control_unit.c:415: case MODE_CONFIGURE_TEMP_UNIT:
	ret
00103$:
;	temperature_control_unit.c:416: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_U;
	mov	_display_buffer,#0x3E
;	temperature_control_unit.c:417: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_n;
	mov	(_display_buffer + 0x0002),#0x54
;	temperature_control_unit.c:418: break;
;	temperature_control_unit.c:419: case MODE_CONFIGURE_TEMP_ROUNDING:
	ret
00104$:
;	temperature_control_unit.c:420: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_r;
	mov	_display_buffer,#0x50
;	temperature_control_unit.c:421: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_n;
	mov	(_display_buffer + 0x0002),#0x54
;	temperature_control_unit.c:422: display_buffer[DISPLAY_THIRD_DIGIT]  = LETTER_d;
	mov	(_display_buffer + 0x0006),#0x5E
;	temperature_control_unit.c:423: break;
;	temperature_control_unit.c:424: case MODE_CONFIGURE_BRIGHTNESS:
	ret
00105$:
;	temperature_control_unit.c:425: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_b;
	mov	_display_buffer,#0x7C
;	temperature_control_unit.c:426: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_r;
	mov	(_display_buffer + 0x0002),#0x50
;	temperature_control_unit.c:427: break;
;	temperature_control_unit.c:428: default: return;
;	temperature_control_unit.c:429: }
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_buttons'
;------------------------------------------------------------
;white                     Allocated to registers r7 
;black                     Allocated to registers r6 
;blue                      Allocated to registers r5 
;green                     Allocated to registers r4 
;------------------------------------------------------------
;	temperature_control_unit.c:432: void read_buttons(void)
;	-----------------------------------------
;	 function read_buttons
;	-----------------------------------------
_read_buttons:
;	temperature_control_unit.c:434: unsigned char white = BUTTON_WHITE;
	mov	c,_P1_0
	clr	a
	rlc	a
	mov	r7,a
;	temperature_control_unit.c:435: unsigned char black = BUTTON_BLACK;
	mov	c,_P1_1
	clr	a
	rlc	a
	mov	r6,a
;	temperature_control_unit.c:436: unsigned char blue  = BUTTON_BLUE;
	mov	c,_P1_2
	clr	a
	rlc	a
	mov	r5,a
;	temperature_control_unit.c:437: unsigned char green = BUTTON_GREEN;
	mov	c,_P1_3
	clr	a
	rlc	a
	mov	r4,a
;	temperature_control_unit.c:439: currently_pressed_buttons |= BUTTON_UP&((!white)<<0);
	mov	a,r7
	cjne	a,#0x01,00103$
00103$:
	clr	a
	rlc	a
	mov	r7,a
	anl	ar7,#0x01
	mov	r3,_currently_pressed_buttons
	mov	a,r7
	orl	a,r3
	mov	_currently_pressed_buttons,a
;	temperature_control_unit.c:440: currently_pressed_buttons |= BUTTON_DOWN&((!black)<<1);
	mov	a,r6
	cjne	a,#0x01,00104$
00104$:
	clr	a
	rlc	a
	add	a,acc
	mov	r6,a
	anl	ar6,#0x02
	mov	r7,_currently_pressed_buttons
	mov	a,r6
	orl	a,r7
	mov	_currently_pressed_buttons,a
;	temperature_control_unit.c:441: currently_pressed_buttons |= BUTTON_SET&((!blue) <<2);
	mov	a,r5
	cjne	a,#0x01,00105$
00105$:
	clr	a
	rlc	a
	add	a,acc
	add	a,acc
	mov	r5,a
	anl	ar5,#0x04
	mov	r7,_currently_pressed_buttons
	mov	a,r5
	orl	a,r7
	mov	_currently_pressed_buttons,a
;	temperature_control_unit.c:442: currently_pressed_buttons |= BUTTON_BACK&((!green)<<3);
	mov	a,r4
	cjne	a,#0x01,00106$
00106$:
	clr	a
	rlc	a
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r4,a
	anl	ar4,#0x08
	mov	r7,_currently_pressed_buttons
	mov	a,r4
	orl	a,r7
	mov	_currently_pressed_buttons,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;temp_sensor_config        Allocated to registers 
;currently_picked_mode     Allocated to registers r7 
;current_temp              Allocated to registers r0 r1 r2 r6 
;last_temp                 Allocated with name '_main_last_temp_1_89'
;------------------------------------------------------------
;	temperature_control_unit.c:445: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	temperature_control_unit.c:447: bool update_display = true;
	setb	_main_update_display_1_89
;	temperature_control_unit.c:451: unsigned char currently_picked_mode = MODE_CONFIGURE_TEMP_HIGH;
	mov	r7,#0x01
;	temperature_control_unit.c:453: float current_temp = 0, last_temp = 0;
	clr	a
	mov	_main_last_temp_1_89,a
	mov	(_main_last_temp_1_89 + 1),a
	mov	(_main_last_temp_1_89 + 2),a
	mov	(_main_last_temp_1_89 + 3),a
;	temperature_control_unit.c:456: delay(100); 
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay
;	temperature_control_unit.c:459: write_display_command(ENABLE_DISPLAY_OSCILLATOR);
	mov	dpl,#0x21
	lcall	_write_display_command
;	temperature_control_unit.c:460: write_display_command(ENABLE_DISPLAY);
	mov	dpl,#0x81
	lcall	_write_display_command
;	temperature_control_unit.c:461: write_display_command(SET_DISPLAY_BRIGHTNESS|HALF_BRIGHTNESS);
	mov	dpl,#0xE8
	lcall	_write_display_command
;	temperature_control_unit.c:467: write_temp_sensor_config(temp_sensor_config);
	mov	dpl,#0x03
	lcall	_write_temp_sensor_config
	pop	ar7
;	temperature_control_unit.c:474: while (true)
00142$:
;	temperature_control_unit.c:476: read_buttons();
	push	ar7
	lcall	_read_buttons
	pop	ar7
;	temperature_control_unit.c:477: switch(current_user_mode)
	mov	a,_current_user_mode
	add	a,#0xff - 0x06
	jnc	00191$
	ljmp	00137$
00191$:
	mov	a,_current_user_mode
	mov	b,#0x03
	mul	ab
	mov	dptr,#00192$
	jmp	@a+dptr
00192$:
	ljmp	00101$
	ljmp	00106$
	ljmp	00112$
	ljmp	00118$
	ljmp	00119$
	ljmp	00120$
	ljmp	00121$
;	temperature_control_unit.c:479: case MODE_DISPLAY_TEMPERATURE:
00101$:
;	temperature_control_unit.c:480: if (currently_pressed_buttons & BUTTON_SET) 
	mov	a,_currently_pressed_buttons
	jnb	acc.2,00103$
;	temperature_control_unit.c:482: current_user_mode = MODE_PICK_SETTING;
	mov	_current_user_mode,#0x06
;	temperature_control_unit.c:483: continue;
	sjmp	00142$
00103$:
;	temperature_control_unit.c:485: current_temp = read_temp_sensor();
	push	ar7
	lcall	_read_temp_sensor
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r6,a
;	temperature_control_unit.c:486: if (last_temp != current_temp)
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar2
	push	ar6
	mov	dpl,_main_last_temp_1_89
	mov	dph,(_main_last_temp_1_89 + 1)
	mov	b,(_main_last_temp_1_89 + 2)
	mov	a,(_main_last_temp_1_89 + 3)
	lcall	___fseq
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,r5
	jz	00194$
	ljmp	00138$
00194$:
;	temperature_control_unit.c:488: update_displayed_temperature(current_temp);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r6
	push	ar7
	push	ar6
	push	ar2
	push	ar1
	push	ar0
	lcall	_update_displayed_temperature
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar6
	pop	ar7
;	temperature_control_unit.c:489: last_temp = current_temp;
	mov	_main_last_temp_1_89,r0
	mov	(_main_last_temp_1_89 + 1),r1
	mov	(_main_last_temp_1_89 + 2),r2
	mov	(_main_last_temp_1_89 + 3),r6
;	temperature_control_unit.c:490: update_display = true;
	setb	_main_update_display_1_89
;	temperature_control_unit.c:492: break;
	ljmp	00138$
;	temperature_control_unit.c:493: case MODE_CONFIGURE_TEMP_HIGH    :
00106$:
;	temperature_control_unit.c:494: if (currently_pressed_buttons & BUTTON_SET)
	mov	a,_currently_pressed_buttons
	jnb	acc.2,00110$
;	temperature_control_unit.c:496: current_user_mode = MODE_DISPLAY_TEMPERATURE;
	mov	_current_user_mode,#0x00
	sjmp	00111$
00110$:
;	temperature_control_unit.c:498: else if (currently_pressed_buttons & BUTTON_BACK)
	mov	a,_currently_pressed_buttons
	jnb	acc.3,00111$
;	temperature_control_unit.c:500: current_user_mode = MODE_PICK_SETTING;
	mov	_current_user_mode,#0x06
00111$:
;	temperature_control_unit.c:502: update_displayed_temperature(user_setting_temp_high_threshold);
	mov	dpl,_user_setting_temp_high_threshold
	mov	dph,(_user_setting_temp_high_threshold + 1)
	push	ar7
	lcall	___sint2fs
	lcall	_update_displayed_temperature
	pop	ar7
;	temperature_control_unit.c:503: update_display = true;
	setb	_main_update_display_1_89
;	temperature_control_unit.c:504: break;
	ljmp	00138$
;	temperature_control_unit.c:505: case MODE_CONFIGURE_TEMP_LOW     :
00112$:
;	temperature_control_unit.c:506: if (currently_pressed_buttons & BUTTON_SET)
	mov	a,_currently_pressed_buttons
	jnb	acc.2,00116$
;	temperature_control_unit.c:508: current_user_mode = MODE_DISPLAY_TEMPERATURE;
	mov	_current_user_mode,#0x00
	sjmp	00117$
00116$:
;	temperature_control_unit.c:510: else if (currently_pressed_buttons & BUTTON_BACK)
	mov	a,_currently_pressed_buttons
	jnb	acc.3,00117$
;	temperature_control_unit.c:512: current_user_mode = MODE_PICK_SETTING;
	mov	_current_user_mode,#0x06
00117$:
;	temperature_control_unit.c:514: update_displayed_temperature(user_setting_temp_low_threshold);
	mov	dpl,_user_setting_temp_low_threshold
	mov	dph,(_user_setting_temp_low_threshold + 1)
	push	ar7
	lcall	___sint2fs
	lcall	_update_displayed_temperature
	pop	ar7
;	temperature_control_unit.c:515: update_display = true;
	setb	_main_update_display_1_89
;	temperature_control_unit.c:516: break;
;	temperature_control_unit.c:517: case MODE_CONFIGURE_TEMP_UNIT    :
	sjmp	00138$
00118$:
;	temperature_control_unit.c:518: break;
;	temperature_control_unit.c:519: case MODE_CONFIGURE_TEMP_ROUNDING:
	sjmp	00138$
00119$:
;	temperature_control_unit.c:520: break;
;	temperature_control_unit.c:521: case MODE_CONFIGURE_BRIGHTNESS   :
	sjmp	00138$
00120$:
;	temperature_control_unit.c:522: break;
;	temperature_control_unit.c:523: case MODE_PICK_SETTING:
	sjmp	00138$
00121$:
;	temperature_control_unit.c:524: if (BUTTON_DOWN & currently_pressed_buttons & debounced_buttons)
	mov	a,#0x02
	anl	a,_currently_pressed_buttons
	anl	a,_debounced_buttons
	jz	00125$
;	temperature_control_unit.c:526: --currently_picked_mode;
	dec	r7
;	temperature_control_unit.c:527: if (currently_picked_mode < MODE_CONFIGURE_TEMP_HIGH) 
	cjne	r7,#0x01,00200$
00200$:
	jnc	00123$
;	temperature_control_unit.c:529: currently_picked_mode = MODE_CONFIGURE_BRIGHTNESS;
	mov	r7,#0x05
;	temperature_control_unit.c:530: updated_displayed_setting_selection(currently_picked_mode);
	mov	dpl,#0x05
	push	ar7
	lcall	_updated_displayed_setting_selection
	pop	ar7
00123$:
;	temperature_control_unit.c:532: debounced_buttons |= BUTTON_DOWN;
	orl	_debounced_buttons,#0x02
	sjmp	00126$
00125$:
;	temperature_control_unit.c:534: debounced_buttons &= (!BUTTON_DOWN);
	mov	_debounced_buttons,#0x00
00126$:
;	temperature_control_unit.c:536: if (BUTTON_UP & currently_pressed_buttons & debounced_buttons)
	mov	a,#0x01
	anl	a,_currently_pressed_buttons
	anl	a,_debounced_buttons
	jz	00130$
;	temperature_control_unit.c:538: ++currently_picked_mode;
	inc	r7
;	temperature_control_unit.c:539: if (currently_picked_mode > MODE_CONFIGURE_BRIGHTNESS) 
	mov	a,r7
	add	a,#0xff - 0x05
	jnc	00128$
;	temperature_control_unit.c:541: currently_picked_mode = MODE_CONFIGURE_TEMP_HIGH;
	mov	r7,#0x01
;	temperature_control_unit.c:542: updated_displayed_setting_selection(currently_picked_mode);
	mov	dpl,#0x01
	push	ar7
	lcall	_updated_displayed_setting_selection
	pop	ar7
00128$:
;	temperature_control_unit.c:544: debounced_buttons |= BUTTON_UP;
	orl	_debounced_buttons,#0x01
	sjmp	00131$
00130$:
;	temperature_control_unit.c:546: debounced_buttons &= (!BUTTON_UP);
	mov	_debounced_buttons,#0x00
00131$:
;	temperature_control_unit.c:548: if (currently_pressed_buttons & BUTTON_SET & debounced_buttons)
	mov	a,#0x04
	anl	a,_currently_pressed_buttons
	anl	a,_debounced_buttons
	jz	00135$
;	temperature_control_unit.c:550: current_user_mode = currently_picked_mode;
	mov	_current_user_mode,r7
	sjmp	00136$
00135$:
;	temperature_control_unit.c:552: else if (currently_pressed_buttons & BUTTON_BACK & debounced_buttons)
	mov	a,#0x08
	anl	a,_currently_pressed_buttons
	anl	a,_debounced_buttons
	jz	00136$
;	temperature_control_unit.c:554: current_user_mode = MODE_DISPLAY_TEMPERATURE;
	mov	_current_user_mode,#0x00
00136$:
;	temperature_control_unit.c:557: update_display = true;
	setb	_main_update_display_1_89
;	temperature_control_unit.c:558: break;
;	temperature_control_unit.c:559: default: 
	sjmp	00138$
00137$:
;	temperature_control_unit.c:560: current_user_mode = MODE_DISPLAY_TEMPERATURE; 
	mov	_current_user_mode,#0x00
;	temperature_control_unit.c:561: update_display = true; 
	setb	_main_update_display_1_89
;	temperature_control_unit.c:563: }
00138$:
;	temperature_control_unit.c:565: if (update_display) 
	jb	_main_update_display_1_89,00206$
	ljmp	00142$
00206$:
;	temperature_control_unit.c:567: write_to_display();
	push	ar7
	lcall	_write_to_display
	pop	ar7
;	temperature_control_unit.c:568: update_display = false;
	clr	_main_update_display_1_89
	ljmp	00142$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
