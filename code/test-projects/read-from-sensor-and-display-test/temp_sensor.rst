                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Dec  5 08:35:54 2018
                                      5 ;--------------------------------------------------------
                                      6 	.module temp_sensor
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _i2c_sda_write_PARM_2
                                     13 	.globl _main
                                     14 	.globl _write_temp_sensor_config
                                     15 	.globl _write_display_command
                                     16 	.globl _read_temp_sensor
                                     17 	.globl _i2c_read_byte
                                     18 	.globl _i2c_send_byte
                                     19 	.globl _i2c_stop
                                     20 	.globl _i2c_start
                                     21 	.globl _i2c_scl_read
                                     22 	.globl _i2c_scl_write
                                     23 	.globl _i2c_sda_read
                                     24 	.globl _i2c_sda_write
                                     25 	.globl _i2c_delay
                                     26 	.globl _delay
                                     27 	.globl _modff
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _PS
                                     37 	.globl _PT1
                                     38 	.globl _PX1
                                     39 	.globl _PT0
                                     40 	.globl _PX0
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _EA
                                     58 	.globl _ES
                                     59 	.globl _ET1
                                     60 	.globl _EX1
                                     61 	.globl _ET0
                                     62 	.globl _EX0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _SM0
                                     72 	.globl _SM1
                                     73 	.globl _SM2
                                     74 	.globl _REN
                                     75 	.globl _TB8
                                     76 	.globl _RB8
                                     77 	.globl _TI
                                     78 	.globl _RI
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _TF1
                                     88 	.globl _TR1
                                     89 	.globl _TF0
                                     90 	.globl _TR0
                                     91 	.globl _IE1
                                     92 	.globl _IT1
                                     93 	.globl _IE0
                                     94 	.globl _IT0
                                     95 	.globl _P0_7
                                     96 	.globl _P0_6
                                     97 	.globl _P0_5
                                     98 	.globl _P0_4
                                     99 	.globl _P0_3
                                    100 	.globl _P0_2
                                    101 	.globl _P0_1
                                    102 	.globl _P0_0
                                    103 	.globl _B
                                    104 	.globl _ACC
                                    105 	.globl _PSW
                                    106 	.globl _IP
                                    107 	.globl _P3
                                    108 	.globl _IE
                                    109 	.globl _P2
                                    110 	.globl _SBUF
                                    111 	.globl _SCON
                                    112 	.globl _P1
                                    113 	.globl _TH1
                                    114 	.globl _TH0
                                    115 	.globl _TL1
                                    116 	.globl _TL0
                                    117 	.globl _TMOD
                                    118 	.globl _TCON
                                    119 	.globl _PCON
                                    120 	.globl _DPH
                                    121 	.globl _DPL
                                    122 	.globl _SP
                                    123 	.globl _P0
                                    124 	.globl _i2c_send_byte_PARM_2
                                    125 	.globl _i2c_scl_write_PARM_2
                                    126 	.globl _display_buffer
                                    127 	.globl _number_table
                                    128 	.globl _clear_display_buffer
                                    129 	.globl _write_display
                                    130 	.globl _write_temp_sensor_command
                                    131 ;--------------------------------------------------------
                                    132 ; special function registers
                                    133 ;--------------------------------------------------------
                                    134 	.area RSEG    (ABS,DATA)
      000000                        135 	.org 0x0000
                           000080   136 _P0	=	0x0080
                           000081   137 _SP	=	0x0081
                           000082   138 _DPL	=	0x0082
                           000083   139 _DPH	=	0x0083
                           000087   140 _PCON	=	0x0087
                           000088   141 _TCON	=	0x0088
                           000089   142 _TMOD	=	0x0089
                           00008A   143 _TL0	=	0x008a
                           00008B   144 _TL1	=	0x008b
                           00008C   145 _TH0	=	0x008c
                           00008D   146 _TH1	=	0x008d
                           000090   147 _P1	=	0x0090
                           000098   148 _SCON	=	0x0098
                           000099   149 _SBUF	=	0x0099
                           0000A0   150 _P2	=	0x00a0
                           0000A8   151 _IE	=	0x00a8
                           0000B0   152 _P3	=	0x00b0
                           0000B8   153 _IP	=	0x00b8
                           0000D0   154 _PSW	=	0x00d0
                           0000E0   155 _ACC	=	0x00e0
                           0000F0   156 _B	=	0x00f0
                                    157 ;--------------------------------------------------------
                                    158 ; special function bits
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           000080   162 _P0_0	=	0x0080
                           000081   163 _P0_1	=	0x0081
                           000082   164 _P0_2	=	0x0082
                           000083   165 _P0_3	=	0x0083
                           000084   166 _P0_4	=	0x0084
                           000085   167 _P0_5	=	0x0085
                           000086   168 _P0_6	=	0x0086
                           000087   169 _P0_7	=	0x0087
                           000088   170 _IT0	=	0x0088
                           000089   171 _IE0	=	0x0089
                           00008A   172 _IT1	=	0x008a
                           00008B   173 _IE1	=	0x008b
                           00008C   174 _TR0	=	0x008c
                           00008D   175 _TF0	=	0x008d
                           00008E   176 _TR1	=	0x008e
                           00008F   177 _TF1	=	0x008f
                           000090   178 _P1_0	=	0x0090
                           000091   179 _P1_1	=	0x0091
                           000092   180 _P1_2	=	0x0092
                           000093   181 _P1_3	=	0x0093
                           000094   182 _P1_4	=	0x0094
                           000095   183 _P1_5	=	0x0095
                           000096   184 _P1_6	=	0x0096
                           000097   185 _P1_7	=	0x0097
                           000098   186 _RI	=	0x0098
                           000099   187 _TI	=	0x0099
                           00009A   188 _RB8	=	0x009a
                           00009B   189 _TB8	=	0x009b
                           00009C   190 _REN	=	0x009c
                           00009D   191 _SM2	=	0x009d
                           00009E   192 _SM1	=	0x009e
                           00009F   193 _SM0	=	0x009f
                           0000A0   194 _P2_0	=	0x00a0
                           0000A1   195 _P2_1	=	0x00a1
                           0000A2   196 _P2_2	=	0x00a2
                           0000A3   197 _P2_3	=	0x00a3
                           0000A4   198 _P2_4	=	0x00a4
                           0000A5   199 _P2_5	=	0x00a5
                           0000A6   200 _P2_6	=	0x00a6
                           0000A7   201 _P2_7	=	0x00a7
                           0000A8   202 _EX0	=	0x00a8
                           0000A9   203 _ET0	=	0x00a9
                           0000AA   204 _EX1	=	0x00aa
                           0000AB   205 _ET1	=	0x00ab
                           0000AC   206 _ES	=	0x00ac
                           0000AF   207 _EA	=	0x00af
                           0000B0   208 _P3_0	=	0x00b0
                           0000B1   209 _P3_1	=	0x00b1
                           0000B2   210 _P3_2	=	0x00b2
                           0000B3   211 _P3_3	=	0x00b3
                           0000B4   212 _P3_4	=	0x00b4
                           0000B5   213 _P3_5	=	0x00b5
                           0000B6   214 _P3_6	=	0x00b6
                           0000B7   215 _P3_7	=	0x00b7
                           0000B0   216 _RXD	=	0x00b0
                           0000B1   217 _TXD	=	0x00b1
                           0000B2   218 _INT0	=	0x00b2
                           0000B3   219 _INT1	=	0x00b3
                           0000B4   220 _T0	=	0x00b4
                           0000B5   221 _T1	=	0x00b5
                           0000B6   222 _WR	=	0x00b6
                           0000B7   223 _RD	=	0x00b7
                           0000B8   224 _PX0	=	0x00b8
                           0000B9   225 _PT0	=	0x00b9
                           0000BA   226 _PX1	=	0x00ba
                           0000BB   227 _PT1	=	0x00bb
                           0000BC   228 _PS	=	0x00bc
                           0000D0   229 _P	=	0x00d0
                           0000D1   230 _F1	=	0x00d1
                           0000D2   231 _OV	=	0x00d2
                           0000D3   232 _RS0	=	0x00d3
                           0000D4   233 _RS1	=	0x00d4
                           0000D5   234 _F0	=	0x00d5
                           0000D6   235 _AC	=	0x00d6
                           0000D7   236 _CY	=	0x00d7
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable register banks
                                    239 ;--------------------------------------------------------
                                    240 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        241 	.ds 8
                                    242 ;--------------------------------------------------------
                                    243 ; internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area DSEG    (DATA)
      000021                        246 _number_table::
      000021                        247 	.ds 16
      000031                        248 _display_buffer::
      000031                        249 	.ds 10
      00003B                        250 _i2c_scl_write_PARM_2:
      00003B                        251 	.ds 1
      00003C                        252 _i2c_send_byte_PARM_2:
      00003C                        253 	.ds 1
      00003D                        254 _read_temp_sensor_slope_1_54:
      00003D                        255 	.ds 4
      000041                        256 _read_temp_sensor_count_remaining_1_54:
      000041                        257 	.ds 4
      000045                        258 _main_current_temp_1_68:
      000045                        259 	.ds 4
      000049                        260 _main_last_temp_1_68:
      000049                        261 	.ds 4
      00004D                        262 _main_temp_int_1_68:
      00004D                        263 	.ds 4
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable items in internal ram 
                                    266 ;--------------------------------------------------------
                                    267 	.area	OSEG    (OVR,DATA)
                                    268 	.area	OSEG    (OVR,DATA)
                                    269 	.area	OSEG    (OVR,DATA)
      00000F                        270 _i2c_sda_write_PARM_2:
      00000F                        271 	.ds 1
                                    272 	.area	OSEG    (OVR,DATA)
                                    273 	.area	OSEG    (OVR,DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; Stack segment in internal ram 
                                    276 ;--------------------------------------------------------
                                    277 	.area	SSEG
      000051                        278 __start__stack:
      000051                        279 	.ds	1
                                    280 
                                    281 ;--------------------------------------------------------
                                    282 ; indirectly addressable internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area ISEG    (DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area IABS    (ABS,DATA)
                                    289 	.area IABS    (ABS,DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; bit data
                                    292 ;--------------------------------------------------------
                                    293 	.area BSEG    (BIT)
      000000                        294 _main_update_display_1_68:
      000000                        295 	.ds 1
                                    296 ;--------------------------------------------------------
                                    297 ; paged external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area PSEG    (PAG,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XSEG    (XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; absolute external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XABS    (ABS,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; external initialized ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XISEG   (XDATA)
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT0 (CODE)
                                    314 	.area GSINIT1 (CODE)
                                    315 	.area GSINIT2 (CODE)
                                    316 	.area GSINIT3 (CODE)
                                    317 	.area GSINIT4 (CODE)
                                    318 	.area GSINIT5 (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area CSEG    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; interrupt vector 
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
      000000                        326 __interrupt_vect:
      000000 02 00 06         [24]  327 	ljmp	__sdcc_gsinit_startup
                                    328 ;--------------------------------------------------------
                                    329 ; global & static initialisations
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.globl __sdcc_gsinit_startup
                                    336 	.globl __sdcc_program_startup
                                    337 	.globl __start__stack
                                    338 	.globl __mcs51_genXINIT
                                    339 	.globl __mcs51_genXRAMCLEAR
                                    340 	.globl __mcs51_genRAMCLEAR
                                    341 ;	temp_sensor.c:39: unsigned char number_table[] = {
      00005F 75 21 3F         [24]  342 	mov	_number_table,#0x3F
      000062 75 22 06         [24]  343 	mov	(_number_table + 0x0001),#0x06
      000065 75 23 5B         [24]  344 	mov	(_number_table + 0x0002),#0x5B
      000068 75 24 4F         [24]  345 	mov	(_number_table + 0x0003),#0x4F
      00006B 75 25 66         [24]  346 	mov	(_number_table + 0x0004),#0x66
      00006E 75 26 6D         [24]  347 	mov	(_number_table + 0x0005),#0x6D
      000071 75 27 7D         [24]  348 	mov	(_number_table + 0x0006),#0x7D
      000074 75 28 07         [24]  349 	mov	(_number_table + 0x0007),#0x07
      000077 75 29 7F         [24]  350 	mov	(_number_table + 0x0008),#0x7F
      00007A 75 2A 6F         [24]  351 	mov	(_number_table + 0x0009),#0x6F
      00007D 75 2B 77         [24]  352 	mov	(_number_table + 0x000a),#0x77
      000080 75 2C 7C         [24]  353 	mov	(_number_table + 0x000b),#0x7C
      000083 75 2D 39         [24]  354 	mov	(_number_table + 0x000c),#0x39
      000086 75 2E 5E         [24]  355 	mov	(_number_table + 0x000d),#0x5E
      000089 75 2F 79         [24]  356 	mov	(_number_table + 0x000e),#0x79
      00008C 75 30 71         [24]  357 	mov	(_number_table + 0x000f),#0x71
                                    358 ;	temp_sensor.c:59: unsigned char display_buffer[] = {
      00008F 75 31 00         [24]  359 	mov	_display_buffer,#0x00
      000092 75 32 00         [24]  360 	mov	(_display_buffer + 0x0001),#0x00
      000095 75 33 00         [24]  361 	mov	(_display_buffer + 0x0002),#0x00
      000098 75 34 00         [24]  362 	mov	(_display_buffer + 0x0003),#0x00
      00009B 75 35 00         [24]  363 	mov	(_display_buffer + 0x0004),#0x00
      00009E 75 36 00         [24]  364 	mov	(_display_buffer + 0x0005),#0x00
      0000A1 75 37 00         [24]  365 	mov	(_display_buffer + 0x0006),#0x00
      0000A4 75 38 00         [24]  366 	mov	(_display_buffer + 0x0007),#0x00
      0000A7 75 39 00         [24]  367 	mov	(_display_buffer + 0x0008),#0x00
      0000AA 75 3A 00         [24]  368 	mov	(_display_buffer + 0x0009),#0x00
                                    369 	.area GSFINAL (CODE)
      0000AD 02 00 03         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      000003                        376 __sdcc_program_startup:
      000003 02 04 95         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'delay'
                                    385 ;------------------------------------------------------------
                                    386 ;min_clock_cycles_to_wait  Allocated to registers r6 r7 
                                    387 ;i                         Allocated to registers r4 r5 
                                    388 ;------------------------------------------------------------
                                    389 ;	temp_sensor.c:85: void delay(int min_clock_cycles_to_wait)
                                    390 ;	-----------------------------------------
                                    391 ;	 function delay
                                    392 ;	-----------------------------------------
      0000B0                        393 _delay:
                           000007   394 	ar7 = 0x07
                           000006   395 	ar6 = 0x06
                           000005   396 	ar5 = 0x05
                           000004   397 	ar4 = 0x04
                           000003   398 	ar3 = 0x03
                           000002   399 	ar2 = 0x02
                           000001   400 	ar1 = 0x01
                           000000   401 	ar0 = 0x00
      0000B0 AE 82            [24]  402 	mov	r6,dpl
      0000B2 AF 83            [24]  403 	mov	r7,dph
                                    404 ;	temp_sensor.c:88: for(i = 0;i < min_clock_cycles_to_wait; i++);
      0000B4 7C 00            [12]  405 	mov	r4,#0x00
      0000B6 7D 00            [12]  406 	mov	r5,#0x00
      0000B8                        407 00103$:
      0000B8 C3               [12]  408 	clr	c
      0000B9 EC               [12]  409 	mov	a,r4
      0000BA 9E               [12]  410 	subb	a,r6
      0000BB ED               [12]  411 	mov	a,r5
      0000BC 64 80            [12]  412 	xrl	a,#0x80
      0000BE 8F F0            [24]  413 	mov	b,r7
      0000C0 63 F0 80         [24]  414 	xrl	b,#0x80
      0000C3 95 F0            [12]  415 	subb	a,b
      0000C5 50 07            [24]  416 	jnc	00105$
      0000C7 0C               [12]  417 	inc	r4
      0000C8 BC 00 ED         [24]  418 	cjne	r4,#0x00,00103$
      0000CB 0D               [12]  419 	inc	r5
      0000CC 80 EA            [24]  420 	sjmp	00103$
      0000CE                        421 00105$:
      0000CE 22               [24]  422 	ret
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'i2c_delay'
                                    425 ;------------------------------------------------------------
                                    426 ;i                         Allocated to registers r6 r7 
                                    427 ;------------------------------------------------------------
                                    428 ;	temp_sensor.c:97: void i2c_delay()
                                    429 ;	-----------------------------------------
                                    430 ;	 function i2c_delay
                                    431 ;	-----------------------------------------
      0000CF                        432 _i2c_delay:
                                    433 ;	temp_sensor.c:100: for (i = 0; i < 5; i++);
      0000CF 7E 05            [12]  434 	mov	r6,#0x05
      0000D1 7F 00            [12]  435 	mov	r7,#0x00
      0000D3                        436 00104$:
      0000D3 EE               [12]  437 	mov	a,r6
      0000D4 24 FF            [12]  438 	add	a,#0xFF
      0000D6 FC               [12]  439 	mov	r4,a
      0000D7 EF               [12]  440 	mov	a,r7
      0000D8 34 FF            [12]  441 	addc	a,#0xFF
      0000DA FD               [12]  442 	mov	r5,a
      0000DB 8C 06            [24]  443 	mov	ar6,r4
      0000DD 8D 07            [24]  444 	mov	ar7,r5
      0000DF EC               [12]  445 	mov	a,r4
      0000E0 4D               [12]  446 	orl	a,r5
      0000E1 70 F0            [24]  447 	jnz	00104$
      0000E3 22               [24]  448 	ret
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'i2c_sda_write'
                                    451 ;------------------------------------------------------------
                                    452 ;value                     Allocated with name '_i2c_sda_write_PARM_2'
                                    453 ;sfr_address               Allocated to registers r7 
                                    454 ;------------------------------------------------------------
                                    455 ;	temp_sensor.c:103: void i2c_sda_write(unsigned char sfr_address, unsigned char value)
                                    456 ;	-----------------------------------------
                                    457 ;	 function i2c_sda_write
                                    458 ;	-----------------------------------------
      0000E4                        459 _i2c_sda_write:
      0000E4 AF 82            [24]  460 	mov	r7,dpl
                                    461 ;	temp_sensor.c:105: switch (sfr_address)
      0000E6 BF A0 02         [24]  462 	cjne	r7,#0xA0,00112$
      0000E9 80 05            [24]  463 	sjmp	00101$
      0000EB                        464 00112$:
                                    465 ;	temp_sensor.c:107: case DISPLAY_SFR: P2_0 = value; break;
      0000EB BF B0 0F         [24]  466 	cjne	r7,#0xB0,00104$
      0000EE 80 07            [24]  467 	sjmp	00102$
      0000F0                        468 00101$:
      0000F0 E5 0F            [12]  469 	mov	a,_i2c_sda_write_PARM_2
      0000F2 24 FF            [12]  470 	add	a,#0xff
      0000F4 92 A0            [24]  471 	mov	_P2_0,c
                                    472 ;	temp_sensor.c:108: case TEMP_SENSOR_SFR: P3_5 = value; break;
      0000F6 22               [24]  473 	ret
      0000F7                        474 00102$:
      0000F7 E5 0F            [12]  475 	mov	a,_i2c_sda_write_PARM_2
      0000F9 24 FF            [12]  476 	add	a,#0xff
      0000FB 92 B5            [24]  477 	mov	_P3_5,c
                                    478 ;	temp_sensor.c:109: }
      0000FD                        479 00104$:
      0000FD 22               [24]  480 	ret
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'i2c_sda_read'
                                    483 ;------------------------------------------------------------
                                    484 ;sfr_address               Allocated to registers r7 
                                    485 ;result                    Allocated to registers r6 
                                    486 ;------------------------------------------------------------
                                    487 ;	temp_sensor.c:112: unsigned char i2c_sda_read(unsigned char sfr_address)
                                    488 ;	-----------------------------------------
                                    489 ;	 function i2c_sda_read
                                    490 ;	-----------------------------------------
      0000FE                        491 _i2c_sda_read:
      0000FE AF 82            [24]  492 	mov	r7,dpl
                                    493 ;	temp_sensor.c:114: unsigned char result = 0;
      000100 7E 00            [12]  494 	mov	r6,#0x00
                                    495 ;	temp_sensor.c:115: switch (sfr_address)
      000102 BF A0 02         [24]  496 	cjne	r7,#0xA0,00112$
      000105 80 05            [24]  497 	sjmp	00101$
      000107                        498 00112$:
                                    499 ;	temp_sensor.c:117: case DISPLAY_SFR: result = P2_0; break;
      000107 BF B0 0E         [24]  500 	cjne	r7,#0xB0,00103$
      00010A 80 07            [24]  501 	sjmp	00102$
      00010C                        502 00101$:
      00010C A2 A0            [12]  503 	mov	c,_P2_0
      00010E E4               [12]  504 	clr	a
      00010F 33               [12]  505 	rlc	a
      000110 FE               [12]  506 	mov	r6,a
                                    507 ;	temp_sensor.c:118: case TEMP_SENSOR_SFR: result = P3_5; break;
      000111 80 05            [24]  508 	sjmp	00103$
      000113                        509 00102$:
      000113 A2 B5            [12]  510 	mov	c,_P3_5
      000115 E4               [12]  511 	clr	a
      000116 33               [12]  512 	rlc	a
      000117 FE               [12]  513 	mov	r6,a
                                    514 ;	temp_sensor.c:119: }
      000118                        515 00103$:
                                    516 ;	temp_sensor.c:120: return result;
      000118 8E 82            [24]  517 	mov	dpl,r6
      00011A 22               [24]  518 	ret
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'i2c_scl_write'
                                    521 ;------------------------------------------------------------
                                    522 ;value                     Allocated with name '_i2c_scl_write_PARM_2'
                                    523 ;sfr_address               Allocated to registers r7 
                                    524 ;------------------------------------------------------------
                                    525 ;	temp_sensor.c:123: void i2c_scl_write(unsigned char sfr_address, unsigned char value)
                                    526 ;	-----------------------------------------
                                    527 ;	 function i2c_scl_write
                                    528 ;	-----------------------------------------
      00011B                        529 _i2c_scl_write:
      00011B AF 82            [24]  530 	mov	r7,dpl
                                    531 ;	temp_sensor.c:125: switch (sfr_address)
      00011D BF A0 02         [24]  532 	cjne	r7,#0xA0,00112$
      000120 80 05            [24]  533 	sjmp	00101$
      000122                        534 00112$:
                                    535 ;	temp_sensor.c:127: case DISPLAY_SFR: P2_1 = value; break;
      000122 BF B0 10         [24]  536 	cjne	r7,#0xB0,00103$
      000125 80 08            [24]  537 	sjmp	00102$
      000127                        538 00101$:
      000127 E5 3B            [12]  539 	mov	a,_i2c_scl_write_PARM_2
      000129 24 FF            [12]  540 	add	a,#0xff
      00012B 92 A1            [24]  541 	mov	_P2_1,c
                                    542 ;	temp_sensor.c:128: case TEMP_SENSOR_SFR: P3_6 = value; break;
      00012D 80 06            [24]  543 	sjmp	00103$
      00012F                        544 00102$:
      00012F E5 3B            [12]  545 	mov	a,_i2c_scl_write_PARM_2
      000131 24 FF            [12]  546 	add	a,#0xff
      000133 92 B6            [24]  547 	mov	_P3_6,c
                                    548 ;	temp_sensor.c:129: }
      000135                        549 00103$:
                                    550 ;	temp_sensor.c:130: i2c_delay();
      000135 02 00 CF         [24]  551 	ljmp	_i2c_delay
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'i2c_scl_read'
                                    554 ;------------------------------------------------------------
                                    555 ;sfr_address               Allocated to registers r7 
                                    556 ;result                    Allocated to registers r6 
                                    557 ;------------------------------------------------------------
                                    558 ;	temp_sensor.c:133: unsigned char i2c_scl_read(unsigned char sfr_address)
                                    559 ;	-----------------------------------------
                                    560 ;	 function i2c_scl_read
                                    561 ;	-----------------------------------------
      000138                        562 _i2c_scl_read:
      000138 AF 82            [24]  563 	mov	r7,dpl
                                    564 ;	temp_sensor.c:135: unsigned char result = 0;
      00013A 7E 00            [12]  565 	mov	r6,#0x00
                                    566 ;	temp_sensor.c:136: switch (sfr_address)
      00013C BF A0 02         [24]  567 	cjne	r7,#0xA0,00112$
      00013F 80 05            [24]  568 	sjmp	00101$
      000141                        569 00112$:
                                    570 ;	temp_sensor.c:138: case DISPLAY_SFR: result = P2_1; break;
      000141 BF B0 0E         [24]  571 	cjne	r7,#0xB0,00103$
      000144 80 07            [24]  572 	sjmp	00102$
      000146                        573 00101$:
      000146 A2 A1            [12]  574 	mov	c,_P2_1
      000148 E4               [12]  575 	clr	a
      000149 33               [12]  576 	rlc	a
      00014A FE               [12]  577 	mov	r6,a
                                    578 ;	temp_sensor.c:139: case TEMP_SENSOR_SFR: result = P3_6; break;
      00014B 80 05            [24]  579 	sjmp	00103$
      00014D                        580 00102$:
      00014D A2 B6            [12]  581 	mov	c,_P3_6
      00014F E4               [12]  582 	clr	a
      000150 33               [12]  583 	rlc	a
      000151 FE               [12]  584 	mov	r6,a
                                    585 ;	temp_sensor.c:140: }
      000152                        586 00103$:
                                    587 ;	temp_sensor.c:141: i2c_delay();
      000152 C0 06            [24]  588 	push	ar6
      000154 12 00 CF         [24]  589 	lcall	_i2c_delay
      000157 D0 06            [24]  590 	pop	ar6
                                    591 ;	temp_sensor.c:142: return result;
      000159 8E 82            [24]  592 	mov	dpl,r6
      00015B 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'i2c_start'
                                    596 ;------------------------------------------------------------
                                    597 ;sfr_address               Allocated to registers r7 
                                    598 ;------------------------------------------------------------
                                    599 ;	temp_sensor.c:145: void i2c_start(unsigned char sfr_address)
                                    600 ;	-----------------------------------------
                                    601 ;	 function i2c_start
                                    602 ;	-----------------------------------------
      00015C                        603 _i2c_start:
                                    604 ;	temp_sensor.c:147: i2c_scl_write(sfr_address, 0);
      00015C AF 82            [24]  605 	mov	r7,dpl
      00015E 75 3B 00         [24]  606 	mov	_i2c_scl_write_PARM_2,#0x00
      000161 C0 07            [24]  607 	push	ar7
      000163 12 01 1B         [24]  608 	lcall	_i2c_scl_write
      000166 D0 07            [24]  609 	pop	ar7
                                    610 ;	temp_sensor.c:148: i2c_sda_write(sfr_address, 1);
      000168 75 0F 01         [24]  611 	mov	_i2c_sda_write_PARM_2,#0x01
      00016B 8F 82            [24]  612 	mov	dpl,r7
      00016D C0 07            [24]  613 	push	ar7
      00016F 12 00 E4         [24]  614 	lcall	_i2c_sda_write
      000172 D0 07            [24]  615 	pop	ar7
                                    616 ;	temp_sensor.c:149: i2c_scl_write(sfr_address, 1);
      000174 75 3B 01         [24]  617 	mov	_i2c_scl_write_PARM_2,#0x01
      000177 8F 82            [24]  618 	mov	dpl,r7
      000179 C0 07            [24]  619 	push	ar7
      00017B 12 01 1B         [24]  620 	lcall	_i2c_scl_write
      00017E D0 07            [24]  621 	pop	ar7
                                    622 ;	temp_sensor.c:150: i2c_sda_write(sfr_address, 0);
      000180 75 0F 00         [24]  623 	mov	_i2c_sda_write_PARM_2,#0x00
      000183 8F 82            [24]  624 	mov	dpl,r7
      000185 C0 07            [24]  625 	push	ar7
      000187 12 00 E4         [24]  626 	lcall	_i2c_sda_write
      00018A D0 07            [24]  627 	pop	ar7
                                    628 ;	temp_sensor.c:151: i2c_scl_write(sfr_address, 0);
      00018C 75 3B 00         [24]  629 	mov	_i2c_scl_write_PARM_2,#0x00
      00018F 8F 82            [24]  630 	mov	dpl,r7
      000191 02 01 1B         [24]  631 	ljmp	_i2c_scl_write
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'i2c_stop'
                                    634 ;------------------------------------------------------------
                                    635 ;sfr_address               Allocated to registers r7 
                                    636 ;------------------------------------------------------------
                                    637 ;	temp_sensor.c:154: void i2c_stop(unsigned char sfr_address)
                                    638 ;	-----------------------------------------
                                    639 ;	 function i2c_stop
                                    640 ;	-----------------------------------------
      000194                        641 _i2c_stop:
                                    642 ;	temp_sensor.c:156: i2c_scl_write(sfr_address, 0);
      000194 AF 82            [24]  643 	mov	r7,dpl
      000196 75 3B 00         [24]  644 	mov	_i2c_scl_write_PARM_2,#0x00
      000199 C0 07            [24]  645 	push	ar7
      00019B 12 01 1B         [24]  646 	lcall	_i2c_scl_write
      00019E D0 07            [24]  647 	pop	ar7
                                    648 ;	temp_sensor.c:157: i2c_sda_write(sfr_address, 0);
      0001A0 75 0F 00         [24]  649 	mov	_i2c_sda_write_PARM_2,#0x00
      0001A3 8F 82            [24]  650 	mov	dpl,r7
      0001A5 C0 07            [24]  651 	push	ar7
      0001A7 12 00 E4         [24]  652 	lcall	_i2c_sda_write
      0001AA D0 07            [24]  653 	pop	ar7
                                    654 ;	temp_sensor.c:158: i2c_scl_write(sfr_address, 1);
      0001AC 75 3B 01         [24]  655 	mov	_i2c_scl_write_PARM_2,#0x01
      0001AF 8F 82            [24]  656 	mov	dpl,r7
      0001B1 C0 07            [24]  657 	push	ar7
      0001B3 12 01 1B         [24]  658 	lcall	_i2c_scl_write
      0001B6 D0 07            [24]  659 	pop	ar7
                                    660 ;	temp_sensor.c:159: i2c_sda_write(sfr_address, 1);
      0001B8 75 0F 01         [24]  661 	mov	_i2c_sda_write_PARM_2,#0x01
      0001BB 8F 82            [24]  662 	mov	dpl,r7
      0001BD 02 00 E4         [24]  663 	ljmp	_i2c_sda_write
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'i2c_send_byte'
                                    666 ;------------------------------------------------------------
                                    667 ;data_out                  Allocated with name '_i2c_send_byte_PARM_2'
                                    668 ;sfr_address               Allocated to registers r7 
                                    669 ;i                         Allocated to registers r6 
                                    670 ;ack_bit                   Allocated to registers r6 
                                    671 ;------------------------------------------------------------
                                    672 ;	temp_sensor.c:162: unsigned char i2c_send_byte(unsigned char sfr_address, unsigned char data_out)
                                    673 ;	-----------------------------------------
                                    674 ;	 function i2c_send_byte
                                    675 ;	-----------------------------------------
      0001C0                        676 _i2c_send_byte:
      0001C0 AF 82            [24]  677 	mov	r7,dpl
                                    678 ;	temp_sensor.c:165: for (i = 0; i < 8; i++) {
      0001C2 7E 00            [12]  679 	mov	r6,#0x00
      0001C4                        680 00105$:
                                    681 ;	temp_sensor.c:166: i2c_scl_write(sfr_address, 0);
      0001C4 75 3B 00         [24]  682 	mov	_i2c_scl_write_PARM_2,#0x00
      0001C7 8F 82            [24]  683 	mov	dpl,r7
      0001C9 C0 07            [24]  684 	push	ar7
      0001CB C0 06            [24]  685 	push	ar6
      0001CD 12 01 1B         [24]  686 	lcall	_i2c_scl_write
      0001D0 D0 06            [24]  687 	pop	ar6
      0001D2 D0 07            [24]  688 	pop	ar7
                                    689 ;	temp_sensor.c:167: if ((data_out & 0x80) == 0) {
      0001D4 E5 3C            [12]  690 	mov	a,_i2c_send_byte_PARM_2
      0001D6 20 E7 12         [24]  691 	jb	acc.7,00102$
                                    692 ;	temp_sensor.c:168: i2c_sda_write(sfr_address, 0);
      0001D9 75 0F 00         [24]  693 	mov	_i2c_sda_write_PARM_2,#0x00
      0001DC 8F 82            [24]  694 	mov	dpl,r7
      0001DE C0 07            [24]  695 	push	ar7
      0001E0 C0 06            [24]  696 	push	ar6
      0001E2 12 00 E4         [24]  697 	lcall	_i2c_sda_write
      0001E5 D0 06            [24]  698 	pop	ar6
      0001E7 D0 07            [24]  699 	pop	ar7
      0001E9 80 10            [24]  700 	sjmp	00103$
      0001EB                        701 00102$:
                                    702 ;	temp_sensor.c:170: i2c_sda_write(sfr_address, 1);
      0001EB 75 0F 01         [24]  703 	mov	_i2c_sda_write_PARM_2,#0x01
      0001EE 8F 82            [24]  704 	mov	dpl,r7
      0001F0 C0 07            [24]  705 	push	ar7
      0001F2 C0 06            [24]  706 	push	ar6
      0001F4 12 00 E4         [24]  707 	lcall	_i2c_sda_write
      0001F7 D0 06            [24]  708 	pop	ar6
      0001F9 D0 07            [24]  709 	pop	ar7
      0001FB                        710 00103$:
                                    711 ;	temp_sensor.c:172: i2c_scl_write(sfr_address, 1);
      0001FB 75 3B 01         [24]  712 	mov	_i2c_scl_write_PARM_2,#0x01
      0001FE 8F 82            [24]  713 	mov	dpl,r7
      000200 C0 07            [24]  714 	push	ar7
      000202 C0 06            [24]  715 	push	ar6
      000204 12 01 1B         [24]  716 	lcall	_i2c_scl_write
      000207 D0 06            [24]  717 	pop	ar6
      000209 D0 07            [24]  718 	pop	ar7
                                    719 ;	temp_sensor.c:173: data_out<<=1;
      00020B E5 3C            [12]  720 	mov	a,_i2c_send_byte_PARM_2
      00020D 25 3C            [12]  721 	add	a,_i2c_send_byte_PARM_2
      00020F F5 3C            [12]  722 	mov	_i2c_send_byte_PARM_2,a
                                    723 ;	temp_sensor.c:165: for (i = 0; i < 8; i++) {
      000211 0E               [12]  724 	inc	r6
      000212 BE 08 00         [24]  725 	cjne	r6,#0x08,00120$
      000215                        726 00120$:
      000215 40 AD            [24]  727 	jc	00105$
                                    728 ;	temp_sensor.c:175: i2c_scl_write(sfr_address, 0);
      000217 75 3B 00         [24]  729 	mov	_i2c_scl_write_PARM_2,#0x00
      00021A 8F 82            [24]  730 	mov	dpl,r7
      00021C C0 07            [24]  731 	push	ar7
      00021E 12 01 1B         [24]  732 	lcall	_i2c_scl_write
      000221 D0 07            [24]  733 	pop	ar7
                                    734 ;	temp_sensor.c:176: i2c_sda_write(sfr_address, 1);
      000223 75 0F 01         [24]  735 	mov	_i2c_sda_write_PARM_2,#0x01
      000226 8F 82            [24]  736 	mov	dpl,r7
      000228 C0 07            [24]  737 	push	ar7
      00022A 12 00 E4         [24]  738 	lcall	_i2c_sda_write
      00022D D0 07            [24]  739 	pop	ar7
                                    740 ;	temp_sensor.c:177: i2c_scl_write(sfr_address, 1);
      00022F 75 3B 01         [24]  741 	mov	_i2c_scl_write_PARM_2,#0x01
      000232 8F 82            [24]  742 	mov	dpl,r7
      000234 C0 07            [24]  743 	push	ar7
      000236 12 01 1B         [24]  744 	lcall	_i2c_scl_write
      000239 D0 07            [24]  745 	pop	ar7
                                    746 ;	temp_sensor.c:178: ack_bit = i2c_sda_read(sfr_address);
      00023B 8F 82            [24]  747 	mov	dpl,r7
      00023D C0 07            [24]  748 	push	ar7
      00023F 12 00 FE         [24]  749 	lcall	_i2c_sda_read
      000242 AE 82            [24]  750 	mov	r6,dpl
      000244 D0 07            [24]  751 	pop	ar7
                                    752 ;	temp_sensor.c:179: i2c_scl_write(sfr_address, 0);
      000246 75 3B 00         [24]  753 	mov	_i2c_scl_write_PARM_2,#0x00
      000249 8F 82            [24]  754 	mov	dpl,r7
      00024B C0 06            [24]  755 	push	ar6
      00024D 12 01 1B         [24]  756 	lcall	_i2c_scl_write
      000250 D0 06            [24]  757 	pop	ar6
                                    758 ;	temp_sensor.c:181: return ack_bit;
      000252 8E 82            [24]  759 	mov	dpl,r6
      000254 22               [24]  760 	ret
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'i2c_read_byte'
                                    763 ;------------------------------------------------------------
                                    764 ;sfr_address               Allocated to registers r7 
                                    765 ;i                         Allocated to registers r5 
                                    766 ;received                  Allocated to registers r6 
                                    767 ;------------------------------------------------------------
                                    768 ;	temp_sensor.c:184: unsigned char i2c_read_byte(unsigned char sfr_address)
                                    769 ;	-----------------------------------------
                                    770 ;	 function i2c_read_byte
                                    771 ;	-----------------------------------------
      000255                        772 _i2c_read_byte:
      000255 AF 82            [24]  773 	mov	r7,dpl
                                    774 ;	temp_sensor.c:186: unsigned char i, received = 0;
      000257 7E 00            [12]  775 	mov	r6,#0x00
                                    776 ;	temp_sensor.c:187: for (i = 0; i < 8; i++) {
      000259 7D 00            [12]  777 	mov	r5,#0x00
      00025B                        778 00106$:
                                    779 ;	temp_sensor.c:188: i2c_scl_write(sfr_address, 1);
      00025B 75 3B 01         [24]  780 	mov	_i2c_scl_write_PARM_2,#0x01
      00025E 8F 82            [24]  781 	mov	dpl,r7
      000260 C0 07            [24]  782 	push	ar7
      000262 C0 06            [24]  783 	push	ar6
      000264 C0 05            [24]  784 	push	ar5
      000266 12 01 1B         [24]  785 	lcall	_i2c_scl_write
      000269 D0 05            [24]  786 	pop	ar5
      00026B D0 06            [24]  787 	pop	ar6
      00026D D0 07            [24]  788 	pop	ar7
                                    789 ;	temp_sensor.c:189: if(i2c_sda_read(sfr_address))
      00026F 8F 82            [24]  790 	mov	dpl,r7
      000271 C0 07            [24]  791 	push	ar7
      000273 C0 06            [24]  792 	push	ar6
      000275 C0 05            [24]  793 	push	ar5
      000277 12 00 FE         [24]  794 	lcall	_i2c_sda_read
      00027A E5 82            [12]  795 	mov	a,dpl
      00027C D0 05            [24]  796 	pop	ar5
      00027E D0 06            [24]  797 	pop	ar6
      000280 D0 07            [24]  798 	pop	ar7
      000282 60 03            [24]  799 	jz	00102$
                                    800 ;	temp_sensor.c:190: received |= 1;
      000284 43 06 01         [24]  801 	orl	ar6,#0x01
      000287                        802 00102$:
                                    803 ;	temp_sensor.c:191: if(i < 7)
      000287 BD 07 00         [24]  804 	cjne	r5,#0x07,00124$
      00028A                        805 00124$:
      00028A 50 03            [24]  806 	jnc	00104$
                                    807 ;	temp_sensor.c:192: received <<= 1;
      00028C EE               [12]  808 	mov	a,r6
      00028D 2E               [12]  809 	add	a,r6
      00028E FE               [12]  810 	mov	r6,a
      00028F                        811 00104$:
                                    812 ;	temp_sensor.c:193: i2c_scl_write(sfr_address, 0);
      00028F 75 3B 00         [24]  813 	mov	_i2c_scl_write_PARM_2,#0x00
      000292 8F 82            [24]  814 	mov	dpl,r7
      000294 C0 07            [24]  815 	push	ar7
      000296 C0 06            [24]  816 	push	ar6
      000298 C0 05            [24]  817 	push	ar5
      00029A 12 01 1B         [24]  818 	lcall	_i2c_scl_write
      00029D D0 05            [24]  819 	pop	ar5
      00029F D0 06            [24]  820 	pop	ar6
      0002A1 D0 07            [24]  821 	pop	ar7
                                    822 ;	temp_sensor.c:187: for (i = 0; i < 8; i++) {
      0002A3 0D               [12]  823 	inc	r5
      0002A4 BD 08 00         [24]  824 	cjne	r5,#0x08,00126$
      0002A7                        825 00126$:
      0002A7 40 B2            [24]  826 	jc	00106$
                                    827 ;	temp_sensor.c:195: return received;
      0002A9 8E 82            [24]  828 	mov	dpl,r6
      0002AB 22               [24]  829 	ret
                                    830 ;------------------------------------------------------------
                                    831 ;Allocation info for local variables in function 'read_temp_sensor'
                                    832 ;------------------------------------------------------------
                                    833 ;address_byte              Allocated to registers 
                                    834 ;ack                       Allocated to registers 
                                    835 ;millisecond               Allocated to registers 
                                    836 ;temperature               Allocated to registers r4 r5 r6 r7 
                                    837 ;slope                     Allocated with name '_read_temp_sensor_slope_1_54'
                                    838 ;count_remaining           Allocated with name '_read_temp_sensor_count_remaining_1_54'
                                    839 ;------------------------------------------------------------
                                    840 ;	temp_sensor.c:206: float read_temp_sensor(void)
                                    841 ;	-----------------------------------------
                                    842 ;	 function read_temp_sensor
                                    843 ;	-----------------------------------------
      0002AC                        844 _read_temp_sensor:
                                    845 ;	temp_sensor.c:223: write_temp_sensor_command(START_TEMP_SENSOR_CONVERSION);
      0002AC 75 82 EE         [24]  846 	mov	dpl,#0xEE
      0002AF 12 04 78         [24]  847 	lcall	_write_temp_sensor_command
                                    848 ;	temp_sensor.c:224: i2c_stop(TEMP_SENSOR_SFR);
      0002B2 75 82 B0         [24]  849 	mov	dpl,#0xB0
      0002B5 12 01 94         [24]  850 	lcall	_i2c_stop
                                    851 ;	temp_sensor.c:227: delay(1000*millisecond);//multiplication... this wait  maaay be (read: probably will be) longer than 1000ms
      0002B8 90 42 40         [24]  852 	mov	dptr,#0x4240
      0002BB 12 00 B0         [24]  853 	lcall	_delay
                                    854 ;	temp_sensor.c:229: write_temp_sensor_command(READ_TEMPERATURE);
      0002BE 75 82 AA         [24]  855 	mov	dpl,#0xAA
      0002C1 12 04 78         [24]  856 	lcall	_write_temp_sensor_command
                                    857 ;	temp_sensor.c:232: i2c_start(TEMP_SENSOR_SFR);
      0002C4 75 82 B0         [24]  858 	mov	dpl,#0xB0
      0002C7 12 01 5C         [24]  859 	lcall	_i2c_start
                                    860 ;	temp_sensor.c:233: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      0002CA 75 3C 91         [24]  861 	mov	_i2c_send_byte_PARM_2,#0x91
      0002CD 75 82 B0         [24]  862 	mov	dpl,#0xB0
      0002D0 12 01 C0         [24]  863 	lcall	_i2c_send_byte
                                    864 ;	temp_sensor.c:234: temperature = i2c_read_byte(TEMP_SENSOR_SFR);
      0002D3 75 82 B0         [24]  865 	mov	dpl,#0xB0
      0002D6 12 02 55         [24]  866 	lcall	_i2c_read_byte
      0002D9 12 0A 61         [24]  867 	lcall	___uchar2fs
      0002DC AC 82            [24]  868 	mov	r4,dpl
      0002DE AD 83            [24]  869 	mov	r5,dph
      0002E0 AE F0            [24]  870 	mov	r6,b
      0002E2 FF               [12]  871 	mov	r7,a
                                    872 ;	temp_sensor.c:237: i2c_read_byte(TEMP_SENSOR_SFR);
      0002E3 75 82 B0         [24]  873 	mov	dpl,#0xB0
      0002E6 C0 07            [24]  874 	push	ar7
      0002E8 C0 06            [24]  875 	push	ar6
      0002EA C0 05            [24]  876 	push	ar5
      0002EC C0 04            [24]  877 	push	ar4
      0002EE 12 02 55         [24]  878 	lcall	_i2c_read_byte
                                    879 ;	temp_sensor.c:238: i2c_stop(TEMP_SENSOR_SFR);
      0002F1 75 82 B0         [24]  880 	mov	dpl,#0xB0
      0002F4 12 01 94         [24]  881 	lcall	_i2c_stop
                                    882 ;	temp_sensor.c:240: write_temp_sensor_command(READ_COUNT_REMAIN);
      0002F7 75 82 A8         [24]  883 	mov	dpl,#0xA8
      0002FA 12 04 78         [24]  884 	lcall	_write_temp_sensor_command
                                    885 ;	temp_sensor.c:241: i2c_start(TEMP_SENSOR_SFR);
      0002FD 75 82 B0         [24]  886 	mov	dpl,#0xB0
      000300 12 01 5C         [24]  887 	lcall	_i2c_start
                                    888 ;	temp_sensor.c:242: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      000303 75 3C 91         [24]  889 	mov	_i2c_send_byte_PARM_2,#0x91
      000306 75 82 B0         [24]  890 	mov	dpl,#0xB0
      000309 12 01 C0         [24]  891 	lcall	_i2c_send_byte
                                    892 ;	temp_sensor.c:243: count_remaining = i2c_read_byte(TEMP_SENSOR_SFR);
      00030C 75 82 B0         [24]  893 	mov	dpl,#0xB0
      00030F 12 02 55         [24]  894 	lcall	_i2c_read_byte
      000312 12 0A 61         [24]  895 	lcall	___uchar2fs
      000315 85 82 41         [24]  896 	mov	_read_temp_sensor_count_remaining_1_54,dpl
      000318 85 83 42         [24]  897 	mov	(_read_temp_sensor_count_remaining_1_54 + 1),dph
      00031B 85 F0 43         [24]  898 	mov	(_read_temp_sensor_count_remaining_1_54 + 2),b
      00031E F5 44            [12]  899 	mov	(_read_temp_sensor_count_remaining_1_54 + 3),a
                                    900 ;	temp_sensor.c:244: i2c_stop(TEMP_SENSOR_SFR);
      000320 75 82 B0         [24]  901 	mov	dpl,#0xB0
      000323 12 01 94         [24]  902 	lcall	_i2c_stop
                                    903 ;	temp_sensor.c:246: write_temp_sensor_command(READ_SLOPE);
      000326 75 82 A9         [24]  904 	mov	dpl,#0xA9
      000329 12 04 78         [24]  905 	lcall	_write_temp_sensor_command
                                    906 ;	temp_sensor.c:247: i2c_start(TEMP_SENSOR_SFR);
      00032C 75 82 B0         [24]  907 	mov	dpl,#0xB0
      00032F 12 01 5C         [24]  908 	lcall	_i2c_start
                                    909 ;	temp_sensor.c:248: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      000332 75 3C 91         [24]  910 	mov	_i2c_send_byte_PARM_2,#0x91
      000335 75 82 B0         [24]  911 	mov	dpl,#0xB0
      000338 12 01 C0         [24]  912 	lcall	_i2c_send_byte
                                    913 ;	temp_sensor.c:249: slope = i2c_read_byte(TEMP_SENSOR_SFR);
      00033B 75 82 B0         [24]  914 	mov	dpl,#0xB0
      00033E 12 02 55         [24]  915 	lcall	_i2c_read_byte
      000341 12 0A 61         [24]  916 	lcall	___uchar2fs
      000344 85 82 3D         [24]  917 	mov	_read_temp_sensor_slope_1_54,dpl
      000347 85 83 3E         [24]  918 	mov	(_read_temp_sensor_slope_1_54 + 1),dph
      00034A 85 F0 3F         [24]  919 	mov	(_read_temp_sensor_slope_1_54 + 2),b
      00034D F5 40            [12]  920 	mov	(_read_temp_sensor_slope_1_54 + 3),a
                                    921 ;	temp_sensor.c:250: i2c_stop(TEMP_SENSOR_SFR);
      00034F 75 82 B0         [24]  922 	mov	dpl,#0xB0
      000352 12 01 94         [24]  923 	lcall	_i2c_stop
                                    924 ;	temp_sensor.c:254: temperature = temperature - (0.25 + (slope - count_remaining) / slope);
      000355 C0 41            [24]  925 	push	_read_temp_sensor_count_remaining_1_54
      000357 C0 42            [24]  926 	push	(_read_temp_sensor_count_remaining_1_54 + 1)
      000359 C0 43            [24]  927 	push	(_read_temp_sensor_count_remaining_1_54 + 2)
      00035B C0 44            [24]  928 	push	(_read_temp_sensor_count_remaining_1_54 + 3)
      00035D 85 3D 82         [24]  929 	mov	dpl,_read_temp_sensor_slope_1_54
      000360 85 3E 83         [24]  930 	mov	dph,(_read_temp_sensor_slope_1_54 + 1)
      000363 85 3F F0         [24]  931 	mov	b,(_read_temp_sensor_slope_1_54 + 2)
      000366 E5 40            [12]  932 	mov	a,(_read_temp_sensor_slope_1_54 + 3)
      000368 12 06 05         [24]  933 	lcall	___fssub
      00036B A8 82            [24]  934 	mov	r0,dpl
      00036D A9 83            [24]  935 	mov	r1,dph
      00036F AA F0            [24]  936 	mov	r2,b
      000371 FB               [12]  937 	mov	r3,a
      000372 E5 81            [12]  938 	mov	a,sp
      000374 24 FC            [12]  939 	add	a,#0xfc
      000376 F5 81            [12]  940 	mov	sp,a
      000378 C0 3D            [24]  941 	push	_read_temp_sensor_slope_1_54
      00037A C0 3E            [24]  942 	push	(_read_temp_sensor_slope_1_54 + 1)
      00037C C0 3F            [24]  943 	push	(_read_temp_sensor_slope_1_54 + 2)
      00037E C0 40            [24]  944 	push	(_read_temp_sensor_slope_1_54 + 3)
      000380 88 82            [24]  945 	mov	dpl,r0
      000382 89 83            [24]  946 	mov	dph,r1
      000384 8A F0            [24]  947 	mov	b,r2
      000386 EB               [12]  948 	mov	a,r3
      000387 12 09 9E         [24]  949 	lcall	___fsdiv
      00038A A8 82            [24]  950 	mov	r0,dpl
      00038C A9 83            [24]  951 	mov	r1,dph
      00038E AA F0            [24]  952 	mov	r2,b
      000390 FB               [12]  953 	mov	r3,a
      000391 E5 81            [12]  954 	mov	a,sp
      000393 24 FC            [12]  955 	add	a,#0xfc
      000395 F5 81            [12]  956 	mov	sp,a
      000397 E4               [12]  957 	clr	a
      000398 C0 E0            [24]  958 	push	acc
      00039A C0 E0            [24]  959 	push	acc
      00039C 74 80            [12]  960 	mov	a,#0x80
      00039E C0 E0            [24]  961 	push	acc
      0003A0 74 3E            [12]  962 	mov	a,#0x3E
      0003A2 C0 E0            [24]  963 	push	acc
      0003A4 88 82            [24]  964 	mov	dpl,r0
      0003A6 89 83            [24]  965 	mov	dph,r1
      0003A8 8A F0            [24]  966 	mov	b,r2
      0003AA EB               [12]  967 	mov	a,r3
      0003AB 12 08 36         [24]  968 	lcall	___fsadd
      0003AE A8 82            [24]  969 	mov	r0,dpl
      0003B0 A9 83            [24]  970 	mov	r1,dph
      0003B2 AA F0            [24]  971 	mov	r2,b
      0003B4 FB               [12]  972 	mov	r3,a
      0003B5 E5 81            [12]  973 	mov	a,sp
      0003B7 24 FC            [12]  974 	add	a,#0xfc
      0003B9 F5 81            [12]  975 	mov	sp,a
      0003BB D0 04            [24]  976 	pop	ar4
      0003BD D0 05            [24]  977 	pop	ar5
      0003BF D0 06            [24]  978 	pop	ar6
      0003C1 D0 07            [24]  979 	pop	ar7
      0003C3 C0 00            [24]  980 	push	ar0
      0003C5 C0 01            [24]  981 	push	ar1
      0003C7 C0 02            [24]  982 	push	ar2
      0003C9 C0 03            [24]  983 	push	ar3
      0003CB 8C 82            [24]  984 	mov	dpl,r4
      0003CD 8D 83            [24]  985 	mov	dph,r5
      0003CF 8E F0            [24]  986 	mov	b,r6
      0003D1 EF               [12]  987 	mov	a,r7
      0003D2 12 06 05         [24]  988 	lcall	___fssub
      0003D5 AC 82            [24]  989 	mov	r4,dpl
      0003D7 AD 83            [24]  990 	mov	r5,dph
      0003D9 AE F0            [24]  991 	mov	r6,b
      0003DB FF               [12]  992 	mov	r7,a
      0003DC E5 81            [12]  993 	mov	a,sp
      0003DE 24 FC            [12]  994 	add	a,#0xfc
      0003E0 F5 81            [12]  995 	mov	sp,a
                                    996 ;	temp_sensor.c:264: return temperature;
      0003E2 8C 82            [24]  997 	mov	dpl,r4
      0003E4 8D 83            [24]  998 	mov	dph,r5
      0003E6 8E F0            [24]  999 	mov	b,r6
      0003E8 EF               [12] 1000 	mov	a,r7
      0003E9 22               [24] 1001 	ret
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'clear_display_buffer'
                                   1004 ;------------------------------------------------------------
                                   1005 ;i                         Allocated to registers r6 r7 
                                   1006 ;------------------------------------------------------------
                                   1007 ;	temp_sensor.c:267: void clear_display_buffer(void)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function clear_display_buffer
                                   1010 ;	-----------------------------------------
      0003EA                       1011 _clear_display_buffer:
                                   1012 ;	temp_sensor.c:270: for (i = 0; i < DISPLAY_BUFFER_SIZE; i++)
      0003EA 7E 00            [12] 1013 	mov	r6,#0x00
      0003EC 7F 00            [12] 1014 	mov	r7,#0x00
      0003EE                       1015 00102$:
                                   1016 ;	temp_sensor.c:272: display_buffer[i] = 0x00;
      0003EE EE               [12] 1017 	mov	a,r6
      0003EF 24 31            [12] 1018 	add	a,#_display_buffer
      0003F1 F8               [12] 1019 	mov	r0,a
      0003F2 76 00            [12] 1020 	mov	@r0,#0x00
                                   1021 ;	temp_sensor.c:270: for (i = 0; i < DISPLAY_BUFFER_SIZE; i++)
      0003F4 0E               [12] 1022 	inc	r6
      0003F5 BE 00 01         [24] 1023 	cjne	r6,#0x00,00110$
      0003F8 0F               [12] 1024 	inc	r7
      0003F9                       1025 00110$:
      0003F9 C3               [12] 1026 	clr	c
      0003FA EE               [12] 1027 	mov	a,r6
      0003FB 94 0A            [12] 1028 	subb	a,#0x0A
      0003FD EF               [12] 1029 	mov	a,r7
      0003FE 64 80            [12] 1030 	xrl	a,#0x80
      000400 94 80            [12] 1031 	subb	a,#0x80
      000402 40 EA            [24] 1032 	jc	00102$
      000404 22               [24] 1033 	ret
                                   1034 ;------------------------------------------------------------
                                   1035 ;Allocation info for local variables in function 'write_display'
                                   1036 ;------------------------------------------------------------
                                   1037 ;address                   Allocated to registers 
                                   1038 ;write_bit                 Allocated to registers 
                                   1039 ;address_with_write        Allocated to registers 
                                   1040 ;i                         Allocated to registers r7 
                                   1041 ;ack                       Allocated to registers 
                                   1042 ;------------------------------------------------------------
                                   1043 ;	temp_sensor.c:276: void write_display(void)
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function write_display
                                   1046 ;	-----------------------------------------
      000405                       1047 _write_display:
                                   1048 ;	temp_sensor.c:285: i2c_start(DISPLAY_SFR);
      000405 75 82 A0         [24] 1049 	mov	dpl,#0xA0
      000408 12 01 5C         [24] 1050 	lcall	_i2c_start
                                   1051 ;	temp_sensor.c:286: ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
      00040B 75 3C E0         [24] 1052 	mov	_i2c_send_byte_PARM_2,#0xE0
      00040E 75 82 A0         [24] 1053 	mov	dpl,#0xA0
      000411 12 01 C0         [24] 1054 	lcall	_i2c_send_byte
                                   1055 ;	temp_sensor.c:296: ack = i2c_send_byte(DISPLAY_SFR, 0x00); //0x00 is the starting address of the 7-set disp
      000414 75 3C 00         [24] 1056 	mov	_i2c_send_byte_PARM_2,#0x00
      000417 75 82 A0         [24] 1057 	mov	dpl,#0xA0
      00041A 12 01 C0         [24] 1058 	lcall	_i2c_send_byte
                                   1059 ;	temp_sensor.c:297: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      00041D 7F 00            [12] 1060 	mov	r7,#0x00
      00041F                       1061 00102$:
                                   1062 ;	temp_sensor.c:298: ack = i2c_send_byte(DISPLAY_SFR, display_buffer[i]);
      00041F EF               [12] 1063 	mov	a,r7
      000420 24 31            [12] 1064 	add	a,#_display_buffer
      000422 F9               [12] 1065 	mov	r1,a
      000423 87 3C            [24] 1066 	mov	_i2c_send_byte_PARM_2,@r1
      000425 75 82 A0         [24] 1067 	mov	dpl,#0xA0
      000428 C0 07            [24] 1068 	push	ar7
      00042A 12 01 C0         [24] 1069 	lcall	_i2c_send_byte
      00042D D0 07            [24] 1070 	pop	ar7
                                   1071 ;	temp_sensor.c:297: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      00042F 0F               [12] 1072 	inc	r7
      000430 BF 0A 00         [24] 1073 	cjne	r7,#0x0A,00113$
      000433                       1074 00113$:
      000433 40 EA            [24] 1075 	jc	00102$
                                   1076 ;	temp_sensor.c:300: i2c_stop(DISPLAY_SFR);
      000435 75 82 A0         [24] 1077 	mov	dpl,#0xA0
      000438 02 01 94         [24] 1078 	ljmp	_i2c_stop
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'write_display_command'
                                   1081 ;------------------------------------------------------------
                                   1082 ;command_byte              Allocated to registers r7 
                                   1083 ;address                   Allocated to registers 
                                   1084 ;write_bit                 Allocated to registers 
                                   1085 ;address_with_write        Allocated to registers 
                                   1086 ;ack                       Allocated to registers 
                                   1087 ;------------------------------------------------------------
                                   1088 ;	temp_sensor.c:304: void write_display_command(unsigned char command_byte)
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function write_display_command
                                   1091 ;	-----------------------------------------
      00043B                       1092 _write_display_command:
      00043B AF 82            [24] 1093 	mov	r7,dpl
                                   1094 ;	temp_sensor.c:317: i2c_start(DISPLAY_SFR);
      00043D 75 82 A0         [24] 1095 	mov	dpl,#0xA0
      000440 C0 07            [24] 1096 	push	ar7
      000442 12 01 5C         [24] 1097 	lcall	_i2c_start
                                   1098 ;	temp_sensor.c:318: ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
      000445 75 3C E0         [24] 1099 	mov	_i2c_send_byte_PARM_2,#0xE0
      000448 75 82 A0         [24] 1100 	mov	dpl,#0xA0
      00044B 12 01 C0         [24] 1101 	lcall	_i2c_send_byte
      00044E D0 07            [24] 1102 	pop	ar7
                                   1103 ;	temp_sensor.c:324: ack = i2c_send_byte(DISPLAY_SFR, command_byte);
      000450 8F 3C            [24] 1104 	mov	_i2c_send_byte_PARM_2,r7
      000452 75 82 A0         [24] 1105 	mov	dpl,#0xA0
      000455 12 01 C0         [24] 1106 	lcall	_i2c_send_byte
                                   1107 ;	temp_sensor.c:325: i2c_stop(DISPLAY_SFR);
      000458 75 82 A0         [24] 1108 	mov	dpl,#0xA0
      00045B 02 01 94         [24] 1109 	ljmp	_i2c_stop
                                   1110 ;------------------------------------------------------------
                                   1111 ;Allocation info for local variables in function 'write_temp_sensor_config'
                                   1112 ;------------------------------------------------------------
                                   1113 ;config                    Allocated to registers r7 
                                   1114 ;address_byte              Allocated to registers 
                                   1115 ;ack                       Allocated to registers 
                                   1116 ;------------------------------------------------------------
                                   1117 ;	temp_sensor.c:328: void write_temp_sensor_config(unsigned char config)
                                   1118 ;	-----------------------------------------
                                   1119 ;	 function write_temp_sensor_config
                                   1120 ;	-----------------------------------------
      00045E                       1121 _write_temp_sensor_config:
      00045E AF 82            [24] 1122 	mov	r7,dpl
                                   1123 ;	temp_sensor.c:333: write_temp_sensor_command(ACCESS_TEMP_SENSOR_CONFIG);
      000460 75 82 AC         [24] 1124 	mov	dpl,#0xAC
      000463 C0 07            [24] 1125 	push	ar7
      000465 12 04 78         [24] 1126 	lcall	_write_temp_sensor_command
      000468 D0 07            [24] 1127 	pop	ar7
                                   1128 ;	temp_sensor.c:334: ack = i2c_send_byte(TEMP_SENSOR_SFR, config);
      00046A 8F 3C            [24] 1129 	mov	_i2c_send_byte_PARM_2,r7
      00046C 75 82 B0         [24] 1130 	mov	dpl,#0xB0
      00046F 12 01 C0         [24] 1131 	lcall	_i2c_send_byte
                                   1132 ;	temp_sensor.c:335: i2c_stop(TEMP_SENSOR_SFR);
      000472 75 82 B0         [24] 1133 	mov	dpl,#0xB0
      000475 02 01 94         [24] 1134 	ljmp	_i2c_stop
                                   1135 ;------------------------------------------------------------
                                   1136 ;Allocation info for local variables in function 'write_temp_sensor_command'
                                   1137 ;------------------------------------------------------------
                                   1138 ;command_byte              Allocated to registers r7 
                                   1139 ;control_byte              Allocated to registers 
                                   1140 ;write_bit                 Allocated to registers 
                                   1141 ;address_with_write        Allocated to registers 
                                   1142 ;ack                       Allocated to registers 
                                   1143 ;------------------------------------------------------------
                                   1144 ;	temp_sensor.c:339: void write_temp_sensor_command(unsigned char command_byte)
                                   1145 ;	-----------------------------------------
                                   1146 ;	 function write_temp_sensor_command
                                   1147 ;	-----------------------------------------
      000478                       1148 _write_temp_sensor_command:
      000478 AF 82            [24] 1149 	mov	r7,dpl
                                   1150 ;	temp_sensor.c:373: i2c_start(TEMP_SENSOR_SFR);
      00047A 75 82 B0         [24] 1151 	mov	dpl,#0xB0
      00047D C0 07            [24] 1152 	push	ar7
      00047F 12 01 5C         [24] 1153 	lcall	_i2c_start
                                   1154 ;	temp_sensor.c:374: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_with_write);
      000482 75 3C 90         [24] 1155 	mov	_i2c_send_byte_PARM_2,#0x90
      000485 75 82 B0         [24] 1156 	mov	dpl,#0xB0
      000488 12 01 C0         [24] 1157 	lcall	_i2c_send_byte
      00048B D0 07            [24] 1158 	pop	ar7
                                   1159 ;	temp_sensor.c:375: ack = i2c_send_byte(TEMP_SENSOR_SFR, command_byte);
      00048D 8F 3C            [24] 1160 	mov	_i2c_send_byte_PARM_2,r7
      00048F 75 82 B0         [24] 1161 	mov	dpl,#0xB0
      000492 02 01 C0         [24] 1162 	ljmp	_i2c_send_byte
                                   1163 ;------------------------------------------------------------
                                   1164 ;Allocation info for local variables in function 'main'
                                   1165 ;------------------------------------------------------------
                                   1166 ;temp_sensor_config        Allocated to registers 
                                   1167 ;first_num                 Allocated to registers r7 
                                   1168 ;second_num                Allocated to registers r6 
                                   1169 ;current_temp              Allocated with name '_main_current_temp_1_68'
                                   1170 ;last_temp                 Allocated with name '_main_last_temp_1_68'
                                   1171 ;temp_fraction             Allocated to registers r4 r5 r6 r7 
                                   1172 ;temp_int                  Allocated with name '_main_temp_int_1_68'
                                   1173 ;------------------------------------------------------------
                                   1174 ;	temp_sensor.c:378: void main(void)
                                   1175 ;	-----------------------------------------
                                   1176 ;	 function main
                                   1177 ;	-----------------------------------------
      000495                       1178 _main:
                                   1179 ;	temp_sensor.c:380: bool update_display = true;
      000495 D2 00            [12] 1180 	setb	_main_update_display_1_68
                                   1181 ;	temp_sensor.c:384: float current_temp = 0, last_temp = 0;
      000497 E4               [12] 1182 	clr	a
      000498 F5 49            [12] 1183 	mov	_main_last_temp_1_68,a
      00049A F5 4A            [12] 1184 	mov	(_main_last_temp_1_68 + 1),a
      00049C F5 4B            [12] 1185 	mov	(_main_last_temp_1_68 + 2),a
      00049E F5 4C            [12] 1186 	mov	(_main_last_temp_1_68 + 3),a
                                   1187 ;	temp_sensor.c:385: float temp_fraction = 0.0, temp_int = 0.0;
      0004A0 F5 4D            [12] 1188 	mov	_main_temp_int_1_68,a
      0004A2 F5 4E            [12] 1189 	mov	(_main_temp_int_1_68 + 1),a
      0004A4 F5 4F            [12] 1190 	mov	(_main_temp_int_1_68 + 2),a
      0004A6 F5 50            [12] 1191 	mov	(_main_temp_int_1_68 + 3),a
                                   1192 ;	temp_sensor.c:387: delay(10); //delay is # clock cycles
      0004A8 90 00 0A         [24] 1193 	mov	dptr,#0x000A
      0004AB 12 00 B0         [24] 1194 	lcall	_delay
                                   1195 ;	temp_sensor.c:390: write_display_command(ENABLE_DISPLAY_OSCILLATOR);
      0004AE 75 82 21         [24] 1196 	mov	dpl,#0x21
      0004B1 12 04 3B         [24] 1197 	lcall	_write_display_command
                                   1198 ;	temp_sensor.c:391: write_display_command(ENABLE_DISPLAY);
      0004B4 75 82 81         [24] 1199 	mov	dpl,#0x81
      0004B7 12 04 3B         [24] 1200 	lcall	_write_display_command
                                   1201 ;	temp_sensor.c:397: write_temp_sensor_config(temp_sensor_config);
      0004BA 75 82 03         [24] 1202 	mov	dpl,#0x03
      0004BD 12 04 5E         [24] 1203 	lcall	_write_temp_sensor_config
                                   1204 ;	temp_sensor.c:403: while (true) 
      0004C0                       1205 00108$:
                                   1206 ;	temp_sensor.c:405: current_temp = read_temp_sensor();
      0004C0 12 02 AC         [24] 1207 	lcall	_read_temp_sensor
      0004C3 85 82 45         [24] 1208 	mov	_main_current_temp_1_68,dpl
      0004C6 85 83 46         [24] 1209 	mov	(_main_current_temp_1_68 + 1),dph
      0004C9 85 F0 47         [24] 1210 	mov	(_main_current_temp_1_68 + 2),b
      0004CC F5 48            [12] 1211 	mov	(_main_current_temp_1_68 + 3),a
                                   1212 ;	temp_sensor.c:406: if (last_temp != current_temp)
      0004CE C0 45            [24] 1213 	push	_main_current_temp_1_68
      0004D0 C0 46            [24] 1214 	push	(_main_current_temp_1_68 + 1)
      0004D2 C0 47            [24] 1215 	push	(_main_current_temp_1_68 + 2)
      0004D4 C0 48            [24] 1216 	push	(_main_current_temp_1_68 + 3)
      0004D6 85 49 82         [24] 1217 	mov	dpl,_main_last_temp_1_68
      0004D9 85 4A 83         [24] 1218 	mov	dph,(_main_last_temp_1_68 + 1)
      0004DC 85 4B F0         [24] 1219 	mov	b,(_main_last_temp_1_68 + 2)
      0004DF E5 4C            [12] 1220 	mov	a,(_main_last_temp_1_68 + 3)
      0004E1 12 07 8D         [24] 1221 	lcall	___fseq
      0004E4 AD 82            [24] 1222 	mov	r5,dpl
      0004E6 E5 81            [12] 1223 	mov	a,sp
      0004E8 24 FC            [12] 1224 	add	a,#0xfc
      0004EA F5 81            [12] 1225 	mov	sp,a
      0004EC ED               [12] 1226 	mov	a,r5
      0004ED 60 03            [24] 1227 	jz	00124$
      0004EF 02 05 F7         [24] 1228 	ljmp	00104$
      0004F2                       1229 00124$:
                                   1230 ;	temp_sensor.c:409: if (current_temp < 0) 
      0004F2 E4               [12] 1231 	clr	a
      0004F3 C0 E0            [24] 1232 	push	acc
      0004F5 C0 E0            [24] 1233 	push	acc
      0004F7 C0 E0            [24] 1234 	push	acc
      0004F9 C0 E0            [24] 1235 	push	acc
      0004FB 85 45 82         [24] 1236 	mov	dpl,_main_current_temp_1_68
      0004FE 85 46 83         [24] 1237 	mov	dph,(_main_current_temp_1_68 + 1)
      000501 85 47 F0         [24] 1238 	mov	b,(_main_current_temp_1_68 + 2)
      000504 E5 48            [12] 1239 	mov	a,(_main_current_temp_1_68 + 3)
      000506 12 07 B9         [24] 1240 	lcall	___fslt
      000509 AD 82            [24] 1241 	mov	r5,dpl
      00050B E5 81            [12] 1242 	mov	a,sp
      00050D 24 FC            [12] 1243 	add	a,#0xfc
      00050F F5 81            [12] 1244 	mov	sp,a
      000511 ED               [12] 1245 	mov	a,r5
      000512 60 06            [24] 1246 	jz	00102$
                                   1247 ;	temp_sensor.c:412: current_temp *= -1;
      000514 E5 48            [12] 1248 	mov	a,(_main_current_temp_1_68 + 3)
      000516 B2 E7            [12] 1249 	cpl	acc.7
      000518 F5 48            [12] 1250 	mov	(_main_current_temp_1_68 + 3),a
      00051A                       1251 00102$:
                                   1252 ;	temp_sensor.c:414: first_num = number_table[(int)current_temp / 10];
      00051A 85 45 82         [24] 1253 	mov	dpl,_main_current_temp_1_68
      00051D 85 46 83         [24] 1254 	mov	dph,(_main_current_temp_1_68 + 1)
      000520 85 47 F0         [24] 1255 	mov	b,(_main_current_temp_1_68 + 2)
      000523 E5 48            [12] 1256 	mov	a,(_main_current_temp_1_68 + 3)
      000525 12 09 01         [24] 1257 	lcall	___fs2sint
      000528 AC 82            [24] 1258 	mov	r4,dpl
      00052A AD 83            [24] 1259 	mov	r5,dph
      00052C 75 0F 0A         [24] 1260 	mov	__divsint_PARM_2,#0x0A
      00052F 75 10 00         [24] 1261 	mov	(__divsint_PARM_2 + 1),#0x00
      000532 C0 05            [24] 1262 	push	ar5
      000534 C0 04            [24] 1263 	push	ar4
      000536 12 0A B5         [24] 1264 	lcall	__divsint
      000539 AE 82            [24] 1265 	mov	r6,dpl
      00053B D0 04            [24] 1266 	pop	ar4
      00053D D0 05            [24] 1267 	pop	ar5
      00053F EE               [12] 1268 	mov	a,r6
      000540 24 21            [12] 1269 	add	a,#_number_table
      000542 F9               [12] 1270 	mov	r1,a
      000543 87 07            [24] 1271 	mov	ar7,@r1
                                   1272 ;	temp_sensor.c:415: second_num = number_table[(int)current_temp % 10] | PERIOD_CHARACTER;
      000545 75 0F 0A         [24] 1273 	mov	__modsint_PARM_2,#0x0A
      000548 75 10 00         [24] 1274 	mov	(__modsint_PARM_2 + 1),#0x00
      00054B 8C 82            [24] 1275 	mov	dpl,r4
      00054D 8D 83            [24] 1276 	mov	dph,r5
      00054F C0 07            [24] 1277 	push	ar7
      000551 12 0A 6C         [24] 1278 	lcall	__modsint
      000554 E5 82            [12] 1279 	mov	a,dpl
      000556 24 21            [12] 1280 	add	a,#_number_table
      000558 F9               [12] 1281 	mov	r1,a
      000559 87 06            [24] 1282 	mov	ar6,@r1
      00055B 43 06 80         [24] 1283 	orl	ar6,#0x80
                                   1284 ;	temp_sensor.c:417: clear_display_buffer();
      00055E C0 06            [24] 1285 	push	ar6
      000560 12 03 EA         [24] 1286 	lcall	_clear_display_buffer
      000563 D0 06            [24] 1287 	pop	ar6
      000565 D0 07            [24] 1288 	pop	ar7
                                   1289 ;	temp_sensor.c:419: display_buffer[0] = first_num;
      000567 8F 31            [24] 1290 	mov	_display_buffer,r7
                                   1291 ;	temp_sensor.c:420: display_buffer[2] = second_num;
      000569 8E 33            [24] 1292 	mov	(_display_buffer + 0x0002),r6
                                   1293 ;	temp_sensor.c:421: temp_fraction = modff(current_temp, &temp_int);
      00056B 75 08 4D         [24] 1294 	mov	_modff_PARM_2,#_main_temp_int_1_68
      00056E 75 09 00         [24] 1295 	mov	(_modff_PARM_2 + 1),#0x00
      000571 75 0A 40         [24] 1296 	mov	(_modff_PARM_2 + 2),#0x40
      000574 85 45 82         [24] 1297 	mov	dpl,_main_current_temp_1_68
      000577 85 46 83         [24] 1298 	mov	dph,(_main_current_temp_1_68 + 1)
      00057A 85 47 F0         [24] 1299 	mov	b,(_main_current_temp_1_68 + 2)
      00057D E5 48            [12] 1300 	mov	a,(_main_current_temp_1_68 + 3)
      00057F 12 07 14         [24] 1301 	lcall	_modff
      000582 AC 82            [24] 1302 	mov	r4,dpl
      000584 AD 83            [24] 1303 	mov	r5,dph
      000586 AE F0            [24] 1304 	mov	r6,b
      000588 FF               [12] 1305 	mov	r7,a
                                   1306 ;	temp_sensor.c:422: temp_fraction *= 100;
      000589 C0 04            [24] 1307 	push	ar4
      00058B C0 05            [24] 1308 	push	ar5
      00058D C0 06            [24] 1309 	push	ar6
      00058F C0 07            [24] 1310 	push	ar7
      000591 90 00 00         [24] 1311 	mov	dptr,#0x0000
      000594 75 F0 C8         [24] 1312 	mov	b,#0xC8
      000597 74 42            [12] 1313 	mov	a,#0x42
      000599 12 06 10         [24] 1314 	lcall	___fsmul
      00059C AC 82            [24] 1315 	mov	r4,dpl
      00059E AD 83            [24] 1316 	mov	r5,dph
      0005A0 AE F0            [24] 1317 	mov	r6,b
      0005A2 FF               [12] 1318 	mov	r7,a
      0005A3 E5 81            [12] 1319 	mov	a,sp
      0005A5 24 FC            [12] 1320 	add	a,#0xfc
      0005A7 F5 81            [12] 1321 	mov	sp,a
                                   1322 ;	temp_sensor.c:423: display_buffer[6] = number_table[(int)temp_fraction / 10];
      0005A9 8C 82            [24] 1323 	mov	dpl,r4
      0005AB 8D 83            [24] 1324 	mov	dph,r5
      0005AD 8E F0            [24] 1325 	mov	b,r6
      0005AF EF               [12] 1326 	mov	a,r7
      0005B0 12 09 01         [24] 1327 	lcall	___fs2sint
      0005B3 AE 82            [24] 1328 	mov	r6,dpl
      0005B5 AF 83            [24] 1329 	mov	r7,dph
      0005B7 75 0F 0A         [24] 1330 	mov	__divsint_PARM_2,#0x0A
      0005BA 75 10 00         [24] 1331 	mov	(__divsint_PARM_2 + 1),#0x00
      0005BD C0 07            [24] 1332 	push	ar7
      0005BF C0 06            [24] 1333 	push	ar6
      0005C1 12 0A B5         [24] 1334 	lcall	__divsint
      0005C4 AC 82            [24] 1335 	mov	r4,dpl
      0005C6 D0 06            [24] 1336 	pop	ar6
      0005C8 D0 07            [24] 1337 	pop	ar7
      0005CA EC               [12] 1338 	mov	a,r4
      0005CB 24 21            [12] 1339 	add	a,#_number_table
      0005CD F9               [12] 1340 	mov	r1,a
      0005CE 87 05            [24] 1341 	mov	ar5,@r1
      0005D0 8D 37            [24] 1342 	mov	(_display_buffer + 0x0006),r5
                                   1343 ;	temp_sensor.c:424: display_buffer[8] = number_table[(int)temp_fraction % 10];
      0005D2 75 0F 0A         [24] 1344 	mov	__modsint_PARM_2,#0x0A
      0005D5 75 10 00         [24] 1345 	mov	(__modsint_PARM_2 + 1),#0x00
      0005D8 8E 82            [24] 1346 	mov	dpl,r6
      0005DA 8F 83            [24] 1347 	mov	dph,r7
      0005DC 12 0A 6C         [24] 1348 	lcall	__modsint
      0005DF E5 82            [12] 1349 	mov	a,dpl
      0005E1 FE               [12] 1350 	mov	r6,a
      0005E2 24 21            [12] 1351 	add	a,#_number_table
      0005E4 F9               [12] 1352 	mov	r1,a
      0005E5 87 07            [24] 1353 	mov	ar7,@r1
      0005E7 8F 39            [24] 1354 	mov	(_display_buffer + 0x0008),r7
                                   1355 ;	temp_sensor.c:426: update_display = true;
      0005E9 D2 00            [12] 1356 	setb	_main_update_display_1_68
                                   1357 ;	temp_sensor.c:427: last_temp = current_temp;
      0005EB 85 45 49         [24] 1358 	mov	_main_last_temp_1_68,_main_current_temp_1_68
      0005EE 85 46 4A         [24] 1359 	mov	(_main_last_temp_1_68 + 1),(_main_current_temp_1_68 + 1)
      0005F1 85 47 4B         [24] 1360 	mov	(_main_last_temp_1_68 + 2),(_main_current_temp_1_68 + 2)
      0005F4 85 48 4C         [24] 1361 	mov	(_main_last_temp_1_68 + 3),(_main_current_temp_1_68 + 3)
      0005F7                       1362 00104$:
                                   1363 ;	temp_sensor.c:429: if (update_display) 
      0005F7 20 00 03         [24] 1364 	jb	_main_update_display_1_68,00126$
      0005FA 02 04 C0         [24] 1365 	ljmp	00108$
      0005FD                       1366 00126$:
                                   1367 ;	temp_sensor.c:434: write_display();
      0005FD 12 04 05         [24] 1368 	lcall	_write_display
                                   1369 ;	temp_sensor.c:435: update_display = false;
      000600 C2 00            [12] 1370 	clr	_main_update_display_1_68
      000602 02 04 C0         [24] 1371 	ljmp	00108$
                                   1372 	.area CSEG    (CODE)
                                   1373 	.area CONST   (CODE)
                                   1374 	.area XINIT   (CODE)
                                   1375 	.area CABS    (ABS,CODE)
