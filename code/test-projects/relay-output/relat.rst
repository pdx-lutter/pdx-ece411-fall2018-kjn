                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Dec  6 13:29:07 2018
                                      5 ;--------------------------------------------------------
                                      6 	.module relat
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _read_buttons
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _currently_pressed_buttons
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _currently_pressed_buttons::
      000008                        227 	.ds 1
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable items in internal ram 
                                    230 ;--------------------------------------------------------
                                    231 	.area	OSEG    (OVR,DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; Stack segment in internal ram 
                                    234 ;--------------------------------------------------------
                                    235 	.area	SSEG
      000009                        236 __start__stack:
      000009                        237 	.ds	1
                                    238 
                                    239 ;--------------------------------------------------------
                                    240 ; indirectly addressable internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area ISEG    (DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; absolute internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area IABS    (ABS,DATA)
                                    247 	.area IABS    (ABS,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; bit data
                                    250 ;--------------------------------------------------------
                                    251 	.area BSEG    (BIT)
                                    252 ;--------------------------------------------------------
                                    253 ; paged external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area PSEG    (PAG,XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XSEG    (XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; absolute external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XABS    (ABS,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external initialized ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XISEG   (XDATA)
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT0 (CODE)
                                    270 	.area GSINIT1 (CODE)
                                    271 	.area GSINIT2 (CODE)
                                    272 	.area GSINIT3 (CODE)
                                    273 	.area GSINIT4 (CODE)
                                    274 	.area GSINIT5 (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 	.area GSFINAL (CODE)
                                    277 	.area CSEG    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; interrupt vector 
                                    280 ;--------------------------------------------------------
                                    281 	.area HOME    (CODE)
      000000                        282 __interrupt_vect:
      000000 02 00 06         [24]  283 	ljmp	__sdcc_gsinit_startup
                                    284 ;--------------------------------------------------------
                                    285 ; global & static initialisations
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.globl __sdcc_gsinit_startup
                                    292 	.globl __sdcc_program_startup
                                    293 	.globl __start__stack
                                    294 	.globl __mcs51_genXINIT
                                    295 	.globl __mcs51_genXRAMCLEAR
                                    296 	.globl __mcs51_genRAMCLEAR
                                    297 ;	relat.c:16: unsigned char currently_pressed_buttons = 0x0;
      00005F 75 08 00         [24]  298 	mov	_currently_pressed_buttons,#0x00
                                    299 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  300 	ljmp	__sdcc_program_startup
                                    301 ;--------------------------------------------------------
                                    302 ; Home
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area HOME    (CODE)
      000003                        306 __sdcc_program_startup:
      000003 02 00 9C         [24]  307 	ljmp	_main
                                    308 ;	return from main will return to caller
                                    309 ;--------------------------------------------------------
                                    310 ; code
                                    311 ;--------------------------------------------------------
                                    312 	.area CSEG    (CODE)
                                    313 ;------------------------------------------------------------
                                    314 ;Allocation info for local variables in function 'read_buttons'
                                    315 ;------------------------------------------------------------
                                    316 ;white                     Allocated to registers r7 
                                    317 ;black                     Allocated to registers r6 
                                    318 ;blue                      Allocated to registers r5 
                                    319 ;green                     Allocated to registers r4 
                                    320 ;------------------------------------------------------------
                                    321 ;	relat.c:18: void read_buttons(void)
                                    322 ;	-----------------------------------------
                                    323 ;	 function read_buttons
                                    324 ;	-----------------------------------------
      000065                        325 _read_buttons:
                           000007   326 	ar7 = 0x07
                           000006   327 	ar6 = 0x06
                           000005   328 	ar5 = 0x05
                           000004   329 	ar4 = 0x04
                           000003   330 	ar3 = 0x03
                           000002   331 	ar2 = 0x02
                           000001   332 	ar1 = 0x01
                           000000   333 	ar0 = 0x00
                                    334 ;	relat.c:20: unsigned char white = BUTTON_WHITE;
      000065 A2 90            [12]  335 	mov	c,_P1_0
      000067 E4               [12]  336 	clr	a
      000068 33               [12]  337 	rlc	a
      000069 FF               [12]  338 	mov	r7,a
                                    339 ;	relat.c:21: unsigned char black = BUTTON_BLACK;
      00006A A2 91            [12]  340 	mov	c,_P1_1
      00006C E4               [12]  341 	clr	a
      00006D 33               [12]  342 	rlc	a
      00006E FE               [12]  343 	mov	r6,a
                                    344 ;	relat.c:22: unsigned char blue  = BUTTON_BLUE;
      00006F A2 92            [12]  345 	mov	c,_P1_2
      000071 E4               [12]  346 	clr	a
      000072 33               [12]  347 	rlc	a
      000073 FD               [12]  348 	mov	r5,a
                                    349 ;	relat.c:23: unsigned char green = BUTTON_GREEN;
      000074 A2 93            [12]  350 	mov	c,_P1_3
      000076 E4               [12]  351 	clr	a
      000077 33               [12]  352 	rlc	a
      000078 FC               [12]  353 	mov	r4,a
                                    354 ;	relat.c:25: currently_pressed_buttons |= BUTTON_UP&((white)<<0);
      000079 74 01            [12]  355 	mov	a,#0x01
      00007B 5F               [12]  356 	anl	a,r7
      00007C 42 08            [12]  357 	orl	_currently_pressed_buttons,a
                                    358 ;	relat.c:26: currently_pressed_buttons |= BUTTON_DOWN&((black)<<1);
      00007E EE               [12]  359 	mov	a,r6
      00007F 2E               [12]  360 	add	a,r6
      000080 FE               [12]  361 	mov	r6,a
      000081 74 02            [12]  362 	mov	a,#0x02
      000083 5E               [12]  363 	anl	a,r6
      000084 42 08            [12]  364 	orl	_currently_pressed_buttons,a
                                    365 ;	relat.c:27: currently_pressed_buttons |= BUTTON_SET&((blue) <<2);
      000086 ED               [12]  366 	mov	a,r5
      000087 2D               [12]  367 	add	a,r5
      000088 25 E0            [12]  368 	add	a,acc
      00008A FD               [12]  369 	mov	r5,a
      00008B 74 04            [12]  370 	mov	a,#0x04
      00008D 5D               [12]  371 	anl	a,r5
      00008E 42 08            [12]  372 	orl	_currently_pressed_buttons,a
                                    373 ;	relat.c:28: currently_pressed_buttons |= BUTTON_BACK&((green)<<3);
      000090 EC               [12]  374 	mov	a,r4
      000091 C4               [12]  375 	swap	a
      000092 03               [12]  376 	rr	a
      000093 54 F8            [12]  377 	anl	a,#0xF8
      000095 FC               [12]  378 	mov	r4,a
      000096 74 08            [12]  379 	mov	a,#0x08
      000098 5C               [12]  380 	anl	a,r4
      000099 42 08            [12]  381 	orl	_currently_pressed_buttons,a
      00009B 22               [24]  382 	ret
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'main'
                                    385 ;------------------------------------------------------------
                                    386 ;	relat.c:31: void main(void)
                                    387 ;	-----------------------------------------
                                    388 ;	 function main
                                    389 ;	-----------------------------------------
      00009C                        390 _main:
                                    391 ;	relat.c:33: while(1)
      00009C                        392 00105$:
                                    393 ;	relat.c:35: read_buttons();
      00009C 12 00 65         [24]  394 	lcall	_read_buttons
                                    395 ;	relat.c:36: if (currently_pressed_buttons)
      00009F E5 08            [12]  396 	mov	a,_currently_pressed_buttons
      0000A1 60 06            [24]  397 	jz	00102$
                                    398 ;	relat.c:38: LAMP_PIN = 0;
      0000A3 C2 A5            [12]  399 	clr	_P2_5
                                    400 ;	relat.c:39: FAN_PIN = 0;
      0000A5 C2 A4            [12]  401 	clr	_P2_4
      0000A7 80 04            [24]  402 	sjmp	00103$
      0000A9                        403 00102$:
                                    404 ;	relat.c:43: LAMP_PIN = 1;
      0000A9 D2 A5            [12]  405 	setb	_P2_5
                                    406 ;	relat.c:44: FAN_PIN = 1;
      0000AB D2 A4            [12]  407 	setb	_P2_4
      0000AD                        408 00103$:
                                    409 ;	relat.c:46: currently_pressed_buttons &= 0x00;
      0000AD 75 08 00         [24]  410 	mov	_currently_pressed_buttons,#0x00
      0000B0 80 EA            [24]  411 	sjmp	00105$
                                    412 	.area CSEG    (CODE)
                                    413 	.area CONST   (CODE)
                                    414 	.area XINIT   (CODE)
                                    415 	.area CABS    (ABS,CODE)
