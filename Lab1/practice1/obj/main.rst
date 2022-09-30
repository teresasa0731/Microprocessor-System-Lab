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
      000054                        253 _main_long_flag_65536_20:
      000054                        254 	.ds 2
      000056                        255 _main_sloc0_1_0:
      000056                        256 	.ds 2
                                    257 ;--------------------------------------------------------
                                    258 ; overlayable items in internal ram
                                    259 ;--------------------------------------------------------
                                    260 	.area	OSEG    (OVR,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; Stack segment in internal ram
                                    263 ;--------------------------------------------------------
                                    264 	.area SSEG
      000058                        265 __start__stack:
      000058                        266 	.ds	1
                                    267 
                                    268 ;--------------------------------------------------------
                                    269 ; indirectly addressable internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area ISEG    (DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; absolute internal ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area IABS    (ABS,DATA)
                                    276 	.area IABS    (ABS,DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; bit data
                                    279 ;--------------------------------------------------------
                                    280 	.area BSEG    (BIT)
                                    281 ;--------------------------------------------------------
                                    282 ; paged external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area PSEG    (PAG,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; uninitialized external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XSEG    (XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; absolute external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XABS    (ABS,XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; initialized external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XISEG   (XDATA)
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT0 (CODE)
                                    299 	.area GSINIT1 (CODE)
                                    300 	.area GSINIT2 (CODE)
                                    301 	.area GSINIT3 (CODE)
                                    302 	.area GSINIT4 (CODE)
                                    303 	.area GSINIT5 (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.area GSFINAL (CODE)
                                    306 	.area CSEG    (CODE)
                                    307 ;--------------------------------------------------------
                                    308 ; interrupt vector
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
      000000                        311 __interrupt_vect:
      000000 02 00 06         [24]  312 	ljmp	__sdcc_gsinit_startup
                                    313 ;--------------------------------------------------------
                                    314 ; global & static initialisations
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.globl __sdcc_gsinit_startup
                                    321 	.globl __sdcc_program_startup
                                    322 	.globl __start__stack
                                    323 	.globl __mcs51_genXINIT
                                    324 	.globl __mcs51_genXRAMCLEAR
                                    325 	.globl __mcs51_genRAMCLEAR
                                    326 ;	./src/main.c:23: unsigned char patt = 0x80; // led value
      00005F 75 50 80         [24]  327 	mov	_patt,#0x80
                                    328 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  329 	ljmp	__sdcc_program_startup
                                    330 ;--------------------------------------------------------
                                    331 ; Home
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area HOME    (CODE)
      000003                        335 __sdcc_program_startup:
      000003 02 01 86         [24]  336 	ljmp	_main
                                    337 ;	return from main will return to caller
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'scan_row'
                                    344 ;------------------------------------------------------------
                                    345 ;row                       Allocated to registers r6 r7 
                                    346 ;------------------------------------------------------------
                                    347 ;	./src/main.c:26: void scan_row(unsigned int row)
                                    348 ;	-----------------------------------------
                                    349 ;	 function scan_row
                                    350 ;	-----------------------------------------
      000065                        351 _scan_row:
                           000007   352 	ar7 = 0x07
                           000006   353 	ar6 = 0x06
                           000005   354 	ar5 = 0x05
                           000004   355 	ar4 = 0x04
                           000003   356 	ar3 = 0x03
                           000002   357 	ar2 = 0x02
                           000001   358 	ar1 = 0x01
                           000000   359 	ar0 = 0x00
      000065 AE 82            [24]  360 	mov	r6,dpl
      000067 AF 83            [24]  361 	mov	r7,dph
                                    362 ;	./src/main.c:28: switch (row)
      000069 BE 00 05         [24]  363 	cjne	r6,#0x00,00120$
      00006C BF 00 02         [24]  364 	cjne	r7,#0x00,00120$
      00006F 80 10            [24]  365 	sjmp	00101$
      000071                        366 00120$:
      000071 BE 01 05         [24]  367 	cjne	r6,#0x01,00121$
      000074 BF 00 02         [24]  368 	cjne	r7,#0x00,00121$
      000077 80 0F            [24]  369 	sjmp	00102$
      000079                        370 00121$:
                                    371 ;	./src/main.c:30: case 0:
      000079 BE 02 19         [24]  372 	cjne	r6,#0x02,00106$
      00007C BF 00 16         [24]  373 	cjne	r7,#0x00,00106$
      00007F 80 0E            [24]  374 	sjmp	00103$
      000081                        375 00101$:
                                    376 ;	./src/main.c:32: OUTPUT0 = 0; // row1 output 0
                                    377 ;	assignBit
      000081 C2 84            [12]  378 	clr	_P0_4
                                    379 ;	./src/main.c:33: OUTPUT1 = 1; // row2 output 1
                                    380 ;	assignBit
      000083 D2 83            [12]  381 	setb	_P0_3
                                    382 ;	./src/main.c:34: OUTPUT2 = 1; // row3 output 1
                                    383 ;	assignBit
      000085 D2 82            [12]  384 	setb	_P0_2
                                    385 ;	./src/main.c:35: break;
                                    386 ;	./src/main.c:37: case 1:
      000087 22               [24]  387 	ret
      000088                        388 00102$:
                                    389 ;	./src/main.c:38: OUTPUT0 = 1; // row1 output 1
                                    390 ;	assignBit
      000088 D2 84            [12]  391 	setb	_P0_4
                                    392 ;	./src/main.c:39: OUTPUT1 = 0; // row2 output 0
                                    393 ;	assignBit
      00008A C2 83            [12]  394 	clr	_P0_3
                                    395 ;	./src/main.c:40: OUTPUT2 = 1; // row3 output 1
                                    396 ;	assignBit
      00008C D2 82            [12]  397 	setb	_P0_2
                                    398 ;	./src/main.c:41: break;
                                    399 ;	./src/main.c:43: case 2:
      00008E 22               [24]  400 	ret
      00008F                        401 00103$:
                                    402 ;	./src/main.c:44: OUTPUT0 = 1; // row1 output 1
                                    403 ;	assignBit
      00008F D2 84            [12]  404 	setb	_P0_4
                                    405 ;	./src/main.c:45: OUTPUT1 = 1; // row2 output 1
                                    406 ;	assignBit
      000091 D2 83            [12]  407 	setb	_P0_3
                                    408 ;	./src/main.c:46: OUTPUT2 = 0; // row3 output 0
                                    409 ;	assignBit
      000093 C2 82            [12]  410 	clr	_P0_2
                                    411 ;	./src/main.c:51: }
      000095                        412 00106$:
                                    413 ;	./src/main.c:52: }
      000095 22               [24]  414 	ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'read_curINPUT'
                                    417 ;------------------------------------------------------------
                                    418 ;i                         Allocated to registers r6 r7 
                                    419 ;------------------------------------------------------------
                                    420 ;	./src/main.c:53: void read_curINPUT(void)
                                    421 ;	-----------------------------------------
                                    422 ;	 function read_curINPUT
                                    423 ;	-----------------------------------------
      000096                        424 _read_curINPUT:
                                    425 ;	./src/main.c:55: for (int i = 0; i < 3; i++)
      000096 7E 00            [12]  426 	mov	r6,#0x00
      000098 7F 00            [12]  427 	mov	r7,#0x00
      00009A                        428 00103$:
      00009A C3               [12]  429 	clr	c
      00009B EE               [12]  430 	mov	a,r6
      00009C 94 03            [12]  431 	subb	a,#0x03
      00009E EF               [12]  432 	mov	a,r7
      00009F 64 80            [12]  433 	xrl	a,#0x80
      0000A1 94 80            [12]  434 	subb	a,#0x80
      0000A3 50 58            [24]  435 	jnc	00105$
                                    436 ;	./src/main.c:57: scan_row(i);
      0000A5 8E 82            [24]  437 	mov	dpl,r6
      0000A7 8F 83            [24]  438 	mov	dph,r7
      0000A9 C0 07            [24]  439 	push	ar7
      0000AB C0 06            [24]  440 	push	ar6
      0000AD 12 00 65         [24]  441 	lcall	_scan_row
      0000B0 D0 06            [24]  442 	pop	ar6
      0000B2 D0 07            [24]  443 	pop	ar7
                                    444 ;	./src/main.c:58: curINPUT[i * 3 + 0] = INPUT0;
      0000B4 8E 05            [24]  445 	mov	ar5,r6
      0000B6 ED               [12]  446 	mov	a,r5
      0000B7 75 F0 03         [24]  447 	mov	b,#0x03
      0000BA A4               [48]  448 	mul	ab
      0000BB FD               [12]  449 	mov	r5,a
      0000BC 25 E0            [12]  450 	add	a,acc
      0000BE 24 08            [12]  451 	add	a,#_curINPUT
      0000C0 F9               [12]  452 	mov	r1,a
      0000C1 A2 87            [12]  453 	mov	c,_P0_7
      0000C3 E4               [12]  454 	clr	a
      0000C4 33               [12]  455 	rlc	a
      0000C5 FB               [12]  456 	mov	r3,a
      0000C6 7C 00            [12]  457 	mov	r4,#0x00
      0000C8 A7 03            [24]  458 	mov	@r1,ar3
      0000CA 09               [12]  459 	inc	r1
      0000CB A7 04            [24]  460 	mov	@r1,ar4
      0000CD 19               [12]  461 	dec	r1
                                    462 ;	./src/main.c:59: curINPUT[i * 3 + 1] = INPUT1;
      0000CE ED               [12]  463 	mov	a,r5
      0000CF 04               [12]  464 	inc	a
      0000D0 25 E0            [12]  465 	add	a,acc
      0000D2 24 08            [12]  466 	add	a,#_curINPUT
      0000D4 F9               [12]  467 	mov	r1,a
      0000D5 A2 86            [12]  468 	mov	c,_P0_6
      0000D7 E4               [12]  469 	clr	a
      0000D8 33               [12]  470 	rlc	a
      0000D9 FB               [12]  471 	mov	r3,a
      0000DA 7C 00            [12]  472 	mov	r4,#0x00
      0000DC A7 03            [24]  473 	mov	@r1,ar3
      0000DE 09               [12]  474 	inc	r1
      0000DF A7 04            [24]  475 	mov	@r1,ar4
      0000E1 19               [12]  476 	dec	r1
                                    477 ;	./src/main.c:60: curINPUT[i * 3 + 2] = INPUT2;
      0000E2 0D               [12]  478 	inc	r5
      0000E3 0D               [12]  479 	inc	r5
      0000E4 ED               [12]  480 	mov	a,r5
      0000E5 2D               [12]  481 	add	a,r5
      0000E6 24 08            [12]  482 	add	a,#_curINPUT
      0000E8 F9               [12]  483 	mov	r1,a
      0000E9 A2 85            [12]  484 	mov	c,_P0_5
      0000EB E4               [12]  485 	clr	a
      0000EC 33               [12]  486 	rlc	a
      0000ED FC               [12]  487 	mov	r4,a
      0000EE 7D 00            [12]  488 	mov	r5,#0x00
      0000F0 A7 04            [24]  489 	mov	@r1,ar4
      0000F2 09               [12]  490 	inc	r1
      0000F3 A7 05            [24]  491 	mov	@r1,ar5
      0000F5 19               [12]  492 	dec	r1
                                    493 ;	./src/main.c:55: for (int i = 0; i < 3; i++)
      0000F6 0E               [12]  494 	inc	r6
      0000F7 BE 00 A0         [24]  495 	cjne	r6,#0x00,00103$
      0000FA 0F               [12]  496 	inc	r7
      0000FB 80 9D            [24]  497 	sjmp	00103$
      0000FD                        498 00105$:
                                    499 ;	./src/main.c:62: }
      0000FD 22               [24]  500 	ret
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'shift_left'
                                    503 ;------------------------------------------------------------
                                    504 ;patt                      Allocated with name '_shift_left_PARM_2'
                                    505 ;bit                       Allocated to registers r6 r7 
                                    506 ;i                         Allocated to registers r4 r5 
                                    507 ;------------------------------------------------------------
                                    508 ;	./src/main.c:63: unsigned char shift_left(unsigned int bit, unsigned char patt)
                                    509 ;	-----------------------------------------
                                    510 ;	 function shift_left
                                    511 ;	-----------------------------------------
      0000FE                        512 _shift_left:
      0000FE AE 82            [24]  513 	mov	r6,dpl
      000100 AF 83            [24]  514 	mov	r7,dph
                                    515 ;	./src/main.c:65: for (int i = 0; i < bit; i++)
      000102 7C 00            [12]  516 	mov	r4,#0x00
      000104 7D 00            [12]  517 	mov	r5,#0x00
      000106                        518 00105$:
      000106 8C 02            [24]  519 	mov	ar2,r4
      000108 8D 03            [24]  520 	mov	ar3,r5
      00010A C3               [12]  521 	clr	c
      00010B EA               [12]  522 	mov	a,r2
      00010C 9E               [12]  523 	subb	a,r6
      00010D EB               [12]  524 	mov	a,r3
      00010E 9F               [12]  525 	subb	a,r7
      00010F 50 12            [24]  526 	jnc	00103$
                                    527 ;	./src/main.c:67: patt = patt >> 1;
      000111 E5 51            [12]  528 	mov	a,_shift_left_PARM_2
      000113 C3               [12]  529 	clr	c
      000114 13               [12]  530 	rrc	a
                                    531 ;	./src/main.c:68: if (patt == 0x00)
      000115 F5 51            [12]  532 	mov	_shift_left_PARM_2,a
      000117 70 03            [24]  533 	jnz	00106$
                                    534 ;	./src/main.c:69: patt = 0x80;
      000119 75 51 80         [24]  535 	mov	_shift_left_PARM_2,#0x80
      00011C                        536 00106$:
                                    537 ;	./src/main.c:65: for (int i = 0; i < bit; i++)
      00011C 0C               [12]  538 	inc	r4
      00011D BC 00 E6         [24]  539 	cjne	r4,#0x00,00105$
      000120 0D               [12]  540 	inc	r5
      000121 80 E3            [24]  541 	sjmp	00105$
      000123                        542 00103$:
                                    543 ;	./src/main.c:72: led = ~patt;
      000123 E5 51            [12]  544 	mov	a,_shift_left_PARM_2
      000125 F4               [12]  545 	cpl	a
      000126 F5 90            [12]  546 	mov	_P1,a
                                    547 ;	./src/main.c:73: delay_ms(20);
      000128 90 00 14         [24]  548 	mov	dptr,#0x0014
      00012B 12 04 95         [24]  549 	lcall	_delay_ms
                                    550 ;	./src/main.c:74: return patt;
      00012E 85 51 82         [24]  551 	mov	dpl,_shift_left_PARM_2
                                    552 ;	./src/main.c:75: }
      000131 22               [24]  553 	ret
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'shift_right'
                                    556 ;------------------------------------------------------------
                                    557 ;patt                      Allocated with name '_shift_right_PARM_2'
                                    558 ;bit                       Allocated to registers r6 r7 
                                    559 ;------------------------------------------------------------
                                    560 ;	./src/main.c:76: unsigned char shift_right(unsigned int bit, unsigned char patt)
                                    561 ;	-----------------------------------------
                                    562 ;	 function shift_right
                                    563 ;	-----------------------------------------
      000132                        564 _shift_right:
      000132 AE 82            [24]  565 	mov	r6,dpl
                                    566 ;	./src/main.c:78: if (patt == 0x80)
      000134 74 80            [12]  567 	mov	a,#0x80
      000136 B5 52 05         [24]  568 	cjne	a,_shift_right_PARM_2,00102$
                                    569 ;	./src/main.c:79: patt = 0x00 + 1;
      000139 75 52 01         [24]  570 	mov	_shift_right_PARM_2,#0x01
      00013C 80 0F            [24]  571 	sjmp	00103$
      00013E                        572 00102$:
                                    573 ;	./src/main.c:81: patt = patt << bit;
      00013E 8E F0            [24]  574 	mov	b,r6
      000140 05 F0            [12]  575 	inc	b
      000142 E5 52            [12]  576 	mov	a,_shift_right_PARM_2
      000144 80 02            [24]  577 	sjmp	00114$
      000146                        578 00112$:
      000146 25 E0            [12]  579 	add	a,acc
      000148                        580 00114$:
      000148 D5 F0 FB         [24]  581 	djnz	b,00112$
      00014B F5 52            [12]  582 	mov	_shift_right_PARM_2,a
      00014D                        583 00103$:
                                    584 ;	./src/main.c:83: led = ~patt;
      00014D E5 52            [12]  585 	mov	a,_shift_right_PARM_2
      00014F F4               [12]  586 	cpl	a
      000150 F5 90            [12]  587 	mov	_P1,a
                                    588 ;	./src/main.c:84: delay_ms(20);
      000152 90 00 14         [24]  589 	mov	dptr,#0x0014
      000155 12 04 95         [24]  590 	lcall	_delay_ms
                                    591 ;	./src/main.c:85: return patt;
      000158 85 52 82         [24]  592 	mov	dpl,_shift_right_PARM_2
                                    593 ;	./src/main.c:86: }
      00015B 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'light_up'
                                    597 ;------------------------------------------------------------
                                    598 ;patt                      Allocated with name '_light_up_PARM_2'
                                    599 ;idx                       Allocated to registers r6 r7 
                                    600 ;------------------------------------------------------------
                                    601 ;	./src/main.c:87: unsigned char light_up(unsigned int idx, unsigned char patt)
                                    602 ;	-----------------------------------------
                                    603 ;	 function light_up
                                    604 ;	-----------------------------------------
      00015C                        605 _light_up:
      00015C AE 82            [24]  606 	mov	r6,dpl
      00015E AF 83            [24]  607 	mov	r7,dph
                                    608 ;	./src/main.c:89: switch (idx)
      000160 BE 09 05         [24]  609 	cjne	r6,#0x09,00110$
      000163 BF 00 02         [24]  610 	cjne	r7,#0x00,00110$
      000166 80 0F            [24]  611 	sjmp	00103$
      000168                        612 00110$:
                                    613 ;	./src/main.c:95: patt = (0x00 + 1) << idx;
      000168 8E F0            [24]  614 	mov	b,r6
      00016A 05 F0            [12]  615 	inc	b
      00016C 74 01            [12]  616 	mov	a,#0x01
      00016E 80 02            [24]  617 	sjmp	00113$
      000170                        618 00111$:
      000170 25 E0            [12]  619 	add	a,acc
      000172                        620 00113$:
      000172 D5 F0 FB         [24]  621 	djnz	b,00111$
      000175 F5 53            [12]  622 	mov	_light_up_PARM_2,a
                                    623 ;	./src/main.c:97: }
      000177                        624 00103$:
                                    625 ;	./src/main.c:99: led = ~patt;
      000177 E5 53            [12]  626 	mov	a,_light_up_PARM_2
      000179 F4               [12]  627 	cpl	a
      00017A F5 90            [12]  628 	mov	_P1,a
                                    629 ;	./src/main.c:100: delay_ms(20);
      00017C 90 00 14         [24]  630 	mov	dptr,#0x0014
      00017F 12 04 95         [24]  631 	lcall	_delay_ms
                                    632 ;	./src/main.c:101: return patt;
      000182 85 53 82         [24]  633 	mov	dpl,_light_up_PARM_2
                                    634 ;	./src/main.c:102: }
      000185 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'main'
                                    638 ;------------------------------------------------------------
                                    639 ;long_flag                 Allocated with name '_main_long_flag_65536_20'
                                    640 ;i                         Allocated to registers r4 r5 
                                    641 ;i                         Allocated to registers r4 r5 
                                    642 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    643 ;------------------------------------------------------------
                                    644 ;	./src/main.c:104: void main(void)
                                    645 ;	-----------------------------------------
                                    646 ;	 function main
                                    647 ;	-----------------------------------------
      000186                        648 _main:
                                    649 ;	./src/main.c:107: int long_flag = 0;
      000186 E4               [12]  650 	clr	a
      000187 F5 54            [12]  651 	mov	_main_long_flag_65536_20,a
      000189 F5 55            [12]  652 	mov	(_main_long_flag_65536_20 + 1),a
                                    653 ;	./src/main.c:109: for (int i = 0; i < 9; i++)
      00018B 7C 00            [12]  654 	mov	r4,#0x00
      00018D 7D 00            [12]  655 	mov	r5,#0x00
      00018F                        656 00151$:
      00018F C3               [12]  657 	clr	c
      000190 EC               [12]  658 	mov	a,r4
      000191 94 09            [12]  659 	subb	a,#0x09
      000193 ED               [12]  660 	mov	a,r5
      000194 64 80            [12]  661 	xrl	a,#0x80
      000196 94 80            [12]  662 	subb	a,#0x80
      000198 50 31            [24]  663 	jnc	00148$
                                    664 ;	./src/main.c:111: curINPUT[i] = LEVEL_HIGH;
      00019A EC               [12]  665 	mov	a,r4
      00019B 2C               [12]  666 	add	a,r4
      00019C FA               [12]  667 	mov	r2,a
      00019D ED               [12]  668 	mov	a,r5
      00019E 33               [12]  669 	rlc	a
      00019F FB               [12]  670 	mov	r3,a
      0001A0 EA               [12]  671 	mov	a,r2
      0001A1 24 08            [12]  672 	add	a,#_curINPUT
      0001A3 F8               [12]  673 	mov	r0,a
      0001A4 76 01            [12]  674 	mov	@r0,#0x01
      0001A6 08               [12]  675 	inc	r0
      0001A7 76 00            [12]  676 	mov	@r0,#0x00
                                    677 ;	./src/main.c:112: state[i] = BTN_RELEASED;
      0001A9 EA               [12]  678 	mov	a,r2
      0001AA 24 1A            [12]  679 	add	a,#_state
      0001AC F8               [12]  680 	mov	r0,a
      0001AD 76 00            [12]  681 	mov	@r0,#0x00
      0001AF 08               [12]  682 	inc	r0
      0001B0 76 00            [12]  683 	mov	@r0,#0x00
                                    684 ;	./src/main.c:113: prestate[i] = BTN_RELEASED;
      0001B2 EA               [12]  685 	mov	a,r2
      0001B3 24 2C            [12]  686 	add	a,#_prestate
      0001B5 F8               [12]  687 	mov	r0,a
      0001B6 76 00            [12]  688 	mov	@r0,#0x00
      0001B8 08               [12]  689 	inc	r0
      0001B9 76 00            [12]  690 	mov	@r0,#0x00
                                    691 ;	./src/main.c:114: count[i] = 0;
      0001BB EA               [12]  692 	mov	a,r2
      0001BC 24 3E            [12]  693 	add	a,#_count
      0001BE F8               [12]  694 	mov	r0,a
      0001BF 76 00            [12]  695 	mov	@r0,#0x00
      0001C1 08               [12]  696 	inc	r0
      0001C2 76 00            [12]  697 	mov	@r0,#0x00
                                    698 ;	./src/main.c:109: for (int i = 0; i < 9; i++)
      0001C4 0C               [12]  699 	inc	r4
                                    700 ;	./src/main.c:117: while (1)
      0001C5 BC 00 C7         [24]  701 	cjne	r4,#0x00,00151$
      0001C8 0D               [12]  702 	inc	r5
      0001C9 80 C4            [24]  703 	sjmp	00151$
      0001CB                        704 00148$:
                                    705 ;	./src/main.c:119: delay_ms(20);
      0001CB 90 00 14         [24]  706 	mov	dptr,#0x0014
      0001CE 12 04 95         [24]  707 	lcall	_delay_ms
                                    708 ;	./src/main.c:120: read_curINPUT();
      0001D1 12 00 96         [24]  709 	lcall	_read_curINPUT
                                    710 ;	./src/main.c:123: for (int i = 0; i < 9; i++)
      0001D4 7C 00            [12]  711 	mov	r4,#0x00
      0001D6 7D 00            [12]  712 	mov	r5,#0x00
      0001D8                        713 00154$:
      0001D8 C3               [12]  714 	clr	c
      0001D9 EC               [12]  715 	mov	a,r4
      0001DA 94 09            [12]  716 	subb	a,#0x09
      0001DC ED               [12]  717 	mov	a,r5
      0001DD 64 80            [12]  718 	xrl	a,#0x80
      0001DF 94 80            [12]  719 	subb	a,#0x80
      0001E1 50 E8            [24]  720 	jnc	00148$
                                    721 ;	./src/main.c:125: switch (state[i])
      0001E3 EC               [12]  722 	mov	a,r4
      0001E4 2C               [12]  723 	add	a,r4
      0001E5 FA               [12]  724 	mov	r2,a
      0001E6 ED               [12]  725 	mov	a,r5
      0001E7 33               [12]  726 	rlc	a
      0001E8 FB               [12]  727 	mov	r3,a
      0001E9 EA               [12]  728 	mov	a,r2
      0001EA 24 1A            [12]  729 	add	a,#_state
      0001EC F9               [12]  730 	mov	r1,a
      0001ED 87 56            [24]  731 	mov	_main_sloc0_1_0,@r1
      0001EF 09               [12]  732 	inc	r1
      0001F0 87 57            [24]  733 	mov	(_main_sloc0_1_0 + 1),@r1
      0001F2 19               [12]  734 	dec	r1
      0001F3 C3               [12]  735 	clr	c
      0001F4 74 03            [12]  736 	mov	a,#0x03
      0001F6 95 56            [12]  737 	subb	a,_main_sloc0_1_0
      0001F8 E4               [12]  738 	clr	a
      0001F9 95 57            [12]  739 	subb	a,(_main_sloc0_1_0 + 1)
      0001FB 50 03            [24]  740 	jnc	00242$
      0001FD 02 02 BD         [24]  741 	ljmp	00121$
      000200                        742 00242$:
      000200 E5 56            [12]  743 	mov	a,_main_sloc0_1_0
      000202 75 F0 03         [24]  744 	mov	b,#0x03
      000205 A4               [48]  745 	mul	ab
      000206 90 02 0A         [24]  746 	mov	dptr,#00243$
      000209 73               [24]  747 	jmp	@a+dptr
      00020A                        748 00243$:
      00020A 02 02 16         [24]  749 	ljmp	00102$
      00020D 02 02 30         [24]  750 	ljmp	00105$
      000210 02 02 4F         [24]  751 	ljmp	00109$
      000213 02 02 98         [24]  752 	ljmp	00116$
                                    753 ;	./src/main.c:127: case BTN_RELEASED:
      000216                        754 00102$:
                                    755 ;	./src/main.c:128: if (curINPUT[i] == LEVEL_LOW)
      000216 EA               [12]  756 	mov	a,r2
      000217 24 08            [12]  757 	add	a,#_curINPUT
      000219 F8               [12]  758 	mov	r0,a
      00021A 86 06            [24]  759 	mov	ar6,@r0
      00021C 08               [12]  760 	inc	r0
      00021D 86 07            [24]  761 	mov	ar7,@r0
      00021F 18               [12]  762 	dec	r0
      000220 EE               [12]  763 	mov	a,r6
      000221 4F               [12]  764 	orl	a,r7
      000222 60 03            [24]  765 	jz	00244$
      000224 02 02 BD         [24]  766 	ljmp	00121$
      000227                        767 00244$:
                                    768 ;	./src/main.c:129: state[i] = BTN_DEBOUNCED;
      000227 77 01            [12]  769 	mov	@r1,#0x01
      000229 09               [12]  770 	inc	r1
      00022A 77 00            [12]  771 	mov	@r1,#0x00
      00022C 19               [12]  772 	dec	r1
                                    773 ;	./src/main.c:130: break;
      00022D 02 02 BD         [24]  774 	ljmp	00121$
                                    775 ;	./src/main.c:131: case BTN_DEBOUNCED:
      000230                        776 00105$:
                                    777 ;	./src/main.c:132: if (curINPUT[i] == LEVEL_LOW)
      000230 EA               [12]  778 	mov	a,r2
      000231 24 08            [12]  779 	add	a,#_curINPUT
      000233 F8               [12]  780 	mov	r0,a
      000234 86 06            [24]  781 	mov	ar6,@r0
      000236 08               [12]  782 	inc	r0
      000237 86 07            [24]  783 	mov	ar7,@r0
      000239 18               [12]  784 	dec	r0
      00023A EE               [12]  785 	mov	a,r6
      00023B 4F               [12]  786 	orl	a,r7
      00023C 70 09            [24]  787 	jnz	00107$
                                    788 ;	./src/main.c:133: state[i] = BTN_PRESSED;
      00023E 77 02            [12]  789 	mov	@r1,#0x02
      000240 09               [12]  790 	inc	r1
      000241 77 00            [12]  791 	mov	@r1,#0x00
      000243 19               [12]  792 	dec	r1
      000244 02 02 BD         [24]  793 	ljmp	00121$
      000247                        794 00107$:
                                    795 ;	./src/main.c:135: state[i] = BTN_RELEASED;
      000247 77 00            [12]  796 	mov	@r1,#0x00
      000249 09               [12]  797 	inc	r1
      00024A 77 00            [12]  798 	mov	@r1,#0x00
      00024C 19               [12]  799 	dec	r1
                                    800 ;	./src/main.c:136: break;
                                    801 ;	./src/main.c:137: case BTN_PRESSED:
      00024D 80 6E            [24]  802 	sjmp	00121$
      00024F                        803 00109$:
                                    804 ;	./src/main.c:138: if (curINPUT[i] == LEVEL_LOW)
      00024F EA               [12]  805 	mov	a,r2
      000250 24 08            [12]  806 	add	a,#_curINPUT
      000252 F8               [12]  807 	mov	r0,a
      000253 86 06            [24]  808 	mov	ar6,@r0
      000255 08               [12]  809 	inc	r0
      000256 86 07            [24]  810 	mov	ar7,@r0
      000258 18               [12]  811 	dec	r0
      000259 EE               [12]  812 	mov	a,r6
      00025A 4F               [12]  813 	orl	a,r7
      00025B 70 33            [24]  814 	jnz	00114$
                                    815 ;	./src/main.c:140: count[i]++;
      00025D EA               [12]  816 	mov	a,r2
      00025E 24 3E            [12]  817 	add	a,#_count
      000260 F8               [12]  818 	mov	r0,a
      000261 86 06            [24]  819 	mov	ar6,@r0
      000263 08               [12]  820 	inc	r0
      000264 86 07            [24]  821 	mov	ar7,@r0
      000266 18               [12]  822 	dec	r0
      000267 0E               [12]  823 	inc	r6
      000268 BE 00 01         [24]  824 	cjne	r6,#0x00,00247$
      00026B 0F               [12]  825 	inc	r7
      00026C                        826 00247$:
      00026C A6 06            [24]  827 	mov	@r0,ar6
      00026E 08               [12]  828 	inc	r0
      00026F A6 07            [24]  829 	mov	@r0,ar7
      000271 18               [12]  830 	dec	r0
                                    831 ;	./src/main.c:141: if (count[i] > 50)
      000272 C3               [12]  832 	clr	c
      000273 74 32            [12]  833 	mov	a,#0x32
      000275 9E               [12]  834 	subb	a,r6
      000276 E4               [12]  835 	clr	a
      000277 9F               [12]  836 	subb	a,r7
      000278 50 0E            [24]  837 	jnc	00111$
                                    838 ;	./src/main.c:143: state[i] = BTN_LONG_PRESSED;
      00027A 77 03            [12]  839 	mov	@r1,#0x03
      00027C 09               [12]  840 	inc	r1
      00027D 77 00            [12]  841 	mov	@r1,#0x00
      00027F 19               [12]  842 	dec	r1
                                    843 ;	./src/main.c:144: long_flag = 1;
      000280 75 54 01         [24]  844 	mov	_main_long_flag_65536_20,#0x01
      000283 75 55 00         [24]  845 	mov	(_main_long_flag_65536_20 + 1),#0x00
      000286 80 35            [24]  846 	sjmp	00121$
      000288                        847 00111$:
                                    848 ;	./src/main.c:148: state[i] = BTN_PRESSED;
      000288 77 02            [12]  849 	mov	@r1,#0x02
      00028A 09               [12]  850 	inc	r1
      00028B 77 00            [12]  851 	mov	@r1,#0x00
      00028D 19               [12]  852 	dec	r1
      00028E 80 2D            [24]  853 	sjmp	00121$
      000290                        854 00114$:
                                    855 ;	./src/main.c:151: state[i] = BTN_RELEASED;
      000290 77 00            [12]  856 	mov	@r1,#0x00
      000292 09               [12]  857 	inc	r1
      000293 77 00            [12]  858 	mov	@r1,#0x00
      000295 19               [12]  859 	dec	r1
                                    860 ;	./src/main.c:152: break;
                                    861 ;	./src/main.c:153: case BTN_LONG_PRESSED:
      000296 80 25            [24]  862 	sjmp	00121$
      000298                        863 00116$:
                                    864 ;	./src/main.c:154: if (curINPUT[i] == LEVEL_LOW)
      000298 EA               [12]  865 	mov	a,r2
      000299 24 08            [12]  866 	add	a,#_curINPUT
      00029B F8               [12]  867 	mov	r0,a
      00029C 86 06            [24]  868 	mov	ar6,@r0
      00029E 08               [12]  869 	inc	r0
      00029F 86 07            [24]  870 	mov	ar7,@r0
      0002A1 18               [12]  871 	dec	r0
      0002A2 EE               [12]  872 	mov	a,r6
      0002A3 4F               [12]  873 	orl	a,r7
      0002A4 70 08            [24]  874 	jnz	00118$
                                    875 ;	./src/main.c:155: state[i] = BTN_LONG_PRESSED;
      0002A6 77 03            [12]  876 	mov	@r1,#0x03
      0002A8 09               [12]  877 	inc	r1
      0002A9 77 00            [12]  878 	mov	@r1,#0x00
      0002AB 19               [12]  879 	dec	r1
      0002AC 80 0F            [24]  880 	sjmp	00121$
      0002AE                        881 00118$:
                                    882 ;	./src/main.c:158: state[i] = BTN_RELEASED;
      0002AE 77 00            [12]  883 	mov	@r1,#0x00
      0002B0 09               [12]  884 	inc	r1
      0002B1 77 00            [12]  885 	mov	@r1,#0x00
      0002B3 19               [12]  886 	dec	r1
                                    887 ;	./src/main.c:159: count[i] = 0;
      0002B4 EA               [12]  888 	mov	a,r2
      0002B5 24 3E            [12]  889 	add	a,#_count
      0002B7 F8               [12]  890 	mov	r0,a
      0002B8 76 00            [12]  891 	mov	@r0,#0x00
      0002BA 08               [12]  892 	inc	r0
      0002BB 76 00            [12]  893 	mov	@r0,#0x00
                                    894 ;	./src/main.c:164: }
      0002BD                        895 00121$:
                                    896 ;	./src/main.c:167: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED))
      0002BD EC               [12]  897 	mov	a,r4
      0002BE 2C               [12]  898 	add	a,r4
      0002BF FE               [12]  899 	mov	r6,a
      0002C0 ED               [12]  900 	mov	a,r5
      0002C1 33               [12]  901 	rlc	a
      0002C2 FF               [12]  902 	mov	r7,a
      0002C3 EE               [12]  903 	mov	a,r6
      0002C4 24 1A            [12]  904 	add	a,#_state
      0002C6 F9               [12]  905 	mov	r1,a
      0002C7 87 02            [24]  906 	mov	ar2,@r1
      0002C9 09               [12]  907 	inc	r1
      0002CA 87 03            [24]  908 	mov	ar3,@r1
      0002CC 19               [12]  909 	dec	r1
      0002CD EA               [12]  910 	mov	a,r2
      0002CE 4B               [12]  911 	orl	a,r3
      0002CF 60 03            [24]  912 	jz	00250$
      0002D1 02 03 FC         [24]  913 	ljmp	00143$
      0002D4                        914 00250$:
      0002D4 EE               [12]  915 	mov	a,r6
      0002D5 24 2C            [12]  916 	add	a,#_prestate
      0002D7 F9               [12]  917 	mov	r1,a
      0002D8 87 06            [24]  918 	mov	ar6,@r1
      0002DA 09               [12]  919 	inc	r1
      0002DB 87 07            [24]  920 	mov	ar7,@r1
      0002DD 19               [12]  921 	dec	r1
      0002DE BE 02 05         [24]  922 	cjne	r6,#0x02,00251$
      0002E1 BF 00 02         [24]  923 	cjne	r7,#0x00,00251$
      0002E4 80 03            [24]  924 	sjmp	00252$
      0002E6                        925 00251$:
      0002E6 02 03 FC         [24]  926 	ljmp	00143$
      0002E9                        927 00252$:
                                    928 ;	./src/main.c:169: switch (i)
      0002E9 ED               [12]  929 	mov	a,r5
      0002EA 30 E7 03         [24]  930 	jnb	acc.7,00253$
      0002ED 02 03 EA         [24]  931 	ljmp	00132$
      0002F0                        932 00253$:
      0002F0 C3               [12]  933 	clr	c
      0002F1 74 08            [12]  934 	mov	a,#0x08
      0002F3 9C               [12]  935 	subb	a,r4
      0002F4 74 80            [12]  936 	mov	a,#(0x00 ^ 0x80)
      0002F6 8D F0            [24]  937 	mov	b,r5
      0002F8 63 F0 80         [24]  938 	xrl	b,#0x80
      0002FB 95 F0            [12]  939 	subb	a,b
      0002FD 50 03            [24]  940 	jnc	00254$
      0002FF 02 03 EA         [24]  941 	ljmp	00132$
      000302                        942 00254$:
      000302 EC               [12]  943 	mov	a,r4
      000303 24 0A            [12]  944 	add	a,#(00255$-3-.)
      000305 83               [24]  945 	movc	a,@a+pc
      000306 F5 82            [12]  946 	mov	dpl,a
      000308 EC               [12]  947 	mov	a,r4
      000309 24 0D            [12]  948 	add	a,#(00256$-3-.)
      00030B 83               [24]  949 	movc	a,@a+pc
      00030C F5 83            [12]  950 	mov	dph,a
      00030E E4               [12]  951 	clr	a
      00030F 73               [24]  952 	jmp	@a+dptr
      000310                        953 00255$:
      000310 22                     954 	.db	00122$
      000311 39                     955 	.db	00123$
      000312 50                     956 	.db	00124$
      000313 67                     957 	.db	00125$
      000314 7E                     958 	.db	00126$
      000315 94                     959 	.db	00127$
      000316 AA                     960 	.db	00128$
      000317 C0                     961 	.db	00129$
      000318 D6                     962 	.db	00130$
      000319                        963 00256$:
      000319 03                     964 	.db	00122$>>8
      00031A 03                     965 	.db	00123$>>8
      00031B 03                     966 	.db	00124$>>8
      00031C 03                     967 	.db	00125$>>8
      00031D 03                     968 	.db	00126$>>8
      00031E 03                     969 	.db	00127$>>8
      00031F 03                     970 	.db	00128$>>8
      000320 03                     971 	.db	00129$>>8
      000321 03                     972 	.db	00130$>>8
                                    973 ;	./src/main.c:171: case 0:
      000322                        974 00122$:
                                    975 ;	./src/main.c:172: patt = shift_left(1, patt);
      000322 85 50 51         [24]  976 	mov	_shift_left_PARM_2,_patt
      000325 90 00 01         [24]  977 	mov	dptr,#0x0001
      000328 C0 05            [24]  978 	push	ar5
      00032A C0 04            [24]  979 	push	ar4
      00032C 12 00 FE         [24]  980 	lcall	_shift_left
      00032F 85 82 50         [24]  981 	mov	_patt,dpl
      000332 D0 04            [24]  982 	pop	ar4
      000334 D0 05            [24]  983 	pop	ar5
                                    984 ;	./src/main.c:173: break;
      000336 02 03 EA         [24]  985 	ljmp	00132$
                                    986 ;	./src/main.c:174: case 1:
      000339                        987 00123$:
                                    988 ;	./src/main.c:175: patt = light_up(0, patt);
      000339 85 50 53         [24]  989 	mov	_light_up_PARM_2,_patt
      00033C 90 00 00         [24]  990 	mov	dptr,#0x0000
      00033F C0 05            [24]  991 	push	ar5
      000341 C0 04            [24]  992 	push	ar4
      000343 12 01 5C         [24]  993 	lcall	_light_up
      000346 85 82 50         [24]  994 	mov	_patt,dpl
      000349 D0 04            [24]  995 	pop	ar4
      00034B D0 05            [24]  996 	pop	ar5
                                    997 ;	./src/main.c:176: break;
      00034D 02 03 EA         [24]  998 	ljmp	00132$
                                    999 ;	./src/main.c:177: case 2:
      000350                       1000 00124$:
                                   1001 ;	./src/main.c:178: patt = light_up(1, patt);
      000350 85 50 53         [24] 1002 	mov	_light_up_PARM_2,_patt
      000353 90 00 01         [24] 1003 	mov	dptr,#0x0001
      000356 C0 05            [24] 1004 	push	ar5
      000358 C0 04            [24] 1005 	push	ar4
      00035A 12 01 5C         [24] 1006 	lcall	_light_up
      00035D 85 82 50         [24] 1007 	mov	_patt,dpl
      000360 D0 04            [24] 1008 	pop	ar4
      000362 D0 05            [24] 1009 	pop	ar5
                                   1010 ;	./src/main.c:179: break;
      000364 02 03 EA         [24] 1011 	ljmp	00132$
                                   1012 ;	./src/main.c:180: case 3:
      000367                       1013 00125$:
                                   1014 ;	./src/main.c:181: patt = light_up(2, patt);
      000367 85 50 53         [24] 1015 	mov	_light_up_PARM_2,_patt
      00036A 90 00 02         [24] 1016 	mov	dptr,#0x0002
      00036D C0 05            [24] 1017 	push	ar5
      00036F C0 04            [24] 1018 	push	ar4
      000371 12 01 5C         [24] 1019 	lcall	_light_up
      000374 85 82 50         [24] 1020 	mov	_patt,dpl
      000377 D0 04            [24] 1021 	pop	ar4
      000379 D0 05            [24] 1022 	pop	ar5
                                   1023 ;	./src/main.c:182: break;
      00037B 02 03 EA         [24] 1024 	ljmp	00132$
                                   1025 ;	./src/main.c:183: case 4:
      00037E                       1026 00126$:
                                   1027 ;	./src/main.c:184: patt = shift_right(1, patt);
      00037E 85 50 52         [24] 1028 	mov	_shift_right_PARM_2,_patt
      000381 90 00 01         [24] 1029 	mov	dptr,#0x0001
      000384 C0 05            [24] 1030 	push	ar5
      000386 C0 04            [24] 1031 	push	ar4
      000388 12 01 32         [24] 1032 	lcall	_shift_right
      00038B 85 82 50         [24] 1033 	mov	_patt,dpl
      00038E D0 04            [24] 1034 	pop	ar4
      000390 D0 05            [24] 1035 	pop	ar5
                                   1036 ;	./src/main.c:185: break;
                                   1037 ;	./src/main.c:186: case 5:
      000392 80 56            [24] 1038 	sjmp	00132$
      000394                       1039 00127$:
                                   1040 ;	./src/main.c:187: patt = light_up(4, patt);
      000394 85 50 53         [24] 1041 	mov	_light_up_PARM_2,_patt
      000397 90 00 04         [24] 1042 	mov	dptr,#0x0004
      00039A C0 05            [24] 1043 	push	ar5
      00039C C0 04            [24] 1044 	push	ar4
      00039E 12 01 5C         [24] 1045 	lcall	_light_up
      0003A1 85 82 50         [24] 1046 	mov	_patt,dpl
      0003A4 D0 04            [24] 1047 	pop	ar4
      0003A6 D0 05            [24] 1048 	pop	ar5
                                   1049 ;	./src/main.c:188: break;
                                   1050 ;	./src/main.c:189: case 6:
      0003A8 80 40            [24] 1051 	sjmp	00132$
      0003AA                       1052 00128$:
                                   1053 ;	./src/main.c:190: patt = light_up(5, patt);
      0003AA 85 50 53         [24] 1054 	mov	_light_up_PARM_2,_patt
      0003AD 90 00 05         [24] 1055 	mov	dptr,#0x0005
      0003B0 C0 05            [24] 1056 	push	ar5
      0003B2 C0 04            [24] 1057 	push	ar4
      0003B4 12 01 5C         [24] 1058 	lcall	_light_up
      0003B7 85 82 50         [24] 1059 	mov	_patt,dpl
      0003BA D0 04            [24] 1060 	pop	ar4
      0003BC D0 05            [24] 1061 	pop	ar5
                                   1062 ;	./src/main.c:191: break;
                                   1063 ;	./src/main.c:192: case 7:
      0003BE 80 2A            [24] 1064 	sjmp	00132$
      0003C0                       1065 00129$:
                                   1066 ;	./src/main.c:193: patt = light_up(6, patt);
      0003C0 85 50 53         [24] 1067 	mov	_light_up_PARM_2,_patt
      0003C3 90 00 06         [24] 1068 	mov	dptr,#0x0006
      0003C6 C0 05            [24] 1069 	push	ar5
      0003C8 C0 04            [24] 1070 	push	ar4
      0003CA 12 01 5C         [24] 1071 	lcall	_light_up
      0003CD 85 82 50         [24] 1072 	mov	_patt,dpl
      0003D0 D0 04            [24] 1073 	pop	ar4
      0003D2 D0 05            [24] 1074 	pop	ar5
                                   1075 ;	./src/main.c:194: break;
                                   1076 ;	./src/main.c:195: case 8:
      0003D4 80 14            [24] 1077 	sjmp	00132$
      0003D6                       1078 00130$:
                                   1079 ;	./src/main.c:196: patt = shift_left(1, patt);
      0003D6 85 50 51         [24] 1080 	mov	_shift_left_PARM_2,_patt
      0003D9 90 00 01         [24] 1081 	mov	dptr,#0x0001
      0003DC C0 05            [24] 1082 	push	ar5
      0003DE C0 04            [24] 1083 	push	ar4
      0003E0 12 00 FE         [24] 1084 	lcall	_shift_left
      0003E3 85 82 50         [24] 1085 	mov	_patt,dpl
      0003E6 D0 04            [24] 1086 	pop	ar4
      0003E8 D0 05            [24] 1087 	pop	ar5
                                   1088 ;	./src/main.c:200: }
      0003EA                       1089 00132$:
                                   1090 ;	./src/main.c:201: count[i] = 0;
      0003EA EC               [12] 1091 	mov	a,r4
      0003EB 2C               [12] 1092 	add	a,r4
      0003EC FE               [12] 1093 	mov	r6,a
      0003ED ED               [12] 1094 	mov	a,r5
      0003EE 33               [12] 1095 	rlc	a
      0003EF FF               [12] 1096 	mov	r7,a
      0003F0 EE               [12] 1097 	mov	a,r6
      0003F1 24 3E            [12] 1098 	add	a,#_count
      0003F3 F8               [12] 1099 	mov	r0,a
      0003F4 76 00            [12] 1100 	mov	@r0,#0x00
      0003F6 08               [12] 1101 	inc	r0
      0003F7 76 00            [12] 1102 	mov	@r0,#0x00
      0003F9 02 04 74         [24] 1103 	ljmp	00144$
      0003FC                       1104 00143$:
                                   1105 ;	./src/main.c:203: else if (state[i] == BTN_LONG_PRESSED)
      0003FC EC               [12] 1106 	mov	a,r4
      0003FD 2C               [12] 1107 	add	a,r4
      0003FE FE               [12] 1108 	mov	r6,a
      0003FF ED               [12] 1109 	mov	a,r5
      000400 33               [12] 1110 	rlc	a
      000401 EE               [12] 1111 	mov	a,r6
      000402 24 1A            [12] 1112 	add	a,#_state
      000404 F9               [12] 1113 	mov	r1,a
      000405 87 06            [24] 1114 	mov	ar6,@r1
      000407 09               [12] 1115 	inc	r1
      000408 87 07            [24] 1116 	mov	ar7,@r1
      00040A 19               [12] 1117 	dec	r1
      00040B BE 03 66         [24] 1118 	cjne	r6,#0x03,00144$
      00040E BF 00 63         [24] 1119 	cjne	r7,#0x00,00144$
                                   1120 ;	./src/main.c:205: switch (i)
      000411 BC 00 05         [24] 1121 	cjne	r4,#0x00,00259$
      000414 BD 00 02         [24] 1122 	cjne	r5,#0x00,00259$
      000417 80 10            [24] 1123 	sjmp	00133$
      000419                       1124 00259$:
      000419 BC 04 05         [24] 1125 	cjne	r4,#0x04,00260$
      00041C BD 00 02         [24] 1126 	cjne	r5,#0x00,00260$
      00041F 80 1E            [24] 1127 	sjmp	00134$
      000421                       1128 00260$:
                                   1129 ;	./src/main.c:207: case 0:
      000421 BC 08 50         [24] 1130 	cjne	r4,#0x08,00144$
      000424 BD 00 4D         [24] 1131 	cjne	r5,#0x00,00144$
      000427 80 2C            [24] 1132 	sjmp	00135$
      000429                       1133 00133$:
                                   1134 ;	./src/main.c:208: patt = light_up(9, patt);
      000429 85 50 53         [24] 1135 	mov	_light_up_PARM_2,_patt
      00042C 90 00 09         [24] 1136 	mov	dptr,#0x0009
      00042F C0 05            [24] 1137 	push	ar5
      000431 C0 04            [24] 1138 	push	ar4
      000433 12 01 5C         [24] 1139 	lcall	_light_up
      000436 85 82 50         [24] 1140 	mov	_patt,dpl
      000439 D0 04            [24] 1141 	pop	ar4
      00043B D0 05            [24] 1142 	pop	ar5
                                   1143 ;	./src/main.c:209: break;
                                   1144 ;	./src/main.c:210: case 4:
      00043D 80 35            [24] 1145 	sjmp	00144$
      00043F                       1146 00134$:
                                   1147 ;	./src/main.c:211: patt = shift_right(1, patt);
      00043F 85 50 52         [24] 1148 	mov	_shift_right_PARM_2,_patt
      000442 90 00 01         [24] 1149 	mov	dptr,#0x0001
      000445 C0 05            [24] 1150 	push	ar5
      000447 C0 04            [24] 1151 	push	ar4
      000449 12 01 32         [24] 1152 	lcall	_shift_right
      00044C 85 82 50         [24] 1153 	mov	_patt,dpl
      00044F D0 04            [24] 1154 	pop	ar4
      000451 D0 05            [24] 1155 	pop	ar5
                                   1156 ;	./src/main.c:212: break;
                                   1157 ;	./src/main.c:213: case 8:
      000453 80 1F            [24] 1158 	sjmp	00144$
      000455                       1159 00135$:
                                   1160 ;	./src/main.c:214: if (long_flag)
      000455 E5 54            [12] 1161 	mov	a,_main_long_flag_65536_20
      000457 45 55            [12] 1162 	orl	a,(_main_long_flag_65536_20 + 1)
      000459 60 19            [24] 1163 	jz	00144$
                                   1164 ;	./src/main.c:216: patt = shift_left(2, patt);
      00045B 85 50 51         [24] 1165 	mov	_shift_left_PARM_2,_patt
      00045E 90 00 02         [24] 1166 	mov	dptr,#0x0002
      000461 C0 05            [24] 1167 	push	ar5
      000463 C0 04            [24] 1168 	push	ar4
      000465 12 00 FE         [24] 1169 	lcall	_shift_left
      000468 85 82 50         [24] 1170 	mov	_patt,dpl
      00046B D0 04            [24] 1171 	pop	ar4
      00046D D0 05            [24] 1172 	pop	ar5
                                   1173 ;	./src/main.c:217: long_flag = 0;
      00046F E4               [12] 1174 	clr	a
      000470 F5 54            [12] 1175 	mov	_main_long_flag_65536_20,a
      000472 F5 55            [12] 1176 	mov	(_main_long_flag_65536_20 + 1),a
                                   1177 ;	./src/main.c:222: }
      000474                       1178 00144$:
                                   1179 ;	./src/main.c:225: prestate[i] = state[i];
      000474 EC               [12] 1180 	mov	a,r4
      000475 2C               [12] 1181 	add	a,r4
      000476 FE               [12] 1182 	mov	r6,a
      000477 ED               [12] 1183 	mov	a,r5
      000478 33               [12] 1184 	rlc	a
      000479 EE               [12] 1185 	mov	a,r6
      00047A 24 2C            [12] 1186 	add	a,#_prestate
      00047C F9               [12] 1187 	mov	r1,a
      00047D EE               [12] 1188 	mov	a,r6
      00047E 24 1A            [12] 1189 	add	a,#_state
      000480 F8               [12] 1190 	mov	r0,a
      000481 86 06            [24] 1191 	mov	ar6,@r0
      000483 08               [12] 1192 	inc	r0
      000484 86 07            [24] 1193 	mov	ar7,@r0
      000486 18               [12] 1194 	dec	r0
      000487 A7 06            [24] 1195 	mov	@r1,ar6
      000489 09               [12] 1196 	inc	r1
      00048A A7 07            [24] 1197 	mov	@r1,ar7
      00048C 19               [12] 1198 	dec	r1
                                   1199 ;	./src/main.c:123: for (int i = 0; i < 9; i++)
      00048D 0C               [12] 1200 	inc	r4
      00048E BC 00 01         [24] 1201 	cjne	r4,#0x00,00263$
      000491 0D               [12] 1202 	inc	r5
      000492                       1203 00263$:
                                   1204 ;	./src/main.c:228: }
      000492 02 01 D8         [24] 1205 	ljmp	00154$
                                   1206 	.area CSEG    (CODE)
                                   1207 	.area CONST   (CODE)
                                   1208 	.area XINIT   (CODE)
                                   1209 	.area CABS    (ABS,CODE)
