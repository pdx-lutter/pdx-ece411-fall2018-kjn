                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Tue Dec  4 05:30:11 2018
                                      5 ;--------------------------------------------------------
                                      6 	.module temp_sensor
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _i2c_scl_write_PARM_2
                                     13 	.globl _i2c_sda_write_PARM_2
                                     14 	.globl _main
                                     15 	.globl _delay
                                     16 	.globl _write_temp_sensor_config
                                     17 	.globl _write_display_command
                                     18 	.globl _write_display
                                     19 	.globl _read_temp_sensor
                                     20 	.globl _i2c_read_byte
                                     21 	.globl _i2c_send_byte
                                     22 	.globl _i2c_stop
                                     23 	.globl _i2c_start
                                     24 	.globl _i2c_scl_read
                                     25 	.globl _i2c_scl_write
                                     26 	.globl _i2c_sda_read
                                     27 	.globl _i2c_sda_write
                                     28 	.globl _i2c_delay
                                     29 	.globl _modff
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _B
                                    106 	.globl _ACC
                                    107 	.globl _PSW
                                    108 	.globl _IP
                                    109 	.globl _P3
                                    110 	.globl _IE
                                    111 	.globl _P2
                                    112 	.globl _SBUF
                                    113 	.globl _SCON
                                    114 	.globl _P1
                                    115 	.globl _TH1
                                    116 	.globl _TH0
                                    117 	.globl _TL1
                                    118 	.globl _TL0
                                    119 	.globl _TMOD
                                    120 	.globl _TCON
                                    121 	.globl _PCON
                                    122 	.globl _DPH
                                    123 	.globl _DPL
                                    124 	.globl _SP
                                    125 	.globl _P0
                                    126 	.globl _i2c_send_byte_PARM_2
                                    127 	.globl _display_buffer
                                    128 	.globl _number_table
                                    129 	.globl _write_temp_sensor_command
                                    130 ;--------------------------------------------------------
                                    131 ; special function registers
                                    132 ;--------------------------------------------------------
                                    133 	.area RSEG    (ABS,DATA)
      000000                        134 	.org 0x0000
                           000080   135 _P0	=	0x0080
                           000081   136 _SP	=	0x0081
                           000082   137 _DPL	=	0x0082
                           000083   138 _DPH	=	0x0083
                           000087   139 _PCON	=	0x0087
                           000088   140 _TCON	=	0x0088
                           000089   141 _TMOD	=	0x0089
                           00008A   142 _TL0	=	0x008a
                           00008B   143 _TL1	=	0x008b
                           00008C   144 _TH0	=	0x008c
                           00008D   145 _TH1	=	0x008d
                           000090   146 _P1	=	0x0090
                           000098   147 _SCON	=	0x0098
                           000099   148 _SBUF	=	0x0099
                           0000A0   149 _P2	=	0x00a0
                           0000A8   150 _IE	=	0x00a8
                           0000B0   151 _P3	=	0x00b0
                           0000B8   152 _IP	=	0x00b8
                           0000D0   153 _PSW	=	0x00d0
                           0000E0   154 _ACC	=	0x00e0
                           0000F0   155 _B	=	0x00f0
                                    156 ;--------------------------------------------------------
                                    157 ; special function bits
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0_0	=	0x0080
                           000081   162 _P0_1	=	0x0081
                           000082   163 _P0_2	=	0x0082
                           000083   164 _P0_3	=	0x0083
                           000084   165 _P0_4	=	0x0084
                           000085   166 _P0_5	=	0x0085
                           000086   167 _P0_6	=	0x0086
                           000087   168 _P0_7	=	0x0087
                           000088   169 _IT0	=	0x0088
                           000089   170 _IE0	=	0x0089
                           00008A   171 _IT1	=	0x008a
                           00008B   172 _IE1	=	0x008b
                           00008C   173 _TR0	=	0x008c
                           00008D   174 _TF0	=	0x008d
                           00008E   175 _TR1	=	0x008e
                           00008F   176 _TF1	=	0x008f
                           000090   177 _P1_0	=	0x0090
                           000091   178 _P1_1	=	0x0091
                           000092   179 _P1_2	=	0x0092
                           000093   180 _P1_3	=	0x0093
                           000094   181 _P1_4	=	0x0094
                           000095   182 _P1_5	=	0x0095
                           000096   183 _P1_6	=	0x0096
                           000097   184 _P1_7	=	0x0097
                           000098   185 _RI	=	0x0098
                           000099   186 _TI	=	0x0099
                           00009A   187 _RB8	=	0x009a
                           00009B   188 _TB8	=	0x009b
                           00009C   189 _REN	=	0x009c
                           00009D   190 _SM2	=	0x009d
                           00009E   191 _SM1	=	0x009e
                           00009F   192 _SM0	=	0x009f
                           0000A0   193 _P2_0	=	0x00a0
                           0000A1   194 _P2_1	=	0x00a1
                           0000A2   195 _P2_2	=	0x00a2
                           0000A3   196 _P2_3	=	0x00a3
                           0000A4   197 _P2_4	=	0x00a4
                           0000A5   198 _P2_5	=	0x00a5
                           0000A6   199 _P2_6	=	0x00a6
                           0000A7   200 _P2_7	=	0x00a7
                           0000A8   201 _EX0	=	0x00a8
                           0000A9   202 _ET0	=	0x00a9
                           0000AA   203 _EX1	=	0x00aa
                           0000AB   204 _ET1	=	0x00ab
                           0000AC   205 _ES	=	0x00ac
                           0000AF   206 _EA	=	0x00af
                           0000B0   207 _P3_0	=	0x00b0
                           0000B1   208 _P3_1	=	0x00b1
                           0000B2   209 _P3_2	=	0x00b2
                           0000B3   210 _P3_3	=	0x00b3
                           0000B4   211 _P3_4	=	0x00b4
                           0000B5   212 _P3_5	=	0x00b5
                           0000B6   213 _P3_6	=	0x00b6
                           0000B7   214 _P3_7	=	0x00b7
                           0000B0   215 _RXD	=	0x00b0
                           0000B1   216 _TXD	=	0x00b1
                           0000B2   217 _INT0	=	0x00b2
                           0000B3   218 _INT1	=	0x00b3
                           0000B4   219 _T0	=	0x00b4
                           0000B5   220 _T1	=	0x00b5
                           0000B6   221 _WR	=	0x00b6
                           0000B7   222 _RD	=	0x00b7
                           0000B8   223 _PX0	=	0x00b8
                           0000B9   224 _PT0	=	0x00b9
                           0000BA   225 _PX1	=	0x00ba
                           0000BB   226 _PT1	=	0x00bb
                           0000BC   227 _PS	=	0x00bc
                           0000D0   228 _P	=	0x00d0
                           0000D1   229 _F1	=	0x00d1
                           0000D2   230 _OV	=	0x00d2
                           0000D3   231 _RS0	=	0x00d3
                           0000D4   232 _RS1	=	0x00d4
                           0000D5   233 _F0	=	0x00d5
                           0000D6   234 _AC	=	0x00d6
                           0000D7   235 _CY	=	0x00d7
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable register banks
                                    238 ;--------------------------------------------------------
                                    239 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        240 	.ds 8
                                    241 ;--------------------------------------------------------
                                    242 ; internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area DSEG    (DATA)
      000021                        245 _number_table::
      000021                        246 	.ds 16
      000031                        247 _display_buffer::
      000031                        248 	.ds 10
      00003B                        249 _i2c_send_byte_PARM_2:
      00003B                        250 	.ds 1
      00003C                        251 _read_temp_sensor_slope_1_50:
      00003C                        252 	.ds 1
      00003D                        253 _read_temp_sensor_remainder_1_50:
      00003D                        254 	.ds 1
      00003E                        255 _read_temp_sensor_sloc0_1_0:
      00003E                        256 	.ds 4
      000042                        257 _main_current_temp_1_63:
      000042                        258 	.ds 4
      000046                        259 _main_last_temp_1_63:
      000046                        260 	.ds 4
      00004A                        261 _main_temp_int_1_63:
      00004A                        262 	.ds 4
                                    263 ;--------------------------------------------------------
                                    264 ; overlayable items in internal ram 
                                    265 ;--------------------------------------------------------
                                    266 	.area	OSEG    (OVR,DATA)
                                    267 	.area	OSEG    (OVR,DATA)
      00000F                        268 _i2c_sda_write_PARM_2:
      00000F                        269 	.ds 1
                                    270 	.area	OSEG    (OVR,DATA)
                                    271 	.area	OSEG    (OVR,DATA)
      00000F                        272 _i2c_scl_write_PARM_2:
      00000F                        273 	.ds 1
                                    274 	.area	OSEG    (OVR,DATA)
                                    275 	.area	OSEG    (OVR,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; Stack segment in internal ram 
                                    278 ;--------------------------------------------------------
                                    279 	.area	SSEG
      00004E                        280 __start__stack:
      00004E                        281 	.ds	1
                                    282 
                                    283 ;--------------------------------------------------------
                                    284 ; indirectly addressable internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area ISEG    (DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area IABS    (ABS,DATA)
                                    291 	.area IABS    (ABS,DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; bit data
                                    294 ;--------------------------------------------------------
                                    295 	.area BSEG    (BIT)
      000000                        296 _main_update_display_1_63:
      000000                        297 	.ds 1
                                    298 ;--------------------------------------------------------
                                    299 ; paged external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area PSEG    (PAG,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XSEG    (XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; absolute external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XABS    (ABS,XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; external initialized ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XISEG   (XDATA)
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT0 (CODE)
                                    316 	.area GSINIT1 (CODE)
                                    317 	.area GSINIT2 (CODE)
                                    318 	.area GSINIT3 (CODE)
                                    319 	.area GSINIT4 (CODE)
                                    320 	.area GSINIT5 (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area CSEG    (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; interrupt vector 
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
      000000                        328 __interrupt_vect:
      000000 02 00 06         [24]  329 	ljmp	__sdcc_gsinit_startup
                                    330 ;--------------------------------------------------------
                                    331 ; global & static initialisations
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.globl __sdcc_gsinit_startup
                                    338 	.globl __sdcc_program_startup
                                    339 	.globl __start__stack
                                    340 	.globl __mcs51_genXINIT
                                    341 	.globl __mcs51_genXRAMCLEAR
                                    342 	.globl __mcs51_genRAMCLEAR
                                    343 ;	temp_sensor.c:37: unsigned char number_table[] = {
      00005F 75 21 3F         [24]  344 	mov	_number_table,#0x3F
      000062 75 22 06         [24]  345 	mov	(_number_table + 0x0001),#0x06
      000065 75 23 5B         [24]  346 	mov	(_number_table + 0x0002),#0x5B
      000068 75 24 4F         [24]  347 	mov	(_number_table + 0x0003),#0x4F
      00006B 75 25 66         [24]  348 	mov	(_number_table + 0x0004),#0x66
      00006E 75 26 6D         [24]  349 	mov	(_number_table + 0x0005),#0x6D
      000071 75 27 7D         [24]  350 	mov	(_number_table + 0x0006),#0x7D
      000074 75 28 07         [24]  351 	mov	(_number_table + 0x0007),#0x07
      000077 75 29 7F         [24]  352 	mov	(_number_table + 0x0008),#0x7F
      00007A 75 2A 6F         [24]  353 	mov	(_number_table + 0x0009),#0x6F
      00007D 75 2B 77         [24]  354 	mov	(_number_table + 0x000a),#0x77
      000080 75 2C 7C         [24]  355 	mov	(_number_table + 0x000b),#0x7C
      000083 75 2D 39         [24]  356 	mov	(_number_table + 0x000c),#0x39
      000086 75 2E 5E         [24]  357 	mov	(_number_table + 0x000d),#0x5E
      000089 75 2F 79         [24]  358 	mov	(_number_table + 0x000e),#0x79
      00008C 75 30 71         [24]  359 	mov	(_number_table + 0x000f),#0x71
                                    360 ;	temp_sensor.c:57: unsigned char display_buffer[] = {
      00008F 75 31 00         [24]  361 	mov	_display_buffer,#0x00
      000092 75 32 00         [24]  362 	mov	(_display_buffer + 0x0001),#0x00
      000095 75 33 00         [24]  363 	mov	(_display_buffer + 0x0002),#0x00
      000098 75 34 00         [24]  364 	mov	(_display_buffer + 0x0003),#0x00
      00009B 75 35 00         [24]  365 	mov	(_display_buffer + 0x0004),#0x00
      00009E 75 36 00         [24]  366 	mov	(_display_buffer + 0x0005),#0x00
      0000A1 75 37 00         [24]  367 	mov	(_display_buffer + 0x0006),#0x00
      0000A4 75 38 00         [24]  368 	mov	(_display_buffer + 0x0007),#0x00
      0000A7 75 39 00         [24]  369 	mov	(_display_buffer + 0x0008),#0x00
      0000AA 75 3A 00         [24]  370 	mov	(_display_buffer + 0x0009),#0x00
                                    371 	.area GSFINAL (CODE)
      0000AD 02 00 03         [24]  372 	ljmp	__sdcc_program_startup
                                    373 ;--------------------------------------------------------
                                    374 ; Home
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area HOME    (CODE)
      000003                        378 __sdcc_program_startup:
      000003 02 04 4C         [24]  379 	ljmp	_main
                                    380 ;	return from main will return to caller
                                    381 ;--------------------------------------------------------
                                    382 ; code
                                    383 ;--------------------------------------------------------
                                    384 	.area CSEG    (CODE)
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'i2c_delay'
                                    387 ;------------------------------------------------------------
                                    388 ;i                         Allocated to registers r6 r7 
                                    389 ;------------------------------------------------------------
                                    390 ;	temp_sensor.c:75: void i2c_delay()
                                    391 ;	-----------------------------------------
                                    392 ;	 function i2c_delay
                                    393 ;	-----------------------------------------
      0000B0                        394 _i2c_delay:
                           000007   395 	ar7 = 0x07
                           000006   396 	ar6 = 0x06
                           000005   397 	ar5 = 0x05
                           000004   398 	ar4 = 0x04
                           000003   399 	ar3 = 0x03
                           000002   400 	ar2 = 0x02
                           000001   401 	ar1 = 0x01
                           000000   402 	ar0 = 0x00
                                    403 ;	temp_sensor.c:78: for (i = 0; i < 5; i++);
      0000B0 7E 05            [12]  404 	mov	r6,#0x05
      0000B2 7F 00            [12]  405 	mov	r7,#0x00
      0000B4                        406 00104$:
      0000B4 EE               [12]  407 	mov	a,r6
      0000B5 24 FF            [12]  408 	add	a,#0xFF
      0000B7 FC               [12]  409 	mov	r4,a
      0000B8 EF               [12]  410 	mov	a,r7
      0000B9 34 FF            [12]  411 	addc	a,#0xFF
      0000BB FD               [12]  412 	mov	r5,a
      0000BC 8C 06            [24]  413 	mov	ar6,r4
      0000BE 8D 07            [24]  414 	mov	ar7,r5
      0000C0 EC               [12]  415 	mov	a,r4
      0000C1 4D               [12]  416 	orl	a,r5
      0000C2 70 F0            [24]  417 	jnz	00104$
      0000C4 22               [24]  418 	ret
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'i2c_sda_write'
                                    421 ;------------------------------------------------------------
                                    422 ;value                     Allocated with name '_i2c_sda_write_PARM_2'
                                    423 ;sfr_address               Allocated to registers r7 
                                    424 ;------------------------------------------------------------
                                    425 ;	temp_sensor.c:81: void i2c_sda_write(unsigned char sfr_address, unsigned char value)
                                    426 ;	-----------------------------------------
                                    427 ;	 function i2c_sda_write
                                    428 ;	-----------------------------------------
      0000C5                        429 _i2c_sda_write:
      0000C5 AF 82            [24]  430 	mov	r7,dpl
                                    431 ;	temp_sensor.c:83: switch (sfr_address)
      0000C7 BF A0 02         [24]  432 	cjne	r7,#0xA0,00112$
      0000CA 80 05            [24]  433 	sjmp	00101$
      0000CC                        434 00112$:
                                    435 ;	temp_sensor.c:85: case DISPLAY_SFR: P2_0 = value; break;
      0000CC BF B0 0F         [24]  436 	cjne	r7,#0xB0,00104$
      0000CF 80 07            [24]  437 	sjmp	00102$
      0000D1                        438 00101$:
      0000D1 E5 0F            [12]  439 	mov	a,_i2c_sda_write_PARM_2
      0000D3 24 FF            [12]  440 	add	a,#0xff
      0000D5 92 A0            [24]  441 	mov	_P2_0,c
                                    442 ;	temp_sensor.c:86: case TEMP_SENSOR_SFR: P3_5 = value; break;
      0000D7 22               [24]  443 	ret
      0000D8                        444 00102$:
      0000D8 E5 0F            [12]  445 	mov	a,_i2c_sda_write_PARM_2
      0000DA 24 FF            [12]  446 	add	a,#0xff
      0000DC 92 B5            [24]  447 	mov	_P3_5,c
                                    448 ;	temp_sensor.c:87: }
      0000DE                        449 00104$:
      0000DE 22               [24]  450 	ret
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function 'i2c_sda_read'
                                    453 ;------------------------------------------------------------
                                    454 ;sfr_address               Allocated to registers r7 
                                    455 ;result                    Allocated to registers r6 
                                    456 ;------------------------------------------------------------
                                    457 ;	temp_sensor.c:90: unsigned char i2c_sda_read(unsigned char sfr_address)
                                    458 ;	-----------------------------------------
                                    459 ;	 function i2c_sda_read
                                    460 ;	-----------------------------------------
      0000DF                        461 _i2c_sda_read:
      0000DF AF 82            [24]  462 	mov	r7,dpl
                                    463 ;	temp_sensor.c:92: unsigned char result = 0;
      0000E1 7E 00            [12]  464 	mov	r6,#0x00
                                    465 ;	temp_sensor.c:93: switch (sfr_address)
      0000E3 BF A0 02         [24]  466 	cjne	r7,#0xA0,00112$
      0000E6 80 05            [24]  467 	sjmp	00101$
      0000E8                        468 00112$:
                                    469 ;	temp_sensor.c:95: case DISPLAY_SFR: result = P2_0; break;
      0000E8 BF B0 0E         [24]  470 	cjne	r7,#0xB0,00103$
      0000EB 80 07            [24]  471 	sjmp	00102$
      0000ED                        472 00101$:
      0000ED A2 A0            [12]  473 	mov	c,_P2_0
      0000EF E4               [12]  474 	clr	a
      0000F0 33               [12]  475 	rlc	a
      0000F1 FE               [12]  476 	mov	r6,a
                                    477 ;	temp_sensor.c:96: case TEMP_SENSOR_SFR: result = P3_5; break;
      0000F2 80 05            [24]  478 	sjmp	00103$
      0000F4                        479 00102$:
      0000F4 A2 B5            [12]  480 	mov	c,_P3_5
      0000F6 E4               [12]  481 	clr	a
      0000F7 33               [12]  482 	rlc	a
      0000F8 FE               [12]  483 	mov	r6,a
                                    484 ;	temp_sensor.c:97: }
      0000F9                        485 00103$:
                                    486 ;	temp_sensor.c:98: return result;
      0000F9 8E 82            [24]  487 	mov	dpl,r6
      0000FB 22               [24]  488 	ret
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'i2c_scl_write'
                                    491 ;------------------------------------------------------------
                                    492 ;value                     Allocated with name '_i2c_scl_write_PARM_2'
                                    493 ;sfr_address               Allocated to registers r7 
                                    494 ;------------------------------------------------------------
                                    495 ;	temp_sensor.c:101: void i2c_scl_write(unsigned char sfr_address, unsigned char value)
                                    496 ;	-----------------------------------------
                                    497 ;	 function i2c_scl_write
                                    498 ;	-----------------------------------------
      0000FC                        499 _i2c_scl_write:
      0000FC AF 82            [24]  500 	mov	r7,dpl
                                    501 ;	temp_sensor.c:103: switch (sfr_address)
      0000FE BF A0 02         [24]  502 	cjne	r7,#0xA0,00112$
      000101 80 05            [24]  503 	sjmp	00101$
      000103                        504 00112$:
                                    505 ;	temp_sensor.c:105: case DISPLAY_SFR: P2_1 = value; break;
      000103 BF B0 0F         [24]  506 	cjne	r7,#0xB0,00104$
      000106 80 07            [24]  507 	sjmp	00102$
      000108                        508 00101$:
      000108 E5 0F            [12]  509 	mov	a,_i2c_scl_write_PARM_2
      00010A 24 FF            [12]  510 	add	a,#0xff
      00010C 92 A1            [24]  511 	mov	_P2_1,c
                                    512 ;	temp_sensor.c:106: case TEMP_SENSOR_SFR: P3_6 = value; break;
      00010E 22               [24]  513 	ret
      00010F                        514 00102$:
      00010F E5 0F            [12]  515 	mov	a,_i2c_scl_write_PARM_2
      000111 24 FF            [12]  516 	add	a,#0xff
      000113 92 B6            [24]  517 	mov	_P3_6,c
                                    518 ;	temp_sensor.c:107: }
      000115                        519 00104$:
      000115 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'i2c_scl_read'
                                    523 ;------------------------------------------------------------
                                    524 ;sfr_address               Allocated to registers r7 
                                    525 ;result                    Allocated to registers r6 
                                    526 ;------------------------------------------------------------
                                    527 ;	temp_sensor.c:110: unsigned char i2c_scl_read(unsigned char sfr_address)
                                    528 ;	-----------------------------------------
                                    529 ;	 function i2c_scl_read
                                    530 ;	-----------------------------------------
      000116                        531 _i2c_scl_read:
      000116 AF 82            [24]  532 	mov	r7,dpl
                                    533 ;	temp_sensor.c:112: unsigned char result = 0;
      000118 7E 00            [12]  534 	mov	r6,#0x00
                                    535 ;	temp_sensor.c:113: switch (sfr_address)
      00011A BF A0 02         [24]  536 	cjne	r7,#0xA0,00112$
      00011D 80 05            [24]  537 	sjmp	00101$
      00011F                        538 00112$:
                                    539 ;	temp_sensor.c:115: case DISPLAY_SFR: result = P2_1; break;
      00011F BF B0 0E         [24]  540 	cjne	r7,#0xB0,00103$
      000122 80 07            [24]  541 	sjmp	00102$
      000124                        542 00101$:
      000124 A2 A1            [12]  543 	mov	c,_P2_1
      000126 E4               [12]  544 	clr	a
      000127 33               [12]  545 	rlc	a
      000128 FE               [12]  546 	mov	r6,a
                                    547 ;	temp_sensor.c:116: case TEMP_SENSOR_SFR: result = P3_6; break;
      000129 80 05            [24]  548 	sjmp	00103$
      00012B                        549 00102$:
      00012B A2 B6            [12]  550 	mov	c,_P3_6
      00012D E4               [12]  551 	clr	a
      00012E 33               [12]  552 	rlc	a
      00012F FE               [12]  553 	mov	r6,a
                                    554 ;	temp_sensor.c:117: }
      000130                        555 00103$:
                                    556 ;	temp_sensor.c:118: return result;
      000130 8E 82            [24]  557 	mov	dpl,r6
      000132 22               [24]  558 	ret
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'i2c_start'
                                    561 ;------------------------------------------------------------
                                    562 ;sfr_address               Allocated to registers r7 
                                    563 ;------------------------------------------------------------
                                    564 ;	temp_sensor.c:121: void i2c_start(unsigned char sfr_address)
                                    565 ;	-----------------------------------------
                                    566 ;	 function i2c_start
                                    567 ;	-----------------------------------------
      000133                        568 _i2c_start:
                                    569 ;	temp_sensor.c:123: i2c_scl_write(sfr_address, 0);
      000133 AF 82            [24]  570 	mov	r7,dpl
      000135 75 0F 00         [24]  571 	mov	_i2c_scl_write_PARM_2,#0x00
      000138 C0 07            [24]  572 	push	ar7
      00013A 12 00 FC         [24]  573 	lcall	_i2c_scl_write
      00013D D0 07            [24]  574 	pop	ar7
                                    575 ;	temp_sensor.c:124: i2c_sda_write(sfr_address, 1);
      00013F 75 0F 01         [24]  576 	mov	_i2c_sda_write_PARM_2,#0x01
      000142 8F 82            [24]  577 	mov	dpl,r7
      000144 C0 07            [24]  578 	push	ar7
      000146 12 00 C5         [24]  579 	lcall	_i2c_sda_write
                                    580 ;	temp_sensor.c:125: i2c_delay();
      000149 12 00 B0         [24]  581 	lcall	_i2c_delay
      00014C D0 07            [24]  582 	pop	ar7
                                    583 ;	temp_sensor.c:126: i2c_scl_write(sfr_address, 1);
      00014E 75 0F 01         [24]  584 	mov	_i2c_scl_write_PARM_2,#0x01
      000151 8F 82            [24]  585 	mov	dpl,r7
      000153 C0 07            [24]  586 	push	ar7
      000155 12 00 FC         [24]  587 	lcall	_i2c_scl_write
                                    588 ;	temp_sensor.c:127: i2c_delay();
      000158 12 00 B0         [24]  589 	lcall	_i2c_delay
      00015B D0 07            [24]  590 	pop	ar7
                                    591 ;	temp_sensor.c:128: i2c_sda_write(sfr_address, 0);
      00015D 75 0F 00         [24]  592 	mov	_i2c_sda_write_PARM_2,#0x00
      000160 8F 82            [24]  593 	mov	dpl,r7
      000162 C0 07            [24]  594 	push	ar7
      000164 12 00 C5         [24]  595 	lcall	_i2c_sda_write
                                    596 ;	temp_sensor.c:129: i2c_delay();
      000167 12 00 B0         [24]  597 	lcall	_i2c_delay
      00016A D0 07            [24]  598 	pop	ar7
                                    599 ;	temp_sensor.c:130: i2c_scl_write(sfr_address, 0);
      00016C 75 0F 00         [24]  600 	mov	_i2c_scl_write_PARM_2,#0x00
      00016F 8F 82            [24]  601 	mov	dpl,r7
      000171 02 00 FC         [24]  602 	ljmp	_i2c_scl_write
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'i2c_stop'
                                    605 ;------------------------------------------------------------
                                    606 ;sfr_address               Allocated to registers r7 
                                    607 ;------------------------------------------------------------
                                    608 ;	temp_sensor.c:133: void i2c_stop(unsigned char sfr_address)
                                    609 ;	-----------------------------------------
                                    610 ;	 function i2c_stop
                                    611 ;	-----------------------------------------
      000174                        612 _i2c_stop:
                                    613 ;	temp_sensor.c:135: i2c_scl_write(sfr_address, 0);
      000174 AF 82            [24]  614 	mov	r7,dpl
      000176 75 0F 00         [24]  615 	mov	_i2c_scl_write_PARM_2,#0x00
      000179 C0 07            [24]  616 	push	ar7
      00017B 12 00 FC         [24]  617 	lcall	_i2c_scl_write
                                    618 ;	temp_sensor.c:136: i2c_delay();
      00017E 12 00 B0         [24]  619 	lcall	_i2c_delay
      000181 D0 07            [24]  620 	pop	ar7
                                    621 ;	temp_sensor.c:137: i2c_sda_write(sfr_address, 0);
      000183 75 0F 00         [24]  622 	mov	_i2c_sda_write_PARM_2,#0x00
      000186 8F 82            [24]  623 	mov	dpl,r7
      000188 C0 07            [24]  624 	push	ar7
      00018A 12 00 C5         [24]  625 	lcall	_i2c_sda_write
                                    626 ;	temp_sensor.c:138: i2c_delay();
      00018D 12 00 B0         [24]  627 	lcall	_i2c_delay
      000190 D0 07            [24]  628 	pop	ar7
                                    629 ;	temp_sensor.c:139: i2c_scl_write(sfr_address, 1);
      000192 75 0F 01         [24]  630 	mov	_i2c_scl_write_PARM_2,#0x01
      000195 8F 82            [24]  631 	mov	dpl,r7
      000197 C0 07            [24]  632 	push	ar7
      000199 12 00 FC         [24]  633 	lcall	_i2c_scl_write
                                    634 ;	temp_sensor.c:140: i2c_delay();
      00019C 12 00 B0         [24]  635 	lcall	_i2c_delay
      00019F D0 07            [24]  636 	pop	ar7
                                    637 ;	temp_sensor.c:141: i2c_sda_write(sfr_address, 1);
      0001A1 75 0F 01         [24]  638 	mov	_i2c_sda_write_PARM_2,#0x01
      0001A4 8F 82            [24]  639 	mov	dpl,r7
      0001A6 02 00 C5         [24]  640 	ljmp	_i2c_sda_write
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'i2c_send_byte'
                                    643 ;------------------------------------------------------------
                                    644 ;data_out                  Allocated with name '_i2c_send_byte_PARM_2'
                                    645 ;sfr_address               Allocated to registers r7 
                                    646 ;i                         Allocated to registers r6 
                                    647 ;ack_bit                   Allocated to registers r6 
                                    648 ;------------------------------------------------------------
                                    649 ;	temp_sensor.c:144: unsigned char i2c_send_byte(unsigned char sfr_address, unsigned char data_out)
                                    650 ;	-----------------------------------------
                                    651 ;	 function i2c_send_byte
                                    652 ;	-----------------------------------------
      0001A9                        653 _i2c_send_byte:
      0001A9 AF 82            [24]  654 	mov	r7,dpl
                                    655 ;	temp_sensor.c:147: for (i = 0; i < 8; i++) {
      0001AB 7E 00            [12]  656 	mov	r6,#0x00
      0001AD                        657 00105$:
                                    658 ;	temp_sensor.c:148: i2c_scl_write(sfr_address, 0);
      0001AD 75 0F 00         [24]  659 	mov	_i2c_scl_write_PARM_2,#0x00
      0001B0 8F 82            [24]  660 	mov	dpl,r7
      0001B2 C0 07            [24]  661 	push	ar7
      0001B4 C0 06            [24]  662 	push	ar6
      0001B6 12 00 FC         [24]  663 	lcall	_i2c_scl_write
                                    664 ;	temp_sensor.c:149: i2c_delay();
      0001B9 12 00 B0         [24]  665 	lcall	_i2c_delay
      0001BC D0 06            [24]  666 	pop	ar6
      0001BE D0 07            [24]  667 	pop	ar7
                                    668 ;	temp_sensor.c:150: if ((data_out & 0x80) == 0) {
      0001C0 E5 3B            [12]  669 	mov	a,_i2c_send_byte_PARM_2
      0001C2 20 E7 12         [24]  670 	jb	acc.7,00102$
                                    671 ;	temp_sensor.c:151: i2c_sda_write(sfr_address, 0);
      0001C5 75 0F 00         [24]  672 	mov	_i2c_sda_write_PARM_2,#0x00
      0001C8 8F 82            [24]  673 	mov	dpl,r7
      0001CA C0 07            [24]  674 	push	ar7
      0001CC C0 06            [24]  675 	push	ar6
      0001CE 12 00 C5         [24]  676 	lcall	_i2c_sda_write
      0001D1 D0 06            [24]  677 	pop	ar6
      0001D3 D0 07            [24]  678 	pop	ar7
      0001D5 80 10            [24]  679 	sjmp	00103$
      0001D7                        680 00102$:
                                    681 ;	temp_sensor.c:153: i2c_sda_write(sfr_address, 1);
      0001D7 75 0F 01         [24]  682 	mov	_i2c_sda_write_PARM_2,#0x01
      0001DA 8F 82            [24]  683 	mov	dpl,r7
      0001DC C0 07            [24]  684 	push	ar7
      0001DE C0 06            [24]  685 	push	ar6
      0001E0 12 00 C5         [24]  686 	lcall	_i2c_sda_write
      0001E3 D0 06            [24]  687 	pop	ar6
      0001E5 D0 07            [24]  688 	pop	ar7
      0001E7                        689 00103$:
                                    690 ;	temp_sensor.c:155: i2c_delay();
      0001E7 C0 07            [24]  691 	push	ar7
      0001E9 C0 06            [24]  692 	push	ar6
      0001EB 12 00 B0         [24]  693 	lcall	_i2c_delay
      0001EE D0 06            [24]  694 	pop	ar6
      0001F0 D0 07            [24]  695 	pop	ar7
                                    696 ;	temp_sensor.c:156: i2c_scl_write(sfr_address, 1);
      0001F2 75 0F 01         [24]  697 	mov	_i2c_scl_write_PARM_2,#0x01
      0001F5 8F 82            [24]  698 	mov	dpl,r7
      0001F7 C0 07            [24]  699 	push	ar7
      0001F9 C0 06            [24]  700 	push	ar6
      0001FB 12 00 FC         [24]  701 	lcall	_i2c_scl_write
                                    702 ;	temp_sensor.c:157: i2c_delay();
      0001FE 12 00 B0         [24]  703 	lcall	_i2c_delay
      000201 D0 06            [24]  704 	pop	ar6
      000203 D0 07            [24]  705 	pop	ar7
                                    706 ;	temp_sensor.c:158: data_out<<=1;
      000205 E5 3B            [12]  707 	mov	a,_i2c_send_byte_PARM_2
      000207 25 3B            [12]  708 	add	a,_i2c_send_byte_PARM_2
      000209 F5 3B            [12]  709 	mov	_i2c_send_byte_PARM_2,a
                                    710 ;	temp_sensor.c:147: for (i = 0; i < 8; i++) {
      00020B 0E               [12]  711 	inc	r6
      00020C BE 08 00         [24]  712 	cjne	r6,#0x08,00120$
      00020F                        713 00120$:
      00020F 40 9C            [24]  714 	jc	00105$
                                    715 ;	temp_sensor.c:160: i2c_scl_write(sfr_address, 0);
      000211 75 0F 00         [24]  716 	mov	_i2c_scl_write_PARM_2,#0x00
      000214 8F 82            [24]  717 	mov	dpl,r7
      000216 C0 07            [24]  718 	push	ar7
      000218 12 00 FC         [24]  719 	lcall	_i2c_scl_write
                                    720 ;	temp_sensor.c:161: i2c_delay();
      00021B 12 00 B0         [24]  721 	lcall	_i2c_delay
      00021E D0 07            [24]  722 	pop	ar7
                                    723 ;	temp_sensor.c:162: i2c_sda_write(sfr_address, 1);
      000220 75 0F 01         [24]  724 	mov	_i2c_sda_write_PARM_2,#0x01
      000223 8F 82            [24]  725 	mov	dpl,r7
      000225 C0 07            [24]  726 	push	ar7
      000227 12 00 C5         [24]  727 	lcall	_i2c_sda_write
                                    728 ;	temp_sensor.c:163: i2c_delay();
      00022A 12 00 B0         [24]  729 	lcall	_i2c_delay
      00022D D0 07            [24]  730 	pop	ar7
                                    731 ;	temp_sensor.c:164: i2c_scl_write(sfr_address, 1);
      00022F 75 0F 01         [24]  732 	mov	_i2c_scl_write_PARM_2,#0x01
      000232 8F 82            [24]  733 	mov	dpl,r7
      000234 C0 07            [24]  734 	push	ar7
      000236 12 00 FC         [24]  735 	lcall	_i2c_scl_write
                                    736 ;	temp_sensor.c:165: i2c_delay();
      000239 12 00 B0         [24]  737 	lcall	_i2c_delay
      00023C D0 07            [24]  738 	pop	ar7
                                    739 ;	temp_sensor.c:167: ack_bit = i2c_sda_read(sfr_address);
      00023E 8F 82            [24]  740 	mov	dpl,r7
      000240 C0 07            [24]  741 	push	ar7
      000242 12 00 DF         [24]  742 	lcall	_i2c_sda_read
      000245 AE 82            [24]  743 	mov	r6,dpl
                                    744 ;	temp_sensor.c:168: i2c_delay();
      000247 C0 06            [24]  745 	push	ar6
      000249 12 00 B0         [24]  746 	lcall	_i2c_delay
      00024C D0 06            [24]  747 	pop	ar6
      00024E D0 07            [24]  748 	pop	ar7
                                    749 ;	temp_sensor.c:169: i2c_scl_write(sfr_address, 0);
      000250 75 0F 00         [24]  750 	mov	_i2c_scl_write_PARM_2,#0x00
      000253 8F 82            [24]  751 	mov	dpl,r7
      000255 C0 06            [24]  752 	push	ar6
      000257 12 00 FC         [24]  753 	lcall	_i2c_scl_write
      00025A D0 06            [24]  754 	pop	ar6
                                    755 ;	temp_sensor.c:171: return ack_bit;
      00025C 8E 82            [24]  756 	mov	dpl,r6
      00025E 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'i2c_read_byte'
                                    760 ;------------------------------------------------------------
                                    761 ;sfr_address               Allocated to registers r7 
                                    762 ;i                         Allocated to registers r5 
                                    763 ;received                  Allocated to registers r6 
                                    764 ;------------------------------------------------------------
                                    765 ;	temp_sensor.c:174: unsigned char i2c_read_byte(unsigned char sfr_address)
                                    766 ;	-----------------------------------------
                                    767 ;	 function i2c_read_byte
                                    768 ;	-----------------------------------------
      00025F                        769 _i2c_read_byte:
      00025F AF 82            [24]  770 	mov	r7,dpl
                                    771 ;	temp_sensor.c:176: unsigned char i, received = 0;
      000261 7E 00            [12]  772 	mov	r6,#0x00
                                    773 ;	temp_sensor.c:177: for (i = 0; i < 8; i++) {
      000263 7D 00            [12]  774 	mov	r5,#0x00
      000265                        775 00106$:
                                    776 ;	temp_sensor.c:178: i2c_scl_write(sfr_address, 1);
      000265 75 0F 01         [24]  777 	mov	_i2c_scl_write_PARM_2,#0x01
      000268 8F 82            [24]  778 	mov	dpl,r7
      00026A C0 07            [24]  779 	push	ar7
      00026C C0 06            [24]  780 	push	ar6
      00026E C0 05            [24]  781 	push	ar5
      000270 12 00 FC         [24]  782 	lcall	_i2c_scl_write
      000273 D0 05            [24]  783 	pop	ar5
      000275 D0 06            [24]  784 	pop	ar6
      000277 D0 07            [24]  785 	pop	ar7
                                    786 ;	temp_sensor.c:179: if(i2c_sda_read(sfr_address))
      000279 8F 82            [24]  787 	mov	dpl,r7
      00027B C0 07            [24]  788 	push	ar7
      00027D C0 06            [24]  789 	push	ar6
      00027F C0 05            [24]  790 	push	ar5
      000281 12 00 DF         [24]  791 	lcall	_i2c_sda_read
      000284 E5 82            [12]  792 	mov	a,dpl
      000286 D0 05            [24]  793 	pop	ar5
      000288 D0 06            [24]  794 	pop	ar6
      00028A D0 07            [24]  795 	pop	ar7
      00028C 60 03            [24]  796 	jz	00102$
                                    797 ;	temp_sensor.c:180: received |= 1;
      00028E 43 06 01         [24]  798 	orl	ar6,#0x01
      000291                        799 00102$:
                                    800 ;	temp_sensor.c:181: if(i < 7)
      000291 BD 07 00         [24]  801 	cjne	r5,#0x07,00124$
      000294                        802 00124$:
      000294 50 03            [24]  803 	jnc	00104$
                                    804 ;	temp_sensor.c:182: received <<= 1;
      000296 EE               [12]  805 	mov	a,r6
      000297 2E               [12]  806 	add	a,r6
      000298 FE               [12]  807 	mov	r6,a
      000299                        808 00104$:
                                    809 ;	temp_sensor.c:183: i2c_scl_write(sfr_address, 0);
      000299 75 0F 00         [24]  810 	mov	_i2c_scl_write_PARM_2,#0x00
      00029C 8F 82            [24]  811 	mov	dpl,r7
      00029E C0 07            [24]  812 	push	ar7
      0002A0 C0 06            [24]  813 	push	ar6
      0002A2 C0 05            [24]  814 	push	ar5
      0002A4 12 00 FC         [24]  815 	lcall	_i2c_scl_write
      0002A7 D0 05            [24]  816 	pop	ar5
      0002A9 D0 06            [24]  817 	pop	ar6
      0002AB D0 07            [24]  818 	pop	ar7
                                    819 ;	temp_sensor.c:177: for (i = 0; i < 8; i++) {
      0002AD 0D               [12]  820 	inc	r5
      0002AE BD 08 00         [24]  821 	cjne	r5,#0x08,00126$
      0002B1                        822 00126$:
      0002B1 40 B2            [24]  823 	jc	00106$
                                    824 ;	temp_sensor.c:185: return received;
      0002B3 8E 82            [24]  825 	mov	dpl,r6
      0002B5 22               [24]  826 	ret
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'read_temp_sensor'
                                    829 ;------------------------------------------------------------
                                    830 ;first                     Allocated to registers r7 
                                    831 ;second                    Allocated to registers 
                                    832 ;slope                     Allocated with name '_read_temp_sensor_slope_1_50'
                                    833 ;remainder                 Allocated with name '_read_temp_sensor_remainder_1_50'
                                    834 ;address_byte              Allocated to registers 
                                    835 ;ack                       Allocated to registers 
                                    836 ;temperature               Allocated to registers r2 r3 r4 r7 
                                    837 ;sloc0                     Allocated with name '_read_temp_sensor_sloc0_1_0'
                                    838 ;------------------------------------------------------------
                                    839 ;	temp_sensor.c:196: float read_temp_sensor(void)
                                    840 ;	-----------------------------------------
                                    841 ;	 function read_temp_sensor
                                    842 ;	-----------------------------------------
      0002B6                        843 _read_temp_sensor:
                                    844 ;	temp_sensor.c:207: write_temp_sensor_command(READ_TEMPERATURE);
      0002B6 75 82 AA         [24]  845 	mov	dpl,#0xAA
      0002B9 12 04 1A         [24]  846 	lcall	_write_temp_sensor_command
                                    847 ;	temp_sensor.c:210: i2c_start(TEMP_SENSOR_SFR);
      0002BC 75 82 B0         [24]  848 	mov	dpl,#0xB0
      0002BF 12 01 33         [24]  849 	lcall	_i2c_start
                                    850 ;	temp_sensor.c:211: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      0002C2 75 3B 91         [24]  851 	mov	_i2c_send_byte_PARM_2,#0x91
      0002C5 75 82 B0         [24]  852 	mov	dpl,#0xB0
      0002C8 12 01 A9         [24]  853 	lcall	_i2c_send_byte
                                    854 ;	temp_sensor.c:212: first = i2c_read_byte(TEMP_SENSOR_SFR);
      0002CB 75 82 B0         [24]  855 	mov	dpl,#0xB0
      0002CE 12 02 5F         [24]  856 	lcall	_i2c_read_byte
      0002D1 AF 82            [24]  857 	mov	r7,dpl
                                    858 ;	temp_sensor.c:213: second = i2c_read_byte(TEMP_SENSOR_SFR);
      0002D3 75 82 B0         [24]  859 	mov	dpl,#0xB0
      0002D6 C0 07            [24]  860 	push	ar7
      0002D8 12 02 5F         [24]  861 	lcall	_i2c_read_byte
                                    862 ;	temp_sensor.c:215: write_temp_sensor_command(READ_COUNT_REMAINDER);
      0002DB 75 82 A8         [24]  863 	mov	dpl,#0xA8
      0002DE 12 04 1A         [24]  864 	lcall	_write_temp_sensor_command
                                    865 ;	temp_sensor.c:216: i2c_start(TEMP_SENSOR_SFR);
      0002E1 75 82 B0         [24]  866 	mov	dpl,#0xB0
      0002E4 12 01 33         [24]  867 	lcall	_i2c_start
                                    868 ;	temp_sensor.c:217: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      0002E7 75 3B 91         [24]  869 	mov	_i2c_send_byte_PARM_2,#0x91
      0002EA 75 82 B0         [24]  870 	mov	dpl,#0xB0
      0002ED 12 01 A9         [24]  871 	lcall	_i2c_send_byte
                                    872 ;	temp_sensor.c:218: remainder = i2c_read_byte(TEMP_SENSOR_SFR);
      0002F0 75 82 B0         [24]  873 	mov	dpl,#0xB0
      0002F3 12 02 5F         [24]  874 	lcall	_i2c_read_byte
      0002F6 85 82 3D         [24]  875 	mov	_read_temp_sensor_remainder_1_50,dpl
                                    876 ;	temp_sensor.c:220: write_temp_sensor_command(READ_SLOPE);
      0002F9 75 82 A9         [24]  877 	mov	dpl,#0xA9
      0002FC 12 04 1A         [24]  878 	lcall	_write_temp_sensor_command
                                    879 ;	temp_sensor.c:221: i2c_start(TEMP_SENSOR_SFR);
      0002FF 75 82 B0         [24]  880 	mov	dpl,#0xB0
      000302 12 01 33         [24]  881 	lcall	_i2c_start
                                    882 ;	temp_sensor.c:222: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      000305 75 3B 91         [24]  883 	mov	_i2c_send_byte_PARM_2,#0x91
      000308 75 82 B0         [24]  884 	mov	dpl,#0xB0
      00030B 12 01 A9         [24]  885 	lcall	_i2c_send_byte
                                    886 ;	temp_sensor.c:223: slope = i2c_read_byte(TEMP_SENSOR_SFR);
      00030E 75 82 B0         [24]  887 	mov	dpl,#0xB0
      000311 12 02 5F         [24]  888 	lcall	_i2c_read_byte
      000314 85 82 3C         [24]  889 	mov	_read_temp_sensor_slope_1_50,dpl
                                    890 ;	temp_sensor.c:225: i2c_stop(TEMP_SENSOR_SFR);
      000317 75 82 B0         [24]  891 	mov	dpl,#0xB0
      00031A 12 01 74         [24]  892 	lcall	_i2c_stop
      00031D D0 07            [24]  893 	pop	ar7
                                    894 ;	temp_sensor.c:227: temperature += (float)first;
      00031F 8F 82            [24]  895 	mov	dpl,r7
      000321 12 09 65         [24]  896 	lcall	___schar2fs
      000324 AA 82            [24]  897 	mov	r2,dpl
      000326 AB 83            [24]  898 	mov	r3,dph
      000328 AC F0            [24]  899 	mov	r4,b
      00032A FF               [12]  900 	mov	r7,a
                                    901 ;	temp_sensor.c:229: temperature = temperature - 0.25 + (slope - remainder) / slope;
      00032B E4               [12]  902 	clr	a
      00032C C0 E0            [24]  903 	push	acc
      00032E C0 E0            [24]  904 	push	acc
      000330 74 80            [12]  905 	mov	a,#0x80
      000332 C0 E0            [24]  906 	push	acc
      000334 74 3E            [12]  907 	mov	a,#0x3E
      000336 C0 E0            [24]  908 	push	acc
      000338 8A 82            [24]  909 	mov	dpl,r2
      00033A 8B 83            [24]  910 	mov	dph,r3
      00033C 8C F0            [24]  911 	mov	b,r4
      00033E EF               [12]  912 	mov	a,r7
      00033F 12 05 BF         [24]  913 	lcall	___fssub
      000342 85 82 3E         [24]  914 	mov	_read_temp_sensor_sloc0_1_0,dpl
      000345 85 83 3F         [24]  915 	mov	(_read_temp_sensor_sloc0_1_0 + 1),dph
      000348 85 F0 40         [24]  916 	mov	(_read_temp_sensor_sloc0_1_0 + 2),b
      00034B F5 41            [12]  917 	mov	(_read_temp_sensor_sloc0_1_0 + 3),a
      00034D E5 81            [12]  918 	mov	a,sp
      00034F 24 FC            [12]  919 	add	a,#0xfc
      000351 F5 81            [12]  920 	mov	sp,a
      000353 AD 3C            [24]  921 	mov	r5,_read_temp_sensor_slope_1_50
      000355 7E 00            [12]  922 	mov	r6,#0x00
      000357 A8 3D            [24]  923 	mov	r0,_read_temp_sensor_remainder_1_50
      000359 79 00            [12]  924 	mov	r1,#0x00
      00035B ED               [12]  925 	mov	a,r5
      00035C C3               [12]  926 	clr	c
      00035D 98               [12]  927 	subb	a,r0
      00035E F5 82            [12]  928 	mov	dpl,a
      000360 EE               [12]  929 	mov	a,r6
      000361 99               [12]  930 	subb	a,r1
      000362 F5 83            [12]  931 	mov	dph,a
      000364 8D 0F            [24]  932 	mov	__divsint_PARM_2,r5
      000366 8E 10            [24]  933 	mov	(__divsint_PARM_2 + 1),r6
      000368 12 09 D3         [24]  934 	lcall	__divsint
      00036B 12 08 BB         [24]  935 	lcall	___sint2fs
      00036E A8 82            [24]  936 	mov	r0,dpl
      000370 A9 83            [24]  937 	mov	r1,dph
      000372 AD F0            [24]  938 	mov	r5,b
      000374 FE               [12]  939 	mov	r6,a
      000375 C0 00            [24]  940 	push	ar0
      000377 C0 01            [24]  941 	push	ar1
      000379 C0 05            [24]  942 	push	ar5
      00037B C0 06            [24]  943 	push	ar6
      00037D 85 3E 82         [24]  944 	mov	dpl,_read_temp_sensor_sloc0_1_0
      000380 85 3F 83         [24]  945 	mov	dph,(_read_temp_sensor_sloc0_1_0 + 1)
      000383 85 40 F0         [24]  946 	mov	b,(_read_temp_sensor_sloc0_1_0 + 2)
      000386 E5 41            [12]  947 	mov	a,(_read_temp_sensor_sloc0_1_0 + 3)
      000388 12 08 19         [24]  948 	lcall	___fsadd
      00038B AA 82            [24]  949 	mov	r2,dpl
      00038D AB 83            [24]  950 	mov	r3,dph
      00038F AC F0            [24]  951 	mov	r4,b
      000391 FF               [12]  952 	mov	r7,a
      000392 E5 81            [12]  953 	mov	a,sp
      000394 24 FC            [12]  954 	add	a,#0xfc
      000396 F5 81            [12]  955 	mov	sp,a
                                    956 ;	temp_sensor.c:239: return temperature;
      000398 8A 82            [24]  957 	mov	dpl,r2
      00039A 8B 83            [24]  958 	mov	dph,r3
      00039C 8C F0            [24]  959 	mov	b,r4
      00039E EF               [12]  960 	mov	a,r7
      00039F 22               [24]  961 	ret
                                    962 ;------------------------------------------------------------
                                    963 ;Allocation info for local variables in function 'write_display'
                                    964 ;------------------------------------------------------------
                                    965 ;address                   Allocated to registers 
                                    966 ;write_bit                 Allocated to registers 
                                    967 ;address_with_write        Allocated to registers 
                                    968 ;i                         Allocated to registers r7 
                                    969 ;ack                       Allocated to registers 
                                    970 ;------------------------------------------------------------
                                    971 ;	temp_sensor.c:242: void write_display(void)
                                    972 ;	-----------------------------------------
                                    973 ;	 function write_display
                                    974 ;	-----------------------------------------
      0003A0                        975 _write_display:
                                    976 ;	temp_sensor.c:251: i2c_start(DISPLAY_SFR);
      0003A0 75 82 A0         [24]  977 	mov	dpl,#0xA0
      0003A3 12 01 33         [24]  978 	lcall	_i2c_start
                                    979 ;	temp_sensor.c:252: ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
      0003A6 75 3B E0         [24]  980 	mov	_i2c_send_byte_PARM_2,#0xE0
      0003A9 75 82 A0         [24]  981 	mov	dpl,#0xA0
      0003AC 12 01 A9         [24]  982 	lcall	_i2c_send_byte
                                    983 ;	temp_sensor.c:262: ack = i2c_send_byte(DISPLAY_SFR, 0x00); //0x00 is the starting address of the 7-set disp
      0003AF 75 3B 00         [24]  984 	mov	_i2c_send_byte_PARM_2,#0x00
      0003B2 75 82 A0         [24]  985 	mov	dpl,#0xA0
      0003B5 12 01 A9         [24]  986 	lcall	_i2c_send_byte
                                    987 ;	temp_sensor.c:263: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      0003B8 7F 00            [12]  988 	mov	r7,#0x00
      0003BA                        989 00102$:
                                    990 ;	temp_sensor.c:264: i2c_delay();
      0003BA C0 07            [24]  991 	push	ar7
      0003BC 12 00 B0         [24]  992 	lcall	_i2c_delay
      0003BF D0 07            [24]  993 	pop	ar7
                                    994 ;	temp_sensor.c:265: ack = i2c_send_byte(DISPLAY_SFR, display_buffer[i]);
      0003C1 EF               [12]  995 	mov	a,r7
      0003C2 24 31            [12]  996 	add	a,#_display_buffer
      0003C4 F9               [12]  997 	mov	r1,a
      0003C5 87 3B            [24]  998 	mov	_i2c_send_byte_PARM_2,@r1
      0003C7 75 82 A0         [24]  999 	mov	dpl,#0xA0
      0003CA C0 07            [24] 1000 	push	ar7
      0003CC 12 01 A9         [24] 1001 	lcall	_i2c_send_byte
      0003CF D0 07            [24] 1002 	pop	ar7
                                   1003 ;	temp_sensor.c:263: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      0003D1 0F               [12] 1004 	inc	r7
      0003D2 BF 0A 00         [24] 1005 	cjne	r7,#0x0A,00113$
      0003D5                       1006 00113$:
      0003D5 40 E3            [24] 1007 	jc	00102$
                                   1008 ;	temp_sensor.c:267: i2c_stop(DISPLAY_SFR);
      0003D7 75 82 A0         [24] 1009 	mov	dpl,#0xA0
      0003DA 02 01 74         [24] 1010 	ljmp	_i2c_stop
                                   1011 ;------------------------------------------------------------
                                   1012 ;Allocation info for local variables in function 'write_display_command'
                                   1013 ;------------------------------------------------------------
                                   1014 ;command_byte              Allocated to registers r7 
                                   1015 ;address                   Allocated to registers 
                                   1016 ;write_bit                 Allocated to registers 
                                   1017 ;address_with_write        Allocated to registers 
                                   1018 ;ack                       Allocated to registers 
                                   1019 ;------------------------------------------------------------
                                   1020 ;	temp_sensor.c:271: void write_display_command(unsigned char command_byte)
                                   1021 ;	-----------------------------------------
                                   1022 ;	 function write_display_command
                                   1023 ;	-----------------------------------------
      0003DD                       1024 _write_display_command:
      0003DD AF 82            [24] 1025 	mov	r7,dpl
                                   1026 ;	temp_sensor.c:284: i2c_start(DISPLAY_SFR);
      0003DF 75 82 A0         [24] 1027 	mov	dpl,#0xA0
      0003E2 C0 07            [24] 1028 	push	ar7
      0003E4 12 01 33         [24] 1029 	lcall	_i2c_start
                                   1030 ;	temp_sensor.c:285: ack = i2c_send_byte(DISPLAY_SFR, address_with_write);
      0003E7 75 3B E0         [24] 1031 	mov	_i2c_send_byte_PARM_2,#0xE0
      0003EA 75 82 A0         [24] 1032 	mov	dpl,#0xA0
      0003ED 12 01 A9         [24] 1033 	lcall	_i2c_send_byte
      0003F0 D0 07            [24] 1034 	pop	ar7
                                   1035 ;	temp_sensor.c:291: ack = i2c_send_byte(DISPLAY_SFR, command_byte);
      0003F2 8F 3B            [24] 1036 	mov	_i2c_send_byte_PARM_2,r7
      0003F4 75 82 A0         [24] 1037 	mov	dpl,#0xA0
      0003F7 12 01 A9         [24] 1038 	lcall	_i2c_send_byte
                                   1039 ;	temp_sensor.c:292: i2c_stop(DISPLAY_SFR);
      0003FA 75 82 A0         [24] 1040 	mov	dpl,#0xA0
      0003FD 02 01 74         [24] 1041 	ljmp	_i2c_stop
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'write_temp_sensor_config'
                                   1044 ;------------------------------------------------------------
                                   1045 ;config                    Allocated to registers r7 
                                   1046 ;address_byte              Allocated to registers 
                                   1047 ;ack                       Allocated to registers 
                                   1048 ;------------------------------------------------------------
                                   1049 ;	temp_sensor.c:295: void write_temp_sensor_config(unsigned char config)
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function write_temp_sensor_config
                                   1052 ;	-----------------------------------------
      000400                       1053 _write_temp_sensor_config:
      000400 AF 82            [24] 1054 	mov	r7,dpl
                                   1055 ;	temp_sensor.c:300: write_temp_sensor_command(ACCESS_TEMP_SENSOR_CONFIG);
      000402 75 82 AC         [24] 1056 	mov	dpl,#0xAC
      000405 C0 07            [24] 1057 	push	ar7
      000407 12 04 1A         [24] 1058 	lcall	_write_temp_sensor_command
      00040A D0 07            [24] 1059 	pop	ar7
                                   1060 ;	temp_sensor.c:301: ack = i2c_send_byte(TEMP_SENSOR_SFR, config);
      00040C 8F 3B            [24] 1061 	mov	_i2c_send_byte_PARM_2,r7
      00040E 75 82 B0         [24] 1062 	mov	dpl,#0xB0
      000411 12 01 A9         [24] 1063 	lcall	_i2c_send_byte
                                   1064 ;	temp_sensor.c:302: i2c_stop(TEMP_SENSOR_SFR);
      000414 75 82 B0         [24] 1065 	mov	dpl,#0xB0
      000417 02 01 74         [24] 1066 	ljmp	_i2c_stop
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'write_temp_sensor_command'
                                   1069 ;------------------------------------------------------------
                                   1070 ;command_byte              Allocated to registers r7 
                                   1071 ;control_byte              Allocated to registers 
                                   1072 ;write_bit                 Allocated to registers 
                                   1073 ;address_with_write        Allocated to registers 
                                   1074 ;ack                       Allocated to registers 
                                   1075 ;------------------------------------------------------------
                                   1076 ;	temp_sensor.c:306: void write_temp_sensor_command(unsigned char command_byte)
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function write_temp_sensor_command
                                   1079 ;	-----------------------------------------
      00041A                       1080 _write_temp_sensor_command:
      00041A AF 82            [24] 1081 	mov	r7,dpl
                                   1082 ;	temp_sensor.c:340: i2c_start(TEMP_SENSOR_SFR);
      00041C 75 82 B0         [24] 1083 	mov	dpl,#0xB0
      00041F C0 07            [24] 1084 	push	ar7
      000421 12 01 33         [24] 1085 	lcall	_i2c_start
                                   1086 ;	temp_sensor.c:341: ack = i2c_send_byte(TEMP_SENSOR_SFR, address_with_write);
      000424 75 3B 90         [24] 1087 	mov	_i2c_send_byte_PARM_2,#0x90
      000427 75 82 B0         [24] 1088 	mov	dpl,#0xB0
      00042A 12 01 A9         [24] 1089 	lcall	_i2c_send_byte
      00042D D0 07            [24] 1090 	pop	ar7
                                   1091 ;	temp_sensor.c:342: ack = i2c_send_byte(TEMP_SENSOR_SFR, command_byte);
      00042F 8F 3B            [24] 1092 	mov	_i2c_send_byte_PARM_2,r7
      000431 75 82 B0         [24] 1093 	mov	dpl,#0xB0
      000434 02 01 A9         [24] 1094 	ljmp	_i2c_send_byte
                                   1095 ;------------------------------------------------------------
                                   1096 ;Allocation info for local variables in function 'delay'
                                   1097 ;------------------------------------------------------------
                                   1098 ;i                         Allocated to registers r6 r7 
                                   1099 ;------------------------------------------------------------
                                   1100 ;	temp_sensor.c:345: void delay(void)
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function delay
                                   1103 ;	-----------------------------------------
      000437                       1104 _delay:
                                   1105 ;	temp_sensor.c:348: for(i=0;i<500;i++);
      000437 7E F4            [12] 1106 	mov	r6,#0xF4
      000439 7F 01            [12] 1107 	mov	r7,#0x01
      00043B                       1108 00104$:
      00043B EE               [12] 1109 	mov	a,r6
      00043C 24 FF            [12] 1110 	add	a,#0xFF
      00043E FC               [12] 1111 	mov	r4,a
      00043F EF               [12] 1112 	mov	a,r7
      000440 34 FF            [12] 1113 	addc	a,#0xFF
      000442 FD               [12] 1114 	mov	r5,a
      000443 8C 06            [24] 1115 	mov	ar6,r4
      000445 8D 07            [24] 1116 	mov	ar7,r5
      000447 EC               [12] 1117 	mov	a,r4
      000448 4D               [12] 1118 	orl	a,r5
      000449 70 F0            [24] 1119 	jnz	00104$
      00044B 22               [24] 1120 	ret
                                   1121 ;------------------------------------------------------------
                                   1122 ;Allocation info for local variables in function 'main'
                                   1123 ;------------------------------------------------------------
                                   1124 ;temp_sensor_config        Allocated to registers 
                                   1125 ;first_num                 Allocated to registers r7 
                                   1126 ;second_num                Allocated to registers r6 
                                   1127 ;current_temp              Allocated with name '_main_current_temp_1_63'
                                   1128 ;last_temp                 Allocated with name '_main_last_temp_1_63'
                                   1129 ;temp_fraction             Allocated to registers r4 r5 r6 r7 
                                   1130 ;temp_int                  Allocated with name '_main_temp_int_1_63'
                                   1131 ;------------------------------------------------------------
                                   1132 ;	temp_sensor.c:351: void main(void)
                                   1133 ;	-----------------------------------------
                                   1134 ;	 function main
                                   1135 ;	-----------------------------------------
      00044C                       1136 _main:
                                   1137 ;	temp_sensor.c:353: bool update_display = true;
      00044C D2 00            [12] 1138 	setb	_main_update_display_1_63
                                   1139 ;	temp_sensor.c:357: float current_temp = 0, last_temp = 0;
      00044E E4               [12] 1140 	clr	a
      00044F F5 46            [12] 1141 	mov	_main_last_temp_1_63,a
      000451 F5 47            [12] 1142 	mov	(_main_last_temp_1_63 + 1),a
      000453 F5 48            [12] 1143 	mov	(_main_last_temp_1_63 + 2),a
      000455 F5 49            [12] 1144 	mov	(_main_last_temp_1_63 + 3),a
                                   1145 ;	temp_sensor.c:358: float temp_fraction = 0.0, temp_int = 0.0;
      000457 F5 4A            [12] 1146 	mov	_main_temp_int_1_63,a
      000459 F5 4B            [12] 1147 	mov	(_main_temp_int_1_63 + 1),a
      00045B F5 4C            [12] 1148 	mov	(_main_temp_int_1_63 + 2),a
      00045D F5 4D            [12] 1149 	mov	(_main_temp_int_1_63 + 3),a
                                   1150 ;	temp_sensor.c:360: delay();
      00045F 12 04 37         [24] 1151 	lcall	_delay
                                   1152 ;	temp_sensor.c:363: write_display_command(ENABLE_DISPLAY_OSCILLATOR);
      000462 75 82 21         [24] 1153 	mov	dpl,#0x21
      000465 12 03 DD         [24] 1154 	lcall	_write_display_command
                                   1155 ;	temp_sensor.c:364: write_display_command(ENABLE_DISPLAY);
      000468 75 82 81         [24] 1156 	mov	dpl,#0x81
      00046B 12 03 DD         [24] 1157 	lcall	_write_display_command
                                   1158 ;	temp_sensor.c:370: write_temp_sensor_config(temp_sensor_config);
      00046E 75 82 02         [24] 1159 	mov	dpl,#0x02
      000471 12 04 00         [24] 1160 	lcall	_write_temp_sensor_config
                                   1161 ;	temp_sensor.c:371: write_temp_sensor_command(START_TEMP_SENSOR_CONVERSION);
      000474 75 82 EE         [24] 1162 	mov	dpl,#0xEE
      000477 12 04 1A         [24] 1163 	lcall	_write_temp_sensor_command
                                   1164 ;	temp_sensor.c:372: i2c_stop(TEMP_SENSOR_SFR);
      00047A 75 82 B0         [24] 1165 	mov	dpl,#0xB0
      00047D 12 01 74         [24] 1166 	lcall	_i2c_stop
                                   1167 ;	temp_sensor.c:378: while (true) 
      000480                       1168 00108$:
                                   1169 ;	temp_sensor.c:380: current_temp = read_temp_sensor();
      000480 12 02 B6         [24] 1170 	lcall	_read_temp_sensor
      000483 85 82 42         [24] 1171 	mov	_main_current_temp_1_63,dpl
      000486 85 83 43         [24] 1172 	mov	(_main_current_temp_1_63 + 1),dph
      000489 85 F0 44         [24] 1173 	mov	(_main_current_temp_1_63 + 2),b
      00048C F5 45            [12] 1174 	mov	(_main_current_temp_1_63 + 3),a
                                   1175 ;	temp_sensor.c:381: if (last_temp != current_temp)
      00048E C0 42            [24] 1176 	push	_main_current_temp_1_63
      000490 C0 43            [24] 1177 	push	(_main_current_temp_1_63 + 1)
      000492 C0 44            [24] 1178 	push	(_main_current_temp_1_63 + 2)
      000494 C0 45            [24] 1179 	push	(_main_current_temp_1_63 + 3)
      000496 85 46 82         [24] 1180 	mov	dpl,_main_last_temp_1_63
      000499 85 47 83         [24] 1181 	mov	dph,(_main_last_temp_1_63 + 1)
      00049C 85 48 F0         [24] 1182 	mov	b,(_main_last_temp_1_63 + 2)
      00049F E5 49            [12] 1183 	mov	a,(_main_last_temp_1_63 + 3)
      0004A1 12 07 47         [24] 1184 	lcall	___fseq
      0004A4 AD 82            [24] 1185 	mov	r5,dpl
      0004A6 E5 81            [12] 1186 	mov	a,sp
      0004A8 24 FC            [12] 1187 	add	a,#0xfc
      0004AA F5 81            [12] 1188 	mov	sp,a
      0004AC ED               [12] 1189 	mov	a,r5
      0004AD 60 03            [24] 1190 	jz	00124$
      0004AF 02 05 B1         [24] 1191 	ljmp	00104$
      0004B2                       1192 00124$:
                                   1193 ;	temp_sensor.c:384: if (current_temp < 0) 
      0004B2 E4               [12] 1194 	clr	a
      0004B3 C0 E0            [24] 1195 	push	acc
      0004B5 C0 E0            [24] 1196 	push	acc
      0004B7 C0 E0            [24] 1197 	push	acc
      0004B9 C0 E0            [24] 1198 	push	acc
      0004BB 85 42 82         [24] 1199 	mov	dpl,_main_current_temp_1_63
      0004BE 85 43 83         [24] 1200 	mov	dph,(_main_current_temp_1_63 + 1)
      0004C1 85 44 F0         [24] 1201 	mov	b,(_main_current_temp_1_63 + 2)
      0004C4 E5 45            [12] 1202 	mov	a,(_main_current_temp_1_63 + 3)
      0004C6 12 07 73         [24] 1203 	lcall	___fslt
      0004C9 AD 82            [24] 1204 	mov	r5,dpl
      0004CB E5 81            [12] 1205 	mov	a,sp
      0004CD 24 FC            [12] 1206 	add	a,#0xfc
      0004CF F5 81            [12] 1207 	mov	sp,a
      0004D1 ED               [12] 1208 	mov	a,r5
      0004D2 60 06            [24] 1209 	jz	00102$
                                   1210 ;	temp_sensor.c:387: current_temp *= -1;
      0004D4 E5 45            [12] 1211 	mov	a,(_main_current_temp_1_63 + 3)
      0004D6 B2 E7            [12] 1212 	cpl	acc.7
      0004D8 F5 45            [12] 1213 	mov	(_main_current_temp_1_63 + 3),a
      0004DA                       1214 00102$:
                                   1215 ;	temp_sensor.c:389: first_num = number_table[(int)current_temp / 10];
      0004DA 85 42 82         [24] 1216 	mov	dpl,_main_current_temp_1_63
      0004DD 85 43 83         [24] 1217 	mov	dph,(_main_current_temp_1_63 + 1)
      0004E0 85 44 F0         [24] 1218 	mov	b,(_main_current_temp_1_63 + 2)
      0004E3 E5 45            [12] 1219 	mov	a,(_main_current_temp_1_63 + 3)
      0004E5 12 08 C8         [24] 1220 	lcall	___fs2sint
      0004E8 AC 82            [24] 1221 	mov	r4,dpl
      0004EA AD 83            [24] 1222 	mov	r5,dph
      0004EC 75 0F 0A         [24] 1223 	mov	__divsint_PARM_2,#0x0A
      0004EF 75 10 00         [24] 1224 	mov	(__divsint_PARM_2 + 1),#0x00
      0004F2 C0 05            [24] 1225 	push	ar5
      0004F4 C0 04            [24] 1226 	push	ar4
      0004F6 12 09 D3         [24] 1227 	lcall	__divsint
      0004F9 AE 82            [24] 1228 	mov	r6,dpl
      0004FB D0 04            [24] 1229 	pop	ar4
      0004FD D0 05            [24] 1230 	pop	ar5
      0004FF EE               [12] 1231 	mov	a,r6
      000500 24 21            [12] 1232 	add	a,#_number_table
      000502 F9               [12] 1233 	mov	r1,a
      000503 87 07            [24] 1234 	mov	ar7,@r1
                                   1235 ;	temp_sensor.c:390: second_num = number_table[(int)current_temp % 10] | 0x80;
      000505 75 0F 0A         [24] 1236 	mov	__modsint_PARM_2,#0x0A
      000508 75 10 00         [24] 1237 	mov	(__modsint_PARM_2 + 1),#0x00
      00050B 8C 82            [24] 1238 	mov	dpl,r4
      00050D 8D 83            [24] 1239 	mov	dph,r5
      00050F C0 07            [24] 1240 	push	ar7
      000511 12 09 70         [24] 1241 	lcall	__modsint
      000514 AD 82            [24] 1242 	mov	r5,dpl
      000516 D0 07            [24] 1243 	pop	ar7
      000518 ED               [12] 1244 	mov	a,r5
      000519 24 21            [12] 1245 	add	a,#_number_table
      00051B F9               [12] 1246 	mov	r1,a
      00051C 87 06            [24] 1247 	mov	ar6,@r1
      00051E 43 06 80         [24] 1248 	orl	ar6,#0x80
                                   1249 ;	temp_sensor.c:392: display_buffer[0] = first_num;
      000521 8F 31            [24] 1250 	mov	_display_buffer,r7
                                   1251 ;	temp_sensor.c:393: display_buffer[2] = second_num;
      000523 8E 33            [24] 1252 	mov	(_display_buffer + 0x0002),r6
                                   1253 ;	temp_sensor.c:394: temp_fraction = modff(current_temp, &temp_int);
      000525 75 08 4A         [24] 1254 	mov	_modff_PARM_2,#_main_temp_int_1_63
      000528 75 09 00         [24] 1255 	mov	(_modff_PARM_2 + 1),#0x00
      00052B 75 0A 40         [24] 1256 	mov	(_modff_PARM_2 + 2),#0x40
      00052E 85 42 82         [24] 1257 	mov	dpl,_main_current_temp_1_63
      000531 85 43 83         [24] 1258 	mov	dph,(_main_current_temp_1_63 + 1)
      000534 85 44 F0         [24] 1259 	mov	b,(_main_current_temp_1_63 + 2)
      000537 E5 45            [12] 1260 	mov	a,(_main_current_temp_1_63 + 3)
      000539 12 06 CE         [24] 1261 	lcall	_modff
      00053C AC 82            [24] 1262 	mov	r4,dpl
      00053E AD 83            [24] 1263 	mov	r5,dph
      000540 AE F0            [24] 1264 	mov	r6,b
      000542 FF               [12] 1265 	mov	r7,a
                                   1266 ;	temp_sensor.c:395: temp_fraction *= 100;
      000543 C0 04            [24] 1267 	push	ar4
      000545 C0 05            [24] 1268 	push	ar5
      000547 C0 06            [24] 1269 	push	ar6
      000549 C0 07            [24] 1270 	push	ar7
      00054B 90 00 00         [24] 1271 	mov	dptr,#0x0000
      00054E 75 F0 C8         [24] 1272 	mov	b,#0xC8
      000551 74 42            [12] 1273 	mov	a,#0x42
      000553 12 05 CA         [24] 1274 	lcall	___fsmul
      000556 AC 82            [24] 1275 	mov	r4,dpl
      000558 AD 83            [24] 1276 	mov	r5,dph
      00055A AE F0            [24] 1277 	mov	r6,b
      00055C FF               [12] 1278 	mov	r7,a
      00055D E5 81            [12] 1279 	mov	a,sp
      00055F 24 FC            [12] 1280 	add	a,#0xfc
      000561 F5 81            [12] 1281 	mov	sp,a
                                   1282 ;	temp_sensor.c:396: display_buffer[6] = number_table[(int)temp_fraction / 10];
      000563 8C 82            [24] 1283 	mov	dpl,r4
      000565 8D 83            [24] 1284 	mov	dph,r5
      000567 8E F0            [24] 1285 	mov	b,r6
      000569 EF               [12] 1286 	mov	a,r7
      00056A 12 08 C8         [24] 1287 	lcall	___fs2sint
      00056D AE 82            [24] 1288 	mov	r6,dpl
      00056F AF 83            [24] 1289 	mov	r7,dph
      000571 75 0F 0A         [24] 1290 	mov	__divsint_PARM_2,#0x0A
      000574 75 10 00         [24] 1291 	mov	(__divsint_PARM_2 + 1),#0x00
      000577 C0 07            [24] 1292 	push	ar7
      000579 C0 06            [24] 1293 	push	ar6
      00057B 12 09 D3         [24] 1294 	lcall	__divsint
      00057E AC 82            [24] 1295 	mov	r4,dpl
      000580 D0 06            [24] 1296 	pop	ar6
      000582 D0 07            [24] 1297 	pop	ar7
      000584 EC               [12] 1298 	mov	a,r4
      000585 24 21            [12] 1299 	add	a,#_number_table
      000587 F9               [12] 1300 	mov	r1,a
      000588 87 05            [24] 1301 	mov	ar5,@r1
      00058A 8D 37            [24] 1302 	mov	(_display_buffer + 0x0006),r5
                                   1303 ;	temp_sensor.c:397: display_buffer[8] = number_table[(int)temp_fraction % 10];
      00058C 75 0F 0A         [24] 1304 	mov	__modsint_PARM_2,#0x0A
      00058F 75 10 00         [24] 1305 	mov	(__modsint_PARM_2 + 1),#0x00
      000592 8E 82            [24] 1306 	mov	dpl,r6
      000594 8F 83            [24] 1307 	mov	dph,r7
      000596 12 09 70         [24] 1308 	lcall	__modsint
      000599 AE 82            [24] 1309 	mov	r6,dpl
      00059B EE               [12] 1310 	mov	a,r6
      00059C 24 21            [12] 1311 	add	a,#_number_table
      00059E F9               [12] 1312 	mov	r1,a
      00059F 87 07            [24] 1313 	mov	ar7,@r1
      0005A1 8F 39            [24] 1314 	mov	(_display_buffer + 0x0008),r7
                                   1315 ;	temp_sensor.c:399: update_display = true;
      0005A3 D2 00            [12] 1316 	setb	_main_update_display_1_63
                                   1317 ;	temp_sensor.c:400: last_temp = current_temp;
      0005A5 85 42 46         [24] 1318 	mov	_main_last_temp_1_63,_main_current_temp_1_63
      0005A8 85 43 47         [24] 1319 	mov	(_main_last_temp_1_63 + 1),(_main_current_temp_1_63 + 1)
      0005AB 85 44 48         [24] 1320 	mov	(_main_last_temp_1_63 + 2),(_main_current_temp_1_63 + 2)
      0005AE 85 45 49         [24] 1321 	mov	(_main_last_temp_1_63 + 3),(_main_current_temp_1_63 + 3)
      0005B1                       1322 00104$:
                                   1323 ;	temp_sensor.c:402: if (update_display) 
      0005B1 20 00 03         [24] 1324 	jb	_main_update_display_1_63,00126$
      0005B4 02 04 80         [24] 1325 	ljmp	00108$
      0005B7                       1326 00126$:
                                   1327 ;	temp_sensor.c:407: write_display();
      0005B7 12 03 A0         [24] 1328 	lcall	_write_display
                                   1329 ;	temp_sensor.c:408: update_display = false;
      0005BA C2 00            [12] 1330 	clr	_main_update_display_1_63
      0005BC 02 04 80         [24] 1331 	ljmp	00108$
                                   1332 	.area CSEG    (CODE)
                                   1333 	.area CONST   (CODE)
                                   1334 	.area XINIT   (CODE)
                                   1335 	.area CABS    (ABS,CODE)
