;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Tue Dec  4 05:30:11 2018
;--------------------------------------------------------
	.module temp_sensor
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2c_scl_write_PARM_2
	.globl _i2c_sda_write_PARM_2
	.globl _main
	.globl _delay
	.globl _write_temp_sensor_config
	.globl _write_display_command
	.globl _write_display
	.globl _read_temp_sensor
	.globl _i2c_read_byte
	.globl _i2c_send_byte
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_scl_read
	.globl _i2c_scl_write
	.globl _i2c_sda_read
	.globl _i2c_sda_write
	.globl _i2c_delay
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
	.globl _display_buffer
	.globl _number_table
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
_i2c_send_byte_PARM_2:
	.ds 1
_read_temp_sensor_slope_1_50:
	.ds 1
_read_temp_sensor_remainder_1_50:
	.ds 1
_read_temp_sensor_sloc0_1_0:
	.ds 4
_main_current_temp_1_63:
	.ds 4
_main_last_temp_1_63:
	.ds 4
_main_temp_int_1_63:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_i2c_sda_write_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_i2c_scl_write_PARM_2:
	.ds 1
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
_main_update_display_1_63:
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
;	temp_sensor.c:37: unsigned char number_table[] = {
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
;	temp_sensor.c:57: unsigned char display_buffer[] = {
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
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	temp_sensor.c:75: void i2c_delay()
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	temp_sensor.c:78: for (i = 0; i < 5; i++);
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
;	temp_sensor.c:81: void i2c_sda_write(unsigned char sfr_address, unsigned char value)
;	-----------------------------------------
;	 function i2c_sda_write
;	-----------------------------------------
_i2c_sda_write:
	mov	r7,dpl
;	temp_sensor.c:83: switch (sfr_address)
	cjne	r7,#0xA0,00112$
	sjmp	00101$
00112$:
;	temp_sensor.c:85: case DISPLAY_SFR: P2_0 = value; break;
	cjne	r7,#0xB0,00104$
	sjmp	00102$
00101$:
	mov	a,_i2c_sda_write_PARM_2
	add	a,#0xff
	mov	_P2_0,c
;	temp_sensor.c:86: case TEMP_SENSOR_SFR: P3_5 = value; break;
	ret
00102$:
	mov	a,_i2c_sda_write_PARM_2
	add	a,#0xff
	mov	_P3_5,c
;	temp_sensor.c:87: }
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_sda_read'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;result                    Allocated to registers r6 
;------------------------------------------------------------
;	temp_sensor.c:90: unsigned char i2c_sda_read(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_sda_read
;	-----------------------------------------
_i2c_sda_read:
	mov	r7,dpl
;	temp_sensor.c:92: unsigned char result = 0;
	mov	r6,#0x00
;	temp_sensor.c:93: switch (sfr_address)
	cjne	r7,#0xA0,00112$
	sjmp	00101$
00112$:
;	temp_sensor.c:95: case DISPLAY_SFR: result = P2_0; break;
	cjne	r7,#0xB0,00103$
	sjmp	00102$
00101$:
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r6,a
;	temp_sensor.c:96: case TEMP_SENSOR_SFR: result = P3_5; break;
	sjmp	00103$
00102$:
	mov	c,_P3_5
	clr	a
	rlc	a
	mov	r6,a
;	temp_sensor.c:97: }
00103$:
;	temp_sensor.c:98: return result;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_scl_write'
;------------------------------------------------------------
;value                     Allocated with name '_i2c_scl_write_PARM_2'
;sfr_address               Allocated to registers r7 
;------------------------------------------------------------
;	temp_sensor.c:101: void i2c_scl_write(unsigned char sfr_address, unsigned char value)
;	-----------------------------------------
;	 function i2c_scl_write
;	-----------------------------------------
_i2c_scl_write:
	mov	r7,dpl
;	temp_sensor.c:103: switch (sfr_address)
	cjne	r7,#0xA0,00112$
	sjmp	00101$
00112$:
;	temp_sensor.c:105: case DISPLAY_SFR: P2_1 = value; break;
	cjne	r7,#0xB0,00104$
	sjmp	00102$
00101$:
	mov	a,_i2c_scl_write_PARM_2
	add	a,#0xff
	mov	_P2_1,c
;	temp_sensor.c:106: case TEMP_SENSOR_SFR: P3_6 = value; break;
	ret
00102$:
	mov	a,_i2c_scl_write_PARM_2
	add	a,#0xff
	mov	_P3_6,c
;	temp_sensor.c:107: }
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_scl_read'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;result                    Allocated to registers r6 
;------------------------------------------------------------
;	temp_sensor.c:110: unsigned char i2c_scl_read(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_scl_read
;	-----------------------------------------
_i2c_scl_read:
	mov	r7,dpl
;	temp_sensor.c:112: unsigned char result = 0;
	mov	r6,#0x00
;	temp_sensor.c:113: switch (sfr_address)
	cjne	r7,#0xA0,00112$
	sjmp	00101$
00112$:
;	temp_sensor.c:115: case DISPLAY_SFR: result = P2_1; break;
	cjne	r7,#0xB0,00103$
	sjmp	00102$
00101$:
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r6,a
;	temp_sensor.c:116: case TEMP_SENSOR_SFR: result = P3_6; break;
	sjmp	00103$
00102$:
	mov	c,_P3_6
	clr	a
	rlc	a
	mov	r6,a
;	temp_sensor.c:117: }
00103$:
;	temp_sensor.c:118: return result;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;------------------------------------------------------------
;	temp_sensor.c:121: void i2c_start(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	temp_sensor.c:123: i2c_scl_write(sfr_address, 0);
	mov	r7,dpl
	mov	_i2c_scl_write_PARM_2,#0x00
	push	ar7
	lcall	_i2c_scl_write
	pop	ar7
;	temp_sensor.c:124: i2c_sda_write(sfr_address, 1);
	mov	_i2c_sda_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
;	temp_sensor.c:125: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:126: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
;	temp_sensor.c:127: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:128: i2c_sda_write(sfr_address, 0);
	mov	_i2c_sda_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
;	temp_sensor.c:129: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:130: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	ljmp	_i2c_scl_write
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;------------------------------------------------------------
;	temp_sensor.c:133: void i2c_stop(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	temp_sensor.c:135: i2c_scl_write(sfr_address, 0);
	mov	r7,dpl
	mov	_i2c_scl_write_PARM_2,#0x00
	push	ar7
	lcall	_i2c_scl_write
;	temp_sensor.c:136: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:137: i2c_sda_write(sfr_address, 0);
	mov	_i2c_sda_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
;	temp_sensor.c:138: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:139: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
;	temp_sensor.c:140: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:141: i2c_sda_write(sfr_address, 1);
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
;	temp_sensor.c:144: unsigned char i2c_send_byte(unsigned char sfr_address, unsigned char data_out)
;	-----------------------------------------
;	 function i2c_send_byte
;	-----------------------------------------
_i2c_send_byte:
	mov	r7,dpl
;	temp_sensor.c:147: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00105$:
;	temp_sensor.c:148: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_scl_write
;	temp_sensor.c:149: i2c_delay();
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	temp_sensor.c:150: if ((data_out & 0x80) == 0) {
	mov	a,_i2c_send_byte_PARM_2
	jb	acc.7,00102$
;	temp_sensor.c:151: i2c_sda_write(sfr_address, 0);
	mov	_i2c_sda_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_sda_write
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	temp_sensor.c:153: i2c_sda_write(sfr_address, 1);
	mov	_i2c_sda_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_sda_write
	pop	ar6
	pop	ar7
00103$:
;	temp_sensor.c:155: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	temp_sensor.c:156: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_i2c_scl_write
;	temp_sensor.c:157: i2c_delay();
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	temp_sensor.c:158: data_out<<=1;
	mov	a,_i2c_send_byte_PARM_2
	add	a,_i2c_send_byte_PARM_2
	mov	_i2c_send_byte_PARM_2,a
;	temp_sensor.c:147: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00120$
00120$:
	jc	00105$
;	temp_sensor.c:160: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
;	temp_sensor.c:161: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:162: i2c_sda_write(sfr_address, 1);
	mov	_i2c_sda_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_write
;	temp_sensor.c:163: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:164: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_i2c_scl_write
;	temp_sensor.c:165: i2c_delay();
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:167: ack_bit = i2c_sda_read(sfr_address);
	mov	dpl,r7
	push	ar7
	lcall	_i2c_sda_read
	mov	r6,dpl
;	temp_sensor.c:168: i2c_delay();
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	temp_sensor.c:169: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar6
	lcall	_i2c_scl_write
	pop	ar6
;	temp_sensor.c:171: return ack_bit;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_byte'
;------------------------------------------------------------
;sfr_address               Allocated to registers r7 
;i                         Allocated to registers r5 
;received                  Allocated to registers r6 
;------------------------------------------------------------
;	temp_sensor.c:174: unsigned char i2c_read_byte(unsigned char sfr_address)
;	-----------------------------------------
;	 function i2c_read_byte
;	-----------------------------------------
_i2c_read_byte:
	mov	r7,dpl
;	temp_sensor.c:176: unsigned char i, received = 0;
	mov	r6,#0x00
;	temp_sensor.c:177: for (i = 0; i < 8; i++) {
	mov	r5,#0x00
00106$:
;	temp_sensor.c:178: i2c_scl_write(sfr_address, 1);
	mov	_i2c_scl_write_PARM_2,#0x01
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_scl_write
	pop	ar5
	pop	ar6
	pop	ar7
;	temp_sensor.c:179: if(i2c_sda_read(sfr_address))
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
;	temp_sensor.c:180: received |= 1;
	orl	ar6,#0x01
00102$:
;	temp_sensor.c:181: if(i < 7)
	cjne	r5,#0x07,00124$
00124$:
	jnc	00104$
;	temp_sensor.c:182: received <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
00104$:
;	temp_sensor.c:183: i2c_scl_write(sfr_address, 0);
	mov	_i2c_scl_write_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_scl_write
	pop	ar5
	pop	ar6
	pop	ar7
;	temp_sensor.c:177: for (i = 0; i < 8; i++) {
	inc	r5
	cjne	r5,#0x08,00126$
00126$:
	jc	00106$
;	temp_sensor.c:185: return received;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_temp_sensor'
;------------------------------------------------------------
;first                     Allocated to registers r7 
;second                    Allocated to registers 
;slope                     Allocated with name '_read_temp_sensor_slope_1_50'
;remainder                 Allocated with name '_read_temp_sensor_remainder_1_50'
;address_byte              Allocated to registers 
;ack                       Allocated to registers 
;temperature               Allocated to registers r2 r3 r4 r7 
;sloc0                     Allocated with name '_read_temp_sensor_sloc0_1_0'
;------------------------------------------------------------
;	temp_sensor.c:196: float read_temp_sensor(void)
;	-----------------------------------------
;	 function read_temp_sensor
;	-----------------------------------------
_read_temp_sensor:
;	temp_sensor.c:207: write_temp_sensor_command(READ_TEMPERATURE);
	mov	dpl,#0xAA
	lcall	_write_temp_sensor_command
;	temp_sensor.c:210: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_start
;	temp_sensor.c:211: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	mov	_i2c_send_byte_PARM_2,#0x91
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temp_sensor.c:212: first = i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_read_byte
	mov	r7,dpl
;	temp_sensor.c:213: second = i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	push	ar7
	lcall	_i2c_read_byte
;	temp_sensor.c:215: write_temp_sensor_command(READ_COUNT_REMAINDER);
	mov	dpl,#0xA8
	lcall	_write_temp_sensor_command
;	temp_sensor.c:216: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_start
;	temp_sensor.c:217: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	mov	_i2c_send_byte_PARM_2,#0x91
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temp_sensor.c:218: remainder = i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_read_byte
	mov	_read_temp_sensor_remainder_1_50,dpl
;	temp_sensor.c:220: write_temp_sensor_command(READ_SLOPE);
	mov	dpl,#0xA9
	lcall	_write_temp_sensor_command
;	temp_sensor.c:221: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_start
;	temp_sensor.c:222: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
	mov	_i2c_send_byte_PARM_2,#0x91
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temp_sensor.c:223: slope = i2c_read_byte(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_read_byte
	mov	_read_temp_sensor_slope_1_50,dpl
;	temp_sensor.c:225: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_stop
	pop	ar7
;	temp_sensor.c:227: temperature += (float)first;
	mov	dpl,r7
	lcall	___schar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
;	temp_sensor.c:229: temperature = temperature - 0.25 + (slope - remainder) / slope;
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3E
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	___fssub
	mov	_read_temp_sensor_sloc0_1_0,dpl
	mov	(_read_temp_sensor_sloc0_1_0 + 1),dph
	mov	(_read_temp_sensor_sloc0_1_0 + 2),b
	mov	(_read_temp_sensor_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r5,_read_temp_sensor_slope_1_50
	mov	r6,#0x00
	mov	r0,_read_temp_sensor_remainder_1_50
	mov	r1,#0x00
	mov	a,r5
	clr	c
	subb	a,r0
	mov	dpl,a
	mov	a,r6
	subb	a,r1
	mov	dph,a
	mov	__divsint_PARM_2,r5
	mov	(__divsint_PARM_2 + 1),r6
	lcall	__divsint
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r5,b
	mov	r6,a
	push	ar0
	push	ar1
	push	ar5
	push	ar6
	mov	dpl,_read_temp_sensor_sloc0_1_0
	mov	dph,(_read_temp_sensor_sloc0_1_0 + 1)
	mov	b,(_read_temp_sensor_sloc0_1_0 + 2)
	mov	a,(_read_temp_sensor_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	temp_sensor.c:239: return temperature;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_display'
;------------------------------------------------------------
;address                   Allocated to registers 
;write_bit                 Allocated to registers 
;address_with_write        Allocated to registers 
;i                         Allocated to registers r7 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	temp_sensor.c:242: void write_display(void)
;	-----------------------------------------
;	 function write_display
;	-----------------------------------------
_write_display:
;	temp_sensor.c:251: i2c_start(DISPLAY_SFR);
	mov	dpl,#0xA0
	lcall	_i2c_start
;	temp_sensor.c:252: ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
	mov	_i2c_send_byte_PARM_2,#0xE0
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
;	temp_sensor.c:262: ack = i2c_send_byte(DISPLAY_SFR, 0x00); //0x00 is the starting address of the 7-set disp
	mov	_i2c_send_byte_PARM_2,#0x00
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
;	temp_sensor.c:263: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
	mov	r7,#0x00
00102$:
;	temp_sensor.c:264: i2c_delay();
	push	ar7
	lcall	_i2c_delay
	pop	ar7
;	temp_sensor.c:265: ack = i2c_send_byte(DISPLAY_SFR, display_buffer[i]);
	mov	a,r7
	add	a,#_display_buffer
	mov	r1,a
	mov	_i2c_send_byte_PARM_2,@r1
	mov	dpl,#0xA0
	push	ar7
	lcall	_i2c_send_byte
	pop	ar7
;	temp_sensor.c:263: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
	inc	r7
	cjne	r7,#0x0A,00113$
00113$:
	jc	00102$
;	temp_sensor.c:267: i2c_stop(DISPLAY_SFR);
	mov	dpl,#0xA0
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'write_display_command'
;------------------------------------------------------------
;command_byte              Allocated to registers r7 
;address                   Allocated to registers 
;write_bit                 Allocated to registers 
;address_with_write        Allocated to registers 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	temp_sensor.c:271: void write_display_command(unsigned char command_byte)
;	-----------------------------------------
;	 function write_display_command
;	-----------------------------------------
_write_display_command:
	mov	r7,dpl
;	temp_sensor.c:284: i2c_start(DISPLAY_SFR);
	mov	dpl,#0xA0
	push	ar7
	lcall	_i2c_start
;	temp_sensor.c:285: ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
	mov	_i2c_send_byte_PARM_2,#0xE0
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
	pop	ar7
;	temp_sensor.c:291: ack = i2c_send_byte(DISPLAY_SFR, command_byte);
	mov	_i2c_send_byte_PARM_2,r7
	mov	dpl,#0xA0
	lcall	_i2c_send_byte
;	temp_sensor.c:292: i2c_stop(DISPLAY_SFR);
	mov	dpl,#0xA0
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'write_temp_sensor_config'
;------------------------------------------------------------
;config                    Allocated to registers r7 
;address_byte              Allocated to registers 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	temp_sensor.c:295: void write_temp_sensor_config(unsigned char config)
;	-----------------------------------------
;	 function write_temp_sensor_config
;	-----------------------------------------
_write_temp_sensor_config:
	mov	r7,dpl
;	temp_sensor.c:300: write_temp_sensor_command(ACCESS_TEMP_SENSOR_CONFIG);
	mov	dpl,#0xAC
	push	ar7
	lcall	_write_temp_sensor_command
	pop	ar7
;	temp_sensor.c:301: ack = i2c_send_byte(TEMP_SENSOR_SFR, config);
	mov	_i2c_send_byte_PARM_2,r7
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
;	temp_sensor.c:302: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'write_temp_sensor_command'
;------------------------------------------------------------
;command_byte              Allocated to registers r7 
;control_byte              Allocated to registers 
;write_bit                 Allocated to registers 
;address_with_write        Allocated to registers 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	temp_sensor.c:306: void write_temp_sensor_command(unsigned char command_byte)
;	-----------------------------------------
;	 function write_temp_sensor_command
;	-----------------------------------------
_write_temp_sensor_command:
	mov	r7,dpl
;	temp_sensor.c:340: i2c_start(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	push	ar7
	lcall	_i2c_start
;	temp_sensor.c:341: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_with_write);
	mov	_i2c_send_byte_PARM_2,#0x90
	mov	dpl,#0xB0
	lcall	_i2c_send_byte
	pop	ar7
;	temp_sensor.c:342: ack = i2c_send_byte(TEMP_SENSOR_SFR, command_byte);
	mov	_i2c_send_byte_PARM_2,r7
	mov	dpl,#0xB0
	ljmp	_i2c_send_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	temp_sensor.c:345: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	temp_sensor.c:348: for(i=0;i<500;i++);
	mov	r6,#0xF4
	mov	r7,#0x01
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;temp_sensor_config        Allocated to registers 
;first_num                 Allocated to registers r7 
;second_num                Allocated to registers r6 
;current_temp              Allocated with name '_main_current_temp_1_63'
;last_temp                 Allocated with name '_main_last_temp_1_63'
;temp_fraction             Allocated to registers r4 r5 r6 r7 
;temp_int                  Allocated with name '_main_temp_int_1_63'
;------------------------------------------------------------
;	temp_sensor.c:351: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	temp_sensor.c:353: bool update_display = true;
	setb	_main_update_display_1_63
;	temp_sensor.c:357: float current_temp = 0, last_temp = 0;
	clr	a
	mov	_main_last_temp_1_63,a
	mov	(_main_last_temp_1_63 + 1),a
	mov	(_main_last_temp_1_63 + 2),a
	mov	(_main_last_temp_1_63 + 3),a
;	temp_sensor.c:358: float temp_fraction = 0.0, temp_int = 0.0;
	mov	_main_temp_int_1_63,a
	mov	(_main_temp_int_1_63 + 1),a
	mov	(_main_temp_int_1_63 + 2),a
	mov	(_main_temp_int_1_63 + 3),a
;	temp_sensor.c:360: delay();
	lcall	_delay
;	temp_sensor.c:363: write_display_command(ENABLE_DISPLAY_OSCILLATOR);
	mov	dpl,#0x21
	lcall	_write_display_command
;	temp_sensor.c:364: write_display_command(ENABLE_DISPLAY);
	mov	dpl,#0x81
	lcall	_write_display_command
;	temp_sensor.c:370: write_temp_sensor_config(temp_sensor_config);
	mov	dpl,#0x02
	lcall	_write_temp_sensor_config
;	temp_sensor.c:371: write_temp_sensor_command(START_TEMP_SENSOR_CONVERSION);
	mov	dpl,#0xEE
	lcall	_write_temp_sensor_command
;	temp_sensor.c:372: i2c_stop(TEMP_SENSOR_SFR);
	mov	dpl,#0xB0
	lcall	_i2c_stop
;	temp_sensor.c:378: while (true) 
00108$:
;	temp_sensor.c:380: current_temp = read_temp_sensor();
	lcall	_read_temp_sensor
	mov	_main_current_temp_1_63,dpl
	mov	(_main_current_temp_1_63 + 1),dph
	mov	(_main_current_temp_1_63 + 2),b
	mov	(_main_current_temp_1_63 + 3),a
;	temp_sensor.c:381: if (last_temp != current_temp)
	push	_main_current_temp_1_63
	push	(_main_current_temp_1_63 + 1)
	push	(_main_current_temp_1_63 + 2)
	push	(_main_current_temp_1_63 + 3)
	mov	dpl,_main_last_temp_1_63
	mov	dph,(_main_last_temp_1_63 + 1)
	mov	b,(_main_last_temp_1_63 + 2)
	mov	a,(_main_last_temp_1_63 + 3)
	lcall	___fseq
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	jz	00124$
	ljmp	00104$
00124$:
;	temp_sensor.c:384: if (current_temp < 0) 
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_main_current_temp_1_63
	mov	dph,(_main_current_temp_1_63 + 1)
	mov	b,(_main_current_temp_1_63 + 2)
	mov	a,(_main_current_temp_1_63 + 3)
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r5
	jz	00102$
;	temp_sensor.c:387: current_temp *= -1;
	mov	a,(_main_current_temp_1_63 + 3)
	cpl	acc.7
	mov	(_main_current_temp_1_63 + 3),a
00102$:
;	temp_sensor.c:389: first_num = number_table[(int)current_temp / 10];
	mov	dpl,_main_current_temp_1_63
	mov	dph,(_main_current_temp_1_63 + 1)
	mov	b,(_main_current_temp_1_63 + 2)
	mov	a,(_main_current_temp_1_63 + 3)
	lcall	___fs2sint
	mov	r4,dpl
	mov	r5,dph
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r6,dpl
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,#_number_table
	mov	r1,a
	mov	ar7,@r1
;	temp_sensor.c:390: second_num = number_table[(int)current_temp % 10] | 0x80;
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	lcall	__modsint
	mov	r5,dpl
	pop	ar7
	mov	a,r5
	add	a,#_number_table
	mov	r1,a
	mov	ar6,@r1
	orl	ar6,#0x80
;	temp_sensor.c:392: display_buffer[0] = first_num;
	mov	_display_buffer,r7
;	temp_sensor.c:393: display_buffer[2] = second_num;
	mov	(_display_buffer + 0x0002),r6
;	temp_sensor.c:394: temp_fraction = modff(current_temp, &temp_int);
	mov	_modff_PARM_2,#_main_temp_int_1_63
	mov	(_modff_PARM_2 + 1),#0x00
	mov	(_modff_PARM_2 + 2),#0x40
	mov	dpl,_main_current_temp_1_63
	mov	dph,(_main_current_temp_1_63 + 1)
	mov	b,(_main_current_temp_1_63 + 2)
	mov	a,(_main_current_temp_1_63 + 3)
	lcall	_modff
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	temp_sensor.c:395: temp_fraction *= 100;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	temp_sensor.c:396: display_buffer[6] = number_table[(int)temp_fraction / 10];
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_number_table
	mov	r1,a
	mov	ar5,@r1
	mov	(_display_buffer + 0x0006),r5
;	temp_sensor.c:397: display_buffer[8] = number_table[(int)temp_fraction % 10];
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_number_table
	mov	r1,a
	mov	ar7,@r1
	mov	(_display_buffer + 0x0008),r7
;	temp_sensor.c:399: update_display = true;
	setb	_main_update_display_1_63
;	temp_sensor.c:400: last_temp = current_temp;
	mov	_main_last_temp_1_63,_main_current_temp_1_63
	mov	(_main_last_temp_1_63 + 1),(_main_current_temp_1_63 + 1)
	mov	(_main_last_temp_1_63 + 2),(_main_current_temp_1_63 + 2)
	mov	(_main_last_temp_1_63 + 3),(_main_current_temp_1_63 + 3)
00104$:
;	temp_sensor.c:402: if (update_display) 
	jb	_main_update_display_1_63,00126$
	ljmp	00108$
00126$:
;	temp_sensor.c:407: write_display();
	lcall	_write_display
;	temp_sensor.c:408: update_display = false;
	clr	_main_update_display_1_63
	ljmp	00108$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
