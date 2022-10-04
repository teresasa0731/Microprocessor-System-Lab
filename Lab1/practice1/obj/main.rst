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
      000056                        255 _main_double_cnt_65536_20:
      000056                        256 	.ds 2
      000058                        257 _main_double_flag_65536_20:
      000058                        258 	.ds 2
      00005A                        259 _main_sloc0_1_0:
      00005A                        260 	.ds 2
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable items in internal ram
                                    263 ;--------------------------------------------------------
                                    264 	.area	OSEG    (OVR,DATA)
                                    265 ;--------------------------------------------------------
                                    266 ; Stack segment in internal ram
                                    267 ;--------------------------------------------------------
                                    268 	.area SSEG
      00005C                        269 __start__stack:
      00005C                        270 	.ds	1
                                    271 
                                    272 ;--------------------------------------------------------
                                    273 ; indirectly addressable internal ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area ISEG    (DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; absolute internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area IABS    (ABS,DATA)
                                    280 	.area IABS    (ABS,DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; bit data
                                    283 ;--------------------------------------------------------
                                    284 	.area BSEG    (BIT)
                                    285 ;--------------------------------------------------------
                                    286 ; paged external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area PSEG    (PAG,XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; uninitialized external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XSEG    (XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; absolute external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XABS    (ABS,XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; initialized external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XISEG   (XDATA)
                                    301 	.area HOME    (CODE)
                                    302 	.area GSINIT0 (CODE)
                                    303 	.area GSINIT1 (CODE)
                                    304 	.area GSINIT2 (CODE)
                                    305 	.area GSINIT3 (CODE)
                                    306 	.area GSINIT4 (CODE)
                                    307 	.area GSINIT5 (CODE)
                                    308 	.area GSINIT  (CODE)
                                    309 	.area GSFINAL (CODE)
                                    310 	.area CSEG    (CODE)
                                    311 ;--------------------------------------------------------
                                    312 ; interrupt vector
                                    313 ;--------------------------------------------------------
                                    314 	.area HOME    (CODE)
      000000                        315 __interrupt_vect:
      000000 02 00 06         [24]  316 	ljmp	__sdcc_gsinit_startup
                                    317 ;--------------------------------------------------------
                                    318 ; global & static initialisations
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.globl __sdcc_gsinit_startup
                                    325 	.globl __sdcc_program_startup
                                    326 	.globl __start__stack
                                    327 	.globl __mcs51_genXINIT
                                    328 	.globl __mcs51_genXRAMCLEAR
                                    329 	.globl __mcs51_genRAMCLEAR
                                    330 ;	./src/main.c:25: unsigned char patt = 0x80; // led value
      00005F 75 50 80         [24]  331 	mov	_patt,#0x80
                                    332 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  333 	ljmp	__sdcc_program_startup
                                    334 ;--------------------------------------------------------
                                    335 ; Home
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
                                    338 	.area HOME    (CODE)
      000003                        339 __sdcc_program_startup:
      000003 02 01 86         [24]  340 	ljmp	_main
                                    341 ;	return from main will return to caller
                                    342 ;--------------------------------------------------------
                                    343 ; code
                                    344 ;--------------------------------------------------------
                                    345 	.area CSEG    (CODE)
                                    346 ;------------------------------------------------------------
                                    347 ;Allocation info for local variables in function 'scan_row'
                                    348 ;------------------------------------------------------------
                                    349 ;row                       Allocated to registers r6 r7 
                                    350 ;------------------------------------------------------------
                                    351 ;	./src/main.c:28: void scan_row(unsigned int row)
                                    352 ;	-----------------------------------------
                                    353 ;	 function scan_row
                                    354 ;	-----------------------------------------
      000065                        355 _scan_row:
                           000007   356 	ar7 = 0x07
                           000006   357 	ar6 = 0x06
                           000005   358 	ar5 = 0x05
                           000004   359 	ar4 = 0x04
                           000003   360 	ar3 = 0x03
                           000002   361 	ar2 = 0x02
                           000001   362 	ar1 = 0x01
                           000000   363 	ar0 = 0x00
      000065 AE 82            [24]  364 	mov	r6,dpl
      000067 AF 83            [24]  365 	mov	r7,dph
                                    366 ;	./src/main.c:30: switch (row)
      000069 BE 00 05         [24]  367 	cjne	r6,#0x00,00120$
      00006C BF 00 02         [24]  368 	cjne	r7,#0x00,00120$
      00006F 80 10            [24]  369 	sjmp	00101$
      000071                        370 00120$:
      000071 BE 01 05         [24]  371 	cjne	r6,#0x01,00121$
      000074 BF 00 02         [24]  372 	cjne	r7,#0x00,00121$
      000077 80 0F            [24]  373 	sjmp	00102$
      000079                        374 00121$:
                                    375 ;	./src/main.c:32: case 0:
      000079 BE 02 19         [24]  376 	cjne	r6,#0x02,00106$
      00007C BF 00 16         [24]  377 	cjne	r7,#0x00,00106$
      00007F 80 0E            [24]  378 	sjmp	00103$
      000081                        379 00101$:
                                    380 ;	./src/main.c:33: OUTPUT0 = 0; // row1 output 0
                                    381 ;	assignBit
      000081 C2 84            [12]  382 	clr	_P0_4
                                    383 ;	./src/main.c:34: OUTPUT1 = 1; // row2 output 1
                                    384 ;	assignBit
      000083 D2 83            [12]  385 	setb	_P0_3
                                    386 ;	./src/main.c:35: OUTPUT2 = 1; // row3 output 1
                                    387 ;	assignBit
      000085 D2 82            [12]  388 	setb	_P0_2
                                    389 ;	./src/main.c:36: break;
                                    390 ;	./src/main.c:37: case 1:
      000087 22               [24]  391 	ret
      000088                        392 00102$:
                                    393 ;	./src/main.c:38: OUTPUT0 = 1; // row1 output 1
                                    394 ;	assignBit
      000088 D2 84            [12]  395 	setb	_P0_4
                                    396 ;	./src/main.c:39: OUTPUT1 = 0; // row2 output 0
                                    397 ;	assignBit
      00008A C2 83            [12]  398 	clr	_P0_3
                                    399 ;	./src/main.c:40: OUTPUT2 = 1; // row3 output 1
                                    400 ;	assignBit
      00008C D2 82            [12]  401 	setb	_P0_2
                                    402 ;	./src/main.c:41: break;
                                    403 ;	./src/main.c:42: case 2:
      00008E 22               [24]  404 	ret
      00008F                        405 00103$:
                                    406 ;	./src/main.c:43: OUTPUT0 = 1; // row1 output 1
                                    407 ;	assignBit
      00008F D2 84            [12]  408 	setb	_P0_4
                                    409 ;	./src/main.c:44: OUTPUT1 = 1; // row2 output 1
                                    410 ;	assignBit
      000091 D2 83            [12]  411 	setb	_P0_3
                                    412 ;	./src/main.c:45: OUTPUT2 = 0; // row3 output 0
                                    413 ;	assignBit
      000093 C2 82            [12]  414 	clr	_P0_2
                                    415 ;	./src/main.c:49: }
      000095                        416 00106$:
                                    417 ;	./src/main.c:50: }
      000095 22               [24]  418 	ret
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'read_curINPUT'
                                    421 ;------------------------------------------------------------
                                    422 ;i                         Allocated to registers r6 r7 
                                    423 ;------------------------------------------------------------
                                    424 ;	./src/main.c:51: void read_curINPUT(void)
                                    425 ;	-----------------------------------------
                                    426 ;	 function read_curINPUT
                                    427 ;	-----------------------------------------
      000096                        428 _read_curINPUT:
                                    429 ;	./src/main.c:53: for (int i = 0; i < 3; i++)
      000096 7E 00            [12]  430 	mov	r6,#0x00
      000098 7F 00            [12]  431 	mov	r7,#0x00
      00009A                        432 00103$:
      00009A C3               [12]  433 	clr	c
      00009B EE               [12]  434 	mov	a,r6
      00009C 94 03            [12]  435 	subb	a,#0x03
      00009E EF               [12]  436 	mov	a,r7
      00009F 64 80            [12]  437 	xrl	a,#0x80
      0000A1 94 80            [12]  438 	subb	a,#0x80
      0000A3 50 58            [24]  439 	jnc	00105$
                                    440 ;	./src/main.c:55: scan_row(i);
      0000A5 8E 82            [24]  441 	mov	dpl,r6
      0000A7 8F 83            [24]  442 	mov	dph,r7
      0000A9 C0 07            [24]  443 	push	ar7
      0000AB C0 06            [24]  444 	push	ar6
      0000AD 12 00 65         [24]  445 	lcall	_scan_row
      0000B0 D0 06            [24]  446 	pop	ar6
      0000B2 D0 07            [24]  447 	pop	ar7
                                    448 ;	./src/main.c:56: curINPUT[i * 3 + 0] = INPUT0;
      0000B4 8E 05            [24]  449 	mov	ar5,r6
      0000B6 ED               [12]  450 	mov	a,r5
      0000B7 75 F0 03         [24]  451 	mov	b,#0x03
      0000BA A4               [48]  452 	mul	ab
      0000BB FD               [12]  453 	mov	r5,a
      0000BC 25 E0            [12]  454 	add	a,acc
      0000BE 24 08            [12]  455 	add	a,#_curINPUT
      0000C0 F9               [12]  456 	mov	r1,a
      0000C1 A2 87            [12]  457 	mov	c,_P0_7
      0000C3 E4               [12]  458 	clr	a
      0000C4 33               [12]  459 	rlc	a
      0000C5 FB               [12]  460 	mov	r3,a
      0000C6 7C 00            [12]  461 	mov	r4,#0x00
      0000C8 A7 03            [24]  462 	mov	@r1,ar3
      0000CA 09               [12]  463 	inc	r1
      0000CB A7 04            [24]  464 	mov	@r1,ar4
      0000CD 19               [12]  465 	dec	r1
                                    466 ;	./src/main.c:57: curINPUT[i * 3 + 1] = INPUT1;
      0000CE ED               [12]  467 	mov	a,r5
      0000CF 04               [12]  468 	inc	a
      0000D0 25 E0            [12]  469 	add	a,acc
      0000D2 24 08            [12]  470 	add	a,#_curINPUT
      0000D4 F9               [12]  471 	mov	r1,a
      0000D5 A2 86            [12]  472 	mov	c,_P0_6
      0000D7 E4               [12]  473 	clr	a
      0000D8 33               [12]  474 	rlc	a
      0000D9 FB               [12]  475 	mov	r3,a
      0000DA 7C 00            [12]  476 	mov	r4,#0x00
      0000DC A7 03            [24]  477 	mov	@r1,ar3
      0000DE 09               [12]  478 	inc	r1
      0000DF A7 04            [24]  479 	mov	@r1,ar4
      0000E1 19               [12]  480 	dec	r1
                                    481 ;	./src/main.c:58: curINPUT[i * 3 + 2] = INPUT2;
      0000E2 0D               [12]  482 	inc	r5
      0000E3 0D               [12]  483 	inc	r5
      0000E4 ED               [12]  484 	mov	a,r5
      0000E5 2D               [12]  485 	add	a,r5
      0000E6 24 08            [12]  486 	add	a,#_curINPUT
      0000E8 F9               [12]  487 	mov	r1,a
      0000E9 A2 85            [12]  488 	mov	c,_P0_5
      0000EB E4               [12]  489 	clr	a
      0000EC 33               [12]  490 	rlc	a
      0000ED FC               [12]  491 	mov	r4,a
      0000EE 7D 00            [12]  492 	mov	r5,#0x00
      0000F0 A7 04            [24]  493 	mov	@r1,ar4
      0000F2 09               [12]  494 	inc	r1
      0000F3 A7 05            [24]  495 	mov	@r1,ar5
      0000F5 19               [12]  496 	dec	r1
                                    497 ;	./src/main.c:53: for (int i = 0; i < 3; i++)
      0000F6 0E               [12]  498 	inc	r6
      0000F7 BE 00 A0         [24]  499 	cjne	r6,#0x00,00103$
      0000FA 0F               [12]  500 	inc	r7
      0000FB 80 9D            [24]  501 	sjmp	00103$
      0000FD                        502 00105$:
                                    503 ;	./src/main.c:60: }
      0000FD 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'shift_left'
                                    507 ;------------------------------------------------------------
                                    508 ;patt                      Allocated with name '_shift_left_PARM_2'
                                    509 ;bit                       Allocated to registers r6 r7 
                                    510 ;i                         Allocated to registers r4 r5 
                                    511 ;------------------------------------------------------------
                                    512 ;	./src/main.c:61: unsigned char shift_left(unsigned int bit, unsigned char patt)
                                    513 ;	-----------------------------------------
                                    514 ;	 function shift_left
                                    515 ;	-----------------------------------------
      0000FE                        516 _shift_left:
      0000FE AE 82            [24]  517 	mov	r6,dpl
      000100 AF 83            [24]  518 	mov	r7,dph
                                    519 ;	./src/main.c:63: for (int i = 0; i < bit; i++)
      000102 7C 00            [12]  520 	mov	r4,#0x00
      000104 7D 00            [12]  521 	mov	r5,#0x00
      000106                        522 00105$:
      000106 8C 02            [24]  523 	mov	ar2,r4
      000108 8D 03            [24]  524 	mov	ar3,r5
      00010A C3               [12]  525 	clr	c
      00010B EA               [12]  526 	mov	a,r2
      00010C 9E               [12]  527 	subb	a,r6
      00010D EB               [12]  528 	mov	a,r3
      00010E 9F               [12]  529 	subb	a,r7
      00010F 50 12            [24]  530 	jnc	00103$
                                    531 ;	./src/main.c:65: patt = patt >> 1;
      000111 E5 51            [12]  532 	mov	a,_shift_left_PARM_2
      000113 C3               [12]  533 	clr	c
      000114 13               [12]  534 	rrc	a
                                    535 ;	./src/main.c:66: if (patt == 0x00)
      000115 F5 51            [12]  536 	mov	_shift_left_PARM_2,a
      000117 70 03            [24]  537 	jnz	00106$
                                    538 ;	./src/main.c:67: patt = 0x80;
      000119 75 51 80         [24]  539 	mov	_shift_left_PARM_2,#0x80
      00011C                        540 00106$:
                                    541 ;	./src/main.c:63: for (int i = 0; i < bit; i++)
      00011C 0C               [12]  542 	inc	r4
      00011D BC 00 E6         [24]  543 	cjne	r4,#0x00,00105$
      000120 0D               [12]  544 	inc	r5
      000121 80 E3            [24]  545 	sjmp	00105$
      000123                        546 00103$:
                                    547 ;	./src/main.c:69: led = ~patt;
      000123 E5 51            [12]  548 	mov	a,_shift_left_PARM_2
      000125 F4               [12]  549 	cpl	a
      000126 F5 90            [12]  550 	mov	_P1,a
                                    551 ;	./src/main.c:70: delay_ms(20);
      000128 90 00 14         [24]  552 	mov	dptr,#0x0014
      00012B 12 05 03         [24]  553 	lcall	_delay_ms
                                    554 ;	./src/main.c:71: return patt;
      00012E 85 51 82         [24]  555 	mov	dpl,_shift_left_PARM_2
                                    556 ;	./src/main.c:72: }
      000131 22               [24]  557 	ret
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'shift_right'
                                    560 ;------------------------------------------------------------
                                    561 ;patt                      Allocated with name '_shift_right_PARM_2'
                                    562 ;bit                       Allocated to registers r6 r7 
                                    563 ;------------------------------------------------------------
                                    564 ;	./src/main.c:73: unsigned char shift_right(unsigned int bit, unsigned char patt)
                                    565 ;	-----------------------------------------
                                    566 ;	 function shift_right
                                    567 ;	-----------------------------------------
      000132                        568 _shift_right:
      000132 AE 82            [24]  569 	mov	r6,dpl
                                    570 ;	./src/main.c:75: if (patt == 0x80)
      000134 74 80            [12]  571 	mov	a,#0x80
      000136 B5 52 05         [24]  572 	cjne	a,_shift_right_PARM_2,00102$
                                    573 ;	./src/main.c:76: patt = 0x00 + 1;
      000139 75 52 01         [24]  574 	mov	_shift_right_PARM_2,#0x01
      00013C 80 0F            [24]  575 	sjmp	00103$
      00013E                        576 00102$:
                                    577 ;	./src/main.c:78: patt = patt << bit;
      00013E 8E F0            [24]  578 	mov	b,r6
      000140 05 F0            [12]  579 	inc	b
      000142 E5 52            [12]  580 	mov	a,_shift_right_PARM_2
      000144 80 02            [24]  581 	sjmp	00114$
      000146                        582 00112$:
      000146 25 E0            [12]  583 	add	a,acc
      000148                        584 00114$:
      000148 D5 F0 FB         [24]  585 	djnz	b,00112$
      00014B F5 52            [12]  586 	mov	_shift_right_PARM_2,a
      00014D                        587 00103$:
                                    588 ;	./src/main.c:79: led = ~patt;
      00014D E5 52            [12]  589 	mov	a,_shift_right_PARM_2
      00014F F4               [12]  590 	cpl	a
      000150 F5 90            [12]  591 	mov	_P1,a
                                    592 ;	./src/main.c:80: delay_ms(20);
      000152 90 00 14         [24]  593 	mov	dptr,#0x0014
      000155 12 05 03         [24]  594 	lcall	_delay_ms
                                    595 ;	./src/main.c:81: return patt;
      000158 85 52 82         [24]  596 	mov	dpl,_shift_right_PARM_2
                                    597 ;	./src/main.c:82: }
      00015B 22               [24]  598 	ret
                                    599 ;------------------------------------------------------------
                                    600 ;Allocation info for local variables in function 'light_up'
                                    601 ;------------------------------------------------------------
                                    602 ;patt                      Allocated with name '_light_up_PARM_2'
                                    603 ;idx                       Allocated to registers r6 r7 
                                    604 ;------------------------------------------------------------
                                    605 ;	./src/main.c:83: unsigned char light_up(unsigned int idx, unsigned char patt)
                                    606 ;	-----------------------------------------
                                    607 ;	 function light_up
                                    608 ;	-----------------------------------------
      00015C                        609 _light_up:
      00015C AE 82            [24]  610 	mov	r6,dpl
      00015E AF 83            [24]  611 	mov	r7,dph
                                    612 ;	./src/main.c:85: switch (idx)
      000160 BE 09 05         [24]  613 	cjne	r6,#0x09,00110$
      000163 BF 00 02         [24]  614 	cjne	r7,#0x00,00110$
      000166 80 0F            [24]  615 	sjmp	00103$
      000168                        616 00110$:
                                    617 ;	./src/main.c:91: patt = (0x00 + 1) << idx;
      000168 8E F0            [24]  618 	mov	b,r6
      00016A 05 F0            [12]  619 	inc	b
      00016C 74 01            [12]  620 	mov	a,#0x01
      00016E 80 02            [24]  621 	sjmp	00113$
      000170                        622 00111$:
      000170 25 E0            [12]  623 	add	a,acc
      000172                        624 00113$:
      000172 D5 F0 FB         [24]  625 	djnz	b,00111$
      000175 F5 53            [12]  626 	mov	_light_up_PARM_2,a
                                    627 ;	./src/main.c:93: }
      000177                        628 00103$:
                                    629 ;	./src/main.c:94: led = ~patt;
      000177 E5 53            [12]  630 	mov	a,_light_up_PARM_2
      000179 F4               [12]  631 	cpl	a
      00017A F5 90            [12]  632 	mov	_P1,a
                                    633 ;	./src/main.c:95: delay_ms(20);
      00017C 90 00 14         [24]  634 	mov	dptr,#0x0014
      00017F 12 05 03         [24]  635 	lcall	_delay_ms
                                    636 ;	./src/main.c:96: return patt;
      000182 85 53 82         [24]  637 	mov	dpl,_light_up_PARM_2
                                    638 ;	./src/main.c:97: }
      000185 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'main'
                                    642 ;------------------------------------------------------------
                                    643 ;long_flag                 Allocated with name '_main_long_flag_65536_20'
                                    644 ;double_cnt                Allocated with name '_main_double_cnt_65536_20'
                                    645 ;double_flag               Allocated with name '_main_double_flag_65536_20'
                                    646 ;i                         Allocated to registers r6 r7 
                                    647 ;i                         Allocated to registers r6 r7 
                                    648 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    649 ;------------------------------------------------------------
                                    650 ;	./src/main.c:99: void main(void)
                                    651 ;	-----------------------------------------
                                    652 ;	 function main
                                    653 ;	-----------------------------------------
      000186                        654 _main:
                                    655 ;	./src/main.c:101: int long_flag = 0, double_cnt = 0, double_flag = 0;
      000186 E4               [12]  656 	clr	a
      000187 F5 54            [12]  657 	mov	_main_long_flag_65536_20,a
      000189 F5 55            [12]  658 	mov	(_main_long_flag_65536_20 + 1),a
      00018B F5 56            [12]  659 	mov	_main_double_cnt_65536_20,a
      00018D F5 57            [12]  660 	mov	(_main_double_cnt_65536_20 + 1),a
      00018F F5 58            [12]  661 	mov	_main_double_flag_65536_20,a
      000191 F5 59            [12]  662 	mov	(_main_double_flag_65536_20 + 1),a
                                    663 ;	./src/main.c:104: for (int i = 0; i < 9; i++)
      000193 7E 00            [12]  664 	mov	r6,#0x00
      000195 7F 00            [12]  665 	mov	r7,#0x00
      000197                        666 00161$:
      000197 C3               [12]  667 	clr	c
      000198 EE               [12]  668 	mov	a,r6
      000199 94 09            [12]  669 	subb	a,#0x09
      00019B EF               [12]  670 	mov	a,r7
      00019C 64 80            [12]  671 	xrl	a,#0x80
      00019E 94 80            [12]  672 	subb	a,#0x80
      0001A0 50 31            [24]  673 	jnc	00158$
                                    674 ;	./src/main.c:106: curINPUT[i] = LEVEL_HIGH;
      0001A2 EE               [12]  675 	mov	a,r6
      0001A3 2E               [12]  676 	add	a,r6
      0001A4 FA               [12]  677 	mov	r2,a
      0001A5 EF               [12]  678 	mov	a,r7
      0001A6 33               [12]  679 	rlc	a
      0001A7 FB               [12]  680 	mov	r3,a
      0001A8 EA               [12]  681 	mov	a,r2
      0001A9 24 08            [12]  682 	add	a,#_curINPUT
      0001AB F8               [12]  683 	mov	r0,a
      0001AC 76 01            [12]  684 	mov	@r0,#0x01
      0001AE 08               [12]  685 	inc	r0
      0001AF 76 00            [12]  686 	mov	@r0,#0x00
                                    687 ;	./src/main.c:107: state[i] = BTN_RELEASED;
      0001B1 EA               [12]  688 	mov	a,r2
      0001B2 24 1A            [12]  689 	add	a,#_state
      0001B4 F8               [12]  690 	mov	r0,a
      0001B5 76 00            [12]  691 	mov	@r0,#0x00
      0001B7 08               [12]  692 	inc	r0
      0001B8 76 00            [12]  693 	mov	@r0,#0x00
                                    694 ;	./src/main.c:108: prestate[i] = BTN_RELEASED;
      0001BA EA               [12]  695 	mov	a,r2
      0001BB 24 2C            [12]  696 	add	a,#_prestate
      0001BD F8               [12]  697 	mov	r0,a
      0001BE 76 00            [12]  698 	mov	@r0,#0x00
      0001C0 08               [12]  699 	inc	r0
      0001C1 76 00            [12]  700 	mov	@r0,#0x00
                                    701 ;	./src/main.c:109: count[i] = 0;
      0001C3 EA               [12]  702 	mov	a,r2
      0001C4 24 3E            [12]  703 	add	a,#_count
      0001C6 F8               [12]  704 	mov	r0,a
      0001C7 76 00            [12]  705 	mov	@r0,#0x00
      0001C9 08               [12]  706 	inc	r0
      0001CA 76 00            [12]  707 	mov	@r0,#0x00
                                    708 ;	./src/main.c:104: for (int i = 0; i < 9; i++)
      0001CC 0E               [12]  709 	inc	r6
                                    710 ;	./src/main.c:112: while (1)
      0001CD BE 00 C7         [24]  711 	cjne	r6,#0x00,00161$
      0001D0 0F               [12]  712 	inc	r7
      0001D1 80 C4            [24]  713 	sjmp	00161$
      0001D3                        714 00158$:
                                    715 ;	./src/main.c:114: delay_ms(20);
      0001D3 90 00 14         [24]  716 	mov	dptr,#0x0014
      0001D6 12 05 03         [24]  717 	lcall	_delay_ms
                                    718 ;	./src/main.c:115: read_curINPUT();
      0001D9 12 00 96         [24]  719 	lcall	_read_curINPUT
                                    720 ;	./src/main.c:116: for (int i = 0; i < 9; i++)
      0001DC 7E 00            [12]  721 	mov	r6,#0x00
      0001DE 7F 00            [12]  722 	mov	r7,#0x00
      0001E0                        723 00164$:
      0001E0 C3               [12]  724 	clr	c
      0001E1 EE               [12]  725 	mov	a,r6
      0001E2 94 09            [12]  726 	subb	a,#0x09
      0001E4 EF               [12]  727 	mov	a,r7
      0001E5 64 80            [12]  728 	xrl	a,#0x80
      0001E7 94 80            [12]  729 	subb	a,#0x80
      0001E9 50 E8            [24]  730 	jnc	00158$
                                    731 ;	./src/main.c:120: switch (state[i])
      0001EB EE               [12]  732 	mov	a,r6
      0001EC 2E               [12]  733 	add	a,r6
      0001ED FA               [12]  734 	mov	r2,a
      0001EE EF               [12]  735 	mov	a,r7
      0001EF 33               [12]  736 	rlc	a
      0001F0 FB               [12]  737 	mov	r3,a
      0001F1 EA               [12]  738 	mov	a,r2
      0001F2 24 1A            [12]  739 	add	a,#_state
      0001F4 F9               [12]  740 	mov	r1,a
      0001F5 87 5A            [24]  741 	mov	_main_sloc0_1_0,@r1
      0001F7 09               [12]  742 	inc	r1
      0001F8 87 5B            [24]  743 	mov	(_main_sloc0_1_0 + 1),@r1
      0001FA 19               [12]  744 	dec	r1
      0001FB C3               [12]  745 	clr	c
      0001FC 74 03            [12]  746 	mov	a,#0x03
      0001FE 95 5A            [12]  747 	subb	a,_main_sloc0_1_0
      000200 E4               [12]  748 	clr	a
      000201 95 5B            [12]  749 	subb	a,(_main_sloc0_1_0 + 1)
      000203 50 03            [24]  750 	jnc	00264$
      000205 02 02 CD         [24]  751 	ljmp	00122$
      000208                        752 00264$:
      000208 E5 5A            [12]  753 	mov	a,_main_sloc0_1_0
      00020A 75 F0 03         [24]  754 	mov	b,#0x03
      00020D A4               [48]  755 	mul	ab
      00020E 90 02 12         [24]  756 	mov	dptr,#00265$
      000211 73               [24]  757 	jmp	@a+dptr
      000212                        758 00265$:
      000212 02 02 1E         [24]  759 	ljmp	00102$
      000215 02 02 40         [24]  760 	ljmp	00106$
      000218 02 02 5F         [24]  761 	ljmp	00110$
      00021B 02 02 A8         [24]  762 	ljmp	00117$
                                    763 ;	./src/main.c:122: case BTN_RELEASED:
      00021E                        764 00102$:
                                    765 ;	./src/main.c:123: if (curINPUT[i] == LEVEL_LOW)
      00021E EA               [12]  766 	mov	a,r2
      00021F 24 08            [12]  767 	add	a,#_curINPUT
      000221 F8               [12]  768 	mov	r0,a
      000222 86 04            [24]  769 	mov	ar4,@r0
      000224 08               [12]  770 	inc	r0
      000225 86 05            [24]  771 	mov	ar5,@r0
      000227 18               [12]  772 	dec	r0
      000228 EC               [12]  773 	mov	a,r4
      000229 4D               [12]  774 	orl	a,r5
      00022A 70 09            [24]  775 	jnz	00104$
                                    776 ;	./src/main.c:124: state[i] = BTN_DEBOUNCED;
      00022C 77 01            [12]  777 	mov	@r1,#0x01
      00022E 09               [12]  778 	inc	r1
      00022F 77 00            [12]  779 	mov	@r1,#0x00
      000231 19               [12]  780 	dec	r1
      000232 02 02 CD         [24]  781 	ljmp	00122$
      000235                        782 00104$:
                                    783 ;	./src/main.c:126: double_cnt++;
      000235 05 56            [12]  784 	inc	_main_double_cnt_65536_20
      000237 E4               [12]  785 	clr	a
      000238 B5 56 02         [24]  786 	cjne	a,_main_double_cnt_65536_20,00267$
      00023B 05 57            [12]  787 	inc	(_main_double_cnt_65536_20 + 1)
      00023D                        788 00267$:
                                    789 ;	./src/main.c:128: break;
      00023D 02 02 CD         [24]  790 	ljmp	00122$
                                    791 ;	./src/main.c:129: case BTN_DEBOUNCED:
      000240                        792 00106$:
                                    793 ;	./src/main.c:130: if (curINPUT[i] == LEVEL_LOW)
      000240 EA               [12]  794 	mov	a,r2
      000241 24 08            [12]  795 	add	a,#_curINPUT
      000243 F8               [12]  796 	mov	r0,a
      000244 86 04            [24]  797 	mov	ar4,@r0
      000246 08               [12]  798 	inc	r0
      000247 86 05            [24]  799 	mov	ar5,@r0
      000249 18               [12]  800 	dec	r0
      00024A EC               [12]  801 	mov	a,r4
      00024B 4D               [12]  802 	orl	a,r5
      00024C 70 09            [24]  803 	jnz	00108$
                                    804 ;	./src/main.c:132: state[i] = BTN_PRESSED;
      00024E 77 02            [12]  805 	mov	@r1,#0x02
      000250 09               [12]  806 	inc	r1
      000251 77 00            [12]  807 	mov	@r1,#0x00
      000253 19               [12]  808 	dec	r1
      000254 02 02 CD         [24]  809 	ljmp	00122$
      000257                        810 00108$:
                                    811 ;	./src/main.c:135: state[i] = BTN_RELEASED;
      000257 77 00            [12]  812 	mov	@r1,#0x00
      000259 09               [12]  813 	inc	r1
      00025A 77 00            [12]  814 	mov	@r1,#0x00
      00025C 19               [12]  815 	dec	r1
                                    816 ;	./src/main.c:136: break;
                                    817 ;	./src/main.c:137: case BTN_PRESSED:
      00025D 80 6E            [24]  818 	sjmp	00122$
      00025F                        819 00110$:
                                    820 ;	./src/main.c:138: if (curINPUT[i] == LEVEL_LOW)
      00025F EA               [12]  821 	mov	a,r2
      000260 24 08            [12]  822 	add	a,#_curINPUT
      000262 F8               [12]  823 	mov	r0,a
      000263 86 04            [24]  824 	mov	ar4,@r0
      000265 08               [12]  825 	inc	r0
      000266 86 05            [24]  826 	mov	ar5,@r0
      000268 18               [12]  827 	dec	r0
      000269 EC               [12]  828 	mov	a,r4
      00026A 4D               [12]  829 	orl	a,r5
      00026B 70 33            [24]  830 	jnz	00115$
                                    831 ;	./src/main.c:140: count[i]++;
      00026D EA               [12]  832 	mov	a,r2
      00026E 24 3E            [12]  833 	add	a,#_count
      000270 F8               [12]  834 	mov	r0,a
      000271 86 04            [24]  835 	mov	ar4,@r0
      000273 08               [12]  836 	inc	r0
      000274 86 05            [24]  837 	mov	ar5,@r0
      000276 18               [12]  838 	dec	r0
      000277 0C               [12]  839 	inc	r4
      000278 BC 00 01         [24]  840 	cjne	r4,#0x00,00270$
      00027B 0D               [12]  841 	inc	r5
      00027C                        842 00270$:
      00027C A6 04            [24]  843 	mov	@r0,ar4
      00027E 08               [12]  844 	inc	r0
      00027F A6 05            [24]  845 	mov	@r0,ar5
      000281 18               [12]  846 	dec	r0
                                    847 ;	./src/main.c:141: if (count[i] > 50)
      000282 C3               [12]  848 	clr	c
      000283 74 32            [12]  849 	mov	a,#0x32
      000285 9C               [12]  850 	subb	a,r4
      000286 E4               [12]  851 	clr	a
      000287 9D               [12]  852 	subb	a,r5
      000288 50 0E            [24]  853 	jnc	00112$
                                    854 ;	./src/main.c:143: state[i] = BTN_LONG_PRESSED;
      00028A 77 03            [12]  855 	mov	@r1,#0x03
      00028C 09               [12]  856 	inc	r1
      00028D 77 00            [12]  857 	mov	@r1,#0x00
      00028F 19               [12]  858 	dec	r1
                                    859 ;	./src/main.c:144: long_flag = 1;
      000290 75 54 01         [24]  860 	mov	_main_long_flag_65536_20,#0x01
      000293 75 55 00         [24]  861 	mov	(_main_long_flag_65536_20 + 1),#0x00
      000296 80 35            [24]  862 	sjmp	00122$
      000298                        863 00112$:
                                    864 ;	./src/main.c:148: state[i] = BTN_PRESSED;
      000298 77 02            [12]  865 	mov	@r1,#0x02
      00029A 09               [12]  866 	inc	r1
      00029B 77 00            [12]  867 	mov	@r1,#0x00
      00029D 19               [12]  868 	dec	r1
      00029E 80 2D            [24]  869 	sjmp	00122$
      0002A0                        870 00115$:
                                    871 ;	./src/main.c:151: state[i] = BTN_RELEASED;
      0002A0 77 00            [12]  872 	mov	@r1,#0x00
      0002A2 09               [12]  873 	inc	r1
      0002A3 77 00            [12]  874 	mov	@r1,#0x00
      0002A5 19               [12]  875 	dec	r1
                                    876 ;	./src/main.c:153: break;
                                    877 ;	./src/main.c:154: case BTN_LONG_PRESSED:
      0002A6 80 25            [24]  878 	sjmp	00122$
      0002A8                        879 00117$:
                                    880 ;	./src/main.c:155: if (curINPUT[i] == LEVEL_LOW)
      0002A8 EA               [12]  881 	mov	a,r2
      0002A9 24 08            [12]  882 	add	a,#_curINPUT
      0002AB F8               [12]  883 	mov	r0,a
      0002AC 86 04            [24]  884 	mov	ar4,@r0
      0002AE 08               [12]  885 	inc	r0
      0002AF 86 05            [24]  886 	mov	ar5,@r0
      0002B1 18               [12]  887 	dec	r0
      0002B2 EC               [12]  888 	mov	a,r4
      0002B3 4D               [12]  889 	orl	a,r5
      0002B4 70 08            [24]  890 	jnz	00119$
                                    891 ;	./src/main.c:156: state[i] = BTN_LONG_PRESSED;
      0002B6 77 03            [12]  892 	mov	@r1,#0x03
      0002B8 09               [12]  893 	inc	r1
      0002B9 77 00            [12]  894 	mov	@r1,#0x00
      0002BB 19               [12]  895 	dec	r1
      0002BC 80 0F            [24]  896 	sjmp	00122$
      0002BE                        897 00119$:
                                    898 ;	./src/main.c:159: state[i] = BTN_RELEASED;
      0002BE 77 00            [12]  899 	mov	@r1,#0x00
      0002C0 09               [12]  900 	inc	r1
      0002C1 77 00            [12]  901 	mov	@r1,#0x00
      0002C3 19               [12]  902 	dec	r1
                                    903 ;	./src/main.c:160: count[i] = 0;
      0002C4 EA               [12]  904 	mov	a,r2
      0002C5 24 3E            [12]  905 	add	a,#_count
      0002C7 F8               [12]  906 	mov	r0,a
      0002C8 76 00            [12]  907 	mov	@r0,#0x00
      0002CA 08               [12]  908 	inc	r0
      0002CB 76 00            [12]  909 	mov	@r0,#0x00
                                    910 ;	./src/main.c:165: }
      0002CD                        911 00122$:
                                    912 ;	./src/main.c:170: if (((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)) || (double_flag && (i == 8) && (double_cnt > 100)))
      0002CD EE               [12]  913 	mov	a,r6
      0002CE 2E               [12]  914 	add	a,r6
      0002CF FC               [12]  915 	mov	r4,a
      0002D0 EF               [12]  916 	mov	a,r7
      0002D1 33               [12]  917 	rlc	a
      0002D2 FD               [12]  918 	mov	r5,a
      0002D3 EC               [12]  919 	mov	a,r4
      0002D4 24 1A            [12]  920 	add	a,#_state
      0002D6 F9               [12]  921 	mov	r1,a
      0002D7 87 02            [24]  922 	mov	ar2,@r1
      0002D9 09               [12]  923 	inc	r1
      0002DA 87 03            [24]  924 	mov	ar3,@r1
      0002DC 19               [12]  925 	dec	r1
      0002DD EA               [12]  926 	mov	a,r2
      0002DE 4B               [12]  927 	orl	a,r3
      0002DF 70 12            [24]  928 	jnz	00155$
      0002E1 EC               [12]  929 	mov	a,r4
      0002E2 24 2C            [12]  930 	add	a,#_prestate
      0002E4 F9               [12]  931 	mov	r1,a
      0002E5 87 04            [24]  932 	mov	ar4,@r1
      0002E7 09               [12]  933 	inc	r1
      0002E8 87 05            [24]  934 	mov	ar5,@r1
      0002EA 19               [12]  935 	dec	r1
      0002EB BC 02 05         [24]  936 	cjne	r4,#0x02,00274$
      0002EE BD 00 02         [24]  937 	cjne	r5,#0x00,00274$
      0002F1 80 28            [24]  938 	sjmp	00149$
      0002F3                        939 00274$:
      0002F3                        940 00155$:
      0002F3 E5 58            [12]  941 	mov	a,_main_double_flag_65536_20
      0002F5 45 59            [12]  942 	orl	a,(_main_double_flag_65536_20 + 1)
      0002F7 70 03            [24]  943 	jnz	00275$
      0002F9 02 04 6A         [24]  944 	ljmp	00150$
      0002FC                        945 00275$:
      0002FC BE 08 05         [24]  946 	cjne	r6,#0x08,00276$
      0002FF BF 00 02         [24]  947 	cjne	r7,#0x00,00276$
      000302 80 03            [24]  948 	sjmp	00277$
      000304                        949 00276$:
      000304 02 04 6A         [24]  950 	ljmp	00150$
      000307                        951 00277$:
      000307 C3               [12]  952 	clr	c
      000308 74 64            [12]  953 	mov	a,#0x64
      00030A 95 56            [12]  954 	subb	a,_main_double_cnt_65536_20
      00030C 74 80            [12]  955 	mov	a,#(0x00 ^ 0x80)
      00030E 85 57 F0         [24]  956 	mov	b,(_main_double_cnt_65536_20 + 1)
      000311 63 F0 80         [24]  957 	xrl	b,#0x80
      000314 95 F0            [12]  958 	subb	a,b
      000316 40 03            [24]  959 	jc	00278$
      000318 02 04 6A         [24]  960 	ljmp	00150$
      00031B                        961 00278$:
      00031B                        962 00149$:
                                    963 ;	./src/main.c:172: switch (i)
      00031B EF               [12]  964 	mov	a,r7
      00031C 30 E7 03         [24]  965 	jnb	acc.7,00279$
      00031F 02 04 58         [24]  966 	ljmp	00139$
      000322                        967 00279$:
      000322 C3               [12]  968 	clr	c
      000323 74 08            [12]  969 	mov	a,#0x08
      000325 9E               [12]  970 	subb	a,r6
      000326 74 80            [12]  971 	mov	a,#(0x00 ^ 0x80)
      000328 8F F0            [24]  972 	mov	b,r7
      00032A 63 F0 80         [24]  973 	xrl	b,#0x80
      00032D 95 F0            [12]  974 	subb	a,b
      00032F 50 03            [24]  975 	jnc	00280$
      000331 02 04 58         [24]  976 	ljmp	00139$
      000334                        977 00280$:
      000334 EE               [12]  978 	mov	a,r6
      000335 24 0A            [12]  979 	add	a,#(00281$-3-.)
      000337 83               [24]  980 	movc	a,@a+pc
      000338 F5 82            [12]  981 	mov	dpl,a
      00033A EE               [12]  982 	mov	a,r6
      00033B 24 0D            [12]  983 	add	a,#(00282$-3-.)
      00033D 83               [24]  984 	movc	a,@a+pc
      00033E F5 83            [12]  985 	mov	dph,a
      000340 E4               [12]  986 	clr	a
      000341 73               [24]  987 	jmp	@a+dptr
      000342                        988 00281$:
      000342 54                     989 	.db	00123$
      000343 6B                     990 	.db	00124$
      000344 82                     991 	.db	00125$
      000345 99                     992 	.db	00126$
      000346 B0                     993 	.db	00127$
      000347 C7                     994 	.db	00128$
      000348 DE                     995 	.db	00129$
      000349 F4                     996 	.db	00130$
      00034A 0A                     997 	.db	00131$
      00034B                        998 00282$:
      00034B 03                     999 	.db	00123$>>8
      00034C 03                    1000 	.db	00124$>>8
      00034D 03                    1001 	.db	00125$>>8
      00034E 03                    1002 	.db	00126$>>8
      00034F 03                    1003 	.db	00127$>>8
      000350 03                    1004 	.db	00128$>>8
      000351 03                    1005 	.db	00129$>>8
      000352 03                    1006 	.db	00130$>>8
      000353 04                    1007 	.db	00131$>>8
                                   1008 ;	./src/main.c:174: case 0:
      000354                       1009 00123$:
                                   1010 ;	./src/main.c:175: patt = shift_left(1, patt);
      000354 85 50 51         [24] 1011 	mov	_shift_left_PARM_2,_patt
      000357 90 00 01         [24] 1012 	mov	dptr,#0x0001
      00035A C0 07            [24] 1013 	push	ar7
      00035C C0 06            [24] 1014 	push	ar6
      00035E 12 00 FE         [24] 1015 	lcall	_shift_left
      000361 85 82 50         [24] 1016 	mov	_patt,dpl
      000364 D0 06            [24] 1017 	pop	ar6
      000366 D0 07            [24] 1018 	pop	ar7
                                   1019 ;	./src/main.c:176: break;
      000368 02 04 58         [24] 1020 	ljmp	00139$
                                   1021 ;	./src/main.c:177: case 1:
      00036B                       1022 00124$:
                                   1023 ;	./src/main.c:178: patt = light_up(0, patt);
      00036B 85 50 53         [24] 1024 	mov	_light_up_PARM_2,_patt
      00036E 90 00 00         [24] 1025 	mov	dptr,#0x0000
      000371 C0 07            [24] 1026 	push	ar7
      000373 C0 06            [24] 1027 	push	ar6
      000375 12 01 5C         [24] 1028 	lcall	_light_up
      000378 85 82 50         [24] 1029 	mov	_patt,dpl
      00037B D0 06            [24] 1030 	pop	ar6
      00037D D0 07            [24] 1031 	pop	ar7
                                   1032 ;	./src/main.c:179: break;
      00037F 02 04 58         [24] 1033 	ljmp	00139$
                                   1034 ;	./src/main.c:180: case 2:
      000382                       1035 00125$:
                                   1036 ;	./src/main.c:181: patt = light_up(1, patt);
      000382 85 50 53         [24] 1037 	mov	_light_up_PARM_2,_patt
      000385 90 00 01         [24] 1038 	mov	dptr,#0x0001
      000388 C0 07            [24] 1039 	push	ar7
      00038A C0 06            [24] 1040 	push	ar6
      00038C 12 01 5C         [24] 1041 	lcall	_light_up
      00038F 85 82 50         [24] 1042 	mov	_patt,dpl
      000392 D0 06            [24] 1043 	pop	ar6
      000394 D0 07            [24] 1044 	pop	ar7
                                   1045 ;	./src/main.c:182: break;
      000396 02 04 58         [24] 1046 	ljmp	00139$
                                   1047 ;	./src/main.c:183: case 3:
      000399                       1048 00126$:
                                   1049 ;	./src/main.c:184: patt = light_up(2, patt);
      000399 85 50 53         [24] 1050 	mov	_light_up_PARM_2,_patt
      00039C 90 00 02         [24] 1051 	mov	dptr,#0x0002
      00039F C0 07            [24] 1052 	push	ar7
      0003A1 C0 06            [24] 1053 	push	ar6
      0003A3 12 01 5C         [24] 1054 	lcall	_light_up
      0003A6 85 82 50         [24] 1055 	mov	_patt,dpl
      0003A9 D0 06            [24] 1056 	pop	ar6
      0003AB D0 07            [24] 1057 	pop	ar7
                                   1058 ;	./src/main.c:185: break;
      0003AD 02 04 58         [24] 1059 	ljmp	00139$
                                   1060 ;	./src/main.c:186: case 4:
      0003B0                       1061 00127$:
                                   1062 ;	./src/main.c:187: patt = shift_right(1, patt);
      0003B0 85 50 52         [24] 1063 	mov	_shift_right_PARM_2,_patt
      0003B3 90 00 01         [24] 1064 	mov	dptr,#0x0001
      0003B6 C0 07            [24] 1065 	push	ar7
      0003B8 C0 06            [24] 1066 	push	ar6
      0003BA 12 01 32         [24] 1067 	lcall	_shift_right
      0003BD 85 82 50         [24] 1068 	mov	_patt,dpl
      0003C0 D0 06            [24] 1069 	pop	ar6
      0003C2 D0 07            [24] 1070 	pop	ar7
                                   1071 ;	./src/main.c:188: break;
      0003C4 02 04 58         [24] 1072 	ljmp	00139$
                                   1073 ;	./src/main.c:189: case 5:
      0003C7                       1074 00128$:
                                   1075 ;	./src/main.c:190: patt = light_up(4, patt);
      0003C7 85 50 53         [24] 1076 	mov	_light_up_PARM_2,_patt
      0003CA 90 00 04         [24] 1077 	mov	dptr,#0x0004
      0003CD C0 07            [24] 1078 	push	ar7
      0003CF C0 06            [24] 1079 	push	ar6
      0003D1 12 01 5C         [24] 1080 	lcall	_light_up
      0003D4 85 82 50         [24] 1081 	mov	_patt,dpl
      0003D7 D0 06            [24] 1082 	pop	ar6
      0003D9 D0 07            [24] 1083 	pop	ar7
                                   1084 ;	./src/main.c:191: break;
      0003DB 02 04 58         [24] 1085 	ljmp	00139$
                                   1086 ;	./src/main.c:192: case 6:
      0003DE                       1087 00129$:
                                   1088 ;	./src/main.c:193: patt = light_up(5, patt);
      0003DE 85 50 53         [24] 1089 	mov	_light_up_PARM_2,_patt
      0003E1 90 00 05         [24] 1090 	mov	dptr,#0x0005
      0003E4 C0 07            [24] 1091 	push	ar7
      0003E6 C0 06            [24] 1092 	push	ar6
      0003E8 12 01 5C         [24] 1093 	lcall	_light_up
      0003EB 85 82 50         [24] 1094 	mov	_patt,dpl
      0003EE D0 06            [24] 1095 	pop	ar6
      0003F0 D0 07            [24] 1096 	pop	ar7
                                   1097 ;	./src/main.c:194: break;
                                   1098 ;	./src/main.c:195: case 7:
      0003F2 80 64            [24] 1099 	sjmp	00139$
      0003F4                       1100 00130$:
                                   1101 ;	./src/main.c:196: patt = light_up(6, patt);
      0003F4 85 50 53         [24] 1102 	mov	_light_up_PARM_2,_patt
      0003F7 90 00 06         [24] 1103 	mov	dptr,#0x0006
      0003FA C0 07            [24] 1104 	push	ar7
      0003FC C0 06            [24] 1105 	push	ar6
      0003FE 12 01 5C         [24] 1106 	lcall	_light_up
      000401 85 82 50         [24] 1107 	mov	_patt,dpl
      000404 D0 06            [24] 1108 	pop	ar6
      000406 D0 07            [24] 1109 	pop	ar7
                                   1110 ;	./src/main.c:197: break;
                                   1111 ;	./src/main.c:198: case 8:
      000408 80 4E            [24] 1112 	sjmp	00139$
      00040A                       1113 00131$:
                                   1114 ;	./src/main.c:199: if (double_flag)
      00040A E5 58            [12] 1115 	mov	a,_main_double_flag_65536_20
      00040C 45 59            [12] 1116 	orl	a,(_main_double_flag_65536_20 + 1)
      00040E 60 3E            [24] 1117 	jz	00136$
                                   1118 ;	./src/main.c:201: if (double_cnt < 100)
      000410 C3               [12] 1119 	clr	c
      000411 E5 56            [12] 1120 	mov	a,_main_double_cnt_65536_20
      000413 94 64            [12] 1121 	subb	a,#0x64
      000415 E5 57            [12] 1122 	mov	a,(_main_double_cnt_65536_20 + 1)
      000417 64 80            [12] 1123 	xrl	a,#0x80
      000419 94 80            [12] 1124 	subb	a,#0x80
      00041B 50 16            [24] 1125 	jnc	00133$
                                   1126 ;	./src/main.c:202: patt = shift_left(3, patt);
      00041D 85 50 51         [24] 1127 	mov	_shift_left_PARM_2,_patt
      000420 90 00 03         [24] 1128 	mov	dptr,#0x0003
      000423 C0 07            [24] 1129 	push	ar7
      000425 C0 06            [24] 1130 	push	ar6
      000427 12 00 FE         [24] 1131 	lcall	_shift_left
      00042A 85 82 50         [24] 1132 	mov	_patt,dpl
      00042D D0 06            [24] 1133 	pop	ar6
      00042F D0 07            [24] 1134 	pop	ar7
      000431 80 14            [24] 1135 	sjmp	00134$
      000433                       1136 00133$:
                                   1137 ;	./src/main.c:204: patt = shift_left(1, patt);
      000433 85 50 51         [24] 1138 	mov	_shift_left_PARM_2,_patt
      000436 90 00 01         [24] 1139 	mov	dptr,#0x0001
      000439 C0 07            [24] 1140 	push	ar7
      00043B C0 06            [24] 1141 	push	ar6
      00043D 12 00 FE         [24] 1142 	lcall	_shift_left
      000440 85 82 50         [24] 1143 	mov	_patt,dpl
      000443 D0 06            [24] 1144 	pop	ar6
      000445 D0 07            [24] 1145 	pop	ar7
      000447                       1146 00134$:
                                   1147 ;	./src/main.c:205: double_flag = 0;
      000447 E4               [12] 1148 	clr	a
      000448 F5 58            [12] 1149 	mov	_main_double_flag_65536_20,a
      00044A F5 59            [12] 1150 	mov	(_main_double_flag_65536_20 + 1),a
      00044C 80 0A            [24] 1151 	sjmp	00139$
      00044E                       1152 00136$:
                                   1153 ;	./src/main.c:209: double_flag = 1;
      00044E 75 58 01         [24] 1154 	mov	_main_double_flag_65536_20,#0x01
                                   1155 ;	./src/main.c:210: double_cnt = 0;
      000451 E4               [12] 1156 	clr	a
      000452 F5 59            [12] 1157 	mov	(_main_double_flag_65536_20 + 1),a
      000454 F5 56            [12] 1158 	mov	_main_double_cnt_65536_20,a
      000456 F5 57            [12] 1159 	mov	(_main_double_cnt_65536_20 + 1),a
                                   1160 ;	./src/main.c:216: }
      000458                       1161 00139$:
                                   1162 ;	./src/main.c:217: count[i] = 0;
      000458 EE               [12] 1163 	mov	a,r6
      000459 2E               [12] 1164 	add	a,r6
      00045A FC               [12] 1165 	mov	r4,a
      00045B EF               [12] 1166 	mov	a,r7
      00045C 33               [12] 1167 	rlc	a
      00045D FD               [12] 1168 	mov	r5,a
      00045E EC               [12] 1169 	mov	a,r4
      00045F 24 3E            [12] 1170 	add	a,#_count
      000461 F8               [12] 1171 	mov	r0,a
      000462 76 00            [12] 1172 	mov	@r0,#0x00
      000464 08               [12] 1173 	inc	r0
      000465 76 00            [12] 1174 	mov	@r0,#0x00
      000467 02 04 E2         [24] 1175 	ljmp	00151$
      00046A                       1176 00150$:
                                   1177 ;	./src/main.c:220: else if (state[i] == BTN_LONG_PRESSED)
      00046A EE               [12] 1178 	mov	a,r6
      00046B 2E               [12] 1179 	add	a,r6
      00046C FC               [12] 1180 	mov	r4,a
      00046D EF               [12] 1181 	mov	a,r7
      00046E 33               [12] 1182 	rlc	a
      00046F EC               [12] 1183 	mov	a,r4
      000470 24 1A            [12] 1184 	add	a,#_state
      000472 F9               [12] 1185 	mov	r1,a
      000473 87 04            [24] 1186 	mov	ar4,@r1
      000475 09               [12] 1187 	inc	r1
      000476 87 05            [24] 1188 	mov	ar5,@r1
      000478 19               [12] 1189 	dec	r1
      000479 BC 03 66         [24] 1190 	cjne	r4,#0x03,00151$
      00047C BD 00 63         [24] 1191 	cjne	r5,#0x00,00151$
                                   1192 ;	./src/main.c:222: switch (i)
      00047F BE 00 05         [24] 1193 	cjne	r6,#0x00,00287$
      000482 BF 00 02         [24] 1194 	cjne	r7,#0x00,00287$
      000485 80 10            [24] 1195 	sjmp	00140$
      000487                       1196 00287$:
      000487 BE 04 05         [24] 1197 	cjne	r6,#0x04,00288$
      00048A BF 00 02         [24] 1198 	cjne	r7,#0x00,00288$
      00048D 80 1E            [24] 1199 	sjmp	00141$
      00048F                       1200 00288$:
                                   1201 ;	./src/main.c:224: case 0:
      00048F BE 08 50         [24] 1202 	cjne	r6,#0x08,00151$
      000492 BF 00 4D         [24] 1203 	cjne	r7,#0x00,00151$
      000495 80 2C            [24] 1204 	sjmp	00142$
      000497                       1205 00140$:
                                   1206 ;	./src/main.c:225: patt = light_up(9, patt);
      000497 85 50 53         [24] 1207 	mov	_light_up_PARM_2,_patt
      00049A 90 00 09         [24] 1208 	mov	dptr,#0x0009
      00049D C0 07            [24] 1209 	push	ar7
      00049F C0 06            [24] 1210 	push	ar6
      0004A1 12 01 5C         [24] 1211 	lcall	_light_up
      0004A4 85 82 50         [24] 1212 	mov	_patt,dpl
      0004A7 D0 06            [24] 1213 	pop	ar6
      0004A9 D0 07            [24] 1214 	pop	ar7
                                   1215 ;	./src/main.c:226: break;
                                   1216 ;	./src/main.c:227: case 4:
      0004AB 80 35            [24] 1217 	sjmp	00151$
      0004AD                       1218 00141$:
                                   1219 ;	./src/main.c:228: patt = shift_right(1, patt);
      0004AD 85 50 52         [24] 1220 	mov	_shift_right_PARM_2,_patt
      0004B0 90 00 01         [24] 1221 	mov	dptr,#0x0001
      0004B3 C0 07            [24] 1222 	push	ar7
      0004B5 C0 06            [24] 1223 	push	ar6
      0004B7 12 01 32         [24] 1224 	lcall	_shift_right
      0004BA 85 82 50         [24] 1225 	mov	_patt,dpl
      0004BD D0 06            [24] 1226 	pop	ar6
      0004BF D0 07            [24] 1227 	pop	ar7
                                   1228 ;	./src/main.c:229: break;
                                   1229 ;	./src/main.c:230: case 8:
      0004C1 80 1F            [24] 1230 	sjmp	00151$
      0004C3                       1231 00142$:
                                   1232 ;	./src/main.c:231: if (long_flag)
      0004C3 E5 54            [12] 1233 	mov	a,_main_long_flag_65536_20
      0004C5 45 55            [12] 1234 	orl	a,(_main_long_flag_65536_20 + 1)
      0004C7 60 19            [24] 1235 	jz	00151$
                                   1236 ;	./src/main.c:233: patt = shift_left(2, patt);
      0004C9 85 50 51         [24] 1237 	mov	_shift_left_PARM_2,_patt
      0004CC 90 00 02         [24] 1238 	mov	dptr,#0x0002
      0004CF C0 07            [24] 1239 	push	ar7
      0004D1 C0 06            [24] 1240 	push	ar6
      0004D3 12 00 FE         [24] 1241 	lcall	_shift_left
      0004D6 85 82 50         [24] 1242 	mov	_patt,dpl
      0004D9 D0 06            [24] 1243 	pop	ar6
      0004DB D0 07            [24] 1244 	pop	ar7
                                   1245 ;	./src/main.c:234: long_flag = 0;
      0004DD E4               [12] 1246 	clr	a
      0004DE F5 54            [12] 1247 	mov	_main_long_flag_65536_20,a
      0004E0 F5 55            [12] 1248 	mov	(_main_long_flag_65536_20 + 1),a
                                   1249 ;	./src/main.c:239: }
      0004E2                       1250 00151$:
                                   1251 ;	./src/main.c:242: prestate[i] = state[i];
      0004E2 EE               [12] 1252 	mov	a,r6
      0004E3 2E               [12] 1253 	add	a,r6
      0004E4 FC               [12] 1254 	mov	r4,a
      0004E5 EF               [12] 1255 	mov	a,r7
      0004E6 33               [12] 1256 	rlc	a
      0004E7 EC               [12] 1257 	mov	a,r4
      0004E8 24 2C            [12] 1258 	add	a,#_prestate
      0004EA F9               [12] 1259 	mov	r1,a
      0004EB EC               [12] 1260 	mov	a,r4
      0004EC 24 1A            [12] 1261 	add	a,#_state
      0004EE F8               [12] 1262 	mov	r0,a
      0004EF 86 04            [24] 1263 	mov	ar4,@r0
      0004F1 08               [12] 1264 	inc	r0
      0004F2 86 05            [24] 1265 	mov	ar5,@r0
      0004F4 18               [12] 1266 	dec	r0
      0004F5 A7 04            [24] 1267 	mov	@r1,ar4
      0004F7 09               [12] 1268 	inc	r1
      0004F8 A7 05            [24] 1269 	mov	@r1,ar5
      0004FA 19               [12] 1270 	dec	r1
                                   1271 ;	./src/main.c:116: for (int i = 0; i < 9; i++)
      0004FB 0E               [12] 1272 	inc	r6
      0004FC BE 00 01         [24] 1273 	cjne	r6,#0x00,00291$
      0004FF 0F               [12] 1274 	inc	r7
      000500                       1275 00291$:
                                   1276 ;	./src/main.c:245: }
      000500 02 01 E0         [24] 1277 	ljmp	00164$
                                   1278 	.area CSEG    (CODE)
                                   1279 	.area CONST   (CODE)
                                   1280 	.area XINIT   (CODE)
                                   1281 	.area CABS    (ABS,CODE)
