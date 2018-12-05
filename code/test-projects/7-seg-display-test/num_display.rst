                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Tue Dec  4 00:28:41 2018
                                      5 ;--------------------------------------------------------
                                      6 	.module num_display
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _delay
                                     14 	.globl _write_command
                                     15 	.globl _write_display
                                     16 	.globl _i2c_read
                                     17 	.globl _i2c_send
                                     18 	.globl _i2c_stop
                                     19 	.globl _i2c_start
                                     20 	.globl _i2c_delay
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _once
                                    118 	.globl _display_buffer
                                    119 	.globl _number_table
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000021                        235 _number_table::
      000021                        236 	.ds 16
      000031                        237 _display_buffer::
      000031                        238 	.ds 10
                                    239 ;--------------------------------------------------------
                                    240 ; overlayable items in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	OSEG    (OVR,DATA)
                                    243 	.area	OSEG    (OVR,DATA)
                                    244 	.area	OSEG    (OVR,DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; Stack segment in internal ram 
                                    247 ;--------------------------------------------------------
                                    248 	.area	SSEG
      00003B                        249 __start__stack:
      00003B                        250 	.ds	1
                                    251 
                                    252 ;--------------------------------------------------------
                                    253 ; indirectly addressable internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area ISEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area IABS    (ABS,DATA)
                                    260 	.area IABS    (ABS,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; bit data
                                    263 ;--------------------------------------------------------
                                    264 	.area BSEG    (BIT)
      000000                        265 _once::
      000000                        266 	.ds 1
                                    267 ;--------------------------------------------------------
                                    268 ; paged external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area PSEG    (PAG,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XSEG    (XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XABS    (ABS,XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; external initialized ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XISEG   (XDATA)
                                    283 	.area HOME    (CODE)
                                    284 	.area GSINIT0 (CODE)
                                    285 	.area GSINIT1 (CODE)
                                    286 	.area GSINIT2 (CODE)
                                    287 	.area GSINIT3 (CODE)
                                    288 	.area GSINIT4 (CODE)
                                    289 	.area GSINIT5 (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area CSEG    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; interrupt vector 
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
      000000                        297 __interrupt_vect:
      000000 02 00 06         [24]  298 	ljmp	__sdcc_gsinit_startup
                                    299 ;--------------------------------------------------------
                                    300 ; global & static initialisations
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.area GSFINAL (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.globl __sdcc_gsinit_startup
                                    307 	.globl __sdcc_program_startup
                                    308 	.globl __start__stack
                                    309 	.globl __mcs51_genXINIT
                                    310 	.globl __mcs51_genXRAMCLEAR
                                    311 	.globl __mcs51_genRAMCLEAR
                                    312 ;	num_display.c:49: unsigned char number_table[] = {
      00005F 75 21 3F         [24]  313 	mov	_number_table,#0x3F
      000062 75 22 06         [24]  314 	mov	(_number_table + 0x0001),#0x06
      000065 75 23 5B         [24]  315 	mov	(_number_table + 0x0002),#0x5B
      000068 75 24 4F         [24]  316 	mov	(_number_table + 0x0003),#0x4F
      00006B 75 25 66         [24]  317 	mov	(_number_table + 0x0004),#0x66
      00006E 75 26 6D         [24]  318 	mov	(_number_table + 0x0005),#0x6D
      000071 75 27 7D         [24]  319 	mov	(_number_table + 0x0006),#0x7D
      000074 75 28 07         [24]  320 	mov	(_number_table + 0x0007),#0x07
      000077 75 29 7F         [24]  321 	mov	(_number_table + 0x0008),#0x7F
      00007A 75 2A 6F         [24]  322 	mov	(_number_table + 0x0009),#0x6F
      00007D 75 2B 77         [24]  323 	mov	(_number_table + 0x000a),#0x77
      000080 75 2C 7C         [24]  324 	mov	(_number_table + 0x000b),#0x7C
      000083 75 2D 39         [24]  325 	mov	(_number_table + 0x000c),#0x39
      000086 75 2E 5E         [24]  326 	mov	(_number_table + 0x000d),#0x5E
      000089 75 2F 79         [24]  327 	mov	(_number_table + 0x000e),#0x79
      00008C 75 30 71         [24]  328 	mov	(_number_table + 0x000f),#0x71
                                    329 ;	num_display.c:69: unsigned char display_buffer[] = {
      00008F 75 31 06         [24]  330 	mov	_display_buffer,#0x06
      000092 75 32 00         [24]  331 	mov	(_display_buffer + 0x0001),#0x00
      000095 75 33 5B         [24]  332 	mov	(_display_buffer + 0x0002),#0x5B
      000098 75 34 00         [24]  333 	mov	(_display_buffer + 0x0003),#0x00
      00009B 75 35 00         [24]  334 	mov	(_display_buffer + 0x0004),#0x00
      00009E 75 36 00         [24]  335 	mov	(_display_buffer + 0x0005),#0x00
      0000A1 75 37 4F         [24]  336 	mov	(_display_buffer + 0x0006),#0x4F
      0000A4 75 38 00         [24]  337 	mov	(_display_buffer + 0x0007),#0x00
      0000A7 75 39 66         [24]  338 	mov	(_display_buffer + 0x0008),#0x66
      0000AA 75 3A 00         [24]  339 	mov	(_display_buffer + 0x0009),#0x00
                                    340 ;	num_display.c:217: bool once = true;
      0000AD D2 00            [12]  341 	setb	_once
                                    342 	.area GSFINAL (CODE)
      0000AF 02 00 03         [24]  343 	ljmp	__sdcc_program_startup
                                    344 ;--------------------------------------------------------
                                    345 ; Home
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area HOME    (CODE)
      000003                        349 __sdcc_program_startup:
      000003 02 01 BA         [24]  350 	ljmp	_main
                                    351 ;	return from main will return to caller
                                    352 ;--------------------------------------------------------
                                    353 ; code
                                    354 ;--------------------------------------------------------
                                    355 	.area CSEG    (CODE)
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'i2c_delay'
                                    358 ;------------------------------------------------------------
                                    359 ;i                         Allocated to registers r6 r7 
                                    360 ;------------------------------------------------------------
                                    361 ;	num_display.c:87: void i2c_delay()
                                    362 ;	-----------------------------------------
                                    363 ;	 function i2c_delay
                                    364 ;	-----------------------------------------
      0000B2                        365 _i2c_delay:
                           000007   366 	ar7 = 0x07
                           000006   367 	ar6 = 0x06
                           000005   368 	ar5 = 0x05
                           000004   369 	ar4 = 0x04
                           000003   370 	ar3 = 0x03
                           000002   371 	ar2 = 0x02
                           000001   372 	ar1 = 0x01
                           000000   373 	ar0 = 0x00
                                    374 ;	num_display.c:90: for (i = 0; i < 5; i++);
      0000B2 7E 05            [12]  375 	mov	r6,#0x05
      0000B4 7F 00            [12]  376 	mov	r7,#0x00
      0000B6                        377 00104$:
      0000B6 EE               [12]  378 	mov	a,r6
      0000B7 24 FF            [12]  379 	add	a,#0xFF
      0000B9 FC               [12]  380 	mov	r4,a
      0000BA EF               [12]  381 	mov	a,r7
      0000BB 34 FF            [12]  382 	addc	a,#0xFF
      0000BD FD               [12]  383 	mov	r5,a
      0000BE 8C 06            [24]  384 	mov	ar6,r4
      0000C0 8D 07            [24]  385 	mov	ar7,r5
      0000C2 EC               [12]  386 	mov	a,r4
      0000C3 4D               [12]  387 	orl	a,r5
      0000C4 70 F0            [24]  388 	jnz	00104$
      0000C6 22               [24]  389 	ret
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'i2c_start'
                                    392 ;------------------------------------------------------------
                                    393 ;	num_display.c:93: void i2c_start()
                                    394 ;	-----------------------------------------
                                    395 ;	 function i2c_start
                                    396 ;	-----------------------------------------
      0000C7                        397 _i2c_start:
                                    398 ;	num_display.c:95: SCL = 0;
      0000C7 C2 A1            [12]  399 	clr	_P2_1
                                    400 ;	num_display.c:96: SDA = 1;
      0000C9 D2 A0            [12]  401 	setb	_P2_0
                                    402 ;	num_display.c:97: i2c_delay();
      0000CB 12 00 B2         [24]  403 	lcall	_i2c_delay
                                    404 ;	num_display.c:98: SCL = 1;
      0000CE D2 A1            [12]  405 	setb	_P2_1
                                    406 ;	num_display.c:99: i2c_delay();
      0000D0 12 00 B2         [24]  407 	lcall	_i2c_delay
                                    408 ;	num_display.c:100: SDA = 0;
      0000D3 C2 A0            [12]  409 	clr	_P2_0
                                    410 ;	num_display.c:101: i2c_delay();
      0000D5 12 00 B2         [24]  411 	lcall	_i2c_delay
                                    412 ;	num_display.c:102: SCL = 0;
      0000D8 C2 A1            [12]  413 	clr	_P2_1
      0000DA 22               [24]  414 	ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'i2c_stop'
                                    417 ;------------------------------------------------------------
                                    418 ;	num_display.c:105: void i2c_stop()
                                    419 ;	-----------------------------------------
                                    420 ;	 function i2c_stop
                                    421 ;	-----------------------------------------
      0000DB                        422 _i2c_stop:
                                    423 ;	num_display.c:107: SCL = 0;
      0000DB C2 A1            [12]  424 	clr	_P2_1
                                    425 ;	num_display.c:108: i2c_delay();
      0000DD 12 00 B2         [24]  426 	lcall	_i2c_delay
                                    427 ;	num_display.c:109: SDA = 0;
      0000E0 C2 A0            [12]  428 	clr	_P2_0
                                    429 ;	num_display.c:110: i2c_delay();
      0000E2 12 00 B2         [24]  430 	lcall	_i2c_delay
                                    431 ;	num_display.c:111: SCL = 1;
      0000E5 D2 A1            [12]  432 	setb	_P2_1
                                    433 ;	num_display.c:112: i2c_delay();
      0000E7 12 00 B2         [24]  434 	lcall	_i2c_delay
                                    435 ;	num_display.c:113: SDA = 1;
      0000EA D2 A0            [12]  436 	setb	_P2_0
      0000EC 22               [24]  437 	ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'i2c_send'
                                    440 ;------------------------------------------------------------
                                    441 ;data_out                  Allocated to registers r7 
                                    442 ;i                         Allocated to registers r6 
                                    443 ;ack_bit                   Allocated to registers r7 
                                    444 ;------------------------------------------------------------
                                    445 ;	num_display.c:116: unsigned char i2c_send(unsigned char data_out)
                                    446 ;	-----------------------------------------
                                    447 ;	 function i2c_send
                                    448 ;	-----------------------------------------
      0000ED                        449 _i2c_send:
      0000ED AF 82            [24]  450 	mov	r7,dpl
                                    451 ;	num_display.c:119: for (i = 0; i < 8; i++) {
      0000EF 7E 00            [12]  452 	mov	r6,#0x00
      0000F1                        453 00105$:
                                    454 ;	num_display.c:120: SCL = 0;
      0000F1 C2 A1            [12]  455 	clr	_P2_1
                                    456 ;	num_display.c:121: i2c_delay();
      0000F3 C0 07            [24]  457 	push	ar7
      0000F5 C0 06            [24]  458 	push	ar6
      0000F7 12 00 B2         [24]  459 	lcall	_i2c_delay
      0000FA D0 06            [24]  460 	pop	ar6
      0000FC D0 07            [24]  461 	pop	ar7
                                    462 ;	num_display.c:122: if ((data_out & 0x80) == 0) {
      0000FE EF               [12]  463 	mov	a,r7
      0000FF 20 E7 04         [24]  464 	jb	acc.7,00102$
                                    465 ;	num_display.c:123: SDA = 0;
      000102 C2 A0            [12]  466 	clr	_P2_0
      000104 80 02            [24]  467 	sjmp	00103$
      000106                        468 00102$:
                                    469 ;	num_display.c:125: SDA = 1;
      000106 D2 A0            [12]  470 	setb	_P2_0
      000108                        471 00103$:
                                    472 ;	num_display.c:127: i2c_delay();
      000108 C0 07            [24]  473 	push	ar7
      00010A C0 06            [24]  474 	push	ar6
      00010C 12 00 B2         [24]  475 	lcall	_i2c_delay
                                    476 ;	num_display.c:128: SCL = 1;
      00010F D2 A1            [12]  477 	setb	_P2_1
                                    478 ;	num_display.c:129: i2c_delay();
      000111 12 00 B2         [24]  479 	lcall	_i2c_delay
      000114 D0 06            [24]  480 	pop	ar6
      000116 D0 07            [24]  481 	pop	ar7
                                    482 ;	num_display.c:130: data_out<<=1;
      000118 EF               [12]  483 	mov	a,r7
      000119 2F               [12]  484 	add	a,r7
      00011A FF               [12]  485 	mov	r7,a
                                    486 ;	num_display.c:119: for (i = 0; i < 8; i++) {
      00011B 0E               [12]  487 	inc	r6
      00011C BE 08 00         [24]  488 	cjne	r6,#0x08,00120$
      00011F                        489 00120$:
      00011F 40 D0            [24]  490 	jc	00105$
                                    491 ;	num_display.c:132: SCL = 0;
      000121 C2 A1            [12]  492 	clr	_P2_1
                                    493 ;	num_display.c:133: i2c_delay();
      000123 12 00 B2         [24]  494 	lcall	_i2c_delay
                                    495 ;	num_display.c:134: SDA = 1;
      000126 D2 A0            [12]  496 	setb	_P2_0
                                    497 ;	num_display.c:135: i2c_delay();
      000128 12 00 B2         [24]  498 	lcall	_i2c_delay
                                    499 ;	num_display.c:136: SCL = 1;
      00012B D2 A1            [12]  500 	setb	_P2_1
                                    501 ;	num_display.c:137: i2c_delay();
      00012D 12 00 B2         [24]  502 	lcall	_i2c_delay
                                    503 ;	num_display.c:138: ack_bit = SDA;
      000130 A2 A0            [12]  504 	mov	c,_P2_0
      000132 E4               [12]  505 	clr	a
      000133 33               [12]  506 	rlc	a
      000134 FF               [12]  507 	mov	r7,a
                                    508 ;	num_display.c:139: i2c_delay();
      000135 C0 07            [24]  509 	push	ar7
      000137 12 00 B2         [24]  510 	lcall	_i2c_delay
      00013A D0 07            [24]  511 	pop	ar7
                                    512 ;	num_display.c:140: SCL = 0;
      00013C C2 A1            [12]  513 	clr	_P2_1
                                    514 ;	num_display.c:141: return ack_bit;
      00013E 8F 82            [24]  515 	mov	dpl,r7
      000140 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'i2c_read'
                                    519 ;------------------------------------------------------------
                                    520 ;i                         Allocated to registers r6 
                                    521 ;Data                      Allocated to registers r7 
                                    522 ;------------------------------------------------------------
                                    523 ;	num_display.c:144: unsigned char i2c_read()
                                    524 ;	-----------------------------------------
                                    525 ;	 function i2c_read
                                    526 ;	-----------------------------------------
      000141                        527 _i2c_read:
                                    528 ;	num_display.c:146: unsigned char i, Data=0;
      000141 7F 00            [12]  529 	mov	r7,#0x00
                                    530 ;	num_display.c:147: for (i = 0; i < 8; i++) {
      000143 7E 00            [12]  531 	mov	r6,#0x00
      000145                        532 00106$:
                                    533 ;	num_display.c:148: SCL = 1;
      000145 D2 A1            [12]  534 	setb	_P2_1
                                    535 ;	num_display.c:149: if(SDA)
      000147 30 A0 03         [24]  536 	jnb	_P2_0,00102$
                                    537 ;	num_display.c:150: Data |=1;
      00014A 43 07 01         [24]  538 	orl	ar7,#0x01
      00014D                        539 00102$:
                                    540 ;	num_display.c:151: if(i<7)
      00014D BE 07 00         [24]  541 	cjne	r6,#0x07,00124$
      000150                        542 00124$:
      000150 50 03            [24]  543 	jnc	00104$
                                    544 ;	num_display.c:152: Data<<=1;
      000152 EF               [12]  545 	mov	a,r7
      000153 2F               [12]  546 	add	a,r7
      000154 FF               [12]  547 	mov	r7,a
      000155                        548 00104$:
                                    549 ;	num_display.c:153: SCL = 0;
      000155 C2 A1            [12]  550 	clr	_P2_1
                                    551 ;	num_display.c:147: for (i = 0; i < 8; i++) {
      000157 0E               [12]  552 	inc	r6
      000158 BE 08 00         [24]  553 	cjne	r6,#0x08,00126$
      00015B                        554 00126$:
      00015B 40 E8            [24]  555 	jc	00106$
                                    556 ;	num_display.c:155: return Data;
      00015D 8F 82            [24]  557 	mov	dpl,r7
      00015F 22               [24]  558 	ret
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'write_display'
                                    561 ;------------------------------------------------------------
                                    562 ;address                   Allocated to registers 
                                    563 ;write_bit                 Allocated to registers 
                                    564 ;address_with_write        Allocated to registers 
                                    565 ;i                         Allocated to registers r7 
                                    566 ;ack                       Allocated to registers 
                                    567 ;------------------------------------------------------------
                                    568 ;	num_display.c:158: void write_display(void)
                                    569 ;	-----------------------------------------
                                    570 ;	 function write_display
                                    571 ;	-----------------------------------------
      000160                        572 _write_display:
                                    573 ;	num_display.c:167: i2c_start();
      000160 12 00 C7         [24]  574 	lcall	_i2c_start
                                    575 ;	num_display.c:168: ack = i2c_send(address_with_write);
      000163 75 82 E0         [24]  576 	mov	dpl,#0xE0
      000166 12 00 ED         [24]  577 	lcall	_i2c_send
                                    578 ;	num_display.c:178: ack = i2c_send(0x00); //0x00 is the starting address of the 7-set disp
      000169 75 82 00         [24]  579 	mov	dpl,#0x00
      00016C 12 00 ED         [24]  580 	lcall	_i2c_send
                                    581 ;	num_display.c:179: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      00016F 7F 00            [12]  582 	mov	r7,#0x00
      000171                        583 00102$:
                                    584 ;	num_display.c:180: i2c_delay();
      000171 C0 07            [24]  585 	push	ar7
      000173 12 00 B2         [24]  586 	lcall	_i2c_delay
      000176 D0 07            [24]  587 	pop	ar7
                                    588 ;	num_display.c:181: ack = i2c_send(display_buffer[i]);
      000178 EF               [12]  589 	mov	a,r7
      000179 24 31            [12]  590 	add	a,#_display_buffer
      00017B F9               [12]  591 	mov	r1,a
      00017C 87 82            [24]  592 	mov	dpl,@r1
      00017E C0 07            [24]  593 	push	ar7
      000180 12 00 ED         [24]  594 	lcall	_i2c_send
      000183 D0 07            [24]  595 	pop	ar7
                                    596 ;	num_display.c:179: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      000185 0F               [12]  597 	inc	r7
      000186 BF 0A 00         [24]  598 	cjne	r7,#0x0A,00113$
      000189                        599 00113$:
      000189 40 E6            [24]  600 	jc	00102$
                                    601 ;	num_display.c:183: i2c_stop();
      00018B 02 00 DB         [24]  602 	ljmp	_i2c_stop
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'write_command'
                                    605 ;------------------------------------------------------------
                                    606 ;command_byte              Allocated to registers r7 
                                    607 ;address                   Allocated to registers 
                                    608 ;write_bit                 Allocated to registers 
                                    609 ;address_with_write        Allocated to registers 
                                    610 ;ack                       Allocated to registers 
                                    611 ;------------------------------------------------------------
                                    612 ;	num_display.c:187: void write_command(unsigned char command_byte)
                                    613 ;	-----------------------------------------
                                    614 ;	 function write_command
                                    615 ;	-----------------------------------------
      00018E                        616 _write_command:
      00018E AF 82            [24]  617 	mov	r7,dpl
                                    618 ;	num_display.c:200: i2c_start();
      000190 C0 07            [24]  619 	push	ar7
      000192 12 00 C7         [24]  620 	lcall	_i2c_start
                                    621 ;	num_display.c:201: ack = i2c_send(address_with_write);
      000195 75 82 E0         [24]  622 	mov	dpl,#0xE0
      000198 12 00 ED         [24]  623 	lcall	_i2c_send
      00019B D0 07            [24]  624 	pop	ar7
                                    625 ;	num_display.c:207: ack = i2c_send(command_byte);
      00019D 8F 82            [24]  626 	mov	dpl,r7
      00019F 12 00 ED         [24]  627 	lcall	_i2c_send
                                    628 ;	num_display.c:208: i2c_stop();
      0001A2 02 00 DB         [24]  629 	ljmp	_i2c_stop
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'delay'
                                    632 ;------------------------------------------------------------
                                    633 ;i                         Allocated to registers r6 r7 
                                    634 ;------------------------------------------------------------
                                    635 ;	num_display.c:211: void delay(void)
                                    636 ;	-----------------------------------------
                                    637 ;	 function delay
                                    638 ;	-----------------------------------------
      0001A5                        639 _delay:
                                    640 ;	num_display.c:214: for(i=0;i<500;i++);
      0001A5 7E F4            [12]  641 	mov	r6,#0xF4
      0001A7 7F 01            [12]  642 	mov	r7,#0x01
      0001A9                        643 00104$:
      0001A9 EE               [12]  644 	mov	a,r6
      0001AA 24 FF            [12]  645 	add	a,#0xFF
      0001AC FC               [12]  646 	mov	r4,a
      0001AD EF               [12]  647 	mov	a,r7
      0001AE 34 FF            [12]  648 	addc	a,#0xFF
      0001B0 FD               [12]  649 	mov	r5,a
      0001B1 8C 06            [24]  650 	mov	ar6,r4
      0001B3 8D 07            [24]  651 	mov	ar7,r5
      0001B5 EC               [12]  652 	mov	a,r4
      0001B6 4D               [12]  653 	orl	a,r5
      0001B7 70 F0            [24]  654 	jnz	00104$
      0001B9 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'main'
                                    658 ;------------------------------------------------------------
                                    659 ;	num_display.c:219: void main(void)
                                    660 ;	-----------------------------------------
                                    661 ;	 function main
                                    662 ;	-----------------------------------------
      0001BA                        663 _main:
                                    664 ;	num_display.c:226: while (true) 
      0001BA                        665 00104$:
                                    666 ;	num_display.c:228: if (once) 
      0001BA 30 00 FD         [24]  667 	jnb	_once,00104$
                                    668 ;	num_display.c:231: delay();
      0001BD 12 01 A5         [24]  669 	lcall	_delay
                                    670 ;	num_display.c:233: write_command(ENABLE_DISPLAY_OSCILLATOR);
      0001C0 75 82 21         [24]  671 	mov	dpl,#0x21
      0001C3 12 01 8E         [24]  672 	lcall	_write_command
                                    673 ;	num_display.c:234: delay();
      0001C6 12 01 A5         [24]  674 	lcall	_delay
                                    675 ;	num_display.c:235: write_command(ENABLE_DISPLAY);
      0001C9 75 82 81         [24]  676 	mov	dpl,#0x81
      0001CC 12 01 8E         [24]  677 	lcall	_write_command
                                    678 ;	num_display.c:236: delay();
      0001CF 12 01 A5         [24]  679 	lcall	_delay
                                    680 ;	num_display.c:239: write_display();
      0001D2 12 01 60         [24]  681 	lcall	_write_display
                                    682 ;	num_display.c:240: once = false;
      0001D5 C2 00            [12]  683 	clr	_once
      0001D7 80 E1            [24]  684 	sjmp	00104$
                                    685 	.area CSEG    (CODE)
                                    686 	.area CONST   (CODE)
                                    687 	.area XINIT   (CODE)
                                    688 	.area CABS    (ABS,CODE)
