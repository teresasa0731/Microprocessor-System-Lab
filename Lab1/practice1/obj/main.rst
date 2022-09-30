                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _light_up
                                     13 	.globl _shift_right
                                     14 	.globl _shift_left
                                     15 	.globl _read_curINPUT
                                     16 	.globl _scan_row
                                     17 	.globl _delay_ms
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _light_up_PARM_2
                                    115 	.globl _shift_right_PARM_2
                                    116 	.globl _shift_left_PARM_2
                                    117 	.globl _patt
                                    118 	.globl _count
                                    119 	.globl _prestate
                                    120 	.globl _state
                                    121 	.globl _curINPUT
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
      000008                        237 _curINPUT::
      000008                        238 	.ds 18
      00001A                        239 _state::
      00001A                        240 	.ds 18
      00002C                        241 _prestate::
      00002C                        242 	.ds 18
      00003E                        243 _count::
      00003E                        244 	.ds 18
      000050                        245 _patt::
      000050                        246 	.ds 1
      000051                        247 _shift_left_PARM_2:
      000051                        248 	.ds 1
      000052                        249 _shift_right_PARM_2:
      000052                        250 	.ds 1
      000053                        251 _light_up_PARM_2:
      000053                        252 	.ds 1
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable items in internal ram
                                    255 ;--------------------------------------------------------
                                    256 	.area	OSEG    (OVR,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; Stack segment in internal ram
                                    259 ;--------------------------------------------------------
                                    260 	.area SSEG
      000054                        261 __start__stack:
      000054                        262 	.ds	1
                                    263 
                                    264 ;--------------------------------------------------------
                                    265 ; indirectly addressable internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area ISEG    (DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area IABS    (ABS,DATA)
                                    272 	.area IABS    (ABS,DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; bit data
                                    275 ;--------------------------------------------------------
                                    276 	.area BSEG    (BIT)
                                    277 ;--------------------------------------------------------
                                    278 ; paged external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area PSEG    (PAG,XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; uninitialized external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XSEG    (XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XABS    (ABS,XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; initialized external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XISEG   (XDATA)
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT0 (CODE)
                                    295 	.area GSINIT1 (CODE)
                                    296 	.area GSINIT2 (CODE)
                                    297 	.area GSINIT3 (CODE)
                                    298 	.area GSINIT4 (CODE)
                                    299 	.area GSINIT5 (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area CSEG    (CODE)
                                    303 ;--------------------------------------------------------
                                    304 ; interrupt vector
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
      000000                        307 __interrupt_vect:
      000000 02 00 06         [24]  308 	ljmp	__sdcc_gsinit_startup
                                    309 ;--------------------------------------------------------
                                    310 ; global & static initialisations
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.area GSFINAL (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.globl __sdcc_gsinit_startup
                                    317 	.globl __sdcc_program_startup
                                    318 	.globl __start__stack
                                    319 	.globl __mcs51_genXINIT
                                    320 	.globl __mcs51_genXRAMCLEAR
                                    321 	.globl __mcs51_genRAMCLEAR
                                    322 ;	./src/main.c:23: unsigned char patt = 0x80; // led value
      00005F 75 50 80         [24]  323 	mov	_patt,#0x80
                                    324 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  325 	ljmp	__sdcc_program_startup
                                    326 ;--------------------------------------------------------
                                    327 ; Home
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area HOME    (CODE)
      000003                        331 __sdcc_program_startup:
      000003 02 01 86         [24]  332 	ljmp	_main
                                    333 ;	return from main will return to caller
                                    334 ;--------------------------------------------------------
                                    335 ; code
                                    336 ;--------------------------------------------------------
                                    337 	.area CSEG    (CODE)
                                    338 ;------------------------------------------------------------
                                    339 ;Allocation info for local variables in function 'scan_row'
                                    340 ;------------------------------------------------------------
                                    341 ;row                       Allocated to registers r6 r7 
                                    342 ;------------------------------------------------------------
                                    343 ;	./src/main.c:26: void scan_row(unsigned int row)
                                    344 ;	-----------------------------------------
                                    345 ;	 function scan_row
                                    346 ;	-----------------------------------------
      000065                        347 _scan_row:
                           000007   348 	ar7 = 0x07
                           000006   349 	ar6 = 0x06
                           000005   350 	ar5 = 0x05
                           000004   351 	ar4 = 0x04
                           000003   352 	ar3 = 0x03
                           000002   353 	ar2 = 0x02
                           000001   354 	ar1 = 0x01
                           000000   355 	ar0 = 0x00
      000065 AE 82            [24]  356 	mov	r6,dpl
      000067 AF 83            [24]  357 	mov	r7,dph
                                    358 ;	./src/main.c:28: switch (row)
      000069 BE 00 05         [24]  359 	cjne	r6,#0x00,00120$
      00006C BF 00 02         [24]  360 	cjne	r7,#0x00,00120$
      00006F 80 10            [24]  361 	sjmp	00101$
      000071                        362 00120$:
      000071 BE 01 05         [24]  363 	cjne	r6,#0x01,00121$
      000074 BF 00 02         [24]  364 	cjne	r7,#0x00,00121$
      000077 80 0F            [24]  365 	sjmp	00102$
      000079                        366 00121$:
                                    367 ;	./src/main.c:30: case 0:
      000079 BE 02 19         [24]  368 	cjne	r6,#0x02,00106$
      00007C BF 00 16         [24]  369 	cjne	r7,#0x00,00106$
      00007F 80 0E            [24]  370 	sjmp	00103$
      000081                        371 00101$:
                                    372 ;	./src/main.c:32: OUTPUT0 = 0; // row1 output 0
                                    373 ;	assignBit
      000081 C2 84            [12]  374 	clr	_P0_4
                                    375 ;	./src/main.c:33: OUTPUT1 = 1; // row2 output 1
                                    376 ;	assignBit
      000083 D2 83            [12]  377 	setb	_P0_3
                                    378 ;	./src/main.c:34: OUTPUT2 = 1; // row3 output 1
                                    379 ;	assignBit
      000085 D2 82            [12]  380 	setb	_P0_2
                                    381 ;	./src/main.c:35: break;
                                    382 ;	./src/main.c:37: case 1:
      000087 22               [24]  383 	ret
      000088                        384 00102$:
                                    385 ;	./src/main.c:38: OUTPUT0 = 1; // row1 output 1
                                    386 ;	assignBit
      000088 D2 84            [12]  387 	setb	_P0_4
                                    388 ;	./src/main.c:39: OUTPUT1 = 0; // row2 output 0
                                    389 ;	assignBit
      00008A C2 83            [12]  390 	clr	_P0_3
                                    391 ;	./src/main.c:40: OUTPUT2 = 1; // row3 output 1
                                    392 ;	assignBit
      00008C D2 82            [12]  393 	setb	_P0_2
                                    394 ;	./src/main.c:41: break;
                                    395 ;	./src/main.c:43: case 2:
      00008E 22               [24]  396 	ret
      00008F                        397 00103$:
                                    398 ;	./src/main.c:44: OUTPUT0 = 1; // row1 output 1
                                    399 ;	assignBit
      00008F D2 84            [12]  400 	setb	_P0_4
                                    401 ;	./src/main.c:45: OUTPUT1 = 1; // row2 output 1
                                    402 ;	assignBit
      000091 D2 83            [12]  403 	setb	_P0_3
                                    404 ;	./src/main.c:46: OUTPUT2 = 0; // row3 output 0
                                    405 ;	assignBit
      000093 C2 82            [12]  406 	clr	_P0_2
                                    407 ;	./src/main.c:51: }
      000095                        408 00106$:
                                    409 ;	./src/main.c:52: }
      000095 22               [24]  410 	ret
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'read_curINPUT'
                                    413 ;------------------------------------------------------------
                                    414 ;i                         Allocated to registers r6 r7 
                                    415 ;------------------------------------------------------------
                                    416 ;	./src/main.c:53: void read_curINPUT(void)
                                    417 ;	-----------------------------------------
                                    418 ;	 function read_curINPUT
                                    419 ;	-----------------------------------------
      000096                        420 _read_curINPUT:
                                    421 ;	./src/main.c:55: for (int i = 0; i < 3; i++)
      000096 7E 00            [12]  422 	mov	r6,#0x00
      000098 7F 00            [12]  423 	mov	r7,#0x00
      00009A                        424 00103$:
      00009A C3               [12]  425 	clr	c
      00009B EE               [12]  426 	mov	a,r6
      00009C 94 03            [12]  427 	subb	a,#0x03
      00009E EF               [12]  428 	mov	a,r7
      00009F 64 80            [12]  429 	xrl	a,#0x80
      0000A1 94 80            [12]  430 	subb	a,#0x80
      0000A3 50 58            [24]  431 	jnc	00105$
                                    432 ;	./src/main.c:57: scan_row(i);
      0000A5 8E 82            [24]  433 	mov	dpl,r6
      0000A7 8F 83            [24]  434 	mov	dph,r7
      0000A9 C0 07            [24]  435 	push	ar7
      0000AB C0 06            [24]  436 	push	ar6
      0000AD 12 00 65         [24]  437 	lcall	_scan_row
      0000B0 D0 06            [24]  438 	pop	ar6
      0000B2 D0 07            [24]  439 	pop	ar7
                                    440 ;	./src/main.c:58: curINPUT[i * 3 + 0] = INPUT0;
      0000B4 8E 05            [24]  441 	mov	ar5,r6
      0000B6 ED               [12]  442 	mov	a,r5
      0000B7 75 F0 03         [24]  443 	mov	b,#0x03
      0000BA A4               [48]  444 	mul	ab
      0000BB FD               [12]  445 	mov	r5,a
      0000BC 25 E0            [12]  446 	add	a,acc
      0000BE 24 08            [12]  447 	add	a,#_curINPUT
      0000C0 F9               [12]  448 	mov	r1,a
      0000C1 A2 87            [12]  449 	mov	c,_P0_7
      0000C3 E4               [12]  450 	clr	a
      0000C4 33               [12]  451 	rlc	a
      0000C5 FB               [12]  452 	mov	r3,a
      0000C6 7C 00            [12]  453 	mov	r4,#0x00
      0000C8 A7 03            [24]  454 	mov	@r1,ar3
      0000CA 09               [12]  455 	inc	r1
      0000CB A7 04            [24]  456 	mov	@r1,ar4
      0000CD 19               [12]  457 	dec	r1
                                    458 ;	./src/main.c:59: curINPUT[i * 3 + 1] = INPUT1;
      0000CE ED               [12]  459 	mov	a,r5
      0000CF 04               [12]  460 	inc	a
      0000D0 25 E0            [12]  461 	add	a,acc
      0000D2 24 08            [12]  462 	add	a,#_curINPUT
      0000D4 F9               [12]  463 	mov	r1,a
      0000D5 A2 86            [12]  464 	mov	c,_P0_6
      0000D7 E4               [12]  465 	clr	a
      0000D8 33               [12]  466 	rlc	a
      0000D9 FB               [12]  467 	mov	r3,a
      0000DA 7C 00            [12]  468 	mov	r4,#0x00
      0000DC A7 03            [24]  469 	mov	@r1,ar3
      0000DE 09               [12]  470 	inc	r1
      0000DF A7 04            [24]  471 	mov	@r1,ar4
      0000E1 19               [12]  472 	dec	r1
                                    473 ;	./src/main.c:60: curINPUT[i * 3 + 2] = INPUT2;
      0000E2 0D               [12]  474 	inc	r5
      0000E3 0D               [12]  475 	inc	r5
      0000E4 ED               [12]  476 	mov	a,r5
      0000E5 2D               [12]  477 	add	a,r5
      0000E6 24 08            [12]  478 	add	a,#_curINPUT
      0000E8 F9               [12]  479 	mov	r1,a
      0000E9 A2 85            [12]  480 	mov	c,_P0_5
      0000EB E4               [12]  481 	clr	a
      0000EC 33               [12]  482 	rlc	a
      0000ED FC               [12]  483 	mov	r4,a
      0000EE 7D 00            [12]  484 	mov	r5,#0x00
      0000F0 A7 04            [24]  485 	mov	@r1,ar4
      0000F2 09               [12]  486 	inc	r1
      0000F3 A7 05            [24]  487 	mov	@r1,ar5
      0000F5 19               [12]  488 	dec	r1
                                    489 ;	./src/main.c:55: for (int i = 0; i < 3; i++)
      0000F6 0E               [12]  490 	inc	r6
      0000F7 BE 00 A0         [24]  491 	cjne	r6,#0x00,00103$
      0000FA 0F               [12]  492 	inc	r7
      0000FB 80 9D            [24]  493 	sjmp	00103$
      0000FD                        494 00105$:
                                    495 ;	./src/main.c:62: }
      0000FD 22               [24]  496 	ret
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'shift_left'
                                    499 ;------------------------------------------------------------
                                    500 ;patt                      Allocated with name '_shift_left_PARM_2'
                                    501 ;bit                       Allocated to registers r6 r7 
                                    502 ;i                         Allocated to registers r4 r5 
                                    503 ;------------------------------------------------------------
                                    504 ;	./src/main.c:63: unsigned char shift_left(unsigned int bit, unsigned char patt)
                                    505 ;	-----------------------------------------
                                    506 ;	 function shift_left
                                    507 ;	-----------------------------------------
      0000FE                        508 _shift_left:
      0000FE AE 82            [24]  509 	mov	r6,dpl
      000100 AF 83            [24]  510 	mov	r7,dph
                                    511 ;	./src/main.c:65: for (int i = 0; i < bit; i++)
      000102 7C 00            [12]  512 	mov	r4,#0x00
      000104 7D 00            [12]  513 	mov	r5,#0x00
      000106                        514 00105$:
      000106 8C 02            [24]  515 	mov	ar2,r4
      000108 8D 03            [24]  516 	mov	ar3,r5
      00010A C3               [12]  517 	clr	c
      00010B EA               [12]  518 	mov	a,r2
      00010C 9E               [12]  519 	subb	a,r6
      00010D EB               [12]  520 	mov	a,r3
      00010E 9F               [12]  521 	subb	a,r7
      00010F 50 12            [24]  522 	jnc	00103$
                                    523 ;	./src/main.c:67: patt = patt >> 1;
      000111 E5 51            [12]  524 	mov	a,_shift_left_PARM_2
      000113 C3               [12]  525 	clr	c
      000114 13               [12]  526 	rrc	a
                                    527 ;	./src/main.c:68: if (patt == 0x00)
      000115 F5 51            [12]  528 	mov	_shift_left_PARM_2,a
      000117 70 03            [24]  529 	jnz	00106$
                                    530 ;	./src/main.c:69: patt = 0x80;
      000119 75 51 80         [24]  531 	mov	_shift_left_PARM_2,#0x80
      00011C                        532 00106$:
                                    533 ;	./src/main.c:65: for (int i = 0; i < bit; i++)
      00011C 0C               [12]  534 	inc	r4
      00011D BC 00 E6         [24]  535 	cjne	r4,#0x00,00105$
      000120 0D               [12]  536 	inc	r5
      000121 80 E3            [24]  537 	sjmp	00105$
      000123                        538 00103$:
                                    539 ;	./src/main.c:72: led = ~patt;
      000123 E5 51            [12]  540 	mov	a,_shift_left_PARM_2
      000125 F4               [12]  541 	cpl	a
      000126 F5 90            [12]  542 	mov	_P1,a
                                    543 ;	./src/main.c:73: delay_ms(20);
      000128 90 00 14         [24]  544 	mov	dptr,#0x0014
      00012B 12 03 F3         [24]  545 	lcall	_delay_ms
                                    546 ;	./src/main.c:74: return patt;
      00012E 85 51 82         [24]  547 	mov	dpl,_shift_left_PARM_2
                                    548 ;	./src/main.c:75: }
      000131 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'shift_right'
                                    552 ;------------------------------------------------------------
                                    553 ;patt                      Allocated with name '_shift_right_PARM_2'
                                    554 ;bit                       Allocated to registers r6 r7 
                                    555 ;------------------------------------------------------------
                                    556 ;	./src/main.c:76: unsigned char shift_right(unsigned int bit, unsigned char patt)
                                    557 ;	-----------------------------------------
                                    558 ;	 function shift_right
                                    559 ;	-----------------------------------------
      000132                        560 _shift_right:
      000132 AE 82            [24]  561 	mov	r6,dpl
                                    562 ;	./src/main.c:78: if (patt == 0x80)
      000134 74 80            [12]  563 	mov	a,#0x80
      000136 B5 52 05         [24]  564 	cjne	a,_shift_right_PARM_2,00102$
                                    565 ;	./src/main.c:79: patt = 0x00 + 1;
      000139 75 52 01         [24]  566 	mov	_shift_right_PARM_2,#0x01
      00013C 80 0F            [24]  567 	sjmp	00103$
      00013E                        568 00102$:
                                    569 ;	./src/main.c:81: patt = patt << bit;
      00013E 8E F0            [24]  570 	mov	b,r6
      000140 05 F0            [12]  571 	inc	b
      000142 E5 52            [12]  572 	mov	a,_shift_right_PARM_2
      000144 80 02            [24]  573 	sjmp	00114$
      000146                        574 00112$:
      000146 25 E0            [12]  575 	add	a,acc
      000148                        576 00114$:
      000148 D5 F0 FB         [24]  577 	djnz	b,00112$
      00014B F5 52            [12]  578 	mov	_shift_right_PARM_2,a
      00014D                        579 00103$:
                                    580 ;	./src/main.c:83: led = ~patt;
      00014D E5 52            [12]  581 	mov	a,_shift_right_PARM_2
      00014F F4               [12]  582 	cpl	a
      000150 F5 90            [12]  583 	mov	_P1,a
                                    584 ;	./src/main.c:84: delay_ms(20);
      000152 90 00 14         [24]  585 	mov	dptr,#0x0014
      000155 12 03 F3         [24]  586 	lcall	_delay_ms
                                    587 ;	./src/main.c:85: return patt;
      000158 85 52 82         [24]  588 	mov	dpl,_shift_right_PARM_2
                                    589 ;	./src/main.c:86: }
      00015B 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'light_up'
                                    593 ;------------------------------------------------------------
                                    594 ;patt                      Allocated with name '_light_up_PARM_2'
                                    595 ;idx                       Allocated to registers r6 r7 
                                    596 ;------------------------------------------------------------
                                    597 ;	./src/main.c:87: unsigned char light_up(unsigned int idx, unsigned char patt)
                                    598 ;	-----------------------------------------
                                    599 ;	 function light_up
                                    600 ;	-----------------------------------------
      00015C                        601 _light_up:
      00015C AE 82            [24]  602 	mov	r6,dpl
      00015E AF 83            [24]  603 	mov	r7,dph
                                    604 ;	./src/main.c:89: switch (idx)
      000160 BE 09 05         [24]  605 	cjne	r6,#0x09,00110$
      000163 BF 00 02         [24]  606 	cjne	r7,#0x00,00110$
      000166 80 0F            [24]  607 	sjmp	00103$
      000168                        608 00110$:
                                    609 ;	./src/main.c:95: patt = (0x00 + 1) << idx;
      000168 8E F0            [24]  610 	mov	b,r6
      00016A 05 F0            [12]  611 	inc	b
      00016C 74 01            [12]  612 	mov	a,#0x01
      00016E 80 02            [24]  613 	sjmp	00113$
      000170                        614 00111$:
      000170 25 E0            [12]  615 	add	a,acc
      000172                        616 00113$:
      000172 D5 F0 FB         [24]  617 	djnz	b,00111$
      000175 F5 53            [12]  618 	mov	_light_up_PARM_2,a
                                    619 ;	./src/main.c:97: }
      000177                        620 00103$:
                                    621 ;	./src/main.c:99: led = ~patt;
      000177 E5 53            [12]  622 	mov	a,_light_up_PARM_2
      000179 F4               [12]  623 	cpl	a
      00017A F5 90            [12]  624 	mov	_P1,a
                                    625 ;	./src/main.c:100: delay_ms(20);
      00017C 90 00 14         [24]  626 	mov	dptr,#0x0014
      00017F 12 03 F3         [24]  627 	lcall	_delay_ms
                                    628 ;	./src/main.c:101: return patt;
      000182 85 53 82         [24]  629 	mov	dpl,_light_up_PARM_2
                                    630 ;	./src/main.c:102: }
      000185 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'main'
                                    634 ;------------------------------------------------------------
                                    635 ;i                         Allocated to registers r6 r7 
                                    636 ;i                         Allocated to registers r6 r7 
                                    637 ;------------------------------------------------------------
                                    638 ;	./src/main.c:104: void main(void)
                                    639 ;	-----------------------------------------
                                    640 ;	 function main
                                    641 ;	-----------------------------------------
      000186                        642 _main:
                                    643 ;	./src/main.c:108: for (int i = 0; i < 9; i++)
      000186 7E 00            [12]  644 	mov	r6,#0x00
      000188 7F 00            [12]  645 	mov	r7,#0x00
      00018A                        646 00142$:
      00018A C3               [12]  647 	clr	c
      00018B EE               [12]  648 	mov	a,r6
      00018C 94 09            [12]  649 	subb	a,#0x09
      00018E EF               [12]  650 	mov	a,r7
      00018F 64 80            [12]  651 	xrl	a,#0x80
      000191 94 80            [12]  652 	subb	a,#0x80
      000193 50 31            [24]  653 	jnc	00139$
                                    654 ;	./src/main.c:110: curINPUT[i] = LEVEL_HIGH;
      000195 EE               [12]  655 	mov	a,r6
      000196 2E               [12]  656 	add	a,r6
      000197 FC               [12]  657 	mov	r4,a
      000198 EF               [12]  658 	mov	a,r7
      000199 33               [12]  659 	rlc	a
      00019A FD               [12]  660 	mov	r5,a
      00019B EC               [12]  661 	mov	a,r4
      00019C 24 08            [12]  662 	add	a,#_curINPUT
      00019E F8               [12]  663 	mov	r0,a
      00019F 76 01            [12]  664 	mov	@r0,#0x01
      0001A1 08               [12]  665 	inc	r0
      0001A2 76 00            [12]  666 	mov	@r0,#0x00
                                    667 ;	./src/main.c:111: state[i] = BTN_RELEASED;
      0001A4 EC               [12]  668 	mov	a,r4
      0001A5 24 1A            [12]  669 	add	a,#_state
      0001A7 F8               [12]  670 	mov	r0,a
      0001A8 76 00            [12]  671 	mov	@r0,#0x00
      0001AA 08               [12]  672 	inc	r0
      0001AB 76 00            [12]  673 	mov	@r0,#0x00
                                    674 ;	./src/main.c:112: prestate[i] = BTN_RELEASED;
      0001AD EC               [12]  675 	mov	a,r4
      0001AE 24 2C            [12]  676 	add	a,#_prestate
      0001B0 F8               [12]  677 	mov	r0,a
      0001B1 76 00            [12]  678 	mov	@r0,#0x00
      0001B3 08               [12]  679 	inc	r0
      0001B4 76 00            [12]  680 	mov	@r0,#0x00
                                    681 ;	./src/main.c:113: count[i] = 0;
      0001B6 EC               [12]  682 	mov	a,r4
      0001B7 24 3E            [12]  683 	add	a,#_count
      0001B9 F8               [12]  684 	mov	r0,a
      0001BA 76 00            [12]  685 	mov	@r0,#0x00
      0001BC 08               [12]  686 	inc	r0
      0001BD 76 00            [12]  687 	mov	@r0,#0x00
                                    688 ;	./src/main.c:108: for (int i = 0; i < 9; i++)
      0001BF 0E               [12]  689 	inc	r6
                                    690 ;	./src/main.c:116: while (1)
      0001C0 BE 00 C7         [24]  691 	cjne	r6,#0x00,00142$
      0001C3 0F               [12]  692 	inc	r7
      0001C4 80 C4            [24]  693 	sjmp	00142$
      0001C6                        694 00139$:
                                    695 ;	./src/main.c:118: delay_ms(20);
      0001C6 90 00 14         [24]  696 	mov	dptr,#0x0014
      0001C9 12 03 F3         [24]  697 	lcall	_delay_ms
                                    698 ;	./src/main.c:119: read_curINPUT();
      0001CC 12 00 96         [24]  699 	lcall	_read_curINPUT
                                    700 ;	./src/main.c:122: for (int i = 0; i < 9; i++)
      0001CF 7E 00            [12]  701 	mov	r6,#0x00
      0001D1 7F 00            [12]  702 	mov	r7,#0x00
      0001D3                        703 00145$:
      0001D3 C3               [12]  704 	clr	c
      0001D4 EE               [12]  705 	mov	a,r6
      0001D5 94 09            [12]  706 	subb	a,#0x09
      0001D7 EF               [12]  707 	mov	a,r7
      0001D8 64 80            [12]  708 	xrl	a,#0x80
      0001DA 94 80            [12]  709 	subb	a,#0x80
      0001DC 50 E8            [24]  710 	jnc	00139$
                                    711 ;	./src/main.c:124: switch (state[i])
      0001DE EE               [12]  712 	mov	a,r6
      0001DF 2E               [12]  713 	add	a,r6
      0001E0 FC               [12]  714 	mov	r4,a
      0001E1 EF               [12]  715 	mov	a,r7
      0001E2 33               [12]  716 	rlc	a
      0001E3 FD               [12]  717 	mov	r5,a
      0001E4 EC               [12]  718 	mov	a,r4
      0001E5 24 1A            [12]  719 	add	a,#_state
      0001E7 F9               [12]  720 	mov	r1,a
      0001E8 87 02            [24]  721 	mov	ar2,@r1
      0001EA 09               [12]  722 	inc	r1
      0001EB 87 03            [24]  723 	mov	ar3,@r1
      0001ED 19               [12]  724 	dec	r1
      0001EE C3               [12]  725 	clr	c
      0001EF 74 03            [12]  726 	mov	a,#0x03
      0001F1 9A               [12]  727 	subb	a,r2
      0001F2 E4               [12]  728 	clr	a
      0001F3 9B               [12]  729 	subb	a,r3
      0001F4 50 03            [24]  730 	jnc	00217$
      0001F6 02 02 AC         [24]  731 	ljmp	00121$
      0001F9                        732 00217$:
      0001F9 EA               [12]  733 	mov	a,r2
      0001FA 2A               [12]  734 	add	a,r2
      0001FB 2A               [12]  735 	add	a,r2
      0001FC 90 02 00         [24]  736 	mov	dptr,#00218$
      0001FF 73               [24]  737 	jmp	@a+dptr
      000200                        738 00218$:
      000200 02 02 0C         [24]  739 	ljmp	00102$
      000203 02 02 26         [24]  740 	ljmp	00105$
      000206 02 02 44         [24]  741 	ljmp	00109$
      000209 02 02 87         [24]  742 	ljmp	00116$
                                    743 ;	./src/main.c:126: case BTN_RELEASED:
      00020C                        744 00102$:
                                    745 ;	./src/main.c:127: if (curINPUT[i] == LEVEL_LOW)
      00020C EC               [12]  746 	mov	a,r4
      00020D 24 08            [12]  747 	add	a,#_curINPUT
      00020F F8               [12]  748 	mov	r0,a
      000210 86 02            [24]  749 	mov	ar2,@r0
      000212 08               [12]  750 	inc	r0
      000213 86 03            [24]  751 	mov	ar3,@r0
      000215 18               [12]  752 	dec	r0
      000216 EA               [12]  753 	mov	a,r2
      000217 4B               [12]  754 	orl	a,r3
      000218 60 03            [24]  755 	jz	00219$
      00021A 02 02 AC         [24]  756 	ljmp	00121$
      00021D                        757 00219$:
                                    758 ;	./src/main.c:128: state[i] = BTN_DEBOUNCED;
      00021D 77 01            [12]  759 	mov	@r1,#0x01
      00021F 09               [12]  760 	inc	r1
      000220 77 00            [12]  761 	mov	@r1,#0x00
      000222 19               [12]  762 	dec	r1
                                    763 ;	./src/main.c:129: break;
      000223 02 02 AC         [24]  764 	ljmp	00121$
                                    765 ;	./src/main.c:130: case BTN_DEBOUNCED:
      000226                        766 00105$:
                                    767 ;	./src/main.c:131: if (curINPUT[i] == LEVEL_LOW)
      000226 EC               [12]  768 	mov	a,r4
      000227 24 08            [12]  769 	add	a,#_curINPUT
      000229 F8               [12]  770 	mov	r0,a
      00022A 86 02            [24]  771 	mov	ar2,@r0
      00022C 08               [12]  772 	inc	r0
      00022D 86 03            [24]  773 	mov	ar3,@r0
      00022F 18               [12]  774 	dec	r0
      000230 EA               [12]  775 	mov	a,r2
      000231 4B               [12]  776 	orl	a,r3
      000232 70 08            [24]  777 	jnz	00107$
                                    778 ;	./src/main.c:132: state[i] = BTN_PRESSED;
      000234 77 02            [12]  779 	mov	@r1,#0x02
      000236 09               [12]  780 	inc	r1
      000237 77 00            [12]  781 	mov	@r1,#0x00
      000239 19               [12]  782 	dec	r1
      00023A 80 70            [24]  783 	sjmp	00121$
      00023C                        784 00107$:
                                    785 ;	./src/main.c:134: state[i] = BTN_RELEASED;
      00023C 77 00            [12]  786 	mov	@r1,#0x00
      00023E 09               [12]  787 	inc	r1
      00023F 77 00            [12]  788 	mov	@r1,#0x00
      000241 19               [12]  789 	dec	r1
                                    790 ;	./src/main.c:135: break;
                                    791 ;	./src/main.c:136: case BTN_PRESSED:
      000242 80 68            [24]  792 	sjmp	00121$
      000244                        793 00109$:
                                    794 ;	./src/main.c:137: if (curINPUT[i] == LEVEL_LOW)
      000244 EC               [12]  795 	mov	a,r4
      000245 24 08            [12]  796 	add	a,#_curINPUT
      000247 F8               [12]  797 	mov	r0,a
      000248 86 02            [24]  798 	mov	ar2,@r0
      00024A 08               [12]  799 	inc	r0
      00024B 86 03            [24]  800 	mov	ar3,@r0
      00024D 18               [12]  801 	dec	r0
      00024E EA               [12]  802 	mov	a,r2
      00024F 4B               [12]  803 	orl	a,r3
      000250 70 2D            [24]  804 	jnz	00114$
                                    805 ;	./src/main.c:139: count[i]++;
      000252 EC               [12]  806 	mov	a,r4
      000253 24 3E            [12]  807 	add	a,#_count
      000255 F8               [12]  808 	mov	r0,a
      000256 86 02            [24]  809 	mov	ar2,@r0
      000258 08               [12]  810 	inc	r0
      000259 86 03            [24]  811 	mov	ar3,@r0
      00025B 18               [12]  812 	dec	r0
      00025C 0A               [12]  813 	inc	r2
      00025D BA 00 01         [24]  814 	cjne	r2,#0x00,00222$
      000260 0B               [12]  815 	inc	r3
      000261                        816 00222$:
      000261 A6 02            [24]  817 	mov	@r0,ar2
      000263 08               [12]  818 	inc	r0
      000264 A6 03            [24]  819 	mov	@r0,ar3
      000266 18               [12]  820 	dec	r0
                                    821 ;	./src/main.c:140: if (count[i] > 100)
      000267 C3               [12]  822 	clr	c
      000268 74 64            [12]  823 	mov	a,#0x64
      00026A 9A               [12]  824 	subb	a,r2
      00026B E4               [12]  825 	clr	a
      00026C 9B               [12]  826 	subb	a,r3
      00026D 50 08            [24]  827 	jnc	00111$
                                    828 ;	./src/main.c:141: state[i] = BTN_LONG_PRESSED;
      00026F 77 03            [12]  829 	mov	@r1,#0x03
      000271 09               [12]  830 	inc	r1
      000272 77 00            [12]  831 	mov	@r1,#0x00
      000274 19               [12]  832 	dec	r1
      000275 80 35            [24]  833 	sjmp	00121$
      000277                        834 00111$:
                                    835 ;	./src/main.c:143: state[i] = BTN_PRESSED;
      000277 77 02            [12]  836 	mov	@r1,#0x02
      000279 09               [12]  837 	inc	r1
      00027A 77 00            [12]  838 	mov	@r1,#0x00
      00027C 19               [12]  839 	dec	r1
      00027D 80 2D            [24]  840 	sjmp	00121$
      00027F                        841 00114$:
                                    842 ;	./src/main.c:146: state[i] = BTN_RELEASED;
      00027F 77 00            [12]  843 	mov	@r1,#0x00
      000281 09               [12]  844 	inc	r1
      000282 77 00            [12]  845 	mov	@r1,#0x00
      000284 19               [12]  846 	dec	r1
                                    847 ;	./src/main.c:147: break;
                                    848 ;	./src/main.c:148: case BTN_LONG_PRESSED:
      000285 80 25            [24]  849 	sjmp	00121$
      000287                        850 00116$:
                                    851 ;	./src/main.c:149: if (curINPUT[i] == LEVEL_LOW)
      000287 EC               [12]  852 	mov	a,r4
      000288 24 08            [12]  853 	add	a,#_curINPUT
      00028A F8               [12]  854 	mov	r0,a
      00028B 86 02            [24]  855 	mov	ar2,@r0
      00028D 08               [12]  856 	inc	r0
      00028E 86 03            [24]  857 	mov	ar3,@r0
      000290 18               [12]  858 	dec	r0
      000291 EA               [12]  859 	mov	a,r2
      000292 4B               [12]  860 	orl	a,r3
      000293 70 08            [24]  861 	jnz	00118$
                                    862 ;	./src/main.c:150: state[i] = BTN_LONG_PRESSED;
      000295 77 03            [12]  863 	mov	@r1,#0x03
      000297 09               [12]  864 	inc	r1
      000298 77 00            [12]  865 	mov	@r1,#0x00
      00029A 19               [12]  866 	dec	r1
      00029B 80 0F            [24]  867 	sjmp	00121$
      00029D                        868 00118$:
                                    869 ;	./src/main.c:153: state[i] = BTN_RELEASED;
      00029D 77 00            [12]  870 	mov	@r1,#0x00
      00029F 09               [12]  871 	inc	r1
      0002A0 77 00            [12]  872 	mov	@r1,#0x00
      0002A2 19               [12]  873 	dec	r1
                                    874 ;	./src/main.c:154: count[i] = 0;
      0002A3 EC               [12]  875 	mov	a,r4
      0002A4 24 3E            [12]  876 	add	a,#_count
      0002A6 F8               [12]  877 	mov	r0,a
      0002A7 76 00            [12]  878 	mov	@r0,#0x00
      0002A9 08               [12]  879 	inc	r0
      0002AA 76 00            [12]  880 	mov	@r0,#0x00
                                    881 ;	./src/main.c:159: }
      0002AC                        882 00121$:
                                    883 ;	./src/main.c:160: prestate[i] = state[i];
      0002AC EE               [12]  884 	mov	a,r6
      0002AD 2E               [12]  885 	add	a,r6
      0002AE FC               [12]  886 	mov	r4,a
      0002AF EF               [12]  887 	mov	a,r7
      0002B0 33               [12]  888 	rlc	a
      0002B1 EC               [12]  889 	mov	a,r4
      0002B2 24 2C            [12]  890 	add	a,#_prestate
      0002B4 F9               [12]  891 	mov	r1,a
      0002B5 EC               [12]  892 	mov	a,r4
      0002B6 24 1A            [12]  893 	add	a,#_state
      0002B8 F8               [12]  894 	mov	r0,a
      0002B9 86 04            [24]  895 	mov	ar4,@r0
      0002BB 08               [12]  896 	inc	r0
      0002BC 86 05            [24]  897 	mov	ar5,@r0
      0002BE 18               [12]  898 	dec	r0
      0002BF A7 04            [24]  899 	mov	@r1,ar4
      0002C1 09               [12]  900 	inc	r1
      0002C2 A7 05            [24]  901 	mov	@r1,ar5
      0002C4 19               [12]  902 	dec	r1
                                    903 ;	./src/main.c:163: switch (i)
      0002C5 EF               [12]  904 	mov	a,r7
      0002C6 30 E7 03         [24]  905 	jnb	acc.7,00225$
      0002C9 02 03 EB         [24]  906 	ljmp	00146$
      0002CC                        907 00225$:
      0002CC C3               [12]  908 	clr	c
      0002CD 74 08            [12]  909 	mov	a,#0x08
      0002CF 9E               [12]  910 	subb	a,r6
      0002D0 74 80            [12]  911 	mov	a,#(0x00 ^ 0x80)
      0002D2 8F F0            [24]  912 	mov	b,r7
      0002D4 63 F0 80         [24]  913 	xrl	b,#0x80
      0002D7 95 F0            [12]  914 	subb	a,b
      0002D9 50 03            [24]  915 	jnc	00226$
      0002DB 02 03 EB         [24]  916 	ljmp	00146$
      0002DE                        917 00226$:
      0002DE EE               [12]  918 	mov	a,r6
      0002DF 24 0A            [12]  919 	add	a,#(00227$-3-.)
      0002E1 83               [24]  920 	movc	a,@a+pc
      0002E2 F5 82            [12]  921 	mov	dpl,a
      0002E4 EE               [12]  922 	mov	a,r6
      0002E5 24 0D            [12]  923 	add	a,#(00228$-3-.)
      0002E7 83               [24]  924 	movc	a,@a+pc
      0002E8 F5 83            [12]  925 	mov	dph,a
      0002EA E4               [12]  926 	clr	a
      0002EB 73               [24]  927 	jmp	@a+dptr
      0002EC                        928 00227$:
      0002EC FE                     929 	.db	00122$
      0002ED 3A                     930 	.db	00127$
      0002EE 51                     931 	.db	00128$
      0002EF 68                     932 	.db	00129$
      0002F0 7F                     933 	.db	00130$
      0002F1 95                     934 	.db	00131$
      0002F2 AB                     935 	.db	00132$
      0002F3 C1                     936 	.db	00133$
      0002F4 D7                     937 	.db	00134$
      0002F5                        938 00228$:
      0002F5 02                     939 	.db	00122$>>8
      0002F6 03                     940 	.db	00127$>>8
      0002F7 03                     941 	.db	00128$>>8
      0002F8 03                     942 	.db	00129$>>8
      0002F9 03                     943 	.db	00130$>>8
      0002FA 03                     944 	.db	00131$>>8
      0002FB 03                     945 	.db	00132$>>8
      0002FC 03                     946 	.db	00133$>>8
      0002FD 03                     947 	.db	00134$>>8
                                    948 ;	./src/main.c:165: case 0:
      0002FE                        949 00122$:
                                    950 ;	./src/main.c:166: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED) && count)
      0002FE 86 04            [24]  951 	mov	ar4,@r0
      000300 08               [12]  952 	inc	r0
      000301 86 05            [24]  953 	mov	ar5,@r0
      000303 18               [12]  954 	dec	r0
      000304 EC               [12]  955 	mov	a,r4
      000305 4D               [12]  956 	orl	a,r5
      000306 60 03            [24]  957 	jz	00229$
      000308 02 03 EB         [24]  958 	ljmp	00146$
      00030B                        959 00229$:
      00030B 87 04            [24]  960 	mov	ar4,@r1
      00030D 09               [12]  961 	inc	r1
      00030E 87 05            [24]  962 	mov	ar5,@r1
      000310 19               [12]  963 	dec	r1
      000311 BC 02 05         [24]  964 	cjne	r4,#0x02,00230$
      000314 BD 00 02         [24]  965 	cjne	r5,#0x00,00230$
      000317 80 03            [24]  966 	sjmp	00231$
      000319                        967 00230$:
      000319 02 03 EB         [24]  968 	ljmp	00146$
      00031C                        969 00231$:
      00031C 74 3E            [12]  970 	mov	a,#_count
      00031E 70 03            [24]  971 	jnz	00232$
      000320 02 03 EB         [24]  972 	ljmp	00146$
      000323                        973 00232$:
                                    974 ;	./src/main.c:167: patt = shift_left(1, patt);
      000323 85 50 51         [24]  975 	mov	_shift_left_PARM_2,_patt
      000326 90 00 01         [24]  976 	mov	dptr,#0x0001
      000329 C0 07            [24]  977 	push	ar7
      00032B C0 06            [24]  978 	push	ar6
      00032D 12 00 FE         [24]  979 	lcall	_shift_left
      000330 85 82 50         [24]  980 	mov	_patt,dpl
      000333 D0 06            [24]  981 	pop	ar6
      000335 D0 07            [24]  982 	pop	ar7
                                    983 ;	./src/main.c:168: break;
      000337 02 03 EB         [24]  984 	ljmp	00146$
                                    985 ;	./src/main.c:169: case 1:
      00033A                        986 00127$:
                                    987 ;	./src/main.c:170: patt = light_up(0, patt);
      00033A 85 50 53         [24]  988 	mov	_light_up_PARM_2,_patt
      00033D 90 00 00         [24]  989 	mov	dptr,#0x0000
      000340 C0 07            [24]  990 	push	ar7
      000342 C0 06            [24]  991 	push	ar6
      000344 12 01 5C         [24]  992 	lcall	_light_up
      000347 85 82 50         [24]  993 	mov	_patt,dpl
      00034A D0 06            [24]  994 	pop	ar6
      00034C D0 07            [24]  995 	pop	ar7
                                    996 ;	./src/main.c:171: break;
      00034E 02 03 EB         [24]  997 	ljmp	00146$
                                    998 ;	./src/main.c:172: case 2:
      000351                        999 00128$:
                                   1000 ;	./src/main.c:173: patt = light_up(1, patt);
      000351 85 50 53         [24] 1001 	mov	_light_up_PARM_2,_patt
      000354 90 00 01         [24] 1002 	mov	dptr,#0x0001
      000357 C0 07            [24] 1003 	push	ar7
      000359 C0 06            [24] 1004 	push	ar6
      00035B 12 01 5C         [24] 1005 	lcall	_light_up
      00035E 85 82 50         [24] 1006 	mov	_patt,dpl
      000361 D0 06            [24] 1007 	pop	ar6
      000363 D0 07            [24] 1008 	pop	ar7
                                   1009 ;	./src/main.c:174: break;
      000365 02 03 EB         [24] 1010 	ljmp	00146$
                                   1011 ;	./src/main.c:175: case 3:
      000368                       1012 00129$:
                                   1013 ;	./src/main.c:176: patt = light_up(2, patt);
      000368 85 50 53         [24] 1014 	mov	_light_up_PARM_2,_patt
      00036B 90 00 02         [24] 1015 	mov	dptr,#0x0002
      00036E C0 07            [24] 1016 	push	ar7
      000370 C0 06            [24] 1017 	push	ar6
      000372 12 01 5C         [24] 1018 	lcall	_light_up
      000375 85 82 50         [24] 1019 	mov	_patt,dpl
      000378 D0 06            [24] 1020 	pop	ar6
      00037A D0 07            [24] 1021 	pop	ar7
                                   1022 ;	./src/main.c:177: break;
      00037C 02 03 EB         [24] 1023 	ljmp	00146$
                                   1024 ;	./src/main.c:178: case 4:
      00037F                       1025 00130$:
                                   1026 ;	./src/main.c:179: patt = shift_right(1, patt);
      00037F 85 50 52         [24] 1027 	mov	_shift_right_PARM_2,_patt
      000382 90 00 01         [24] 1028 	mov	dptr,#0x0001
      000385 C0 07            [24] 1029 	push	ar7
      000387 C0 06            [24] 1030 	push	ar6
      000389 12 01 32         [24] 1031 	lcall	_shift_right
      00038C 85 82 50         [24] 1032 	mov	_patt,dpl
      00038F D0 06            [24] 1033 	pop	ar6
      000391 D0 07            [24] 1034 	pop	ar7
                                   1035 ;	./src/main.c:180: break;
                                   1036 ;	./src/main.c:181: case 5:
      000393 80 56            [24] 1037 	sjmp	00146$
      000395                       1038 00131$:
                                   1039 ;	./src/main.c:182: patt = light_up(4, patt);
      000395 85 50 53         [24] 1040 	mov	_light_up_PARM_2,_patt
      000398 90 00 04         [24] 1041 	mov	dptr,#0x0004
      00039B C0 07            [24] 1042 	push	ar7
      00039D C0 06            [24] 1043 	push	ar6
      00039F 12 01 5C         [24] 1044 	lcall	_light_up
      0003A2 85 82 50         [24] 1045 	mov	_patt,dpl
      0003A5 D0 06            [24] 1046 	pop	ar6
      0003A7 D0 07            [24] 1047 	pop	ar7
                                   1048 ;	./src/main.c:183: break;
                                   1049 ;	./src/main.c:184: case 6:
      0003A9 80 40            [24] 1050 	sjmp	00146$
      0003AB                       1051 00132$:
                                   1052 ;	./src/main.c:185: patt = light_up(5, patt);
      0003AB 85 50 53         [24] 1053 	mov	_light_up_PARM_2,_patt
      0003AE 90 00 05         [24] 1054 	mov	dptr,#0x0005
      0003B1 C0 07            [24] 1055 	push	ar7
      0003B3 C0 06            [24] 1056 	push	ar6
      0003B5 12 01 5C         [24] 1057 	lcall	_light_up
      0003B8 85 82 50         [24] 1058 	mov	_patt,dpl
      0003BB D0 06            [24] 1059 	pop	ar6
      0003BD D0 07            [24] 1060 	pop	ar7
                                   1061 ;	./src/main.c:186: break;
                                   1062 ;	./src/main.c:187: case 7:
      0003BF 80 2A            [24] 1063 	sjmp	00146$
      0003C1                       1064 00133$:
                                   1065 ;	./src/main.c:188: patt = light_up(6, patt);
      0003C1 85 50 53         [24] 1066 	mov	_light_up_PARM_2,_patt
      0003C4 90 00 06         [24] 1067 	mov	dptr,#0x0006
      0003C7 C0 07            [24] 1068 	push	ar7
      0003C9 C0 06            [24] 1069 	push	ar6
      0003CB 12 01 5C         [24] 1070 	lcall	_light_up
      0003CE 85 82 50         [24] 1071 	mov	_patt,dpl
      0003D1 D0 06            [24] 1072 	pop	ar6
      0003D3 D0 07            [24] 1073 	pop	ar7
                                   1074 ;	./src/main.c:189: break;
                                   1075 ;	./src/main.c:190: case 8:
      0003D5 80 14            [24] 1076 	sjmp	00146$
      0003D7                       1077 00134$:
                                   1078 ;	./src/main.c:191: patt = shift_left(1, patt);
      0003D7 85 50 51         [24] 1079 	mov	_shift_left_PARM_2,_patt
      0003DA 90 00 01         [24] 1080 	mov	dptr,#0x0001
      0003DD C0 07            [24] 1081 	push	ar7
      0003DF C0 06            [24] 1082 	push	ar6
      0003E1 12 00 FE         [24] 1083 	lcall	_shift_left
      0003E4 85 82 50         [24] 1084 	mov	_patt,dpl
      0003E7 D0 06            [24] 1085 	pop	ar6
      0003E9 D0 07            [24] 1086 	pop	ar7
                                   1087 ;	./src/main.c:195: }
      0003EB                       1088 00146$:
                                   1089 ;	./src/main.c:122: for (int i = 0; i < 9; i++)
      0003EB 0E               [12] 1090 	inc	r6
      0003EC BE 00 01         [24] 1091 	cjne	r6,#0x00,00233$
      0003EF 0F               [12] 1092 	inc	r7
      0003F0                       1093 00233$:
                                   1094 ;	./src/main.c:198: }
      0003F0 02 01 D3         [24] 1095 	ljmp	00145$
                                   1096 	.area CSEG    (CODE)
                                   1097 	.area CONST   (CODE)
                                   1098 	.area XINIT   (CODE)
                                   1099 	.area CABS    (ABS,CODE)
