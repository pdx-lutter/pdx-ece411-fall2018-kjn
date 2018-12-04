;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Tue Dec  4 00:28:41 2018
;--------------------------------------------------------
	.module num_display
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _delay
	.globl _write_command
	.globl _write_display
	.globl _i2c_read
	.globl _i2c_send
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_delay
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
	.globl _once
	.globl _display_buffer
	.globl _number_table
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_once::
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
;	num_display.c:49: unsigned char number_table[] = {
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
;	num_display.c:69: unsigned char display_buffer[] = {
	mov	_display_buffer,#0x06
	mov	(_display_buffer + 0x0001),#0x00
	mov	(_display_buffer + 0x0002),#0x5B
	mov	(_display_buffer + 0x0003),#0x00
	mov	(_display_buffer + 0x0004),#0x00
	mov	(_display_buffer + 0x0005),#0x00
	mov	(_display_buffer + 0x0006),#0x4F
	mov	(_display_buffer + 0x0007),#0x00
	mov	(_display_buffer + 0x0008),#0x66
	mov	(_display_buffer + 0x0009),#0x00
;	num_display.c:217: bool once = true;
	setb	_once
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
;	num_display.c:87: void i2c_delay()
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
;	num_display.c:90: for (i = 0; i < 5; i++);
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
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	num_display.c:93: void i2c_start()
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	num_display.c:95: SCL = 0;
	clr	_P2_1
;	num_display.c:96: SDA = 1;
	setb	_P2_0
;	num_display.c:97: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:98: SCL = 1;
	setb	_P2_1
;	num_display.c:99: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:100: SDA = 0;
	clr	_P2_0
;	num_display.c:101: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:102: SCL = 0;
	clr	_P2_1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	num_display.c:105: void i2c_stop()
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	num_display.c:107: SCL = 0;
	clr	_P2_1
;	num_display.c:108: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:109: SDA = 0;
	clr	_P2_0
;	num_display.c:110: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:111: SCL = 1;
	setb	_P2_1
;	num_display.c:112: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:113: SDA = 1;
	setb	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_send'
;------------------------------------------------------------
;data_out                  Allocated to registers r7 
;i                         Allocated to registers r6 
;ack_bit                   Allocated to registers r7 
;------------------------------------------------------------
;	num_display.c:116: unsigned char i2c_send(unsigned char data_out)
;	-----------------------------------------
;	 function i2c_send
;	-----------------------------------------
_i2c_send:
	mov	r7,dpl
;	num_display.c:119: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00105$:
;	num_display.c:120: SCL = 0;
	clr	_P2_1
;	num_display.c:121: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	num_display.c:122: if ((data_out & 0x80) == 0) {
	mov	a,r7
	jb	acc.7,00102$
;	num_display.c:123: SDA = 0;
	clr	_P2_0
	sjmp	00103$
00102$:
;	num_display.c:125: SDA = 1;
	setb	_P2_0
00103$:
;	num_display.c:127: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
;	num_display.c:128: SCL = 1;
	setb	_P2_1
;	num_display.c:129: i2c_delay();
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	num_display.c:130: data_out<<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	num_display.c:119: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00120$
00120$:
	jc	00105$
;	num_display.c:132: SCL = 0;
	clr	_P2_1
;	num_display.c:133: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:134: SDA = 1;
	setb	_P2_0
;	num_display.c:135: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:136: SCL = 1;
	setb	_P2_1
;	num_display.c:137: i2c_delay();
	lcall	_i2c_delay
;	num_display.c:138: ack_bit = SDA;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r7,a
;	num_display.c:139: i2c_delay();
	push	ar7
	lcall	_i2c_delay
	pop	ar7
;	num_display.c:140: SCL = 0;
	clr	_P2_1
;	num_display.c:141: return ack_bit;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;Data                      Allocated to registers r7 
;------------------------------------------------------------
;	num_display.c:144: unsigned char i2c_read()
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
;	num_display.c:146: unsigned char i, Data=0;
	mov	r7,#0x00
;	num_display.c:147: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00106$:
;	num_display.c:148: SCL = 1;
	setb	_P2_1
;	num_display.c:149: if(SDA)
	jnb	_P2_0,00102$
;	num_display.c:150: Data |=1;
	orl	ar7,#0x01
00102$:
;	num_display.c:151: if(i<7)
	cjne	r6,#0x07,00124$
00124$:
	jnc	00104$
;	num_display.c:152: Data<<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
00104$:
;	num_display.c:153: SCL = 0;
	clr	_P2_1
;	num_display.c:147: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00126$
00126$:
	jc	00106$
;	num_display.c:155: return Data;
	mov	dpl,r7
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
;	num_display.c:158: void write_display(void)
;	-----------------------------------------
;	 function write_display
;	-----------------------------------------
_write_display:
;	num_display.c:167: i2c_start();
	lcall	_i2c_start
;	num_display.c:168: ack = i2c_send(address_with_write);
	mov	dpl,#0xE0
	lcall	_i2c_send
;	num_display.c:178: ack = i2c_send(0x00); //0x00 is the starting address of the 7-set disp
	mov	dpl,#0x00
	lcall	_i2c_send
;	num_display.c:179: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
	mov	r7,#0x00
00102$:
;	num_display.c:180: i2c_delay();
	push	ar7
	lcall	_i2c_delay
	pop	ar7
;	num_display.c:181: ack = i2c_send(display_buffer[i]);
	mov	a,r7
	add	a,#_display_buffer
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_i2c_send
	pop	ar7
;	num_display.c:179: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
	inc	r7
	cjne	r7,#0x0A,00113$
00113$:
	jc	00102$
;	num_display.c:183: i2c_stop();
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'write_command'
;------------------------------------------------------------
;command_byte              Allocated to registers r7 
;address                   Allocated to registers 
;write_bit                 Allocated to registers 
;address_with_write        Allocated to registers 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	num_display.c:187: void write_command(unsigned char command_byte)
;	-----------------------------------------
;	 function write_command
;	-----------------------------------------
_write_command:
	mov	r7,dpl
;	num_display.c:200: i2c_start();
	push	ar7
	lcall	_i2c_start
;	num_display.c:201: ack = i2c_send(address_with_write);
	mov	dpl,#0xE0
	lcall	_i2c_send
	pop	ar7
;	num_display.c:207: ack = i2c_send(command_byte);
	mov	dpl,r7
	lcall	_i2c_send
;	num_display.c:208: i2c_stop();
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	num_display.c:211: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	num_display.c:214: for(i=0;i<500;i++);
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
;	num_display.c:219: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	num_display.c:226: while (true) 
00104$:
;	num_display.c:228: if (once) 
	jnb	_once,00104$
;	num_display.c:231: delay();
	lcall	_delay
;	num_display.c:233: write_command(ENABLE_DISPLAY_OSCILLATOR);
	mov	dpl,#0x21
	lcall	_write_command
;	num_display.c:234: delay();
	lcall	_delay
;	num_display.c:235: write_command(ENABLE_DISPLAY);
	mov	dpl,#0x81
	lcall	_write_command
;	num_display.c:236: delay();
	lcall	_delay
;	num_display.c:239: write_display();
	lcall	_write_display
;	num_display.c:240: once = false;
	clr	_once
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
