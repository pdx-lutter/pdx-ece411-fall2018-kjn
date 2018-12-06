                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Dec  5 16:43:04 2018
                                      5 ;--------------------------------------------------------
                                      6 	.module temperature_control_unit
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _i2c_sda_write_PARM_2
                                     13 	.globl _main
                                     14 	.globl _read_buttons
                                     15 	.globl _updated_displayed_setting_selection
                                     16 	.globl _update_displayed_temperature
                                     17 	.globl _write_to_display
                                     18 	.globl _modff
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _i2c_send_byte_PARM_2
                                    116 	.globl _i2c_scl_write_PARM_2
                                    117 	.globl _user_setting_temp_low_threshold
                                    118 	.globl _user_setting_temp_high_threshold
                                    119 	.globl _current_user_mode
                                    120 	.globl _display_brightness
                                    121 	.globl _debounced_buttons
                                    122 	.globl _currently_pressed_buttons
                                    123 	.globl _display_buffer
                                    124 	.globl _number_table
                                    125 	.globl _delay
                                    126 	.globl _i2c_delay
                                    127 	.globl _i2c_sda_write
                                    128 	.globl _i2c_sda_read
                                    129 	.globl _i2c_scl_write
                                    130 	.globl _i2c_start
                                    131 	.globl _i2c_stop
                                    132 	.globl _i2c_send_byte
                                    133 	.globl _i2c_read_byte
                                    134 	.globl _read_temp_sensor
                                    135 	.globl _clear_display_buffer
                                    136 	.globl _write_display_command
                                    137 	.globl _write_temp_sensor_config
                                    138 	.globl _write_temp_sensor_command
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000D0   162 _PSW	=	0x00d0
                           0000E0   163 _ACC	=	0x00e0
                           0000F0   164 _B	=	0x00f0
                                    165 ;--------------------------------------------------------
                                    166 ; special function bits
                                    167 ;--------------------------------------------------------
                                    168 	.area RSEG    (ABS,DATA)
      000000                        169 	.org 0x0000
                           000080   170 _P0_0	=	0x0080
                           000081   171 _P0_1	=	0x0081
                           000082   172 _P0_2	=	0x0082
                           000083   173 _P0_3	=	0x0083
                           000084   174 _P0_4	=	0x0084
                           000085   175 _P0_5	=	0x0085
                           000086   176 _P0_6	=	0x0086
                           000087   177 _P0_7	=	0x0087
                           000088   178 _IT0	=	0x0088
                           000089   179 _IE0	=	0x0089
                           00008A   180 _IT1	=	0x008a
                           00008B   181 _IE1	=	0x008b
                           00008C   182 _TR0	=	0x008c
                           00008D   183 _TF0	=	0x008d
                           00008E   184 _TR1	=	0x008e
                           00008F   185 _TF1	=	0x008f
                           000090   186 _P1_0	=	0x0090
                           000091   187 _P1_1	=	0x0091
                           000092   188 _P1_2	=	0x0092
                           000093   189 _P1_3	=	0x0093
                           000094   190 _P1_4	=	0x0094
                           000095   191 _P1_5	=	0x0095
                           000096   192 _P1_6	=	0x0096
                           000097   193 _P1_7	=	0x0097
                           000098   194 _RI	=	0x0098
                           000099   195 _TI	=	0x0099
                           00009A   196 _RB8	=	0x009a
                           00009B   197 _TB8	=	0x009b
                           00009C   198 _REN	=	0x009c
                           00009D   199 _SM2	=	0x009d
                           00009E   200 _SM1	=	0x009e
                           00009F   201 _SM0	=	0x009f
                           0000A0   202 _P2_0	=	0x00a0
                           0000A1   203 _P2_1	=	0x00a1
                           0000A2   204 _P2_2	=	0x00a2
                           0000A3   205 _P2_3	=	0x00a3
                           0000A4   206 _P2_4	=	0x00a4
                           0000A5   207 _P2_5	=	0x00a5
                           0000A6   208 _P2_6	=	0x00a6
                           0000A7   209 _P2_7	=	0x00a7
                           0000A8   210 _EX0	=	0x00a8
                           0000A9   211 _ET0	=	0x00a9
                           0000AA   212 _EX1	=	0x00aa
                           0000AB   213 _ET1	=	0x00ab
                           0000AC   214 _ES	=	0x00ac
                           0000AF   215 _EA	=	0x00af
                           0000B0   216 _P3_0	=	0x00b0
                           0000B1   217 _P3_1	=	0x00b1
                           0000B2   218 _P3_2	=	0x00b2
                           0000B3   219 _P3_3	=	0x00b3
                           0000B4   220 _P3_4	=	0x00b4
                           0000B5   221 _P3_5	=	0x00b5
                           0000B6   222 _P3_6	=	0x00b6
                           0000B7   223 _P3_7	=	0x00b7
                           0000B0   224 _RXD	=	0x00b0
                           0000B1   225 _TXD	=	0x00b1
                           0000B2   226 _INT0	=	0x00b2
                           0000B3   227 _INT1	=	0x00b3
                           0000B4   228 _T0	=	0x00b4
                           0000B5   229 _T1	=	0x00b5
                           0000B6   230 _WR	=	0x00b6
                           0000B7   231 _RD	=	0x00b7
                           0000B8   232 _PX0	=	0x00b8
                           0000B9   233 _PT0	=	0x00b9
                           0000BA   234 _PX1	=	0x00ba
                           0000BB   235 _PT1	=	0x00bb
                           0000BC   236 _PS	=	0x00bc
                           0000D0   237 _P	=	0x00d0
                           0000D1   238 _F1	=	0x00d1
                           0000D2   239 _OV	=	0x00d2
                           0000D3   240 _RS0	=	0x00d3
                           0000D4   241 _RS1	=	0x00d4
                           0000D5   242 _F0	=	0x00d5
                           0000D6   243 _AC	=	0x00d6
                           0000D7   244 _CY	=	0x00d7
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable register banks
                                    247 ;--------------------------------------------------------
                                    248 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        249 	.ds 8
                                    250 ;--------------------------------------------------------
                                    251 ; internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area DSEG    (DATA)
      000021                        254 _number_table::
      000021                        255 	.ds 16
      000031                        256 _display_buffer::
      000031                        257 	.ds 10
      00003B                        258 _currently_pressed_buttons::
      00003B                        259 	.ds 1
      00003C                        260 _debounced_buttons::
      00003C                        261 	.ds 1
      00003D                        262 _display_brightness::
      00003D                        263 	.ds 1
      00003E                        264 _current_user_mode::
      00003E                        265 	.ds 1
      00003F                        266 _user_setting_temp_high_threshold::
      00003F                        267 	.ds 2
      000041                        268 _user_setting_temp_low_threshold::
      000041                        269 	.ds 2
      000043                        270 _i2c_scl_write_PARM_2:
      000043                        271 	.ds 1
      000044                        272 _i2c_send_byte_PARM_2:
      000044                        273 	.ds 1
      000045                        274 _read_temp_sensor_slope_1_63:
      000045                        275 	.ds 4
      000049                        276 _read_temp_sensor_count_remaining_1_63:
      000049                        277 	.ds 4
      00004D                        278 _update_displayed_temperature_temperature_1_76:
      00004D                        279 	.ds 4
      000051                        280 _update_displayed_temperature_temp_fraction_part_1_77:
      000051                        281 	.ds 4
      000055                        282 _update_displayed_temperature_temp_integer_part_1_77:
      000055                        283 	.ds 4
      000059                        284 _update_displayed_temperature_sloc0_1_0:
      000059                        285 	.ds 2
      00005B                        286 _update_displayed_temperature_sloc1_1_0:
      00005B                        287 	.ds 1
      00005C                        288 _update_displayed_temperature_sloc2_1_0:
      00005C                        289 	.ds 1
      00005D                        290 _main_last_temp_1_89:
      00005D                        291 	.ds 4
                                    292 ;--------------------------------------------------------
                                    293 ; overlayable items in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 	.area	OSEG    (OVR,DATA)
      00000F                        296 _delay_min_clock_cycles_to_wait_1_37:
      00000F                        297 	.ds 4
                                    298 	.area	OSEG    (OVR,DATA)
                                    299 	.area	OSEG    (OVR,DATA)
      00000F                        300 _i2c_sda_write_PARM_2:
      00000F                        301 	.ds 1
                                    302 	.area	OSEG    (OVR,DATA)
                                    303 	.area	OSEG    (OVR,DATA)
                                    304 	.area	OSEG    (OVR,DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; Stack segment in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 	.area	SSEG
      000061                        309 __start__stack:
      000061                        310 	.ds	1
                                    311 
                                    312 ;--------------------------------------------------------
                                    313 ; indirectly addressable internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area ISEG    (DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area IABS    (ABS,DATA)
                                    320 	.area IABS    (ABS,DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; bit data
                                    323 ;--------------------------------------------------------
                                    324 	.area BSEG    (BIT)
      000000                        325 _main_update_display_1_89:
      000000                        326 	.ds 1
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT0 (CODE)
                                    345 	.area GSINIT1 (CODE)
                                    346 	.area GSINIT2 (CODE)
                                    347 	.area GSINIT3 (CODE)
                                    348 	.area GSINIT4 (CODE)
                                    349 	.area GSINIT5 (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area CSEG    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; interrupt vector 
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
      000000                        357 __interrupt_vect:
      000000 02 00 06         [24]  358 	ljmp	__sdcc_gsinit_startup
                                    359 ;--------------------------------------------------------
                                    360 ; global & static initialisations
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.globl __sdcc_gsinit_startup
                                    367 	.globl __sdcc_program_startup
                                    368 	.globl __start__stack
                                    369 	.globl __mcs51_genXINIT
                                    370 	.globl __mcs51_genXRAMCLEAR
                                    371 	.globl __mcs51_genRAMCLEAR
                                    372 ;	temperature_control_unit.c:13: unsigned char number_table[] = {
      00005F 75 21 3F         [24]  373 	mov	_number_table,#0x3F
      000062 75 22 06         [24]  374 	mov	(_number_table + 0x0001),#0x06
      000065 75 23 5B         [24]  375 	mov	(_number_table + 0x0002),#0x5B
      000068 75 24 4F         [24]  376 	mov	(_number_table + 0x0003),#0x4F
      00006B 75 25 66         [24]  377 	mov	(_number_table + 0x0004),#0x66
      00006E 75 26 6D         [24]  378 	mov	(_number_table + 0x0005),#0x6D
      000071 75 27 7D         [24]  379 	mov	(_number_table + 0x0006),#0x7D
      000074 75 28 07         [24]  380 	mov	(_number_table + 0x0007),#0x07
      000077 75 29 7F         [24]  381 	mov	(_number_table + 0x0008),#0x7F
      00007A 75 2A 6F         [24]  382 	mov	(_number_table + 0x0009),#0x6F
      00007D 75 2B 77         [24]  383 	mov	(_number_table + 0x000a),#0x77
      000080 75 2C 7C         [24]  384 	mov	(_number_table + 0x000b),#0x7C
      000083 75 2D 39         [24]  385 	mov	(_number_table + 0x000c),#0x39
      000086 75 2E 5E         [24]  386 	mov	(_number_table + 0x000d),#0x5E
      000089 75 2F 79         [24]  387 	mov	(_number_table + 0x000e),#0x79
      00008C 75 30 71         [24]  388 	mov	(_number_table + 0x000f),#0x71
                                    389 ;	temperature_control_unit.c:33: unsigned char display_buffer[] = {
      00008F 75 31 00         [24]  390 	mov	_display_buffer,#0x00
      000092 75 32 00         [24]  391 	mov	(_display_buffer + 0x0001),#0x00
      000095 75 33 00         [24]  392 	mov	(_display_buffer + 0x0002),#0x00
      000098 75 34 00         [24]  393 	mov	(_display_buffer + 0x0003),#0x00
      00009B 75 35 00         [24]  394 	mov	(_display_buffer + 0x0004),#0x00
      00009E 75 36 00         [24]  395 	mov	(_display_buffer + 0x0005),#0x00
      0000A1 75 37 00         [24]  396 	mov	(_display_buffer + 0x0006),#0x00
      0000A4 75 38 00         [24]  397 	mov	(_display_buffer + 0x0007),#0x00
      0000A7 75 39 00         [24]  398 	mov	(_display_buffer + 0x0008),#0x00
      0000AA 75 3A 00         [24]  399 	mov	(_display_buffer + 0x0009),#0x00
                                    400 ;	temperature_control_unit.c:49: unsigned char currently_pressed_buttons = 0x0;
      0000AD 75 3B 00         [24]  401 	mov	_currently_pressed_buttons,#0x00
                                    402 ;	temperature_control_unit.c:54: unsigned char debounced_buttons = 0x0;
      0000B0 75 3C 00         [24]  403 	mov	_debounced_buttons,#0x00
                                    404 ;	temperature_control_unit.c:56: unsigned char display_brightness = FULL_BRIGHTNESS; //Defaults to FULL THROTTLE
      0000B3 75 3D 0F         [24]  405 	mov	_display_brightness,#0x0F
                                    406 ;	temperature_control_unit.c:66: unsigned char current_user_mode = MODE_DISPLAY_TEMPERATURE; 
      0000B6 75 3E 00         [24]  407 	mov	_current_user_mode,#0x00
                                    408 ;	temperature_control_unit.c:68: int user_setting_temp_high_threshold = 40; //Degress celsius
      0000B9 75 3F 28         [24]  409 	mov	_user_setting_temp_high_threshold,#0x28
      0000BC 75 40 00         [24]  410 	mov	(_user_setting_temp_high_threshold + 1),#0x00
                                    411 ;	temperature_control_unit.c:69: int user_setting_temp_low_threshold  = 0; //Degress celsius
      0000BF E4               [12]  412 	clr	a
      0000C0 F5 41            [12]  413 	mov	_user_setting_temp_low_threshold,a
      0000C2 F5 42            [12]  414 	mov	(_user_setting_temp_low_threshold + 1),a
                                    415 	.area GSFINAL (CODE)
      0000C4 02 00 03         [24]  416 	ljmp	__sdcc_program_startup
                                    417 ;--------------------------------------------------------
                                    418 ; Home
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area HOME    (CODE)
      000003                        422 __sdcc_program_startup:
      000003 02 07 CD         [24]  423 	ljmp	_main
                                    424 ;	return from main will return to caller
                                    425 ;--------------------------------------------------------
                                    426 ; code
                                    427 ;--------------------------------------------------------
                                    428 	.area CSEG    (CODE)
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'delay'
                                    431 ;------------------------------------------------------------
                                    432 ;min_clock_cycles_to_wait  Allocated with name '_delay_min_clock_cycles_to_wait_1_37'
                                    433 ;i                         Allocated to registers r2 r3 
                                    434 ;------------------------------------------------------------
                                    435 ;	temperature_control_unit.c:78: void delay(unsigned long min_clock_cycles_to_wait)
                                    436 ;	-----------------------------------------
                                    437 ;	 function delay
                                    438 ;	-----------------------------------------
      0000C7                        439 _delay:
                           000007   440 	ar7 = 0x07
                           000006   441 	ar6 = 0x06
                           000005   442 	ar5 = 0x05
                           000004   443 	ar4 = 0x04
                           000003   444 	ar3 = 0x03
                           000002   445 	ar2 = 0x02
                           000001   446 	ar1 = 0x01
                           000000   447 	ar0 = 0x00
      0000C7 85 82 0F         [24]  448 	mov	_delay_min_clock_cycles_to_wait_1_37,dpl
      0000CA 85 83 10         [24]  449 	mov	(_delay_min_clock_cycles_to_wait_1_37 + 1),dph
      0000CD 85 F0 11         [24]  450 	mov	(_delay_min_clock_cycles_to_wait_1_37 + 2),b
      0000D0 F5 12            [12]  451 	mov	(_delay_min_clock_cycles_to_wait_1_37 + 3),a
                                    452 ;	temperature_control_unit.c:81: for(i = 0;i < min_clock_cycles_to_wait; i++);
      0000D2 7A 00            [12]  453 	mov	r2,#0x00
      0000D4 7B 00            [12]  454 	mov	r3,#0x00
      0000D6                        455 00103$:
      0000D6 8A 00            [24]  456 	mov	ar0,r2
      0000D8 EB               [12]  457 	mov	a,r3
      0000D9 F9               [12]  458 	mov	r1,a
      0000DA 33               [12]  459 	rlc	a
      0000DB 95 E0            [12]  460 	subb	a,acc
      0000DD FE               [12]  461 	mov	r6,a
      0000DE FF               [12]  462 	mov	r7,a
      0000DF C3               [12]  463 	clr	c
      0000E0 E8               [12]  464 	mov	a,r0
      0000E1 95 0F            [12]  465 	subb	a,_delay_min_clock_cycles_to_wait_1_37
      0000E3 E9               [12]  466 	mov	a,r1
      0000E4 95 10            [12]  467 	subb	a,(_delay_min_clock_cycles_to_wait_1_37 + 1)
      0000E6 EE               [12]  468 	mov	a,r6
      0000E7 95 11            [12]  469 	subb	a,(_delay_min_clock_cycles_to_wait_1_37 + 2)
      0000E9 EF               [12]  470 	mov	a,r7
      0000EA 95 12            [12]  471 	subb	a,(_delay_min_clock_cycles_to_wait_1_37 + 3)
      0000EC 50 07            [24]  472 	jnc	00105$
      0000EE 0A               [12]  473 	inc	r2
      0000EF BA 00 E4         [24]  474 	cjne	r2,#0x00,00103$
      0000F2 0B               [12]  475 	inc	r3
      0000F3 80 E1            [24]  476 	sjmp	00103$
      0000F5                        477 00105$:
      0000F5 22               [24]  478 	ret
                                    479 ;------------------------------------------------------------
                                    480 ;Allocation info for local variables in function 'i2c_delay'
                                    481 ;------------------------------------------------------------
                                    482 ;i                         Allocated to registers r6 r7 
                                    483 ;------------------------------------------------------------
                                    484 ;	temperature_control_unit.c:90: void i2c_delay(void)
                                    485 ;	-----------------------------------------
                                    486 ;	 function i2c_delay
                                    487 ;	-----------------------------------------
      0000F6                        488 _i2c_delay:
                                    489 ;	temperature_control_unit.c:93: for (i = 0; i < 5; i++);
      0000F6 7E 05            [12]  490 	mov	r6,#0x05
      0000F8 7F 00            [12]  491 	mov	r7,#0x00
      0000FA                        492 00104$:
      0000FA EE               [12]  493 	mov	a,r6
      0000FB 24 FF            [12]  494 	add	a,#0xFF
      0000FD FC               [12]  495 	mov	r4,a
      0000FE EF               [12]  496 	mov	a,r7
      0000FF 34 FF            [12]  497 	addc	a,#0xFF
      000101 FD               [12]  498 	mov	r5,a
      000102 8C 06            [24]  499 	mov	ar6,r4
      000104 8D 07            [24]  500 	mov	ar7,r5
      000106 EC               [12]  501 	mov	a,r4
      000107 4D               [12]  502 	orl	a,r5
      000108 70 F0            [24]  503 	jnz	00104$
      00010A 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'i2c_sda_write'
                                    507 ;------------------------------------------------------------
                                    508 ;value                     Allocated with name '_i2c_sda_write_PARM_2'
                                    509 ;sfr_address               Allocated to registers r7 
                                    510 ;------------------------------------------------------------
                                    511 ;	temperature_control_unit.c:96: void i2c_sda_write(unsigned char sfr_address, unsigned char value)
                                    512 ;	-----------------------------------------
                                    513 ;	 function i2c_sda_write
                                    514 ;	-----------------------------------------
      00010B                        515 _i2c_sda_write:
      00010B AF 82            [24]  516 	mov	r7,dpl
                                    517 ;	temperature_control_unit.c:98: switch (sfr_address)
      00010D BF A0 02         [24]  518 	cjne	r7,#0xA0,00113$
      000110 80 05            [24]  519 	sjmp	00101$
      000112                        520 00113$:
                                    521 ;	temperature_control_unit.c:100: case DISPLAY_SFR: P2_0 = value; break;
      000112 BF B0 0F         [24]  522 	cjne	r7,#0xB0,00105$
      000115 80 07            [24]  523 	sjmp	00102$
      000117                        524 00101$:
      000117 E5 0F            [12]  525 	mov	a,_i2c_sda_write_PARM_2
      000119 24 FF            [12]  526 	add	a,#0xff
      00011B 92 A0            [24]  527 	mov	_P2_0,c
                                    528 ;	temperature_control_unit.c:101: case TEMP_SENSOR_SFR: P3_5 = value; break;
      00011D 22               [24]  529 	ret
      00011E                        530 00102$:
      00011E E5 0F            [12]  531 	mov	a,_i2c_sda_write_PARM_2
      000120 24 FF            [12]  532 	add	a,#0xff
      000122 92 B5            [24]  533 	mov	_P3_5,c
                                    534 ;	temperature_control_unit.c:103: }
      000124                        535 00105$:
      000124 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'i2c_sda_read'
                                    539 ;------------------------------------------------------------
                                    540 ;sfr_address               Allocated to registers r7 
                                    541 ;result                    Allocated to registers r6 
                                    542 ;------------------------------------------------------------
                                    543 ;	temperature_control_unit.c:106: unsigned char i2c_sda_read(unsigned char sfr_address)
                                    544 ;	-----------------------------------------
                                    545 ;	 function i2c_sda_read
                                    546 ;	-----------------------------------------
      000125                        547 _i2c_sda_read:
      000125 AF 82            [24]  548 	mov	r7,dpl
                                    549 ;	temperature_control_unit.c:108: unsigned char result = 0;
      000127 7E 00            [12]  550 	mov	r6,#0x00
                                    551 ;	temperature_control_unit.c:109: switch (sfr_address)
      000129 BF A0 02         [24]  552 	cjne	r7,#0xA0,00113$
      00012C 80 05            [24]  553 	sjmp	00101$
      00012E                        554 00113$:
                                    555 ;	temperature_control_unit.c:111: case DISPLAY_SFR: result = (unsigned char) P2_0; break;
      00012E BF B0 0E         [24]  556 	cjne	r7,#0xB0,00104$
      000131 80 07            [24]  557 	sjmp	00102$
      000133                        558 00101$:
      000133 A2 A0            [12]  559 	mov	c,_P2_0
      000135 E4               [12]  560 	clr	a
      000136 33               [12]  561 	rlc	a
      000137 FE               [12]  562 	mov	r6,a
                                    563 ;	temperature_control_unit.c:112: case TEMP_SENSOR_SFR: result = (unsigned char) P3_5; break;
      000138 80 05            [24]  564 	sjmp	00104$
      00013A                        565 00102$:
      00013A A2 B5            [12]  566 	mov	c,_P3_5
      00013C E4               [12]  567 	clr	a
      00013D 33               [12]  568 	rlc	a
      00013E FE               [12]  569 	mov	r6,a
                                    570 ;	temperature_control_unit.c:114: }
      00013F                        571 00104$:
                                    572 ;	temperature_control_unit.c:115: return result;
      00013F 8E 82            [24]  573 	mov	dpl,r6
      000141 22               [24]  574 	ret
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'i2c_scl_write'
                                    577 ;------------------------------------------------------------
                                    578 ;value                     Allocated with name '_i2c_scl_write_PARM_2'
                                    579 ;sfr_address               Allocated to registers r7 
                                    580 ;------------------------------------------------------------
                                    581 ;	temperature_control_unit.c:118: void i2c_scl_write(unsigned char sfr_address, unsigned char value)
                                    582 ;	-----------------------------------------
                                    583 ;	 function i2c_scl_write
                                    584 ;	-----------------------------------------
      000142                        585 _i2c_scl_write:
      000142 AF 82            [24]  586 	mov	r7,dpl
                                    587 ;	temperature_control_unit.c:120: switch (sfr_address)
      000144 BF A0 02         [24]  588 	cjne	r7,#0xA0,00113$
      000147 80 05            [24]  589 	sjmp	00101$
      000149                        590 00113$:
                                    591 ;	temperature_control_unit.c:122: case DISPLAY_SFR: P2_1 = value; break;
      000149 BF B0 10         [24]  592 	cjne	r7,#0xB0,00104$
      00014C 80 08            [24]  593 	sjmp	00102$
      00014E                        594 00101$:
      00014E E5 43            [12]  595 	mov	a,_i2c_scl_write_PARM_2
      000150 24 FF            [12]  596 	add	a,#0xff
      000152 92 A1            [24]  597 	mov	_P2_1,c
                                    598 ;	temperature_control_unit.c:123: case TEMP_SENSOR_SFR: P3_6 = value; break;
      000154 80 06            [24]  599 	sjmp	00104$
      000156                        600 00102$:
      000156 E5 43            [12]  601 	mov	a,_i2c_scl_write_PARM_2
      000158 24 FF            [12]  602 	add	a,#0xff
      00015A 92 B6            [24]  603 	mov	_P3_6,c
                                    604 ;	temperature_control_unit.c:125: }
      00015C                        605 00104$:
                                    606 ;	temperature_control_unit.c:126: i2c_delay();
      00015C 02 00 F6         [24]  607 	ljmp	_i2c_delay
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'i2c_start'
                                    610 ;------------------------------------------------------------
                                    611 ;sfr_address               Allocated to registers r7 
                                    612 ;------------------------------------------------------------
                                    613 ;	temperature_control_unit.c:129: void i2c_start(unsigned char sfr_address)
                                    614 ;	-----------------------------------------
                                    615 ;	 function i2c_start
                                    616 ;	-----------------------------------------
      00015F                        617 _i2c_start:
                                    618 ;	temperature_control_unit.c:131: i2c_scl_write(sfr_address, 0);
      00015F AF 82            [24]  619 	mov	r7,dpl
      000161 75 43 00         [24]  620 	mov	_i2c_scl_write_PARM_2,#0x00
      000164 C0 07            [24]  621 	push	ar7
      000166 12 01 42         [24]  622 	lcall	_i2c_scl_write
      000169 D0 07            [24]  623 	pop	ar7
                                    624 ;	temperature_control_unit.c:132: i2c_sda_write(sfr_address, 1);
      00016B 75 0F 01         [24]  625 	mov	_i2c_sda_write_PARM_2,#0x01
      00016E 8F 82            [24]  626 	mov	dpl,r7
      000170 C0 07            [24]  627 	push	ar7
      000172 12 01 0B         [24]  628 	lcall	_i2c_sda_write
      000175 D0 07            [24]  629 	pop	ar7
                                    630 ;	temperature_control_unit.c:133: i2c_scl_write(sfr_address, 1);
      000177 75 43 01         [24]  631 	mov	_i2c_scl_write_PARM_2,#0x01
      00017A 8F 82            [24]  632 	mov	dpl,r7
      00017C C0 07            [24]  633 	push	ar7
      00017E 12 01 42         [24]  634 	lcall	_i2c_scl_write
      000181 D0 07            [24]  635 	pop	ar7
                                    636 ;	temperature_control_unit.c:134: i2c_sda_write(sfr_address, 0);
      000183 75 0F 00         [24]  637 	mov	_i2c_sda_write_PARM_2,#0x00
      000186 8F 82            [24]  638 	mov	dpl,r7
      000188 C0 07            [24]  639 	push	ar7
      00018A 12 01 0B         [24]  640 	lcall	_i2c_sda_write
      00018D D0 07            [24]  641 	pop	ar7
                                    642 ;	temperature_control_unit.c:135: i2c_scl_write(sfr_address, 0);
      00018F 75 43 00         [24]  643 	mov	_i2c_scl_write_PARM_2,#0x00
      000192 8F 82            [24]  644 	mov	dpl,r7
      000194 02 01 42         [24]  645 	ljmp	_i2c_scl_write
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'i2c_stop'
                                    648 ;------------------------------------------------------------
                                    649 ;sfr_address               Allocated to registers r7 
                                    650 ;------------------------------------------------------------
                                    651 ;	temperature_control_unit.c:138: void i2c_stop(unsigned char sfr_address)
                                    652 ;	-----------------------------------------
                                    653 ;	 function i2c_stop
                                    654 ;	-----------------------------------------
      000197                        655 _i2c_stop:
                                    656 ;	temperature_control_unit.c:140: i2c_scl_write(sfr_address, 0);
      000197 AF 82            [24]  657 	mov	r7,dpl
      000199 75 43 00         [24]  658 	mov	_i2c_scl_write_PARM_2,#0x00
      00019C C0 07            [24]  659 	push	ar7
      00019E 12 01 42         [24]  660 	lcall	_i2c_scl_write
      0001A1 D0 07            [24]  661 	pop	ar7
                                    662 ;	temperature_control_unit.c:141: i2c_sda_write(sfr_address, 0);
      0001A3 75 0F 00         [24]  663 	mov	_i2c_sda_write_PARM_2,#0x00
      0001A6 8F 82            [24]  664 	mov	dpl,r7
      0001A8 C0 07            [24]  665 	push	ar7
      0001AA 12 01 0B         [24]  666 	lcall	_i2c_sda_write
      0001AD D0 07            [24]  667 	pop	ar7
                                    668 ;	temperature_control_unit.c:142: i2c_scl_write(sfr_address, 1);
      0001AF 75 43 01         [24]  669 	mov	_i2c_scl_write_PARM_2,#0x01
      0001B2 8F 82            [24]  670 	mov	dpl,r7
      0001B4 C0 07            [24]  671 	push	ar7
      0001B6 12 01 42         [24]  672 	lcall	_i2c_scl_write
      0001B9 D0 07            [24]  673 	pop	ar7
                                    674 ;	temperature_control_unit.c:143: i2c_sda_write(sfr_address, 1);
      0001BB 75 0F 01         [24]  675 	mov	_i2c_sda_write_PARM_2,#0x01
      0001BE 8F 82            [24]  676 	mov	dpl,r7
      0001C0 02 01 0B         [24]  677 	ljmp	_i2c_sda_write
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'i2c_send_byte'
                                    680 ;------------------------------------------------------------
                                    681 ;data_out                  Allocated with name '_i2c_send_byte_PARM_2'
                                    682 ;sfr_address               Allocated to registers r7 
                                    683 ;i                         Allocated to registers r6 
                                    684 ;ack_bit                   Allocated to registers r6 
                                    685 ;------------------------------------------------------------
                                    686 ;	temperature_control_unit.c:146: unsigned char i2c_send_byte(unsigned char sfr_address, unsigned char data_out)
                                    687 ;	-----------------------------------------
                                    688 ;	 function i2c_send_byte
                                    689 ;	-----------------------------------------
      0001C3                        690 _i2c_send_byte:
      0001C3 AF 82            [24]  691 	mov	r7,dpl
                                    692 ;	temperature_control_unit.c:149: for (i = 0; i < 8; i++) {
      0001C5 7E 00            [12]  693 	mov	r6,#0x00
      0001C7                        694 00105$:
                                    695 ;	temperature_control_unit.c:150: i2c_scl_write(sfr_address, 0);
      0001C7 75 43 00         [24]  696 	mov	_i2c_scl_write_PARM_2,#0x00
      0001CA 8F 82            [24]  697 	mov	dpl,r7
      0001CC C0 07            [24]  698 	push	ar7
      0001CE C0 06            [24]  699 	push	ar6
      0001D0 12 01 42         [24]  700 	lcall	_i2c_scl_write
      0001D3 D0 06            [24]  701 	pop	ar6
      0001D5 D0 07            [24]  702 	pop	ar7
                                    703 ;	temperature_control_unit.c:151: if ((data_out & 0x80) == 0) {
      0001D7 E5 44            [12]  704 	mov	a,_i2c_send_byte_PARM_2
      0001D9 20 E7 12         [24]  705 	jb	acc.7,00102$
                                    706 ;	temperature_control_unit.c:152: i2c_sda_write(sfr_address, 0);
      0001DC 75 0F 00         [24]  707 	mov	_i2c_sda_write_PARM_2,#0x00
      0001DF 8F 82            [24]  708 	mov	dpl,r7
      0001E1 C0 07            [24]  709 	push	ar7
      0001E3 C0 06            [24]  710 	push	ar6
      0001E5 12 01 0B         [24]  711 	lcall	_i2c_sda_write
      0001E8 D0 06            [24]  712 	pop	ar6
      0001EA D0 07            [24]  713 	pop	ar7
      0001EC 80 10            [24]  714 	sjmp	00103$
      0001EE                        715 00102$:
                                    716 ;	temperature_control_unit.c:154: i2c_sda_write(sfr_address, 1);
      0001EE 75 0F 01         [24]  717 	mov	_i2c_sda_write_PARM_2,#0x01
      0001F1 8F 82            [24]  718 	mov	dpl,r7
      0001F3 C0 07            [24]  719 	push	ar7
      0001F5 C0 06            [24]  720 	push	ar6
      0001F7 12 01 0B         [24]  721 	lcall	_i2c_sda_write
      0001FA D0 06            [24]  722 	pop	ar6
      0001FC D0 07            [24]  723 	pop	ar7
      0001FE                        724 00103$:
                                    725 ;	temperature_control_unit.c:156: i2c_scl_write(sfr_address, 1);
      0001FE 75 43 01         [24]  726 	mov	_i2c_scl_write_PARM_2,#0x01
      000201 8F 82            [24]  727 	mov	dpl,r7
      000203 C0 07            [24]  728 	push	ar7
      000205 C0 06            [24]  729 	push	ar6
      000207 12 01 42         [24]  730 	lcall	_i2c_scl_write
      00020A D0 06            [24]  731 	pop	ar6
      00020C D0 07            [24]  732 	pop	ar7
                                    733 ;	temperature_control_unit.c:157: data_out<<=1;
      00020E E5 44            [12]  734 	mov	a,_i2c_send_byte_PARM_2
      000210 25 44            [12]  735 	add	a,_i2c_send_byte_PARM_2
      000212 F5 44            [12]  736 	mov	_i2c_send_byte_PARM_2,a
                                    737 ;	temperature_control_unit.c:149: for (i = 0; i < 8; i++) {
      000214 0E               [12]  738 	inc	r6
      000215 BE 08 00         [24]  739 	cjne	r6,#0x08,00120$
      000218                        740 00120$:
      000218 40 AD            [24]  741 	jc	00105$
                                    742 ;	temperature_control_unit.c:159: i2c_scl_write(sfr_address, 0);
      00021A 75 43 00         [24]  743 	mov	_i2c_scl_write_PARM_2,#0x00
      00021D 8F 82            [24]  744 	mov	dpl,r7
      00021F C0 07            [24]  745 	push	ar7
      000221 12 01 42         [24]  746 	lcall	_i2c_scl_write
      000224 D0 07            [24]  747 	pop	ar7
                                    748 ;	temperature_control_unit.c:160: i2c_sda_write(sfr_address, 1);
      000226 75 0F 01         [24]  749 	mov	_i2c_sda_write_PARM_2,#0x01
      000229 8F 82            [24]  750 	mov	dpl,r7
      00022B C0 07            [24]  751 	push	ar7
      00022D 12 01 0B         [24]  752 	lcall	_i2c_sda_write
      000230 D0 07            [24]  753 	pop	ar7
                                    754 ;	temperature_control_unit.c:161: i2c_scl_write(sfr_address, 1);
      000232 75 43 01         [24]  755 	mov	_i2c_scl_write_PARM_2,#0x01
      000235 8F 82            [24]  756 	mov	dpl,r7
      000237 C0 07            [24]  757 	push	ar7
      000239 12 01 42         [24]  758 	lcall	_i2c_scl_write
      00023C D0 07            [24]  759 	pop	ar7
                                    760 ;	temperature_control_unit.c:162: ack_bit = i2c_sda_read(sfr_address);
      00023E 8F 82            [24]  761 	mov	dpl,r7
      000240 C0 07            [24]  762 	push	ar7
      000242 12 01 25         [24]  763 	lcall	_i2c_sda_read
      000245 AE 82            [24]  764 	mov	r6,dpl
      000247 D0 07            [24]  765 	pop	ar7
                                    766 ;	temperature_control_unit.c:163: i2c_scl_write(sfr_address, 0);
      000249 75 43 00         [24]  767 	mov	_i2c_scl_write_PARM_2,#0x00
      00024C 8F 82            [24]  768 	mov	dpl,r7
      00024E C0 06            [24]  769 	push	ar6
      000250 12 01 42         [24]  770 	lcall	_i2c_scl_write
      000253 D0 06            [24]  771 	pop	ar6
                                    772 ;	temperature_control_unit.c:165: return ack_bit;
      000255 8E 82            [24]  773 	mov	dpl,r6
      000257 22               [24]  774 	ret
                                    775 ;------------------------------------------------------------
                                    776 ;Allocation info for local variables in function 'i2c_read_byte'
                                    777 ;------------------------------------------------------------
                                    778 ;sfr_address               Allocated to registers r7 
                                    779 ;i                         Allocated to registers r5 
                                    780 ;received                  Allocated to registers r6 
                                    781 ;------------------------------------------------------------
                                    782 ;	temperature_control_unit.c:168: unsigned char i2c_read_byte(unsigned char sfr_address)
                                    783 ;	-----------------------------------------
                                    784 ;	 function i2c_read_byte
                                    785 ;	-----------------------------------------
      000258                        786 _i2c_read_byte:
      000258 AF 82            [24]  787 	mov	r7,dpl
                                    788 ;	temperature_control_unit.c:170: unsigned char i, received = 0;
      00025A 7E 00            [12]  789 	mov	r6,#0x00
                                    790 ;	temperature_control_unit.c:171: for (i = 0; i < 8; i++) {
      00025C 7D 00            [12]  791 	mov	r5,#0x00
      00025E                        792 00106$:
                                    793 ;	temperature_control_unit.c:172: i2c_scl_write(sfr_address, 1);
      00025E 75 43 01         [24]  794 	mov	_i2c_scl_write_PARM_2,#0x01
      000261 8F 82            [24]  795 	mov	dpl,r7
      000263 C0 07            [24]  796 	push	ar7
      000265 C0 06            [24]  797 	push	ar6
      000267 C0 05            [24]  798 	push	ar5
      000269 12 01 42         [24]  799 	lcall	_i2c_scl_write
      00026C D0 05            [24]  800 	pop	ar5
      00026E D0 06            [24]  801 	pop	ar6
      000270 D0 07            [24]  802 	pop	ar7
                                    803 ;	temperature_control_unit.c:173: if(i2c_sda_read(sfr_address))
      000272 8F 82            [24]  804 	mov	dpl,r7
      000274 C0 07            [24]  805 	push	ar7
      000276 C0 06            [24]  806 	push	ar6
      000278 C0 05            [24]  807 	push	ar5
      00027A 12 01 25         [24]  808 	lcall	_i2c_sda_read
      00027D E5 82            [12]  809 	mov	a,dpl
      00027F D0 05            [24]  810 	pop	ar5
      000281 D0 06            [24]  811 	pop	ar6
      000283 D0 07            [24]  812 	pop	ar7
      000285 60 03            [24]  813 	jz	00102$
                                    814 ;	temperature_control_unit.c:174: received |= 1;
      000287 43 06 01         [24]  815 	orl	ar6,#0x01
      00028A                        816 00102$:
                                    817 ;	temperature_control_unit.c:175: if(i < 7)
      00028A BD 07 00         [24]  818 	cjne	r5,#0x07,00124$
      00028D                        819 00124$:
      00028D 50 03            [24]  820 	jnc	00104$
                                    821 ;	temperature_control_unit.c:176: received <<= 1;
      00028F EE               [12]  822 	mov	a,r6
      000290 2E               [12]  823 	add	a,r6
      000291 FE               [12]  824 	mov	r6,a
      000292                        825 00104$:
                                    826 ;	temperature_control_unit.c:177: i2c_scl_write(sfr_address, 0);
      000292 75 43 00         [24]  827 	mov	_i2c_scl_write_PARM_2,#0x00
      000295 8F 82            [24]  828 	mov	dpl,r7
      000297 C0 07            [24]  829 	push	ar7
      000299 C0 06            [24]  830 	push	ar6
      00029B C0 05            [24]  831 	push	ar5
      00029D 12 01 42         [24]  832 	lcall	_i2c_scl_write
      0002A0 D0 05            [24]  833 	pop	ar5
      0002A2 D0 06            [24]  834 	pop	ar6
      0002A4 D0 07            [24]  835 	pop	ar7
                                    836 ;	temperature_control_unit.c:171: for (i = 0; i < 8; i++) {
      0002A6 0D               [12]  837 	inc	r5
      0002A7 BD 08 00         [24]  838 	cjne	r5,#0x08,00126$
      0002AA                        839 00126$:
      0002AA 40 B2            [24]  840 	jc	00106$
                                    841 ;	temperature_control_unit.c:179: return received;
      0002AC 8E 82            [24]  842 	mov	dpl,r6
      0002AE 22               [24]  843 	ret
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'read_temp_sensor'
                                    846 ;------------------------------------------------------------
                                    847 ;address_byte              Allocated to registers 
                                    848 ;millisecond               Allocated to registers 
                                    849 ;temperature               Allocated to registers r4 r5 r6 r7 
                                    850 ;slope                     Allocated with name '_read_temp_sensor_slope_1_63'
                                    851 ;count_remaining           Allocated with name '_read_temp_sensor_count_remaining_1_63'
                                    852 ;------------------------------------------------------------
                                    853 ;	temperature_control_unit.c:190: float read_temp_sensor(void)
                                    854 ;	-----------------------------------------
                                    855 ;	 function read_temp_sensor
                                    856 ;	-----------------------------------------
      0002AF                        857 _read_temp_sensor:
                                    858 ;	temperature_control_unit.c:206: write_temp_sensor_command(START_TEMP_SENSOR_CONVERSION);
      0002AF 75 82 EE         [24]  859 	mov	dpl,#0xEE
      0002B2 12 04 7F         [24]  860 	lcall	_write_temp_sensor_command
                                    861 ;	temperature_control_unit.c:207: i2c_stop(TEMP_SENSOR_SFR);
      0002B5 75 82 B0         [24]  862 	mov	dpl,#0xB0
      0002B8 12 01 97         [24]  863 	lcall	_i2c_stop
                                    864 ;	temperature_control_unit.c:210: delay(1000*millisecond);//multiplication... this wait  maaay be (read: probably will be) longer than 1000ms
      0002BB 90 42 40         [24]  865 	mov	dptr,#0x4240
      0002BE 75 F0 0F         [24]  866 	mov	b,#0x0F
      0002C1 E4               [12]  867 	clr	a
      0002C2 12 00 C7         [24]  868 	lcall	_delay
                                    869 ;	temperature_control_unit.c:212: write_temp_sensor_command(READ_TEMPERATURE);
      0002C5 75 82 AA         [24]  870 	mov	dpl,#0xAA
      0002C8 12 04 7F         [24]  871 	lcall	_write_temp_sensor_command
                                    872 ;	temperature_control_unit.c:215: i2c_start(TEMP_SENSOR_SFR);
      0002CB 75 82 B0         [24]  873 	mov	dpl,#0xB0
      0002CE 12 01 5F         [24]  874 	lcall	_i2c_start
                                    875 ;	temperature_control_unit.c:216: i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      0002D1 75 44 91         [24]  876 	mov	_i2c_send_byte_PARM_2,#0x91
      0002D4 75 82 B0         [24]  877 	mov	dpl,#0xB0
      0002D7 12 01 C3         [24]  878 	lcall	_i2c_send_byte
                                    879 ;	temperature_control_unit.c:217: temperature = i2c_read_byte(TEMP_SENSOR_SFR);
      0002DA 75 82 B0         [24]  880 	mov	dpl,#0xB0
      0002DD 12 02 58         [24]  881 	lcall	_i2c_read_byte
      0002E0 12 0E 07         [24]  882 	lcall	___uchar2fs
      0002E3 AC 82            [24]  883 	mov	r4,dpl
      0002E5 AD 83            [24]  884 	mov	r5,dph
      0002E7 AE F0            [24]  885 	mov	r6,b
      0002E9 FF               [12]  886 	mov	r7,a
                                    887 ;	temperature_control_unit.c:220: i2c_read_byte(TEMP_SENSOR_SFR);
      0002EA 75 82 B0         [24]  888 	mov	dpl,#0xB0
      0002ED C0 07            [24]  889 	push	ar7
      0002EF C0 06            [24]  890 	push	ar6
      0002F1 C0 05            [24]  891 	push	ar5
      0002F3 C0 04            [24]  892 	push	ar4
      0002F5 12 02 58         [24]  893 	lcall	_i2c_read_byte
                                    894 ;	temperature_control_unit.c:221: i2c_stop(TEMP_SENSOR_SFR);
      0002F8 75 82 B0         [24]  895 	mov	dpl,#0xB0
      0002FB 12 01 97         [24]  896 	lcall	_i2c_stop
                                    897 ;	temperature_control_unit.c:223: write_temp_sensor_command(READ_COUNT_REMAIN);
      0002FE 75 82 A8         [24]  898 	mov	dpl,#0xA8
      000301 12 04 7F         [24]  899 	lcall	_write_temp_sensor_command
                                    900 ;	temperature_control_unit.c:224: i2c_start(TEMP_SENSOR_SFR);
      000304 75 82 B0         [24]  901 	mov	dpl,#0xB0
      000307 12 01 5F         [24]  902 	lcall	_i2c_start
                                    903 ;	temperature_control_unit.c:225: i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      00030A 75 44 91         [24]  904 	mov	_i2c_send_byte_PARM_2,#0x91
      00030D 75 82 B0         [24]  905 	mov	dpl,#0xB0
      000310 12 01 C3         [24]  906 	lcall	_i2c_send_byte
                                    907 ;	temperature_control_unit.c:226: count_remaining = i2c_read_byte(TEMP_SENSOR_SFR);
      000313 75 82 B0         [24]  908 	mov	dpl,#0xB0
      000316 12 02 58         [24]  909 	lcall	_i2c_read_byte
      000319 12 0E 07         [24]  910 	lcall	___uchar2fs
      00031C 85 82 49         [24]  911 	mov	_read_temp_sensor_count_remaining_1_63,dpl
      00031F 85 83 4A         [24]  912 	mov	(_read_temp_sensor_count_remaining_1_63 + 1),dph
      000322 85 F0 4B         [24]  913 	mov	(_read_temp_sensor_count_remaining_1_63 + 2),b
      000325 F5 4C            [12]  914 	mov	(_read_temp_sensor_count_remaining_1_63 + 3),a
                                    915 ;	temperature_control_unit.c:227: i2c_stop(TEMP_SENSOR_SFR);
      000327 75 82 B0         [24]  916 	mov	dpl,#0xB0
      00032A 12 01 97         [24]  917 	lcall	_i2c_stop
                                    918 ;	temperature_control_unit.c:229: write_temp_sensor_command(READ_SLOPE);
      00032D 75 82 A9         [24]  919 	mov	dpl,#0xA9
      000330 12 04 7F         [24]  920 	lcall	_write_temp_sensor_command
                                    921 ;	temperature_control_unit.c:230: i2c_start(TEMP_SENSOR_SFR);
      000333 75 82 B0         [24]  922 	mov	dpl,#0xB0
      000336 12 01 5F         [24]  923 	lcall	_i2c_start
                                    924 ;	temperature_control_unit.c:231: i2c_send_byte(TEMP_SENSOR_SFR, address_byte);
      000339 75 44 91         [24]  925 	mov	_i2c_send_byte_PARM_2,#0x91
      00033C 75 82 B0         [24]  926 	mov	dpl,#0xB0
      00033F 12 01 C3         [24]  927 	lcall	_i2c_send_byte
                                    928 ;	temperature_control_unit.c:232: slope = i2c_read_byte(TEMP_SENSOR_SFR);
      000342 75 82 B0         [24]  929 	mov	dpl,#0xB0
      000345 12 02 58         [24]  930 	lcall	_i2c_read_byte
      000348 12 0E 07         [24]  931 	lcall	___uchar2fs
      00034B 85 82 45         [24]  932 	mov	_read_temp_sensor_slope_1_63,dpl
      00034E 85 83 46         [24]  933 	mov	(_read_temp_sensor_slope_1_63 + 1),dph
      000351 85 F0 47         [24]  934 	mov	(_read_temp_sensor_slope_1_63 + 2),b
      000354 F5 48            [12]  935 	mov	(_read_temp_sensor_slope_1_63 + 3),a
                                    936 ;	temperature_control_unit.c:233: i2c_stop(TEMP_SENSOR_SFR);
      000356 75 82 B0         [24]  937 	mov	dpl,#0xB0
      000359 12 01 97         [24]  938 	lcall	_i2c_stop
                                    939 ;	temperature_control_unit.c:237: temperature = (float) (temperature - (0.25 + (slope - count_remaining) / slope));
      00035C C0 49            [24]  940 	push	_read_temp_sensor_count_remaining_1_63
      00035E C0 4A            [24]  941 	push	(_read_temp_sensor_count_remaining_1_63 + 1)
      000360 C0 4B            [24]  942 	push	(_read_temp_sensor_count_remaining_1_63 + 2)
      000362 C0 4C            [24]  943 	push	(_read_temp_sensor_count_remaining_1_63 + 3)
      000364 85 45 82         [24]  944 	mov	dpl,_read_temp_sensor_slope_1_63
      000367 85 46 83         [24]  945 	mov	dph,(_read_temp_sensor_slope_1_63 + 1)
      00036A 85 47 F0         [24]  946 	mov	b,(_read_temp_sensor_slope_1_63 + 2)
      00036D E5 48            [12]  947 	mov	a,(_read_temp_sensor_slope_1_63 + 3)
      00036F 12 09 6E         [24]  948 	lcall	___fssub
      000372 A8 82            [24]  949 	mov	r0,dpl
      000374 A9 83            [24]  950 	mov	r1,dph
      000376 AA F0            [24]  951 	mov	r2,b
      000378 FB               [12]  952 	mov	r3,a
      000379 E5 81            [12]  953 	mov	a,sp
      00037B 24 FC            [12]  954 	add	a,#0xfc
      00037D F5 81            [12]  955 	mov	sp,a
      00037F C0 45            [24]  956 	push	_read_temp_sensor_slope_1_63
      000381 C0 46            [24]  957 	push	(_read_temp_sensor_slope_1_63 + 1)
      000383 C0 47            [24]  958 	push	(_read_temp_sensor_slope_1_63 + 2)
      000385 C0 48            [24]  959 	push	(_read_temp_sensor_slope_1_63 + 3)
      000387 88 82            [24]  960 	mov	dpl,r0
      000389 89 83            [24]  961 	mov	dph,r1
      00038B 8A F0            [24]  962 	mov	b,r2
      00038D EB               [12]  963 	mov	a,r3
      00038E 12 0D 44         [24]  964 	lcall	___fsdiv
      000391 A8 82            [24]  965 	mov	r0,dpl
      000393 A9 83            [24]  966 	mov	r1,dph
      000395 AA F0            [24]  967 	mov	r2,b
      000397 FB               [12]  968 	mov	r3,a
      000398 E5 81            [12]  969 	mov	a,sp
      00039A 24 FC            [12]  970 	add	a,#0xfc
      00039C F5 81            [12]  971 	mov	sp,a
      00039E E4               [12]  972 	clr	a
      00039F C0 E0            [24]  973 	push	acc
      0003A1 C0 E0            [24]  974 	push	acc
      0003A3 74 80            [12]  975 	mov	a,#0x80
      0003A5 C0 E0            [24]  976 	push	acc
      0003A7 74 3E            [12]  977 	mov	a,#0x3E
      0003A9 C0 E0            [24]  978 	push	acc
      0003AB 88 82            [24]  979 	mov	dpl,r0
      0003AD 89 83            [24]  980 	mov	dph,r1
      0003AF 8A F0            [24]  981 	mov	b,r2
      0003B1 EB               [12]  982 	mov	a,r3
      0003B2 12 0B CF         [24]  983 	lcall	___fsadd
      0003B5 A8 82            [24]  984 	mov	r0,dpl
      0003B7 A9 83            [24]  985 	mov	r1,dph
      0003B9 AA F0            [24]  986 	mov	r2,b
      0003BB FB               [12]  987 	mov	r3,a
      0003BC E5 81            [12]  988 	mov	a,sp
      0003BE 24 FC            [12]  989 	add	a,#0xfc
      0003C0 F5 81            [12]  990 	mov	sp,a
      0003C2 D0 04            [24]  991 	pop	ar4
      0003C4 D0 05            [24]  992 	pop	ar5
      0003C6 D0 06            [24]  993 	pop	ar6
      0003C8 D0 07            [24]  994 	pop	ar7
      0003CA C0 00            [24]  995 	push	ar0
      0003CC C0 01            [24]  996 	push	ar1
      0003CE C0 02            [24]  997 	push	ar2
      0003D0 C0 03            [24]  998 	push	ar3
      0003D2 8C 82            [24]  999 	mov	dpl,r4
      0003D4 8D 83            [24] 1000 	mov	dph,r5
      0003D6 8E F0            [24] 1001 	mov	b,r6
      0003D8 EF               [12] 1002 	mov	a,r7
      0003D9 12 09 6E         [24] 1003 	lcall	___fssub
      0003DC AC 82            [24] 1004 	mov	r4,dpl
      0003DE AD 83            [24] 1005 	mov	r5,dph
      0003E0 AE F0            [24] 1006 	mov	r6,b
      0003E2 FF               [12] 1007 	mov	r7,a
      0003E3 E5 81            [12] 1008 	mov	a,sp
      0003E5 24 FC            [12] 1009 	add	a,#0xfc
      0003E7 F5 81            [12] 1010 	mov	sp,a
                                   1011 ;	temperature_control_unit.c:247: return temperature;
      0003E9 8C 82            [24] 1012 	mov	dpl,r4
      0003EB 8D 83            [24] 1013 	mov	dph,r5
      0003ED 8E F0            [24] 1014 	mov	b,r6
      0003EF EF               [12] 1015 	mov	a,r7
      0003F0 22               [24] 1016 	ret
                                   1017 ;------------------------------------------------------------
                                   1018 ;Allocation info for local variables in function 'clear_display_buffer'
                                   1019 ;------------------------------------------------------------
                                   1020 ;i                         Allocated to registers r6 r7 
                                   1021 ;------------------------------------------------------------
                                   1022 ;	temperature_control_unit.c:250: void clear_display_buffer(void)
                                   1023 ;	-----------------------------------------
                                   1024 ;	 function clear_display_buffer
                                   1025 ;	-----------------------------------------
      0003F1                       1026 _clear_display_buffer:
                                   1027 ;	temperature_control_unit.c:253: for (i = 0; i < DISPLAY_BUFFER_SIZE; i++)
      0003F1 7E 00            [12] 1028 	mov	r6,#0x00
      0003F3 7F 00            [12] 1029 	mov	r7,#0x00
      0003F5                       1030 00102$:
                                   1031 ;	temperature_control_unit.c:255: display_buffer[i] = 0x00;
      0003F5 EE               [12] 1032 	mov	a,r6
      0003F6 24 31            [12] 1033 	add	a,#_display_buffer
      0003F8 F8               [12] 1034 	mov	r0,a
      0003F9 76 00            [12] 1035 	mov	@r0,#0x00
                                   1036 ;	temperature_control_unit.c:253: for (i = 0; i < DISPLAY_BUFFER_SIZE; i++)
      0003FB 0E               [12] 1037 	inc	r6
      0003FC BE 00 01         [24] 1038 	cjne	r6,#0x00,00110$
      0003FF 0F               [12] 1039 	inc	r7
      000400                       1040 00110$:
      000400 C3               [12] 1041 	clr	c
      000401 EE               [12] 1042 	mov	a,r6
      000402 94 0A            [12] 1043 	subb	a,#0x0A
      000404 EF               [12] 1044 	mov	a,r7
      000405 64 80            [12] 1045 	xrl	a,#0x80
      000407 94 80            [12] 1046 	subb	a,#0x80
      000409 40 EA            [24] 1047 	jc	00102$
      00040B 22               [24] 1048 	ret
                                   1049 ;------------------------------------------------------------
                                   1050 ;Allocation info for local variables in function 'write_to_display'
                                   1051 ;------------------------------------------------------------
                                   1052 ;address                   Allocated to registers 
                                   1053 ;write_bit                 Allocated to registers 
                                   1054 ;address_with_write        Allocated to registers 
                                   1055 ;i                         Allocated to registers r7 
                                   1056 ;------------------------------------------------------------
                                   1057 ;	temperature_control_unit.c:259: void write_to_display(void)
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function write_to_display
                                   1060 ;	-----------------------------------------
      00040C                       1061 _write_to_display:
                                   1062 ;	temperature_control_unit.c:267: i2c_start(DISPLAY_SFR);
      00040C 75 82 A0         [24] 1063 	mov	dpl,#0xA0
      00040F 12 01 5F         [24] 1064 	lcall	_i2c_start
                                   1065 ;	temperature_control_unit.c:268: i2c_send_byte(DISPLAY_SFR, address_with_write);
      000412 75 44 E0         [24] 1066 	mov	_i2c_send_byte_PARM_2,#0xE0
      000415 75 82 A0         [24] 1067 	mov	dpl,#0xA0
      000418 12 01 C3         [24] 1068 	lcall	_i2c_send_byte
                                   1069 ;	temperature_control_unit.c:278: i2c_send_byte(DISPLAY_SFR, 0x00); //0x00 is the starting address of the 7-set disp
      00041B 75 44 00         [24] 1070 	mov	_i2c_send_byte_PARM_2,#0x00
      00041E 75 82 A0         [24] 1071 	mov	dpl,#0xA0
      000421 12 01 C3         [24] 1072 	lcall	_i2c_send_byte
                                   1073 ;	temperature_control_unit.c:279: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      000424 7F 00            [12] 1074 	mov	r7,#0x00
      000426                       1075 00102$:
                                   1076 ;	temperature_control_unit.c:280: i2c_send_byte(DISPLAY_SFR, display_buffer[i]);
      000426 EF               [12] 1077 	mov	a,r7
      000427 24 31            [12] 1078 	add	a,#_display_buffer
      000429 F9               [12] 1079 	mov	r1,a
      00042A 87 44            [24] 1080 	mov	_i2c_send_byte_PARM_2,@r1
      00042C 75 82 A0         [24] 1081 	mov	dpl,#0xA0
      00042F C0 07            [24] 1082 	push	ar7
      000431 12 01 C3         [24] 1083 	lcall	_i2c_send_byte
      000434 D0 07            [24] 1084 	pop	ar7
                                   1085 ;	temperature_control_unit.c:279: for (i=0; i<DISPLAY_BUFFER_SIZE; i++) {
      000436 0F               [12] 1086 	inc	r7
      000437 BF 0A 00         [24] 1087 	cjne	r7,#0x0A,00113$
      00043A                       1088 00113$:
      00043A 40 EA            [24] 1089 	jc	00102$
                                   1090 ;	temperature_control_unit.c:282: i2c_stop(DISPLAY_SFR);
      00043C 75 82 A0         [24] 1091 	mov	dpl,#0xA0
      00043F 02 01 97         [24] 1092 	ljmp	_i2c_stop
                                   1093 ;------------------------------------------------------------
                                   1094 ;Allocation info for local variables in function 'write_display_command'
                                   1095 ;------------------------------------------------------------
                                   1096 ;command_byte              Allocated to registers r7 
                                   1097 ;address                   Allocated to registers 
                                   1098 ;write_bit                 Allocated to registers 
                                   1099 ;address_with_write        Allocated to registers 
                                   1100 ;------------------------------------------------------------
                                   1101 ;	temperature_control_unit.c:286: void write_display_command(unsigned char command_byte)
                                   1102 ;	-----------------------------------------
                                   1103 ;	 function write_display_command
                                   1104 ;	-----------------------------------------
      000442                       1105 _write_display_command:
      000442 AF 82            [24] 1106 	mov	r7,dpl
                                   1107 ;	temperature_control_unit.c:297: i2c_start(DISPLAY_SFR);
      000444 75 82 A0         [24] 1108 	mov	dpl,#0xA0
      000447 C0 07            [24] 1109 	push	ar7
      000449 12 01 5F         [24] 1110 	lcall	_i2c_start
                                   1111 ;	temperature_control_unit.c:298: i2c_send_byte(DISPLAY_SFR, address_with_write);
      00044C 75 44 E0         [24] 1112 	mov	_i2c_send_byte_PARM_2,#0xE0
      00044F 75 82 A0         [24] 1113 	mov	dpl,#0xA0
      000452 12 01 C3         [24] 1114 	lcall	_i2c_send_byte
      000455 D0 07            [24] 1115 	pop	ar7
                                   1116 ;	temperature_control_unit.c:304: i2c_send_byte(DISPLAY_SFR, command_byte);
      000457 8F 44            [24] 1117 	mov	_i2c_send_byte_PARM_2,r7
      000459 75 82 A0         [24] 1118 	mov	dpl,#0xA0
      00045C 12 01 C3         [24] 1119 	lcall	_i2c_send_byte
                                   1120 ;	temperature_control_unit.c:305: i2c_stop(DISPLAY_SFR);
      00045F 75 82 A0         [24] 1121 	mov	dpl,#0xA0
      000462 02 01 97         [24] 1122 	ljmp	_i2c_stop
                                   1123 ;------------------------------------------------------------
                                   1124 ;Allocation info for local variables in function 'write_temp_sensor_config'
                                   1125 ;------------------------------------------------------------
                                   1126 ;config                    Allocated to registers r7 
                                   1127 ;------------------------------------------------------------
                                   1128 ;	temperature_control_unit.c:308: void write_temp_sensor_config(unsigned char config)
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function write_temp_sensor_config
                                   1131 ;	-----------------------------------------
      000465                       1132 _write_temp_sensor_config:
      000465 AF 82            [24] 1133 	mov	r7,dpl
                                   1134 ;	temperature_control_unit.c:310: write_temp_sensor_command(ACCESS_TEMP_SENSOR_CONFIG);
      000467 75 82 AC         [24] 1135 	mov	dpl,#0xAC
      00046A C0 07            [24] 1136 	push	ar7
      00046C 12 04 7F         [24] 1137 	lcall	_write_temp_sensor_command
      00046F D0 07            [24] 1138 	pop	ar7
                                   1139 ;	temperature_control_unit.c:311: i2c_send_byte(TEMP_SENSOR_SFR, config);
      000471 8F 44            [24] 1140 	mov	_i2c_send_byte_PARM_2,r7
      000473 75 82 B0         [24] 1141 	mov	dpl,#0xB0
      000476 12 01 C3         [24] 1142 	lcall	_i2c_send_byte
                                   1143 ;	temperature_control_unit.c:312: i2c_stop(TEMP_SENSOR_SFR);
      000479 75 82 B0         [24] 1144 	mov	dpl,#0xB0
      00047C 02 01 97         [24] 1145 	ljmp	_i2c_stop
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'write_temp_sensor_command'
                                   1148 ;------------------------------------------------------------
                                   1149 ;command_byte              Allocated to registers r7 
                                   1150 ;control_byte              Allocated to registers 
                                   1151 ;write_bit                 Allocated to registers 
                                   1152 ;address_with_write        Allocated to registers 
                                   1153 ;------------------------------------------------------------
                                   1154 ;	temperature_control_unit.c:316: void write_temp_sensor_command(unsigned char command_byte)
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function write_temp_sensor_command
                                   1157 ;	-----------------------------------------
      00047F                       1158 _write_temp_sensor_command:
      00047F AF 82            [24] 1159 	mov	r7,dpl
                                   1160 ;	temperature_control_unit.c:348: i2c_start(TEMP_SENSOR_SFR);
      000481 75 82 B0         [24] 1161 	mov	dpl,#0xB0
      000484 C0 07            [24] 1162 	push	ar7
      000486 12 01 5F         [24] 1163 	lcall	_i2c_start
                                   1164 ;	temperature_control_unit.c:349: i2c_send_byte(TEMP_SENSOR_SFR, address_with_write);
      000489 75 44 90         [24] 1165 	mov	_i2c_send_byte_PARM_2,#0x90
      00048C 75 82 B0         [24] 1166 	mov	dpl,#0xB0
      00048F 12 01 C3         [24] 1167 	lcall	_i2c_send_byte
      000492 D0 07            [24] 1168 	pop	ar7
                                   1169 ;	temperature_control_unit.c:350: i2c_send_byte(TEMP_SENSOR_SFR, command_byte);
      000494 8F 44            [24] 1170 	mov	_i2c_send_byte_PARM_2,r7
      000496 75 82 B0         [24] 1171 	mov	dpl,#0xB0
      000499 02 01 C3         [24] 1172 	ljmp	_i2c_send_byte
                                   1173 ;------------------------------------------------------------
                                   1174 ;Allocation info for local variables in function 'update_displayed_temperature'
                                   1175 ;------------------------------------------------------------
                                   1176 ;temperature               Allocated with name '_update_displayed_temperature_temperature_1_76'
                                   1177 ;first_digit               Allocated with name '_update_displayed_temperature_sloc2_1_0'
                                   1178 ;second_digit              Allocated with name '_update_displayed_temperature_sloc1_1_0'
                                   1179 ;third_digit               Allocated to registers r7 
                                   1180 ;fourth_digit              Allocated to registers r4 
                                   1181 ;temp_fraction_part        Allocated with name '_update_displayed_temperature_temp_fraction_part_1_77'
                                   1182 ;temp_integer_part         Allocated with name '_update_displayed_temperature_temp_integer_part_1_77'
                                   1183 ;sloc0                     Allocated with name '_update_displayed_temperature_sloc0_1_0'
                                   1184 ;sloc1                     Allocated with name '_update_displayed_temperature_sloc1_1_0'
                                   1185 ;sloc2                     Allocated with name '_update_displayed_temperature_sloc2_1_0'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	temperature_control_unit.c:353: void update_displayed_temperature(float temperature)
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function update_displayed_temperature
                                   1190 ;	-----------------------------------------
      00049C                       1191 _update_displayed_temperature:
      00049C 85 82 4D         [24] 1192 	mov	_update_displayed_temperature_temperature_1_76,dpl
      00049F 85 83 4E         [24] 1193 	mov	(_update_displayed_temperature_temperature_1_76 + 1),dph
      0004A2 85 F0 4F         [24] 1194 	mov	(_update_displayed_temperature_temperature_1_76 + 2),b
      0004A5 F5 50            [12] 1195 	mov	(_update_displayed_temperature_temperature_1_76 + 3),a
                                   1196 ;	temperature_control_unit.c:356: float temp_fraction_part, temp_integer_part= 0.0;
      0004A7 E4               [12] 1197 	clr	a
      0004A8 F5 55            [12] 1198 	mov	_update_displayed_temperature_temp_integer_part_1_77,a
      0004AA F5 56            [12] 1199 	mov	(_update_displayed_temperature_temp_integer_part_1_77 + 1),a
      0004AC F5 57            [12] 1200 	mov	(_update_displayed_temperature_temp_integer_part_1_77 + 2),a
      0004AE F5 58            [12] 1201 	mov	(_update_displayed_temperature_temp_integer_part_1_77 + 3),a
                                   1202 ;	temperature_control_unit.c:358: clear_display_buffer();
      0004B0 12 03 F1         [24] 1203 	lcall	_clear_display_buffer
                                   1204 ;	temperature_control_unit.c:360: temp_fraction_part = modff(temperature, &temp_integer_part);
      0004B3 75 08 55         [24] 1205 	mov	_modff_PARM_2,#_update_displayed_temperature_temp_integer_part_1_77
      0004B6 75 09 00         [24] 1206 	mov	(_modff_PARM_2 + 1),#0x00
      0004B9 75 0A 40         [24] 1207 	mov	(_modff_PARM_2 + 2),#0x40
      0004BC 85 4D 82         [24] 1208 	mov	dpl,_update_displayed_temperature_temperature_1_76
      0004BF 85 4E 83         [24] 1209 	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
      0004C2 85 4F F0         [24] 1210 	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
      0004C5 E5 50            [12] 1211 	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
      0004C7 12 0A 7D         [24] 1212 	lcall	_modff
      0004CA 85 82 51         [24] 1213 	mov	_update_displayed_temperature_temp_fraction_part_1_77,dpl
      0004CD 85 83 52         [24] 1214 	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 1),dph
      0004D0 85 F0 53         [24] 1215 	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 2),b
      0004D3 F5 54            [12] 1216 	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 3),a
                                   1217 ;	temperature_control_unit.c:361: temp_fraction_part *= 100;
      0004D5 C0 51            [24] 1218 	push	_update_displayed_temperature_temp_fraction_part_1_77
      0004D7 C0 52            [24] 1219 	push	(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
      0004D9 C0 53            [24] 1220 	push	(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
      0004DB C0 54            [24] 1221 	push	(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
      0004DD 90 00 00         [24] 1222 	mov	dptr,#0x0000
      0004E0 75 F0 C8         [24] 1223 	mov	b,#0xC8
      0004E3 74 42            [12] 1224 	mov	a,#0x42
      0004E5 12 09 79         [24] 1225 	lcall	___fsmul
      0004E8 85 82 51         [24] 1226 	mov	_update_displayed_temperature_temp_fraction_part_1_77,dpl
      0004EB 85 83 52         [24] 1227 	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 1),dph
      0004EE 85 F0 53         [24] 1228 	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 2),b
      0004F1 F5 54            [12] 1229 	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 3),a
      0004F3 E5 81            [12] 1230 	mov	a,sp
      0004F5 24 FC            [12] 1231 	add	a,#0xfc
      0004F7 F5 81            [12] 1232 	mov	sp,a
                                   1233 ;	temperature_control_unit.c:363: if (temperature >= 100) //I sure hope not
      0004F9 E4               [12] 1234 	clr	a
      0004FA C0 E0            [24] 1235 	push	acc
      0004FC C0 E0            [24] 1236 	push	acc
      0004FE 74 C8            [12] 1237 	mov	a,#0xC8
      000500 C0 E0            [24] 1238 	push	acc
      000502 74 42            [12] 1239 	mov	a,#0x42
      000504 C0 E0            [24] 1240 	push	acc
      000506 85 4D 82         [24] 1241 	mov	dpl,_update_displayed_temperature_temperature_1_76
      000509 85 4E 83         [24] 1242 	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
      00050C 85 4F F0         [24] 1243 	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
      00050F E5 50            [12] 1244 	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
      000511 12 0B 52         [24] 1245 	lcall	___fslt
      000514 AD 82            [24] 1246 	mov	r5,dpl
      000516 E5 81            [12] 1247 	mov	a,sp
      000518 24 FC            [12] 1248 	add	a,#0xfc
      00051A F5 81            [12] 1249 	mov	sp,a
      00051C ED               [12] 1250 	mov	a,r5
      00051D 70 4C            [24] 1251 	jnz	00108$
                                   1252 ;	temperature_control_unit.c:365: first_digit  = number_table[1];
      00051F 85 22 5C         [24] 1253 	mov	_update_displayed_temperature_sloc2_1_0,(_number_table + 0x0001)
                                   1254 ;	temperature_control_unit.c:366: second_digit = number_table[(int)temp_integer_part % 10];
      000522 85 55 82         [24] 1255 	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
      000525 85 56 83         [24] 1256 	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
      000528 85 57 F0         [24] 1257 	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
      00052B E5 58            [12] 1258 	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
      00052D 12 0C 9A         [24] 1259 	lcall	___fs2sint
      000530 75 0F 0A         [24] 1260 	mov	__modsint_PARM_2,#0x0A
      000533 75 10 00         [24] 1261 	mov	(__modsint_PARM_2 + 1),#0x00
      000536 12 0E 12         [24] 1262 	lcall	__modsint
      000539 E5 82            [12] 1263 	mov	a,dpl
      00053B 24 21            [12] 1264 	add	a,#_number_table
      00053D F9               [12] 1265 	mov	r1,a
      00053E 87 07            [24] 1266 	mov	ar7,@r1
      000540 8F 5B            [24] 1267 	mov	_update_displayed_temperature_sloc1_1_0,r7
                                   1268 ;	temperature_control_unit.c:367: third_digit  = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
      000542 43 07 80         [24] 1269 	orl	ar7,#0x80
                                   1270 ;	temperature_control_unit.c:368: fourth_digit = number_table[(int)temp_fraction_part/ 10];
      000545 85 51 82         [24] 1271 	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
      000548 85 52 83         [24] 1272 	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
      00054B 85 53 F0         [24] 1273 	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
      00054E E5 54            [12] 1274 	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
      000550 C0 07            [24] 1275 	push	ar7
      000552 12 0C 9A         [24] 1276 	lcall	___fs2sint
      000555 75 0F 0A         [24] 1277 	mov	__divsint_PARM_2,#0x0A
      000558 75 10 00         [24] 1278 	mov	(__divsint_PARM_2 + 1),#0x00
      00055B 12 0E 88         [24] 1279 	lcall	__divsint
      00055E AB 82            [24] 1280 	mov	r3,dpl
      000560 D0 07            [24] 1281 	pop	ar7
      000562 EB               [12] 1282 	mov	a,r3
      000563 24 21            [12] 1283 	add	a,#_number_table
      000565 F9               [12] 1284 	mov	r1,a
      000566 87 04            [24] 1285 	mov	ar4,@r1
      000568 02 07 16         [24] 1286 	ljmp	00109$
      00056B                       1287 00108$:
                                   1288 ;	temperature_control_unit.c:370: else if (temperature < 0) 
      00056B E4               [12] 1289 	clr	a
      00056C C0 E0            [24] 1290 	push	acc
      00056E C0 E0            [24] 1291 	push	acc
      000570 C0 E0            [24] 1292 	push	acc
      000572 C0 E0            [24] 1293 	push	acc
      000574 85 4D 82         [24] 1294 	mov	dpl,_update_displayed_temperature_temperature_1_76
      000577 85 4E 83         [24] 1295 	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
      00057A 85 4F F0         [24] 1296 	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
      00057D E5 50            [12] 1297 	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
      00057F 12 0B 52         [24] 1298 	lcall	___fslt
      000582 AB 82            [24] 1299 	mov	r3,dpl
      000584 E5 81            [12] 1300 	mov	a,sp
      000586 24 FC            [12] 1301 	add	a,#0xfc
      000588 F5 81            [12] 1302 	mov	sp,a
      00058A EB               [12] 1303 	mov	a,r3
      00058B 70 03            [24] 1304 	jnz	00122$
      00058D 02 06 91         [24] 1305 	ljmp	00105$
      000590                       1306 00122$:
                                   1307 ;	temperature_control_unit.c:373: temp_fraction_part*= -1;
      000590 E5 54            [12] 1308 	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
      000592 B2 E7            [12] 1309 	cpl	acc.7
      000594 F5 54            [12] 1310 	mov	(_update_displayed_temperature_temp_fraction_part_1_77 + 3),a
                                   1311 ;	temperature_control_unit.c:374: first_digit = HYPHEN_CHARACTER;
      000596 75 5C 40         [24] 1312 	mov	_update_displayed_temperature_sloc2_1_0,#0x40
                                   1313 ;	temperature_control_unit.c:375: if (temperature <= -10)
      000599 E4               [12] 1314 	clr	a
      00059A C0 E0            [24] 1315 	push	acc
      00059C C0 E0            [24] 1316 	push	acc
      00059E 74 20            [12] 1317 	mov	a,#0x20
      0005A0 C0 E0            [24] 1318 	push	acc
      0005A2 74 C1            [12] 1319 	mov	a,#0xC1
      0005A4 C0 E0            [24] 1320 	push	acc
      0005A6 85 4D 82         [24] 1321 	mov	dpl,_update_displayed_temperature_temperature_1_76
      0005A9 85 4E 83         [24] 1322 	mov	dph,(_update_displayed_temperature_temperature_1_76 + 1)
      0005AC 85 4F F0         [24] 1323 	mov	b,(_update_displayed_temperature_temperature_1_76 + 2)
      0005AF E5 50            [12] 1324 	mov	a,(_update_displayed_temperature_temperature_1_76 + 3)
      0005B1 12 0B 07         [24] 1325 	lcall	___fsgt
      0005B4 AB 82            [24] 1326 	mov	r3,dpl
      0005B6 E5 81            [12] 1327 	mov	a,sp
      0005B8 24 FC            [12] 1328 	add	a,#0xfc
      0005BA F5 81            [12] 1329 	mov	sp,a
      0005BC EB               [12] 1330 	mov	a,r3
      0005BD 70 66            [24] 1331 	jnz	00102$
                                   1332 ;	temperature_control_unit.c:377: second_digit = number_table[(int)temp_integer_part / 10];
      0005BF 85 55 82         [24] 1333 	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
      0005C2 85 56 83         [24] 1334 	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
      0005C5 85 57 F0         [24] 1335 	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
      0005C8 E5 58            [12] 1336 	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
      0005CA 12 0C 9A         [24] 1337 	lcall	___fs2sint
      0005CD 85 82 59         [24] 1338 	mov	_update_displayed_temperature_sloc0_1_0,dpl
      0005D0 85 83 5A         [24] 1339 	mov	(_update_displayed_temperature_sloc0_1_0 + 1),dph
      0005D3 75 0F 0A         [24] 1340 	mov	__divsint_PARM_2,#0x0A
      0005D6 75 10 00         [24] 1341 	mov	(__divsint_PARM_2 + 1),#0x00
      0005D9 12 0E 88         [24] 1342 	lcall	__divsint
      0005DC E5 82            [12] 1343 	mov	a,dpl
      0005DE 24 21            [12] 1344 	add	a,#_number_table
      0005E0 F9               [12] 1345 	mov	r1,a
      0005E1 87 5B            [24] 1346 	mov	_update_displayed_temperature_sloc1_1_0,@r1
                                   1347 ;	temperature_control_unit.c:378: third_digit  = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
      0005E3 75 0F 0A         [24] 1348 	mov	__modsint_PARM_2,#0x0A
      0005E6 75 10 00         [24] 1349 	mov	(__modsint_PARM_2 + 1),#0x00
      0005E9 85 59 82         [24] 1350 	mov	dpl,_update_displayed_temperature_sloc0_1_0
      0005EC 85 5A 83         [24] 1351 	mov	dph,(_update_displayed_temperature_sloc0_1_0 + 1)
      0005EF 12 0E 12         [24] 1352 	lcall	__modsint
      0005F2 E5 82            [12] 1353 	mov	a,dpl
      0005F4 24 21            [12] 1354 	add	a,#_number_table
      0005F6 F9               [12] 1355 	mov	r1,a
      0005F7 87 05            [24] 1356 	mov	ar5,@r1
      0005F9 74 80            [12] 1357 	mov	a,#0x80
      0005FB 4D               [12] 1358 	orl	a,r5
      0005FC FF               [12] 1359 	mov	r7,a
                                   1360 ;	temperature_control_unit.c:379: fourth_digit = number_table[(int)temp_fraction_part / 10];
      0005FD 85 51 82         [24] 1361 	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
      000600 85 52 83         [24] 1362 	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
      000603 85 53 F0         [24] 1363 	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
      000606 E5 54            [12] 1364 	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
      000608 C0 07            [24] 1365 	push	ar7
      00060A 12 0C 9A         [24] 1366 	lcall	___fs2sint
      00060D 75 0F 0A         [24] 1367 	mov	__divsint_PARM_2,#0x0A
      000610 75 10 00         [24] 1368 	mov	(__divsint_PARM_2 + 1),#0x00
      000613 12 0E 88         [24] 1369 	lcall	__divsint
      000616 AB 82            [24] 1370 	mov	r3,dpl
      000618 AD 83            [24] 1371 	mov	r5,dph
      00061A D0 07            [24] 1372 	pop	ar7
      00061C EB               [12] 1373 	mov	a,r3
      00061D 24 21            [12] 1374 	add	a,#_number_table
      00061F F9               [12] 1375 	mov	r1,a
      000620 87 04            [24] 1376 	mov	ar4,@r1
      000622 02 07 16         [24] 1377 	ljmp	00109$
      000625                       1378 00102$:
                                   1379 ;	temperature_control_unit.c:382: second_digit = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
      000625 85 55 82         [24] 1380 	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
      000628 85 56 83         [24] 1381 	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
      00062B 85 57 F0         [24] 1382 	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
      00062E E5 58            [12] 1383 	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
      000630 12 0C 9A         [24] 1384 	lcall	___fs2sint
      000633 75 0F 0A         [24] 1385 	mov	__modsint_PARM_2,#0x0A
      000636 75 10 00         [24] 1386 	mov	(__modsint_PARM_2 + 1),#0x00
      000639 12 0E 12         [24] 1387 	lcall	__modsint
      00063C E5 82            [12] 1388 	mov	a,dpl
      00063E 24 21            [12] 1389 	add	a,#_number_table
      000640 F9               [12] 1390 	mov	r1,a
      000641 87 03            [24] 1391 	mov	ar3,@r1
      000643 74 80            [12] 1392 	mov	a,#0x80
      000645 4B               [12] 1393 	orl	a,r3
      000646 F5 5B            [12] 1394 	mov	_update_displayed_temperature_sloc1_1_0,a
                                   1395 ;	temperature_control_unit.c:383: third_digit  = number_table[(int)temp_fraction_part / 10];
      000648 85 51 82         [24] 1396 	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
      00064B 85 52 83         [24] 1397 	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
      00064E 85 53 F0         [24] 1398 	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
      000651 E5 54            [12] 1399 	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
      000653 12 0C 9A         [24] 1400 	lcall	___fs2sint
      000656 AA 82            [24] 1401 	mov	r2,dpl
      000658 AB 83            [24] 1402 	mov	r3,dph
      00065A 75 0F 0A         [24] 1403 	mov	__divsint_PARM_2,#0x0A
      00065D 75 10 00         [24] 1404 	mov	(__divsint_PARM_2 + 1),#0x00
      000660 C0 03            [24] 1405 	push	ar3
      000662 C0 02            [24] 1406 	push	ar2
      000664 12 0E 88         [24] 1407 	lcall	__divsint
      000667 AD 82            [24] 1408 	mov	r5,dpl
      000669 D0 02            [24] 1409 	pop	ar2
      00066B D0 03            [24] 1410 	pop	ar3
      00066D ED               [12] 1411 	mov	a,r5
      00066E 24 21            [12] 1412 	add	a,#_number_table
      000670 F9               [12] 1413 	mov	r1,a
      000671 87 07            [24] 1414 	mov	ar7,@r1
                                   1415 ;	temperature_control_unit.c:384: fourth_digit = number_table[(int)temp_fraction_part % 10];
      000673 75 0F 0A         [24] 1416 	mov	__modsint_PARM_2,#0x0A
      000676 75 10 00         [24] 1417 	mov	(__modsint_PARM_2 + 1),#0x00
      000679 8A 82            [24] 1418 	mov	dpl,r2
      00067B 8B 83            [24] 1419 	mov	dph,r3
      00067D C0 07            [24] 1420 	push	ar7
      00067F 12 0E 12         [24] 1421 	lcall	__modsint
      000682 AD 82            [24] 1422 	mov	r5,dpl
      000684 AE 83            [24] 1423 	mov	r6,dph
      000686 D0 07            [24] 1424 	pop	ar7
      000688 ED               [12] 1425 	mov	a,r5
      000689 24 21            [12] 1426 	add	a,#_number_table
      00068B F9               [12] 1427 	mov	r1,a
      00068C 87 04            [24] 1428 	mov	ar4,@r1
      00068E 02 07 16         [24] 1429 	ljmp	00109$
      000691                       1430 00105$:
                                   1431 ;	temperature_control_unit.c:389: first_digit  = number_table[(int)temp_integer_part / 10];
      000691 85 55 82         [24] 1432 	mov	dpl,_update_displayed_temperature_temp_integer_part_1_77
      000694 85 56 83         [24] 1433 	mov	dph,(_update_displayed_temperature_temp_integer_part_1_77 + 1)
      000697 85 57 F0         [24] 1434 	mov	b,(_update_displayed_temperature_temp_integer_part_1_77 + 2)
      00069A E5 58            [12] 1435 	mov	a,(_update_displayed_temperature_temp_integer_part_1_77 + 3)
      00069C 12 0C 9A         [24] 1436 	lcall	___fs2sint
      00069F 85 82 59         [24] 1437 	mov	_update_displayed_temperature_sloc0_1_0,dpl
      0006A2 85 83 5A         [24] 1438 	mov	(_update_displayed_temperature_sloc0_1_0 + 1),dph
      0006A5 75 0F 0A         [24] 1439 	mov	__divsint_PARM_2,#0x0A
      0006A8 75 10 00         [24] 1440 	mov	(__divsint_PARM_2 + 1),#0x00
      0006AB 12 0E 88         [24] 1441 	lcall	__divsint
      0006AE E5 82            [12] 1442 	mov	a,dpl
      0006B0 24 21            [12] 1443 	add	a,#_number_table
      0006B2 F9               [12] 1444 	mov	r1,a
      0006B3 87 5C            [24] 1445 	mov	_update_displayed_temperature_sloc2_1_0,@r1
                                   1446 ;	temperature_control_unit.c:390: second_digit = number_table[(int)temp_integer_part % 10] | PERIOD_CHARACTER;
      0006B5 75 0F 0A         [24] 1447 	mov	__modsint_PARM_2,#0x0A
      0006B8 75 10 00         [24] 1448 	mov	(__modsint_PARM_2 + 1),#0x00
      0006BB 85 59 82         [24] 1449 	mov	dpl,_update_displayed_temperature_sloc0_1_0
      0006BE 85 5A 83         [24] 1450 	mov	dph,(_update_displayed_temperature_sloc0_1_0 + 1)
      0006C1 12 0E 12         [24] 1451 	lcall	__modsint
      0006C4 E5 82            [12] 1452 	mov	a,dpl
      0006C6 24 21            [12] 1453 	add	a,#_number_table
      0006C8 F9               [12] 1454 	mov	r1,a
      0006C9 87 06            [24] 1455 	mov	ar6,@r1
      0006CB 74 80            [12] 1456 	mov	a,#0x80
      0006CD 4E               [12] 1457 	orl	a,r6
      0006CE F5 5B            [12] 1458 	mov	_update_displayed_temperature_sloc1_1_0,a
                                   1459 ;	temperature_control_unit.c:391: third_digit  = number_table[(int)temp_fraction_part / 10];
      0006D0 85 51 82         [24] 1460 	mov	dpl,_update_displayed_temperature_temp_fraction_part_1_77
      0006D3 85 52 83         [24] 1461 	mov	dph,(_update_displayed_temperature_temp_fraction_part_1_77 + 1)
      0006D6 85 53 F0         [24] 1462 	mov	b,(_update_displayed_temperature_temp_fraction_part_1_77 + 2)
      0006D9 E5 54            [12] 1463 	mov	a,(_update_displayed_temperature_temp_fraction_part_1_77 + 3)
      0006DB 12 0C 9A         [24] 1464 	lcall	___fs2sint
      0006DE AB 82            [24] 1465 	mov	r3,dpl
      0006E0 AE 83            [24] 1466 	mov	r6,dph
      0006E2 75 0F 0A         [24] 1467 	mov	__divsint_PARM_2,#0x0A
      0006E5 75 10 00         [24] 1468 	mov	(__divsint_PARM_2 + 1),#0x00
      0006E8 C0 06            [24] 1469 	push	ar6
      0006EA C0 03            [24] 1470 	push	ar3
      0006EC 12 0E 88         [24] 1471 	lcall	__divsint
      0006EF AA 82            [24] 1472 	mov	r2,dpl
      0006F1 D0 03            [24] 1473 	pop	ar3
      0006F3 D0 06            [24] 1474 	pop	ar6
      0006F5 EA               [12] 1475 	mov	a,r2
      0006F6 24 21            [12] 1476 	add	a,#_number_table
      0006F8 F9               [12] 1477 	mov	r1,a
      0006F9 87 07            [24] 1478 	mov	ar7,@r1
                                   1479 ;	temperature_control_unit.c:392: fourth_digit = number_table[(int)temp_fraction_part % 10];
      0006FB 75 0F 0A         [24] 1480 	mov	__modsint_PARM_2,#0x0A
      0006FE 75 10 00         [24] 1481 	mov	(__modsint_PARM_2 + 1),#0x00
      000701 8B 82            [24] 1482 	mov	dpl,r3
      000703 8E 83            [24] 1483 	mov	dph,r6
      000705 C0 07            [24] 1484 	push	ar7
      000707 12 0E 12         [24] 1485 	lcall	__modsint
      00070A AD 82            [24] 1486 	mov	r5,dpl
      00070C AE 83            [24] 1487 	mov	r6,dph
      00070E D0 07            [24] 1488 	pop	ar7
      000710 ED               [12] 1489 	mov	a,r5
      000711 24 21            [12] 1490 	add	a,#_number_table
      000713 F9               [12] 1491 	mov	r1,a
      000714 87 04            [24] 1492 	mov	ar4,@r1
      000716                       1493 00109$:
                                   1494 ;	temperature_control_unit.c:395: display_buffer[DISPLAY_FIRST_DIGIT]  = first_digit;
      000716 85 5C 31         [24] 1495 	mov	_display_buffer,_update_displayed_temperature_sloc2_1_0
                                   1496 ;	temperature_control_unit.c:396: display_buffer[DISPLAY_SECOND_DIGIT] = second_digit;
      000719 85 5B 33         [24] 1497 	mov	(_display_buffer + 0x0002),_update_displayed_temperature_sloc1_1_0
                                   1498 ;	temperature_control_unit.c:397: display_buffer[DISPLAY_THIRD_DIGIT]  = third_digit;
      00071C 8F 37            [24] 1499 	mov	(_display_buffer + 0x0006),r7
                                   1500 ;	temperature_control_unit.c:398: display_buffer[DISPLAY_FOURTH_DIGIT] = fourth_digit;
      00071E 8C 39            [24] 1501 	mov	(_display_buffer + 0x0008),r4
      000720 22               [24] 1502 	ret
                                   1503 ;------------------------------------------------------------
                                   1504 ;Allocation info for local variables in function 'updated_displayed_setting_selection'
                                   1505 ;------------------------------------------------------------
                                   1506 ;selected_setting_mode     Allocated to registers r7 
                                   1507 ;------------------------------------------------------------
                                   1508 ;	temperature_control_unit.c:401: void updated_displayed_setting_selection(unsigned char selected_setting_mode)
                                   1509 ;	-----------------------------------------
                                   1510 ;	 function updated_displayed_setting_selection
                                   1511 ;	-----------------------------------------
      000721                       1512 _updated_displayed_setting_selection:
      000721 AF 82            [24] 1513 	mov	r7,dpl
                                   1514 ;	temperature_control_unit.c:403: clear_display_buffer();
      000723 C0 07            [24] 1515 	push	ar7
      000725 12 03 F1         [24] 1516 	lcall	_clear_display_buffer
      000728 D0 07            [24] 1517 	pop	ar7
                                   1518 ;	temperature_control_unit.c:405: switch(selected_setting_mode)
      00072A EF               [12] 1519 	mov	a,r7
      00072B 24 FA            [12] 1520 	add	a,#0xff - 0x05
      00072D 40 3E            [24] 1521 	jc	00106$
      00072F EF               [12] 1522 	mov	a,r7
      000730 2F               [12] 1523 	add	a,r7
      000731 2F               [12] 1524 	add	a,r7
      000732 90 07 36         [24] 1525 	mov	dptr,#00114$
      000735 73               [24] 1526 	jmp	@a+dptr
      000736                       1527 00114$:
      000736 02 07 6D         [24] 1528 	ljmp	00106$
      000739 02 07 48         [24] 1529 	ljmp	00101$
      00073C 02 07 4F         [24] 1530 	ljmp	00102$
      00073F 02 07 56         [24] 1531 	ljmp	00103$
      000742 02 07 5D         [24] 1532 	ljmp	00104$
      000745 02 07 67         [24] 1533 	ljmp	00105$
                                   1534 ;	temperature_control_unit.c:407: case MODE_CONFIGURE_TEMP_HIGH:
      000748                       1535 00101$:
                                   1536 ;	temperature_control_unit.c:408: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_H;
      000748 75 31 76         [24] 1537 	mov	_display_buffer,#0x76
                                   1538 ;	temperature_control_unit.c:409: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_I;
      00074B 75 33 06         [24] 1539 	mov	(_display_buffer + 0x0002),#0x06
                                   1540 ;	temperature_control_unit.c:410: break;
                                   1541 ;	temperature_control_unit.c:411: case MODE_CONFIGURE_TEMP_LOW:
      00074E 22               [24] 1542 	ret
      00074F                       1543 00102$:
                                   1544 ;	temperature_control_unit.c:412: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_L;
      00074F 75 31 38         [24] 1545 	mov	_display_buffer,#0x38
                                   1546 ;	temperature_control_unit.c:413: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_O;
      000752 75 33 3F         [24] 1547 	mov	(_display_buffer + 0x0002),#0x3F
                                   1548 ;	temperature_control_unit.c:414: break;
                                   1549 ;	temperature_control_unit.c:415: case MODE_CONFIGURE_TEMP_UNIT:
      000755 22               [24] 1550 	ret
      000756                       1551 00103$:
                                   1552 ;	temperature_control_unit.c:416: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_U;
      000756 75 31 3E         [24] 1553 	mov	_display_buffer,#0x3E
                                   1554 ;	temperature_control_unit.c:417: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_n;
      000759 75 33 54         [24] 1555 	mov	(_display_buffer + 0x0002),#0x54
                                   1556 ;	temperature_control_unit.c:418: break;
                                   1557 ;	temperature_control_unit.c:419: case MODE_CONFIGURE_TEMP_ROUNDING:
      00075C 22               [24] 1558 	ret
      00075D                       1559 00104$:
                                   1560 ;	temperature_control_unit.c:420: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_r;
      00075D 75 31 50         [24] 1561 	mov	_display_buffer,#0x50
                                   1562 ;	temperature_control_unit.c:421: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_n;
      000760 75 33 54         [24] 1563 	mov	(_display_buffer + 0x0002),#0x54
                                   1564 ;	temperature_control_unit.c:422: display_buffer[DISPLAY_THIRD_DIGIT]  = LETTER_d;
      000763 75 37 5E         [24] 1565 	mov	(_display_buffer + 0x0006),#0x5E
                                   1566 ;	temperature_control_unit.c:423: break;
                                   1567 ;	temperature_control_unit.c:424: case MODE_CONFIGURE_BRIGHTNESS:
      000766 22               [24] 1568 	ret
      000767                       1569 00105$:
                                   1570 ;	temperature_control_unit.c:425: display_buffer[DISPLAY_FIRST_DIGIT]  = LETTER_b;
      000767 75 31 7C         [24] 1571 	mov	_display_buffer,#0x7C
                                   1572 ;	temperature_control_unit.c:426: display_buffer[DISPLAY_SECOND_DIGIT] = LETTER_r;
      00076A 75 33 50         [24] 1573 	mov	(_display_buffer + 0x0002),#0x50
                                   1574 ;	temperature_control_unit.c:427: break;
                                   1575 ;	temperature_control_unit.c:428: default: return;
                                   1576 ;	temperature_control_unit.c:429: }
      00076D                       1577 00106$:
      00076D 22               [24] 1578 	ret
                                   1579 ;------------------------------------------------------------
                                   1580 ;Allocation info for local variables in function 'read_buttons'
                                   1581 ;------------------------------------------------------------
                                   1582 ;white                     Allocated to registers r7 
                                   1583 ;black                     Allocated to registers r6 
                                   1584 ;blue                      Allocated to registers r5 
                                   1585 ;green                     Allocated to registers r4 
                                   1586 ;------------------------------------------------------------
                                   1587 ;	temperature_control_unit.c:432: void read_buttons(void)
                                   1588 ;	-----------------------------------------
                                   1589 ;	 function read_buttons
                                   1590 ;	-----------------------------------------
      00076E                       1591 _read_buttons:
                                   1592 ;	temperature_control_unit.c:434: unsigned char white = BUTTON_WHITE;
      00076E A2 90            [12] 1593 	mov	c,_P1_0
      000770 E4               [12] 1594 	clr	a
      000771 33               [12] 1595 	rlc	a
      000772 FF               [12] 1596 	mov	r7,a
                                   1597 ;	temperature_control_unit.c:435: unsigned char black = BUTTON_BLACK;
      000773 A2 91            [12] 1598 	mov	c,_P1_1
      000775 E4               [12] 1599 	clr	a
      000776 33               [12] 1600 	rlc	a
      000777 FE               [12] 1601 	mov	r6,a
                                   1602 ;	temperature_control_unit.c:436: unsigned char blue  = BUTTON_BLUE;
      000778 A2 92            [12] 1603 	mov	c,_P1_2
      00077A E4               [12] 1604 	clr	a
      00077B 33               [12] 1605 	rlc	a
      00077C FD               [12] 1606 	mov	r5,a
                                   1607 ;	temperature_control_unit.c:437: unsigned char green = BUTTON_GREEN;
      00077D A2 93            [12] 1608 	mov	c,_P1_3
      00077F E4               [12] 1609 	clr	a
      000780 33               [12] 1610 	rlc	a
      000781 FC               [12] 1611 	mov	r4,a
                                   1612 ;	temperature_control_unit.c:439: currently_pressed_buttons |= BUTTON_UP&((!white)<<0);
      000782 EF               [12] 1613 	mov	a,r7
      000783 B4 01 00         [24] 1614 	cjne	a,#0x01,00103$
      000786                       1615 00103$:
      000786 E4               [12] 1616 	clr	a
      000787 33               [12] 1617 	rlc	a
      000788 FF               [12] 1618 	mov	r7,a
      000789 53 07 01         [24] 1619 	anl	ar7,#0x01
      00078C AB 3B            [24] 1620 	mov	r3,_currently_pressed_buttons
      00078E EF               [12] 1621 	mov	a,r7
      00078F 4B               [12] 1622 	orl	a,r3
      000790 F5 3B            [12] 1623 	mov	_currently_pressed_buttons,a
                                   1624 ;	temperature_control_unit.c:440: currently_pressed_buttons |= BUTTON_DOWN&((!black)<<1);
      000792 EE               [12] 1625 	mov	a,r6
      000793 B4 01 00         [24] 1626 	cjne	a,#0x01,00104$
      000796                       1627 00104$:
      000796 E4               [12] 1628 	clr	a
      000797 33               [12] 1629 	rlc	a
      000798 25 E0            [12] 1630 	add	a,acc
      00079A FE               [12] 1631 	mov	r6,a
      00079B 53 06 02         [24] 1632 	anl	ar6,#0x02
      00079E AF 3B            [24] 1633 	mov	r7,_currently_pressed_buttons
      0007A0 EE               [12] 1634 	mov	a,r6
      0007A1 4F               [12] 1635 	orl	a,r7
      0007A2 F5 3B            [12] 1636 	mov	_currently_pressed_buttons,a
                                   1637 ;	temperature_control_unit.c:441: currently_pressed_buttons |= BUTTON_SET&((!blue) <<2);
      0007A4 ED               [12] 1638 	mov	a,r5
      0007A5 B4 01 00         [24] 1639 	cjne	a,#0x01,00105$
      0007A8                       1640 00105$:
      0007A8 E4               [12] 1641 	clr	a
      0007A9 33               [12] 1642 	rlc	a
      0007AA 25 E0            [12] 1643 	add	a,acc
      0007AC 25 E0            [12] 1644 	add	a,acc
      0007AE FD               [12] 1645 	mov	r5,a
      0007AF 53 05 04         [24] 1646 	anl	ar5,#0x04
      0007B2 AF 3B            [24] 1647 	mov	r7,_currently_pressed_buttons
      0007B4 ED               [12] 1648 	mov	a,r5
      0007B5 4F               [12] 1649 	orl	a,r7
      0007B6 F5 3B            [12] 1650 	mov	_currently_pressed_buttons,a
                                   1651 ;	temperature_control_unit.c:442: currently_pressed_buttons |= BUTTON_BACK&((!green)<<3);
      0007B8 EC               [12] 1652 	mov	a,r4
      0007B9 B4 01 00         [24] 1653 	cjne	a,#0x01,00106$
      0007BC                       1654 00106$:
      0007BC E4               [12] 1655 	clr	a
      0007BD 33               [12] 1656 	rlc	a
      0007BE C4               [12] 1657 	swap	a
      0007BF 03               [12] 1658 	rr	a
      0007C0 54 F8            [12] 1659 	anl	a,#0xF8
      0007C2 FC               [12] 1660 	mov	r4,a
      0007C3 53 04 08         [24] 1661 	anl	ar4,#0x08
      0007C6 AF 3B            [24] 1662 	mov	r7,_currently_pressed_buttons
      0007C8 EC               [12] 1663 	mov	a,r4
      0007C9 4F               [12] 1664 	orl	a,r7
      0007CA F5 3B            [12] 1665 	mov	_currently_pressed_buttons,a
      0007CC 22               [24] 1666 	ret
                                   1667 ;------------------------------------------------------------
                                   1668 ;Allocation info for local variables in function 'main'
                                   1669 ;------------------------------------------------------------
                                   1670 ;temp_sensor_config        Allocated to registers 
                                   1671 ;currently_picked_mode     Allocated to registers r7 
                                   1672 ;current_temp              Allocated to registers r0 r1 r2 r6 
                                   1673 ;last_temp                 Allocated with name '_main_last_temp_1_89'
                                   1674 ;------------------------------------------------------------
                                   1675 ;	temperature_control_unit.c:445: void main(void)
                                   1676 ;	-----------------------------------------
                                   1677 ;	 function main
                                   1678 ;	-----------------------------------------
      0007CD                       1679 _main:
                                   1680 ;	temperature_control_unit.c:447: bool update_display = true;
      0007CD D2 00            [12] 1681 	setb	_main_update_display_1_89
                                   1682 ;	temperature_control_unit.c:451: unsigned char currently_picked_mode = MODE_CONFIGURE_TEMP_HIGH;
      0007CF 7F 01            [12] 1683 	mov	r7,#0x01
                                   1684 ;	temperature_control_unit.c:453: float current_temp = 0, last_temp = 0;
      0007D1 E4               [12] 1685 	clr	a
      0007D2 F5 5D            [12] 1686 	mov	_main_last_temp_1_89,a
      0007D4 F5 5E            [12] 1687 	mov	(_main_last_temp_1_89 + 1),a
      0007D6 F5 5F            [12] 1688 	mov	(_main_last_temp_1_89 + 2),a
      0007D8 F5 60            [12] 1689 	mov	(_main_last_temp_1_89 + 3),a
                                   1690 ;	temperature_control_unit.c:456: delay(100); 
      0007DA 90 00 64         [24] 1691 	mov	dptr,#(0x64&0x00ff)
      0007DD E4               [12] 1692 	clr	a
      0007DE F5 F0            [12] 1693 	mov	b,a
      0007E0 C0 07            [24] 1694 	push	ar7
      0007E2 12 00 C7         [24] 1695 	lcall	_delay
                                   1696 ;	temperature_control_unit.c:459: write_display_command(ENABLE_DISPLAY_OSCILLATOR);
      0007E5 75 82 21         [24] 1697 	mov	dpl,#0x21
      0007E8 12 04 42         [24] 1698 	lcall	_write_display_command
                                   1699 ;	temperature_control_unit.c:460: write_display_command(ENABLE_DISPLAY);
      0007EB 75 82 81         [24] 1700 	mov	dpl,#0x81
      0007EE 12 04 42         [24] 1701 	lcall	_write_display_command
                                   1702 ;	temperature_control_unit.c:461: write_display_command(SET_DISPLAY_BRIGHTNESS|HALF_BRIGHTNESS);
      0007F1 75 82 E8         [24] 1703 	mov	dpl,#0xE8
      0007F4 12 04 42         [24] 1704 	lcall	_write_display_command
                                   1705 ;	temperature_control_unit.c:467: write_temp_sensor_config(temp_sensor_config);
      0007F7 75 82 03         [24] 1706 	mov	dpl,#0x03
      0007FA 12 04 65         [24] 1707 	lcall	_write_temp_sensor_config
      0007FD D0 07            [24] 1708 	pop	ar7
                                   1709 ;	temperature_control_unit.c:474: while (true)
      0007FF                       1710 00142$:
                                   1711 ;	temperature_control_unit.c:476: read_buttons();
      0007FF C0 07            [24] 1712 	push	ar7
      000801 12 07 6E         [24] 1713 	lcall	_read_buttons
      000804 D0 07            [24] 1714 	pop	ar7
                                   1715 ;	temperature_control_unit.c:477: switch(current_user_mode)
      000806 E5 3E            [12] 1716 	mov	a,_current_user_mode
      000808 24 F9            [12] 1717 	add	a,#0xff - 0x06
      00080A 50 03            [24] 1718 	jnc	00191$
      00080C 02 09 57         [24] 1719 	ljmp	00137$
      00080F                       1720 00191$:
      00080F E5 3E            [12] 1721 	mov	a,_current_user_mode
      000811 75 F0 03         [24] 1722 	mov	b,#0x03
      000814 A4               [48] 1723 	mul	ab
      000815 90 08 19         [24] 1724 	mov	dptr,#00192$
      000818 73               [24] 1725 	jmp	@a+dptr
      000819                       1726 00192$:
      000819 02 08 2E         [24] 1727 	ljmp	00101$
      00081C 02 08 A5         [24] 1728 	ljmp	00106$
      00081F 02 08 CC         [24] 1729 	ljmp	00112$
      000822 02 08 F2         [24] 1730 	ljmp	00118$
      000825 02 08 F4         [24] 1731 	ljmp	00119$
      000828 02 08 F6         [24] 1732 	ljmp	00120$
      00082B 02 08 F8         [24] 1733 	ljmp	00121$
                                   1734 ;	temperature_control_unit.c:479: case MODE_DISPLAY_TEMPERATURE:
      00082E                       1735 00101$:
                                   1736 ;	temperature_control_unit.c:480: if (currently_pressed_buttons & BUTTON_SET) 
      00082E E5 3B            [12] 1737 	mov	a,_currently_pressed_buttons
      000830 30 E2 05         [24] 1738 	jnb	acc.2,00103$
                                   1739 ;	temperature_control_unit.c:482: current_user_mode = MODE_PICK_SETTING;
      000833 75 3E 06         [24] 1740 	mov	_current_user_mode,#0x06
                                   1741 ;	temperature_control_unit.c:483: continue;
      000836 80 C7            [24] 1742 	sjmp	00142$
      000838                       1743 00103$:
                                   1744 ;	temperature_control_unit.c:485: current_temp = read_temp_sensor();
      000838 C0 07            [24] 1745 	push	ar7
      00083A 12 02 AF         [24] 1746 	lcall	_read_temp_sensor
      00083D A8 82            [24] 1747 	mov	r0,dpl
      00083F A9 83            [24] 1748 	mov	r1,dph
      000841 AA F0            [24] 1749 	mov	r2,b
      000843 FE               [12] 1750 	mov	r6,a
                                   1751 ;	temperature_control_unit.c:486: if (last_temp != current_temp)
      000844 C0 06            [24] 1752 	push	ar6
      000846 C0 02            [24] 1753 	push	ar2
      000848 C0 01            [24] 1754 	push	ar1
      00084A C0 00            [24] 1755 	push	ar0
      00084C C0 00            [24] 1756 	push	ar0
      00084E C0 01            [24] 1757 	push	ar1
      000850 C0 02            [24] 1758 	push	ar2
      000852 C0 06            [24] 1759 	push	ar6
      000854 85 5D 82         [24] 1760 	mov	dpl,_main_last_temp_1_89
      000857 85 5E 83         [24] 1761 	mov	dph,(_main_last_temp_1_89 + 1)
      00085A 85 5F F0         [24] 1762 	mov	b,(_main_last_temp_1_89 + 2)
      00085D E5 60            [12] 1763 	mov	a,(_main_last_temp_1_89 + 3)
      00085F 12 0A F6         [24] 1764 	lcall	___fseq
      000862 AD 82            [24] 1765 	mov	r5,dpl
      000864 E5 81            [12] 1766 	mov	a,sp
      000866 24 FC            [12] 1767 	add	a,#0xfc
      000868 F5 81            [12] 1768 	mov	sp,a
      00086A D0 00            [24] 1769 	pop	ar0
      00086C D0 01            [24] 1770 	pop	ar1
      00086E D0 02            [24] 1771 	pop	ar2
      000870 D0 06            [24] 1772 	pop	ar6
      000872 D0 07            [24] 1773 	pop	ar7
      000874 ED               [12] 1774 	mov	a,r5
      000875 60 03            [24] 1775 	jz	00194$
      000877 02 09 5C         [24] 1776 	ljmp	00138$
      00087A                       1777 00194$:
                                   1778 ;	temperature_control_unit.c:488: update_displayed_temperature(current_temp);
      00087A 88 82            [24] 1779 	mov	dpl,r0
      00087C 89 83            [24] 1780 	mov	dph,r1
      00087E 8A F0            [24] 1781 	mov	b,r2
      000880 EE               [12] 1782 	mov	a,r6
      000881 C0 07            [24] 1783 	push	ar7
      000883 C0 06            [24] 1784 	push	ar6
      000885 C0 02            [24] 1785 	push	ar2
      000887 C0 01            [24] 1786 	push	ar1
      000889 C0 00            [24] 1787 	push	ar0
      00088B 12 04 9C         [24] 1788 	lcall	_update_displayed_temperature
      00088E D0 00            [24] 1789 	pop	ar0
      000890 D0 01            [24] 1790 	pop	ar1
      000892 D0 02            [24] 1791 	pop	ar2
      000894 D0 06            [24] 1792 	pop	ar6
      000896 D0 07            [24] 1793 	pop	ar7
                                   1794 ;	temperature_control_unit.c:489: last_temp = current_temp;
      000898 88 5D            [24] 1795 	mov	_main_last_temp_1_89,r0
      00089A 89 5E            [24] 1796 	mov	(_main_last_temp_1_89 + 1),r1
      00089C 8A 5F            [24] 1797 	mov	(_main_last_temp_1_89 + 2),r2
      00089E 8E 60            [24] 1798 	mov	(_main_last_temp_1_89 + 3),r6
                                   1799 ;	temperature_control_unit.c:490: update_display = true;
      0008A0 D2 00            [12] 1800 	setb	_main_update_display_1_89
                                   1801 ;	temperature_control_unit.c:492: break;
      0008A2 02 09 5C         [24] 1802 	ljmp	00138$
                                   1803 ;	temperature_control_unit.c:493: case MODE_CONFIGURE_TEMP_HIGH    :
      0008A5                       1804 00106$:
                                   1805 ;	temperature_control_unit.c:494: if (currently_pressed_buttons & BUTTON_SET)
      0008A5 E5 3B            [12] 1806 	mov	a,_currently_pressed_buttons
      0008A7 30 E2 05         [24] 1807 	jnb	acc.2,00110$
                                   1808 ;	temperature_control_unit.c:496: current_user_mode = MODE_DISPLAY_TEMPERATURE;
      0008AA 75 3E 00         [24] 1809 	mov	_current_user_mode,#0x00
      0008AD 80 08            [24] 1810 	sjmp	00111$
      0008AF                       1811 00110$:
                                   1812 ;	temperature_control_unit.c:498: else if (currently_pressed_buttons & BUTTON_BACK)
      0008AF E5 3B            [12] 1813 	mov	a,_currently_pressed_buttons
      0008B1 30 E3 03         [24] 1814 	jnb	acc.3,00111$
                                   1815 ;	temperature_control_unit.c:500: current_user_mode = MODE_PICK_SETTING;
      0008B4 75 3E 06         [24] 1816 	mov	_current_user_mode,#0x06
      0008B7                       1817 00111$:
                                   1818 ;	temperature_control_unit.c:502: update_displayed_temperature(user_setting_temp_high_threshold);
      0008B7 85 3F 82         [24] 1819 	mov	dpl,_user_setting_temp_high_threshold
      0008BA 85 40 83         [24] 1820 	mov	dph,(_user_setting_temp_high_threshold + 1)
      0008BD C0 07            [24] 1821 	push	ar7
      0008BF 12 0C CE         [24] 1822 	lcall	___sint2fs
      0008C2 12 04 9C         [24] 1823 	lcall	_update_displayed_temperature
      0008C5 D0 07            [24] 1824 	pop	ar7
                                   1825 ;	temperature_control_unit.c:503: update_display = true;
      0008C7 D2 00            [12] 1826 	setb	_main_update_display_1_89
                                   1827 ;	temperature_control_unit.c:504: break;
      0008C9 02 09 5C         [24] 1828 	ljmp	00138$
                                   1829 ;	temperature_control_unit.c:505: case MODE_CONFIGURE_TEMP_LOW     :
      0008CC                       1830 00112$:
                                   1831 ;	temperature_control_unit.c:506: if (currently_pressed_buttons & BUTTON_SET)
      0008CC E5 3B            [12] 1832 	mov	a,_currently_pressed_buttons
      0008CE 30 E2 05         [24] 1833 	jnb	acc.2,00116$
                                   1834 ;	temperature_control_unit.c:508: current_user_mode = MODE_DISPLAY_TEMPERATURE;
      0008D1 75 3E 00         [24] 1835 	mov	_current_user_mode,#0x00
      0008D4 80 08            [24] 1836 	sjmp	00117$
      0008D6                       1837 00116$:
                                   1838 ;	temperature_control_unit.c:510: else if (currently_pressed_buttons & BUTTON_BACK)
      0008D6 E5 3B            [12] 1839 	mov	a,_currently_pressed_buttons
      0008D8 30 E3 03         [24] 1840 	jnb	acc.3,00117$
                                   1841 ;	temperature_control_unit.c:512: current_user_mode = MODE_PICK_SETTING;
      0008DB 75 3E 06         [24] 1842 	mov	_current_user_mode,#0x06
      0008DE                       1843 00117$:
                                   1844 ;	temperature_control_unit.c:514: update_displayed_temperature(user_setting_temp_low_threshold);
      0008DE 85 41 82         [24] 1845 	mov	dpl,_user_setting_temp_low_threshold
      0008E1 85 42 83         [24] 1846 	mov	dph,(_user_setting_temp_low_threshold + 1)
      0008E4 C0 07            [24] 1847 	push	ar7
      0008E6 12 0C CE         [24] 1848 	lcall	___sint2fs
      0008E9 12 04 9C         [24] 1849 	lcall	_update_displayed_temperature
      0008EC D0 07            [24] 1850 	pop	ar7
                                   1851 ;	temperature_control_unit.c:515: update_display = true;
      0008EE D2 00            [12] 1852 	setb	_main_update_display_1_89
                                   1853 ;	temperature_control_unit.c:516: break;
                                   1854 ;	temperature_control_unit.c:517: case MODE_CONFIGURE_TEMP_UNIT    :
      0008F0 80 6A            [24] 1855 	sjmp	00138$
      0008F2                       1856 00118$:
                                   1857 ;	temperature_control_unit.c:518: break;
                                   1858 ;	temperature_control_unit.c:519: case MODE_CONFIGURE_TEMP_ROUNDING:
      0008F2 80 68            [24] 1859 	sjmp	00138$
      0008F4                       1860 00119$:
                                   1861 ;	temperature_control_unit.c:520: break;
                                   1862 ;	temperature_control_unit.c:521: case MODE_CONFIGURE_BRIGHTNESS   :
      0008F4 80 66            [24] 1863 	sjmp	00138$
      0008F6                       1864 00120$:
                                   1865 ;	temperature_control_unit.c:522: break;
                                   1866 ;	temperature_control_unit.c:523: case MODE_PICK_SETTING:
      0008F6 80 64            [24] 1867 	sjmp	00138$
      0008F8                       1868 00121$:
                                   1869 ;	temperature_control_unit.c:524: if (BUTTON_DOWN & currently_pressed_buttons & debounced_buttons)
      0008F8 74 02            [12] 1870 	mov	a,#0x02
      0008FA 55 3B            [12] 1871 	anl	a,_currently_pressed_buttons
      0008FC 55 3C            [12] 1872 	anl	a,_debounced_buttons
      0008FE 60 17            [24] 1873 	jz	00125$
                                   1874 ;	temperature_control_unit.c:526: --currently_picked_mode;
      000900 1F               [12] 1875 	dec	r7
                                   1876 ;	temperature_control_unit.c:527: if (currently_picked_mode < MODE_CONFIGURE_TEMP_HIGH) 
      000901 BF 01 00         [24] 1877 	cjne	r7,#0x01,00200$
      000904                       1878 00200$:
      000904 50 0C            [24] 1879 	jnc	00123$
                                   1880 ;	temperature_control_unit.c:529: currently_picked_mode = MODE_CONFIGURE_BRIGHTNESS;
      000906 7F 05            [12] 1881 	mov	r7,#0x05
                                   1882 ;	temperature_control_unit.c:530: updated_displayed_setting_selection(currently_picked_mode);
      000908 75 82 05         [24] 1883 	mov	dpl,#0x05
      00090B C0 07            [24] 1884 	push	ar7
      00090D 12 07 21         [24] 1885 	lcall	_updated_displayed_setting_selection
      000910 D0 07            [24] 1886 	pop	ar7
      000912                       1887 00123$:
                                   1888 ;	temperature_control_unit.c:532: debounced_buttons |= BUTTON_DOWN;
      000912 43 3C 02         [24] 1889 	orl	_debounced_buttons,#0x02
      000915 80 03            [24] 1890 	sjmp	00126$
      000917                       1891 00125$:
                                   1892 ;	temperature_control_unit.c:534: debounced_buttons &= (!BUTTON_DOWN);
      000917 75 3C 00         [24] 1893 	mov	_debounced_buttons,#0x00
      00091A                       1894 00126$:
                                   1895 ;	temperature_control_unit.c:536: if (BUTTON_UP & currently_pressed_buttons & debounced_buttons)
      00091A 74 01            [12] 1896 	mov	a,#0x01
      00091C 55 3B            [12] 1897 	anl	a,_currently_pressed_buttons
      00091E 55 3C            [12] 1898 	anl	a,_debounced_buttons
      000920 60 17            [24] 1899 	jz	00130$
                                   1900 ;	temperature_control_unit.c:538: ++currently_picked_mode;
      000922 0F               [12] 1901 	inc	r7
                                   1902 ;	temperature_control_unit.c:539: if (currently_picked_mode > MODE_CONFIGURE_BRIGHTNESS) 
      000923 EF               [12] 1903 	mov	a,r7
      000924 24 FA            [12] 1904 	add	a,#0xff - 0x05
      000926 50 0C            [24] 1905 	jnc	00128$
                                   1906 ;	temperature_control_unit.c:541: currently_picked_mode = MODE_CONFIGURE_TEMP_HIGH;
      000928 7F 01            [12] 1907 	mov	r7,#0x01
                                   1908 ;	temperature_control_unit.c:542: updated_displayed_setting_selection(currently_picked_mode);
      00092A 75 82 01         [24] 1909 	mov	dpl,#0x01
      00092D C0 07            [24] 1910 	push	ar7
      00092F 12 07 21         [24] 1911 	lcall	_updated_displayed_setting_selection
      000932 D0 07            [24] 1912 	pop	ar7
      000934                       1913 00128$:
                                   1914 ;	temperature_control_unit.c:544: debounced_buttons |= BUTTON_UP;
      000934 43 3C 01         [24] 1915 	orl	_debounced_buttons,#0x01
      000937 80 03            [24] 1916 	sjmp	00131$
      000939                       1917 00130$:
                                   1918 ;	temperature_control_unit.c:546: debounced_buttons &= (!BUTTON_UP);
      000939 75 3C 00         [24] 1919 	mov	_debounced_buttons,#0x00
      00093C                       1920 00131$:
                                   1921 ;	temperature_control_unit.c:548: if (currently_pressed_buttons & BUTTON_SET & debounced_buttons)
      00093C 74 04            [12] 1922 	mov	a,#0x04
      00093E 55 3B            [12] 1923 	anl	a,_currently_pressed_buttons
      000940 55 3C            [12] 1924 	anl	a,_debounced_buttons
      000942 60 04            [24] 1925 	jz	00135$
                                   1926 ;	temperature_control_unit.c:550: current_user_mode = currently_picked_mode;
      000944 8F 3E            [24] 1927 	mov	_current_user_mode,r7
      000946 80 0B            [24] 1928 	sjmp	00136$
      000948                       1929 00135$:
                                   1930 ;	temperature_control_unit.c:552: else if (currently_pressed_buttons & BUTTON_BACK & debounced_buttons)
      000948 74 08            [12] 1931 	mov	a,#0x08
      00094A 55 3B            [12] 1932 	anl	a,_currently_pressed_buttons
      00094C 55 3C            [12] 1933 	anl	a,_debounced_buttons
      00094E 60 03            [24] 1934 	jz	00136$
                                   1935 ;	temperature_control_unit.c:554: current_user_mode = MODE_DISPLAY_TEMPERATURE;
      000950 75 3E 00         [24] 1936 	mov	_current_user_mode,#0x00
      000953                       1937 00136$:
                                   1938 ;	temperature_control_unit.c:557: update_display = true;
      000953 D2 00            [12] 1939 	setb	_main_update_display_1_89
                                   1940 ;	temperature_control_unit.c:558: break;
                                   1941 ;	temperature_control_unit.c:559: default: 
      000955 80 05            [24] 1942 	sjmp	00138$
      000957                       1943 00137$:
                                   1944 ;	temperature_control_unit.c:560: current_user_mode = MODE_DISPLAY_TEMPERATURE; 
      000957 75 3E 00         [24] 1945 	mov	_current_user_mode,#0x00
                                   1946 ;	temperature_control_unit.c:561: update_display = true; 
      00095A D2 00            [12] 1947 	setb	_main_update_display_1_89
                                   1948 ;	temperature_control_unit.c:563: }
      00095C                       1949 00138$:
                                   1950 ;	temperature_control_unit.c:565: if (update_display) 
      00095C 20 00 03         [24] 1951 	jb	_main_update_display_1_89,00206$
      00095F 02 07 FF         [24] 1952 	ljmp	00142$
      000962                       1953 00206$:
                                   1954 ;	temperature_control_unit.c:567: write_to_display();
      000962 C0 07            [24] 1955 	push	ar7
      000964 12 04 0C         [24] 1956 	lcall	_write_to_display
      000967 D0 07            [24] 1957 	pop	ar7
                                   1958 ;	temperature_control_unit.c:568: update_display = false;
      000969 C2 00            [12] 1959 	clr	_main_update_display_1_89
      00096B 02 07 FF         [24] 1960 	ljmp	00142$
                                   1961 	.area CSEG    (CODE)
                                   1962 	.area CONST   (CODE)
                                   1963 	.area XINIT   (CODE)
                                   1964 	.area CABS    (ABS,CODE)
