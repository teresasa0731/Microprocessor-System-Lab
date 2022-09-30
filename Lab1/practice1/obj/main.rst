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
                                     12 	.globl _row3
                                     13 	.globl _row2
                                     14 	.globl _row1
                                     15 	.globl _light_up
                                     16 	.globl _shift_right
                                     17 	.globl _shift_left
                                     18 	.globl _delay_ms
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
                                    115 	.globl _light_up_PARM_2
                                    116 	.globl _shift_right_PARM_2
                                    117 	.globl _shift_left_PARM_2
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
      000008                        233 _shift_left_PARM_2:
      000008                        234 	.ds 1
      000009                        235 _shift_right_PARM_2:
      000009                        236 	.ds 1
      00000A                        237 _light_up_PARM_2:
      00000A                        238 	.ds 1
      00000B                        239 _main_patt_65536_17:
      00000B                        240 	.ds 1
      00000C                        241 _main_sloc0_1_0:
      00000C                        242 	.ds 2
      00000E                        243 _main_sloc1_1_0:
      00000E                        244 	.ds 2
      000010                        245 _main_sloc2_1_0:
      000010                        246 	.ds 2
      000012                        247 _main_sloc3_1_0:
      000012                        248 	.ds 2
      000014                        249 _main_sloc4_1_0:
      000014                        250 	.ds 2
      000016                        251 _main_sloc5_1_0:
      000016                        252 	.ds 2
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable items in internal ram
                                    255 ;--------------------------------------------------------
                                    256 ;--------------------------------------------------------
                                    257 ; Stack segment in internal ram
                                    258 ;--------------------------------------------------------
                                    259 	.area SSEG
      000018                        260 __start__stack:
      000018                        261 	.ds	1
                                    262 
                                    263 ;--------------------------------------------------------
                                    264 ; indirectly addressable internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area ISEG    (DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area IABS    (ABS,DATA)
                                    271 	.area IABS    (ABS,DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; bit data
                                    274 ;--------------------------------------------------------
                                    275 	.area BSEG    (BIT)
                                    276 ;--------------------------------------------------------
                                    277 ; paged external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area PSEG    (PAG,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; uninitialized external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XSEG    (XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XABS    (ABS,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; initialized external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XISEG   (XDATA)
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT0 (CODE)
                                    294 	.area GSINIT1 (CODE)
                                    295 	.area GSINIT2 (CODE)
                                    296 	.area GSINIT3 (CODE)
                                    297 	.area GSINIT4 (CODE)
                                    298 	.area GSINIT5 (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area CSEG    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; interrupt vector
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
      000000                        306 __interrupt_vect:
      000000 02 00 06         [24]  307 	ljmp	__sdcc_gsinit_startup
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.globl __sdcc_gsinit_startup
                                    316 	.globl __sdcc_program_startup
                                    317 	.globl __start__stack
                                    318 	.globl __mcs51_genXINIT
                                    319 	.globl __mcs51_genXRAMCLEAR
                                    320 	.globl __mcs51_genRAMCLEAR
                                    321 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  322 	ljmp	__sdcc_program_startup
                                    323 ;--------------------------------------------------------
                                    324 ; Home
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
                                    327 	.area HOME    (CODE)
      000003                        328 __sdcc_program_startup:
      000003 02 00 F0         [24]  329 	ljmp	_main
                                    330 ;	return from main will return to caller
                                    331 ;--------------------------------------------------------
                                    332 ; code
                                    333 ;--------------------------------------------------------
                                    334 	.area CSEG    (CODE)
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'shift_left'
                                    337 ;------------------------------------------------------------
                                    338 ;patt                      Allocated with name '_shift_left_PARM_2'
                                    339 ;bit                       Allocated to registers r6 r7 
                                    340 ;------------------------------------------------------------
                                    341 ;	./src/main.c:13: unsigned char shift_left(unsigned int bit, unsigned char patt)
                                    342 ;	-----------------------------------------
                                    343 ;	 function shift_left
                                    344 ;	-----------------------------------------
      000062                        345 _shift_left:
                           000007   346 	ar7 = 0x07
                           000006   347 	ar6 = 0x06
                           000005   348 	ar5 = 0x05
                           000004   349 	ar4 = 0x04
                           000003   350 	ar3 = 0x03
                           000002   351 	ar2 = 0x02
                           000001   352 	ar1 = 0x01
                           000000   353 	ar0 = 0x00
      000062 AE 82            [24]  354 	mov	r6,dpl
                                    355 ;	./src/main.c:15: patt = patt >> bit;
      000064 8E F0            [24]  356 	mov	b,r6
      000066 05 F0            [12]  357 	inc	b
      000068 E5 08            [12]  358 	mov	a,_shift_left_PARM_2
      00006A 80 02            [24]  359 	sjmp	00110$
      00006C                        360 00109$:
      00006C C3               [12]  361 	clr	c
      00006D 13               [12]  362 	rrc	a
      00006E                        363 00110$:
      00006E D5 F0 FB         [24]  364 	djnz	b,00109$
                                    365 ;	./src/main.c:16: if (patt == 0x00)
      000071 F5 08            [12]  366 	mov	_shift_left_PARM_2,a
      000073 70 03            [24]  367 	jnz	00102$
                                    368 ;	./src/main.c:17: patt = 0x80;
      000075 75 08 80         [24]  369 	mov	_shift_left_PARM_2,#0x80
      000078                        370 00102$:
                                    371 ;	./src/main.c:19: led = ~patt;
      000078 E5 08            [12]  372 	mov	a,_shift_left_PARM_2
      00007A F4               [12]  373 	cpl	a
      00007B F5 90            [12]  374 	mov	_P1,a
                                    375 ;	./src/main.c:20: delay_ms(20);
      00007D 90 00 14         [24]  376 	mov	dptr,#0x0014
      000080 12 06 92         [24]  377 	lcall	_delay_ms
                                    378 ;	./src/main.c:21: return patt;
      000083 85 08 82         [24]  379 	mov	dpl,_shift_left_PARM_2
                                    380 ;	./src/main.c:22: }
      000086 22               [24]  381 	ret
                                    382 ;------------------------------------------------------------
                                    383 ;Allocation info for local variables in function 'shift_right'
                                    384 ;------------------------------------------------------------
                                    385 ;patt                      Allocated with name '_shift_right_PARM_2'
                                    386 ;bit                       Allocated to registers r6 r7 
                                    387 ;------------------------------------------------------------
                                    388 ;	./src/main.c:23: unsigned char shift_right(unsigned int bit, unsigned char patt)
                                    389 ;	-----------------------------------------
                                    390 ;	 function shift_right
                                    391 ;	-----------------------------------------
      000087                        392 _shift_right:
      000087 AE 82            [24]  393 	mov	r6,dpl
                                    394 ;	./src/main.c:25: if (patt == 0x80)
      000089 74 80            [12]  395 	mov	a,#0x80
      00008B B5 09 05         [24]  396 	cjne	a,_shift_right_PARM_2,00102$
                                    397 ;	./src/main.c:26: patt = 0x00 + 1;
      00008E 75 09 01         [24]  398 	mov	_shift_right_PARM_2,#0x01
      000091 80 0F            [24]  399 	sjmp	00103$
      000093                        400 00102$:
                                    401 ;	./src/main.c:28: patt = patt << bit;
      000093 8E F0            [24]  402 	mov	b,r6
      000095 05 F0            [12]  403 	inc	b
      000097 E5 09            [12]  404 	mov	a,_shift_right_PARM_2
      000099 80 02            [24]  405 	sjmp	00114$
      00009B                        406 00112$:
      00009B 25 E0            [12]  407 	add	a,acc
      00009D                        408 00114$:
      00009D D5 F0 FB         [24]  409 	djnz	b,00112$
      0000A0 F5 09            [12]  410 	mov	_shift_right_PARM_2,a
      0000A2                        411 00103$:
                                    412 ;	./src/main.c:30: led = ~patt;
      0000A2 E5 09            [12]  413 	mov	a,_shift_right_PARM_2
      0000A4 F4               [12]  414 	cpl	a
      0000A5 F5 90            [12]  415 	mov	_P1,a
                                    416 ;	./src/main.c:31: delay_ms(20);
      0000A7 90 00 14         [24]  417 	mov	dptr,#0x0014
      0000AA 12 06 92         [24]  418 	lcall	_delay_ms
                                    419 ;	./src/main.c:32: return patt;
      0000AD 85 09 82         [24]  420 	mov	dpl,_shift_right_PARM_2
                                    421 ;	./src/main.c:33: }
      0000B0 22               [24]  422 	ret
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'light_up'
                                    425 ;------------------------------------------------------------
                                    426 ;patt                      Allocated with name '_light_up_PARM_2'
                                    427 ;idx                       Allocated to registers r6 r7 
                                    428 ;------------------------------------------------------------
                                    429 ;	./src/main.c:34: unsigned char light_up(unsigned int idx, unsigned char patt)
                                    430 ;	-----------------------------------------
                                    431 ;	 function light_up
                                    432 ;	-----------------------------------------
      0000B1                        433 _light_up:
      0000B1 AE 82            [24]  434 	mov	r6,dpl
      0000B3 AF 83            [24]  435 	mov	r7,dph
                                    436 ;	./src/main.c:36: switch (idx)
      0000B5 BE 09 05         [24]  437 	cjne	r6,#0x09,00110$
      0000B8 BF 00 02         [24]  438 	cjne	r7,#0x00,00110$
      0000BB 80 0F            [24]  439 	sjmp	00103$
      0000BD                        440 00110$:
                                    441 ;	./src/main.c:42: patt = (0x00 + 1) << idx;
      0000BD 8E F0            [24]  442 	mov	b,r6
      0000BF 05 F0            [12]  443 	inc	b
      0000C1 74 01            [12]  444 	mov	a,#0x01
      0000C3 80 02            [24]  445 	sjmp	00113$
      0000C5                        446 00111$:
      0000C5 25 E0            [12]  447 	add	a,acc
      0000C7                        448 00113$:
      0000C7 D5 F0 FB         [24]  449 	djnz	b,00111$
      0000CA F5 0A            [12]  450 	mov	_light_up_PARM_2,a
                                    451 ;	./src/main.c:44: }
      0000CC                        452 00103$:
                                    453 ;	./src/main.c:46: led = ~patt;
      0000CC E5 0A            [12]  454 	mov	a,_light_up_PARM_2
      0000CE F4               [12]  455 	cpl	a
      0000CF F5 90            [12]  456 	mov	_P1,a
                                    457 ;	./src/main.c:47: delay_ms(20);
      0000D1 90 00 14         [24]  458 	mov	dptr,#0x0014
      0000D4 12 06 92         [24]  459 	lcall	_delay_ms
                                    460 ;	./src/main.c:48: return patt;
      0000D7 85 0A 82         [24]  461 	mov	dpl,_light_up_PARM_2
                                    462 ;	./src/main.c:49: }
      0000DA 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'row1'
                                    466 ;------------------------------------------------------------
                                    467 ;	./src/main.c:51: void row1(void)
                                    468 ;	-----------------------------------------
                                    469 ;	 function row1
                                    470 ;	-----------------------------------------
      0000DB                        471 _row1:
                                    472 ;	./src/main.c:53: OUTPUT1 = 0; // row1 output 0
                                    473 ;	assignBit
      0000DB C2 84            [12]  474 	clr	_P0_4
                                    475 ;	./src/main.c:54: OUTPUT2 = 1; // row2 output 1
                                    476 ;	assignBit
      0000DD D2 83            [12]  477 	setb	_P0_3
                                    478 ;	./src/main.c:55: OUTPUT3 = 1; // row3 output 1
                                    479 ;	assignBit
      0000DF D2 82            [12]  480 	setb	_P0_2
                                    481 ;	./src/main.c:56: }
      0000E1 22               [24]  482 	ret
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'row2'
                                    485 ;------------------------------------------------------------
                                    486 ;	./src/main.c:57: void row2(void)
                                    487 ;	-----------------------------------------
                                    488 ;	 function row2
                                    489 ;	-----------------------------------------
      0000E2                        490 _row2:
                                    491 ;	./src/main.c:59: OUTPUT1 = 1; // row1 output 1
                                    492 ;	assignBit
      0000E2 D2 84            [12]  493 	setb	_P0_4
                                    494 ;	./src/main.c:60: OUTPUT2 = 0; // row2 output 0
                                    495 ;	assignBit
      0000E4 C2 83            [12]  496 	clr	_P0_3
                                    497 ;	./src/main.c:61: OUTPUT3 = 1; // row3 output 1
                                    498 ;	assignBit
      0000E6 D2 82            [12]  499 	setb	_P0_2
                                    500 ;	./src/main.c:62: }
      0000E8 22               [24]  501 	ret
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'row3'
                                    504 ;------------------------------------------------------------
                                    505 ;	./src/main.c:63: void row3(void)
                                    506 ;	-----------------------------------------
                                    507 ;	 function row3
                                    508 ;	-----------------------------------------
      0000E9                        509 _row3:
                                    510 ;	./src/main.c:65: OUTPUT1 = 1; // row1 output 1
                                    511 ;	assignBit
      0000E9 D2 84            [12]  512 	setb	_P0_4
                                    513 ;	./src/main.c:66: OUTPUT2 = 1; // row2 output 1
                                    514 ;	assignBit
      0000EB D2 83            [12]  515 	setb	_P0_3
                                    516 ;	./src/main.c:67: OUTPUT3 = 0; // row3 output 0
                                    517 ;	assignBit
      0000ED C2 82            [12]  518 	clr	_P0_2
                                    519 ;	./src/main.c:68: }
      0000EF 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'main'
                                    523 ;------------------------------------------------------------
                                    524 ;preINPUT1                 Allocated to registers r6 r7 
                                    525 ;preINPUT2                 Allocated to registers r4 r5 
                                    526 ;preINPUT3                 Allocated to registers r2 r3 
                                    527 ;preINPUT4                 Allocated with name '_main_sloc5_1_0'
                                    528 ;preINPUT5                 Allocated with name '_main_sloc0_1_0'
                                    529 ;preINPUT6                 Allocated with name '_main_sloc1_1_0'
                                    530 ;preINPUT7                 Allocated with name '_main_sloc2_1_0'
                                    531 ;preINPUT8                 Allocated with name '_main_sloc3_1_0'
                                    532 ;preINPUT9                 Allocated with name '_main_sloc4_1_0'
                                    533 ;preINPUT0                 Allocated to registers 
                                    534 ;prebut1                   Allocated to registers 
                                    535 ;prebut2                   Allocated to registers 
                                    536 ;prebut3                   Allocated to registers 
                                    537 ;prebut4                   Allocated to registers 
                                    538 ;patt                      Allocated with name '_main_patt_65536_17'
                                    539 ;cnt                       Allocated to registers r0 r1 
                                    540 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    541 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    542 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    543 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                    544 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                    545 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                    546 ;------------------------------------------------------------
                                    547 ;	./src/main.c:70: void main(void)
                                    548 ;	-----------------------------------------
                                    549 ;	 function main
                                    550 ;	-----------------------------------------
      0000F0                        551 _main:
                                    552 ;	./src/main.c:73: unsigned int preINPUT1 = 1, preINPUT2 = 1, preINPUT3 = 1, preINPUT4 = 1, preINPUT5 = 1, preINPUT6 = 1, preINPUT7 = 1, preINPUT8 = 1, preINPUT9 = 1, preINPUT0 = 1;
      0000F0 7E 01            [12]  553 	mov	r6,#0x01
      0000F2 7F 00            [12]  554 	mov	r7,#0x00
      0000F4 7C 01            [12]  555 	mov	r4,#0x01
      0000F6 7D 00            [12]  556 	mov	r5,#0x00
      0000F8 7A 01            [12]  557 	mov	r2,#0x01
      0000FA 7B 00            [12]  558 	mov	r3,#0x00
                                    559 ;	1-genFromRTrack replaced	mov	_main_sloc5_1_0,#0x01
      0000FC 8E 16            [24]  560 	mov	_main_sloc5_1_0,r6
                                    561 ;	1-genFromRTrack replaced	mov	(_main_sloc5_1_0 + 1),#0x00
      0000FE 8F 17            [24]  562 	mov	(_main_sloc5_1_0 + 1),r7
                                    563 ;	1-genFromRTrack replaced	mov	_main_sloc0_1_0,#0x01
      000100 8E 0C            [24]  564 	mov	_main_sloc0_1_0,r6
                                    565 ;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
      000102 8F 0D            [24]  566 	mov	(_main_sloc0_1_0 + 1),r7
                                    567 ;	1-genFromRTrack replaced	mov	_main_sloc1_1_0,#0x01
      000104 8E 0E            [24]  568 	mov	_main_sloc1_1_0,r6
                                    569 ;	1-genFromRTrack replaced	mov	(_main_sloc1_1_0 + 1),#0x00
      000106 8F 0F            [24]  570 	mov	(_main_sloc1_1_0 + 1),r7
                                    571 ;	1-genFromRTrack replaced	mov	_main_sloc2_1_0,#0x01
      000108 8E 10            [24]  572 	mov	_main_sloc2_1_0,r6
                                    573 ;	1-genFromRTrack replaced	mov	(_main_sloc2_1_0 + 1),#0x00
      00010A 8F 11            [24]  574 	mov	(_main_sloc2_1_0 + 1),r7
                                    575 ;	1-genFromRTrack replaced	mov	_main_sloc3_1_0,#0x01
      00010C 8E 12            [24]  576 	mov	_main_sloc3_1_0,r6
                                    577 ;	1-genFromRTrack replaced	mov	(_main_sloc3_1_0 + 1),#0x00
      00010E 8F 13            [24]  578 	mov	(_main_sloc3_1_0 + 1),r7
                                    579 ;	1-genFromRTrack replaced	mov	_main_sloc4_1_0,#0x01
      000110 8E 14            [24]  580 	mov	_main_sloc4_1_0,r6
                                    581 ;	1-genFromRTrack replaced	mov	(_main_sloc4_1_0 + 1),#0x00
      000112 8F 15            [24]  582 	mov	(_main_sloc4_1_0 + 1),r7
                                    583 ;	./src/main.c:75: unsigned char patt = 0x80; // led value
      000114 75 0B 80         [24]  584 	mov	_main_patt_65536_17,#0x80
                                    585 ;	./src/main.c:76: unsigned int cnt = 0;
      000117 78 00            [12]  586 	mov	r0,#0x00
      000119 79 00            [12]  587 	mov	r1,#0x00
                                    588 ;	./src/main.c:78: while (1)
      00011B                        589 00162$:
                                    590 ;	./src/main.c:81: row1();
      00011B C0 07            [24]  591 	push	ar7
      00011D C0 06            [24]  592 	push	ar6
      00011F C0 05            [24]  593 	push	ar5
      000121 C0 04            [24]  594 	push	ar4
      000123 C0 03            [24]  595 	push	ar3
      000125 C0 02            [24]  596 	push	ar2
      000127 C0 01            [24]  597 	push	ar1
      000129 C0 00            [24]  598 	push	ar0
      00012B 12 00 DB         [24]  599 	lcall	_row1
      00012E D0 00            [24]  600 	pop	ar0
      000130 D0 01            [24]  601 	pop	ar1
      000132 D0 02            [24]  602 	pop	ar2
      000134 D0 03            [24]  603 	pop	ar3
      000136 D0 04            [24]  604 	pop	ar4
      000138 D0 05            [24]  605 	pop	ar5
      00013A D0 06            [24]  606 	pop	ar6
      00013C D0 07            [24]  607 	pop	ar7
                                    608 ;	./src/main.c:84: if ((INPUT1 == 0) && (preINPUT1 == 1))
      00013E 30 87 03         [24]  609 	jnb	_P0_7,00302$
      000141 02 01 DB         [24]  610 	ljmp	00107$
      000144                        611 00302$:
      000144 BE 01 05         [24]  612 	cjne	r6,#0x01,00303$
      000147 BF 00 02         [24]  613 	cjne	r7,#0x00,00303$
      00014A 80 03            [24]  614 	sjmp	00304$
      00014C                        615 00303$:
      00014C 02 01 DB         [24]  616 	ljmp	00107$
      00014F                        617 00304$:
                                    618 ;	./src/main.c:86: delay_ms(20);
      00014F 90 00 14         [24]  619 	mov	dptr,#0x0014
      000152 C0 05            [24]  620 	push	ar5
      000154 C0 04            [24]  621 	push	ar4
      000156 C0 03            [24]  622 	push	ar3
      000158 C0 02            [24]  623 	push	ar2
      00015A C0 01            [24]  624 	push	ar1
      00015C C0 00            [24]  625 	push	ar0
      00015E 12 06 92         [24]  626 	lcall	_delay_ms
      000161 D0 00            [24]  627 	pop	ar0
      000163 D0 01            [24]  628 	pop	ar1
      000165 D0 02            [24]  629 	pop	ar2
      000167 D0 03            [24]  630 	pop	ar3
      000169 D0 04            [24]  631 	pop	ar4
      00016B D0 05            [24]  632 	pop	ar5
                                    633 ;	./src/main.c:87: if (INPUT1 == 0)
      00016D 20 87 6B         [24]  634 	jb	_P0_7,00107$
                                    635 ;	./src/main.c:89: delay_ms(1500);
      000170 90 05 DC         [24]  636 	mov	dptr,#0x05dc
      000173 C0 05            [24]  637 	push	ar5
      000175 C0 04            [24]  638 	push	ar4
      000177 C0 03            [24]  639 	push	ar3
      000179 C0 02            [24]  640 	push	ar2
      00017B C0 01            [24]  641 	push	ar1
      00017D C0 00            [24]  642 	push	ar0
      00017F 12 06 92         [24]  643 	lcall	_delay_ms
      000182 D0 00            [24]  644 	pop	ar0
      000184 D0 01            [24]  645 	pop	ar1
      000186 D0 02            [24]  646 	pop	ar2
      000188 D0 03            [24]  647 	pop	ar3
      00018A D0 04            [24]  648 	pop	ar4
      00018C D0 05            [24]  649 	pop	ar5
                                    650 ;	./src/main.c:90: if (INPUT1 != 0)
      00018E 30 87 26         [24]  651 	jnb	_P0_7,00102$
                                    652 ;	./src/main.c:91: patt = shift_left(1, patt);
      000191 85 0B 08         [24]  653 	mov	_shift_left_PARM_2,_main_patt_65536_17
      000194 90 00 01         [24]  654 	mov	dptr,#0x0001
      000197 C0 05            [24]  655 	push	ar5
      000199 C0 04            [24]  656 	push	ar4
      00019B C0 03            [24]  657 	push	ar3
      00019D C0 02            [24]  658 	push	ar2
      00019F C0 01            [24]  659 	push	ar1
      0001A1 C0 00            [24]  660 	push	ar0
      0001A3 12 00 62         [24]  661 	lcall	_shift_left
      0001A6 85 82 0B         [24]  662 	mov	_main_patt_65536_17,dpl
      0001A9 D0 00            [24]  663 	pop	ar0
      0001AB D0 01            [24]  664 	pop	ar1
      0001AD D0 02            [24]  665 	pop	ar2
      0001AF D0 03            [24]  666 	pop	ar3
      0001B1 D0 04            [24]  667 	pop	ar4
      0001B3 D0 05            [24]  668 	pop	ar5
      0001B5 80 24            [24]  669 	sjmp	00107$
      0001B7                        670 00102$:
                                    671 ;	./src/main.c:93: patt = light_up(9, patt);
      0001B7 85 0B 0A         [24]  672 	mov	_light_up_PARM_2,_main_patt_65536_17
      0001BA 90 00 09         [24]  673 	mov	dptr,#0x0009
      0001BD C0 05            [24]  674 	push	ar5
      0001BF C0 04            [24]  675 	push	ar4
      0001C1 C0 03            [24]  676 	push	ar3
      0001C3 C0 02            [24]  677 	push	ar2
      0001C5 C0 01            [24]  678 	push	ar1
      0001C7 C0 00            [24]  679 	push	ar0
      0001C9 12 00 B1         [24]  680 	lcall	_light_up
      0001CC 85 82 0B         [24]  681 	mov	_main_patt_65536_17,dpl
      0001CF D0 00            [24]  682 	pop	ar0
      0001D1 D0 01            [24]  683 	pop	ar1
      0001D3 D0 02            [24]  684 	pop	ar2
      0001D5 D0 03            [24]  685 	pop	ar3
      0001D7 D0 04            [24]  686 	pop	ar4
      0001D9 D0 05            [24]  687 	pop	ar5
      0001DB                        688 00107$:
                                    689 ;	./src/main.c:96: preINPUT1 = INPUT1;
      0001DB A2 87            [12]  690 	mov	c,_P0_7
      0001DD E4               [12]  691 	clr	a
      0001DE 33               [12]  692 	rlc	a
      0001DF FE               [12]  693 	mov	r6,a
      0001E0 7F 00            [12]  694 	mov	r7,#0x00
                                    695 ;	./src/main.c:99: if ((INPUT2 == 0) && (preINPUT2 == 1))
      0001E2 20 86 4B         [24]  696 	jb	_P0_6,00112$
      0001E5 BC 01 48         [24]  697 	cjne	r4,#0x01,00112$
      0001E8 BD 00 45         [24]  698 	cjne	r5,#0x00,00112$
                                    699 ;	./src/main.c:101: delay_ms(20);
      0001EB 90 00 14         [24]  700 	mov	dptr,#0x0014
      0001EE C0 07            [24]  701 	push	ar7
      0001F0 C0 06            [24]  702 	push	ar6
      0001F2 C0 03            [24]  703 	push	ar3
      0001F4 C0 02            [24]  704 	push	ar2
      0001F6 C0 01            [24]  705 	push	ar1
      0001F8 C0 00            [24]  706 	push	ar0
      0001FA 12 06 92         [24]  707 	lcall	_delay_ms
      0001FD D0 00            [24]  708 	pop	ar0
      0001FF D0 01            [24]  709 	pop	ar1
      000201 D0 02            [24]  710 	pop	ar2
      000203 D0 03            [24]  711 	pop	ar3
      000205 D0 06            [24]  712 	pop	ar6
      000207 D0 07            [24]  713 	pop	ar7
                                    714 ;	./src/main.c:102: if (INPUT2 == 0)
      000209 20 86 24         [24]  715 	jb	_P0_6,00112$
                                    716 ;	./src/main.c:103: patt = light_up(0, patt);
      00020C 85 0B 0A         [24]  717 	mov	_light_up_PARM_2,_main_patt_65536_17
      00020F 90 00 00         [24]  718 	mov	dptr,#0x0000
      000212 C0 07            [24]  719 	push	ar7
      000214 C0 06            [24]  720 	push	ar6
      000216 C0 03            [24]  721 	push	ar3
      000218 C0 02            [24]  722 	push	ar2
      00021A C0 01            [24]  723 	push	ar1
      00021C C0 00            [24]  724 	push	ar0
      00021E 12 00 B1         [24]  725 	lcall	_light_up
      000221 85 82 0B         [24]  726 	mov	_main_patt_65536_17,dpl
      000224 D0 00            [24]  727 	pop	ar0
      000226 D0 01            [24]  728 	pop	ar1
      000228 D0 02            [24]  729 	pop	ar2
      00022A D0 03            [24]  730 	pop	ar3
      00022C D0 06            [24]  731 	pop	ar6
      00022E D0 07            [24]  732 	pop	ar7
      000230                        733 00112$:
                                    734 ;	./src/main.c:105: preINPUT2 = INPUT2;
      000230 A2 86            [12]  735 	mov	c,_P0_6
      000232 E4               [12]  736 	clr	a
      000233 33               [12]  737 	rlc	a
      000234 FC               [12]  738 	mov	r4,a
      000235 7D 00            [12]  739 	mov	r5,#0x00
                                    740 ;	./src/main.c:108: if ((INPUT3 == 0) && (preINPUT3 == 1))
      000237 20 85 4B         [24]  741 	jb	_P0_5,00117$
      00023A BA 01 48         [24]  742 	cjne	r2,#0x01,00117$
      00023D BB 00 45         [24]  743 	cjne	r3,#0x00,00117$
                                    744 ;	./src/main.c:110: delay_ms(20);
      000240 90 00 14         [24]  745 	mov	dptr,#0x0014
      000243 C0 07            [24]  746 	push	ar7
      000245 C0 06            [24]  747 	push	ar6
      000247 C0 05            [24]  748 	push	ar5
      000249 C0 04            [24]  749 	push	ar4
      00024B C0 01            [24]  750 	push	ar1
      00024D C0 00            [24]  751 	push	ar0
      00024F 12 06 92         [24]  752 	lcall	_delay_ms
      000252 D0 00            [24]  753 	pop	ar0
      000254 D0 01            [24]  754 	pop	ar1
      000256 D0 04            [24]  755 	pop	ar4
      000258 D0 05            [24]  756 	pop	ar5
      00025A D0 06            [24]  757 	pop	ar6
      00025C D0 07            [24]  758 	pop	ar7
                                    759 ;	./src/main.c:111: if (INPUT3 == 0)
      00025E 20 85 24         [24]  760 	jb	_P0_5,00117$
                                    761 ;	./src/main.c:112: patt = light_up(1, patt);
      000261 85 0B 0A         [24]  762 	mov	_light_up_PARM_2,_main_patt_65536_17
      000264 90 00 01         [24]  763 	mov	dptr,#0x0001
      000267 C0 07            [24]  764 	push	ar7
      000269 C0 06            [24]  765 	push	ar6
      00026B C0 05            [24]  766 	push	ar5
      00026D C0 04            [24]  767 	push	ar4
      00026F C0 01            [24]  768 	push	ar1
      000271 C0 00            [24]  769 	push	ar0
      000273 12 00 B1         [24]  770 	lcall	_light_up
      000276 85 82 0B         [24]  771 	mov	_main_patt_65536_17,dpl
      000279 D0 00            [24]  772 	pop	ar0
      00027B D0 01            [24]  773 	pop	ar1
      00027D D0 04            [24]  774 	pop	ar4
      00027F D0 05            [24]  775 	pop	ar5
      000281 D0 06            [24]  776 	pop	ar6
      000283 D0 07            [24]  777 	pop	ar7
      000285                        778 00117$:
                                    779 ;	./src/main.c:114: preINPUT3 = INPUT3;
      000285 A2 85            [12]  780 	mov	c,_P0_5
      000287 E4               [12]  781 	clr	a
      000288 33               [12]  782 	rlc	a
      000289 FA               [12]  783 	mov	r2,a
      00028A 7B 00            [12]  784 	mov	r3,#0x00
                                    785 ;	./src/main.c:117: row2();
      00028C C0 07            [24]  786 	push	ar7
      00028E C0 06            [24]  787 	push	ar6
      000290 C0 05            [24]  788 	push	ar5
      000292 C0 04            [24]  789 	push	ar4
      000294 C0 03            [24]  790 	push	ar3
      000296 C0 02            [24]  791 	push	ar2
      000298 C0 01            [24]  792 	push	ar1
      00029A C0 00            [24]  793 	push	ar0
      00029C 12 00 E2         [24]  794 	lcall	_row2
      00029F D0 00            [24]  795 	pop	ar0
      0002A1 D0 01            [24]  796 	pop	ar1
      0002A3 D0 02            [24]  797 	pop	ar2
      0002A5 D0 03            [24]  798 	pop	ar3
      0002A7 D0 04            [24]  799 	pop	ar4
      0002A9 D0 05            [24]  800 	pop	ar5
      0002AB D0 06            [24]  801 	pop	ar6
      0002AD D0 07            [24]  802 	pop	ar7
                                    803 ;	./src/main.c:120: if ((INPUT1 == 0) && (preINPUT4 == 1))
      0002AF 20 87 62         [24]  804 	jb	_P0_7,00122$
      0002B2 74 01            [12]  805 	mov	a,#0x01
      0002B4 B5 16 06         [24]  806 	cjne	a,_main_sloc5_1_0,00316$
      0002B7 14               [12]  807 	dec	a
      0002B8 B5 17 02         [24]  808 	cjne	a,(_main_sloc5_1_0 + 1),00316$
      0002BB 80 02            [24]  809 	sjmp	00317$
      0002BD                        810 00316$:
      0002BD 80 55            [24]  811 	sjmp	00122$
      0002BF                        812 00317$:
                                    813 ;	./src/main.c:122: delay_ms(20);
      0002BF 90 00 14         [24]  814 	mov	dptr,#0x0014
      0002C2 C0 07            [24]  815 	push	ar7
      0002C4 C0 06            [24]  816 	push	ar6
      0002C6 C0 05            [24]  817 	push	ar5
      0002C8 C0 04            [24]  818 	push	ar4
      0002CA C0 03            [24]  819 	push	ar3
      0002CC C0 02            [24]  820 	push	ar2
      0002CE C0 01            [24]  821 	push	ar1
      0002D0 C0 00            [24]  822 	push	ar0
      0002D2 12 06 92         [24]  823 	lcall	_delay_ms
      0002D5 D0 00            [24]  824 	pop	ar0
      0002D7 D0 01            [24]  825 	pop	ar1
      0002D9 D0 02            [24]  826 	pop	ar2
      0002DB D0 03            [24]  827 	pop	ar3
      0002DD D0 04            [24]  828 	pop	ar4
      0002DF D0 05            [24]  829 	pop	ar5
      0002E1 D0 06            [24]  830 	pop	ar6
      0002E3 D0 07            [24]  831 	pop	ar7
                                    832 ;	./src/main.c:123: if (INPUT1 == 0)
      0002E5 20 87 2C         [24]  833 	jb	_P0_7,00122$
                                    834 ;	./src/main.c:124: patt = light_up(2, patt);
      0002E8 85 0B 0A         [24]  835 	mov	_light_up_PARM_2,_main_patt_65536_17
      0002EB 90 00 02         [24]  836 	mov	dptr,#0x0002
      0002EE C0 07            [24]  837 	push	ar7
      0002F0 C0 06            [24]  838 	push	ar6
      0002F2 C0 05            [24]  839 	push	ar5
      0002F4 C0 04            [24]  840 	push	ar4
      0002F6 C0 03            [24]  841 	push	ar3
      0002F8 C0 02            [24]  842 	push	ar2
      0002FA C0 01            [24]  843 	push	ar1
      0002FC C0 00            [24]  844 	push	ar0
      0002FE 12 00 B1         [24]  845 	lcall	_light_up
      000301 85 82 0B         [24]  846 	mov	_main_patt_65536_17,dpl
      000304 D0 00            [24]  847 	pop	ar0
      000306 D0 01            [24]  848 	pop	ar1
      000308 D0 02            [24]  849 	pop	ar2
      00030A D0 03            [24]  850 	pop	ar3
      00030C D0 04            [24]  851 	pop	ar4
      00030E D0 05            [24]  852 	pop	ar5
      000310 D0 06            [24]  853 	pop	ar6
      000312 D0 07            [24]  854 	pop	ar7
      000314                        855 00122$:
                                    856 ;	./src/main.c:126: preINPUT4 = INPUT1;
      000314 A2 87            [12]  857 	mov	c,_P0_7
      000316 E4               [12]  858 	clr	a
      000317 33               [12]  859 	rlc	a
      000318 F5 16            [12]  860 	mov	_main_sloc5_1_0,a
      00031A 75 17 00         [24]  861 	mov	(_main_sloc5_1_0 + 1),#0x00
                                    862 ;	./src/main.c:129: if ((INPUT2 == 0) && (preINPUT5 == 1))
      00031D 30 86 03         [24]  863 	jnb	_P0_6,00319$
      000320 02 03 B4         [24]  864 	ljmp	00129$
      000323                        865 00319$:
      000323 74 01            [12]  866 	mov	a,#0x01
      000325 B5 0C 06         [24]  867 	cjne	a,_main_sloc0_1_0,00320$
      000328 14               [12]  868 	dec	a
      000329 B5 0D 02         [24]  869 	cjne	a,(_main_sloc0_1_0 + 1),00320$
      00032C 80 03            [24]  870 	sjmp	00321$
      00032E                        871 00320$:
      00032E 02 03 B4         [24]  872 	ljmp	00129$
      000331                        873 00321$:
                                    874 ;	./src/main.c:131: delay_ms(20);
      000331 90 00 14         [24]  875 	mov	dptr,#0x0014
      000334 C0 07            [24]  876 	push	ar7
      000336 C0 06            [24]  877 	push	ar6
      000338 C0 05            [24]  878 	push	ar5
      00033A C0 04            [24]  879 	push	ar4
      00033C C0 03            [24]  880 	push	ar3
      00033E C0 02            [24]  881 	push	ar2
      000340 C0 01            [24]  882 	push	ar1
      000342 C0 00            [24]  883 	push	ar0
      000344 12 06 92         [24]  884 	lcall	_delay_ms
      000347 D0 00            [24]  885 	pop	ar0
      000349 D0 01            [24]  886 	pop	ar1
      00034B D0 02            [24]  887 	pop	ar2
      00034D D0 03            [24]  888 	pop	ar3
      00034F D0 04            [24]  889 	pop	ar4
      000351 D0 05            [24]  890 	pop	ar5
      000353 D0 06            [24]  891 	pop	ar6
      000355 D0 07            [24]  892 	pop	ar7
                                    893 ;	./src/main.c:132: if (INPUT2 == 0)
      000357 20 86 5A         [24]  894 	jb	_P0_6,00129$
                                    895 ;	./src/main.c:134: delay_ms(1500);
      00035A 90 05 DC         [24]  896 	mov	dptr,#0x05dc
      00035D C0 07            [24]  897 	push	ar7
      00035F C0 06            [24]  898 	push	ar6
      000361 C0 05            [24]  899 	push	ar5
      000363 C0 04            [24]  900 	push	ar4
      000365 C0 03            [24]  901 	push	ar3
      000367 C0 02            [24]  902 	push	ar2
      000369 C0 01            [24]  903 	push	ar1
      00036B C0 00            [24]  904 	push	ar0
      00036D 12 06 92         [24]  905 	lcall	_delay_ms
      000370 D0 00            [24]  906 	pop	ar0
      000372 D0 01            [24]  907 	pop	ar1
      000374 D0 02            [24]  908 	pop	ar2
      000376 D0 03            [24]  909 	pop	ar3
      000378 D0 04            [24]  910 	pop	ar4
      00037A D0 05            [24]  911 	pop	ar5
      00037C D0 06            [24]  912 	pop	ar6
      00037E D0 07            [24]  913 	pop	ar7
                                    914 ;	./src/main.c:135: if (INPUT1 != 0)
      000380 30 87 31         [24]  915 	jnb	_P0_7,00129$
                                    916 ;	./src/main.c:137: patt = shift_right(1, patt);
      000383 85 0B 09         [24]  917 	mov	_shift_right_PARM_2,_main_patt_65536_17
      000386 90 00 01         [24]  918 	mov	dptr,#0x0001
      000389 C0 07            [24]  919 	push	ar7
      00038B C0 06            [24]  920 	push	ar6
      00038D C0 05            [24]  921 	push	ar5
      00038F C0 04            [24]  922 	push	ar4
      000391 C0 03            [24]  923 	push	ar3
      000393 C0 02            [24]  924 	push	ar2
      000395 C0 01            [24]  925 	push	ar1
      000397 C0 00            [24]  926 	push	ar0
      000399 12 00 87         [24]  927 	lcall	_shift_right
      00039C 85 82 0B         [24]  928 	mov	_main_patt_65536_17,dpl
      00039F D0 00            [24]  929 	pop	ar0
      0003A1 D0 01            [24]  930 	pop	ar1
      0003A3 D0 02            [24]  931 	pop	ar2
      0003A5 D0 03            [24]  932 	pop	ar3
      0003A7 D0 04            [24]  933 	pop	ar4
      0003A9 D0 05            [24]  934 	pop	ar5
      0003AB D0 06            [24]  935 	pop	ar6
      0003AD D0 07            [24]  936 	pop	ar7
                                    937 ;	./src/main.c:138: cnt++;
      0003AF 08               [12]  938 	inc	r0
      0003B0 B8 00 01         [24]  939 	cjne	r0,#0x00,00324$
      0003B3 09               [12]  940 	inc	r1
      0003B4                        941 00324$:
      0003B4                        942 00129$:
                                    943 ;	./src/main.c:143: if ((INPUT2 == 0) && cnt)
      0003B4 20 86 38         [24]  944 	jb	_P0_6,00132$
      0003B7 E8               [12]  945 	mov	a,r0
      0003B8 49               [12]  946 	orl	a,r1
      0003B9 60 34            [24]  947 	jz	00132$
                                    948 ;	./src/main.c:145: patt = shift_right(1, patt);
      0003BB 85 0B 09         [24]  949 	mov	_shift_right_PARM_2,_main_patt_65536_17
      0003BE 90 00 01         [24]  950 	mov	dptr,#0x0001
      0003C1 C0 07            [24]  951 	push	ar7
      0003C3 C0 06            [24]  952 	push	ar6
      0003C5 C0 05            [24]  953 	push	ar5
      0003C7 C0 04            [24]  954 	push	ar4
      0003C9 C0 03            [24]  955 	push	ar3
      0003CB C0 02            [24]  956 	push	ar2
      0003CD C0 01            [24]  957 	push	ar1
      0003CF C0 00            [24]  958 	push	ar0
      0003D1 12 00 87         [24]  959 	lcall	_shift_right
      0003D4 85 82 0B         [24]  960 	mov	_main_patt_65536_17,dpl
                                    961 ;	./src/main.c:146: delay_ms(100);
      0003D7 90 00 64         [24]  962 	mov	dptr,#0x0064
      0003DA 12 06 92         [24]  963 	lcall	_delay_ms
      0003DD D0 00            [24]  964 	pop	ar0
      0003DF D0 01            [24]  965 	pop	ar1
      0003E1 D0 02            [24]  966 	pop	ar2
      0003E3 D0 03            [24]  967 	pop	ar3
      0003E5 D0 04            [24]  968 	pop	ar4
      0003E7 D0 05            [24]  969 	pop	ar5
      0003E9 D0 06            [24]  970 	pop	ar6
      0003EB D0 07            [24]  971 	pop	ar7
      0003ED 80 04            [24]  972 	sjmp	00133$
      0003EF                        973 00132$:
                                    974 ;	./src/main.c:150: cnt = 0;
      0003EF 78 00            [12]  975 	mov	r0,#0x00
      0003F1 79 00            [12]  976 	mov	r1,#0x00
      0003F3                        977 00133$:
                                    978 ;	./src/main.c:152: preINPUT5 = INPUT2;
      0003F3 A2 86            [12]  979 	mov	c,_P0_6
      0003F5 E4               [12]  980 	clr	a
      0003F6 33               [12]  981 	rlc	a
      0003F7 F5 0C            [12]  982 	mov	_main_sloc0_1_0,a
      0003F9 75 0D 00         [24]  983 	mov	(_main_sloc0_1_0 + 1),#0x00
                                    984 ;	./src/main.c:155: if ((INPUT3 == 0) && (preINPUT6 == 1))
      0003FC 20 85 62         [24]  985 	jb	_P0_5,00138$
      0003FF 74 01            [12]  986 	mov	a,#0x01
      000401 B5 0E 06         [24]  987 	cjne	a,_main_sloc1_1_0,00328$
      000404 14               [12]  988 	dec	a
      000405 B5 0F 02         [24]  989 	cjne	a,(_main_sloc1_1_0 + 1),00328$
      000408 80 02            [24]  990 	sjmp	00329$
      00040A                        991 00328$:
      00040A 80 55            [24]  992 	sjmp	00138$
      00040C                        993 00329$:
                                    994 ;	./src/main.c:157: delay_ms(20);
      00040C 90 00 14         [24]  995 	mov	dptr,#0x0014
      00040F C0 07            [24]  996 	push	ar7
      000411 C0 06            [24]  997 	push	ar6
      000413 C0 05            [24]  998 	push	ar5
      000415 C0 04            [24]  999 	push	ar4
      000417 C0 03            [24] 1000 	push	ar3
      000419 C0 02            [24] 1001 	push	ar2
      00041B C0 01            [24] 1002 	push	ar1
      00041D C0 00            [24] 1003 	push	ar0
      00041F 12 06 92         [24] 1004 	lcall	_delay_ms
      000422 D0 00            [24] 1005 	pop	ar0
      000424 D0 01            [24] 1006 	pop	ar1
      000426 D0 02            [24] 1007 	pop	ar2
      000428 D0 03            [24] 1008 	pop	ar3
      00042A D0 04            [24] 1009 	pop	ar4
      00042C D0 05            [24] 1010 	pop	ar5
      00042E D0 06            [24] 1011 	pop	ar6
      000430 D0 07            [24] 1012 	pop	ar7
                                   1013 ;	./src/main.c:158: if (INPUT3 == 0)
      000432 20 85 2C         [24] 1014 	jb	_P0_5,00138$
                                   1015 ;	./src/main.c:159: patt = light_up(4, patt);
      000435 85 0B 0A         [24] 1016 	mov	_light_up_PARM_2,_main_patt_65536_17
      000438 90 00 04         [24] 1017 	mov	dptr,#0x0004
      00043B C0 07            [24] 1018 	push	ar7
      00043D C0 06            [24] 1019 	push	ar6
      00043F C0 05            [24] 1020 	push	ar5
      000441 C0 04            [24] 1021 	push	ar4
      000443 C0 03            [24] 1022 	push	ar3
      000445 C0 02            [24] 1023 	push	ar2
      000447 C0 01            [24] 1024 	push	ar1
      000449 C0 00            [24] 1025 	push	ar0
      00044B 12 00 B1         [24] 1026 	lcall	_light_up
      00044E 85 82 0B         [24] 1027 	mov	_main_patt_65536_17,dpl
      000451 D0 00            [24] 1028 	pop	ar0
      000453 D0 01            [24] 1029 	pop	ar1
      000455 D0 02            [24] 1030 	pop	ar2
      000457 D0 03            [24] 1031 	pop	ar3
      000459 D0 04            [24] 1032 	pop	ar4
      00045B D0 05            [24] 1033 	pop	ar5
      00045D D0 06            [24] 1034 	pop	ar6
      00045F D0 07            [24] 1035 	pop	ar7
      000461                       1036 00138$:
                                   1037 ;	./src/main.c:161: preINPUT6 = INPUT3;
      000461 A2 85            [12] 1038 	mov	c,_P0_5
      000463 E4               [12] 1039 	clr	a
      000464 33               [12] 1040 	rlc	a
      000465 F5 0E            [12] 1041 	mov	_main_sloc1_1_0,a
      000467 75 0F 00         [24] 1042 	mov	(_main_sloc1_1_0 + 1),#0x00
                                   1043 ;	./src/main.c:164: row3();
      00046A C0 07            [24] 1044 	push	ar7
      00046C C0 06            [24] 1045 	push	ar6
      00046E C0 05            [24] 1046 	push	ar5
      000470 C0 04            [24] 1047 	push	ar4
      000472 C0 03            [24] 1048 	push	ar3
      000474 C0 02            [24] 1049 	push	ar2
      000476 C0 01            [24] 1050 	push	ar1
      000478 C0 00            [24] 1051 	push	ar0
      00047A 12 00 E9         [24] 1052 	lcall	_row3
      00047D D0 00            [24] 1053 	pop	ar0
      00047F D0 01            [24] 1054 	pop	ar1
      000481 D0 02            [24] 1055 	pop	ar2
      000483 D0 03            [24] 1056 	pop	ar3
      000485 D0 04            [24] 1057 	pop	ar4
      000487 D0 05            [24] 1058 	pop	ar5
      000489 D0 06            [24] 1059 	pop	ar6
      00048B D0 07            [24] 1060 	pop	ar7
                                   1061 ;	./src/main.c:167: if ((INPUT1 == 0) && (preINPUT7 == 1))
      00048D 20 87 62         [24] 1062 	jb	_P0_7,00143$
      000490 74 01            [12] 1063 	mov	a,#0x01
      000492 B5 10 06         [24] 1064 	cjne	a,_main_sloc2_1_0,00332$
      000495 14               [12] 1065 	dec	a
      000496 B5 11 02         [24] 1066 	cjne	a,(_main_sloc2_1_0 + 1),00332$
      000499 80 02            [24] 1067 	sjmp	00333$
      00049B                       1068 00332$:
      00049B 80 55            [24] 1069 	sjmp	00143$
      00049D                       1070 00333$:
                                   1071 ;	./src/main.c:169: delay_ms(20);
      00049D 90 00 14         [24] 1072 	mov	dptr,#0x0014
      0004A0 C0 07            [24] 1073 	push	ar7
      0004A2 C0 06            [24] 1074 	push	ar6
      0004A4 C0 05            [24] 1075 	push	ar5
      0004A6 C0 04            [24] 1076 	push	ar4
      0004A8 C0 03            [24] 1077 	push	ar3
      0004AA C0 02            [24] 1078 	push	ar2
      0004AC C0 01            [24] 1079 	push	ar1
      0004AE C0 00            [24] 1080 	push	ar0
      0004B0 12 06 92         [24] 1081 	lcall	_delay_ms
      0004B3 D0 00            [24] 1082 	pop	ar0
      0004B5 D0 01            [24] 1083 	pop	ar1
      0004B7 D0 02            [24] 1084 	pop	ar2
      0004B9 D0 03            [24] 1085 	pop	ar3
      0004BB D0 04            [24] 1086 	pop	ar4
      0004BD D0 05            [24] 1087 	pop	ar5
      0004BF D0 06            [24] 1088 	pop	ar6
      0004C1 D0 07            [24] 1089 	pop	ar7
                                   1090 ;	./src/main.c:170: if (INPUT1 == 0)
      0004C3 20 87 2C         [24] 1091 	jb	_P0_7,00143$
                                   1092 ;	./src/main.c:171: patt = light_up(5, patt);
      0004C6 85 0B 0A         [24] 1093 	mov	_light_up_PARM_2,_main_patt_65536_17
      0004C9 90 00 05         [24] 1094 	mov	dptr,#0x0005
      0004CC C0 07            [24] 1095 	push	ar7
      0004CE C0 06            [24] 1096 	push	ar6
      0004D0 C0 05            [24] 1097 	push	ar5
      0004D2 C0 04            [24] 1098 	push	ar4
      0004D4 C0 03            [24] 1099 	push	ar3
      0004D6 C0 02            [24] 1100 	push	ar2
      0004D8 C0 01            [24] 1101 	push	ar1
      0004DA C0 00            [24] 1102 	push	ar0
      0004DC 12 00 B1         [24] 1103 	lcall	_light_up
      0004DF 85 82 0B         [24] 1104 	mov	_main_patt_65536_17,dpl
      0004E2 D0 00            [24] 1105 	pop	ar0
      0004E4 D0 01            [24] 1106 	pop	ar1
      0004E6 D0 02            [24] 1107 	pop	ar2
      0004E8 D0 03            [24] 1108 	pop	ar3
      0004EA D0 04            [24] 1109 	pop	ar4
      0004EC D0 05            [24] 1110 	pop	ar5
      0004EE D0 06            [24] 1111 	pop	ar6
      0004F0 D0 07            [24] 1112 	pop	ar7
      0004F2                       1113 00143$:
                                   1114 ;	./src/main.c:173: preINPUT7 = INPUT1;
      0004F2 A2 87            [12] 1115 	mov	c,_P0_7
      0004F4 E4               [12] 1116 	clr	a
      0004F5 33               [12] 1117 	rlc	a
      0004F6 F5 10            [12] 1118 	mov	_main_sloc2_1_0,a
      0004F8 75 11 00         [24] 1119 	mov	(_main_sloc2_1_0 + 1),#0x00
                                   1120 ;	./src/main.c:176: if ((INPUT2 == 0) && (preINPUT8 == 1))
      0004FB 20 86 62         [24] 1121 	jb	_P0_6,00148$
      0004FE 74 01            [12] 1122 	mov	a,#0x01
      000500 B5 12 06         [24] 1123 	cjne	a,_main_sloc3_1_0,00336$
      000503 14               [12] 1124 	dec	a
      000504 B5 13 02         [24] 1125 	cjne	a,(_main_sloc3_1_0 + 1),00336$
      000507 80 02            [24] 1126 	sjmp	00337$
      000509                       1127 00336$:
      000509 80 55            [24] 1128 	sjmp	00148$
      00050B                       1129 00337$:
                                   1130 ;	./src/main.c:178: delay_ms(20);
      00050B 90 00 14         [24] 1131 	mov	dptr,#0x0014
      00050E C0 07            [24] 1132 	push	ar7
      000510 C0 06            [24] 1133 	push	ar6
      000512 C0 05            [24] 1134 	push	ar5
      000514 C0 04            [24] 1135 	push	ar4
      000516 C0 03            [24] 1136 	push	ar3
      000518 C0 02            [24] 1137 	push	ar2
      00051A C0 01            [24] 1138 	push	ar1
      00051C C0 00            [24] 1139 	push	ar0
      00051E 12 06 92         [24] 1140 	lcall	_delay_ms
      000521 D0 00            [24] 1141 	pop	ar0
      000523 D0 01            [24] 1142 	pop	ar1
      000525 D0 02            [24] 1143 	pop	ar2
      000527 D0 03            [24] 1144 	pop	ar3
      000529 D0 04            [24] 1145 	pop	ar4
      00052B D0 05            [24] 1146 	pop	ar5
      00052D D0 06            [24] 1147 	pop	ar6
      00052F D0 07            [24] 1148 	pop	ar7
                                   1149 ;	./src/main.c:179: if (INPUT2 == 0)
      000531 20 86 2C         [24] 1150 	jb	_P0_6,00148$
                                   1151 ;	./src/main.c:180: patt = light_up(6, patt);
      000534 85 0B 0A         [24] 1152 	mov	_light_up_PARM_2,_main_patt_65536_17
      000537 90 00 06         [24] 1153 	mov	dptr,#0x0006
      00053A C0 07            [24] 1154 	push	ar7
      00053C C0 06            [24] 1155 	push	ar6
      00053E C0 05            [24] 1156 	push	ar5
      000540 C0 04            [24] 1157 	push	ar4
      000542 C0 03            [24] 1158 	push	ar3
      000544 C0 02            [24] 1159 	push	ar2
      000546 C0 01            [24] 1160 	push	ar1
      000548 C0 00            [24] 1161 	push	ar0
      00054A 12 00 B1         [24] 1162 	lcall	_light_up
      00054D 85 82 0B         [24] 1163 	mov	_main_patt_65536_17,dpl
      000550 D0 00            [24] 1164 	pop	ar0
      000552 D0 01            [24] 1165 	pop	ar1
      000554 D0 02            [24] 1166 	pop	ar2
      000556 D0 03            [24] 1167 	pop	ar3
      000558 D0 04            [24] 1168 	pop	ar4
      00055A D0 05            [24] 1169 	pop	ar5
      00055C D0 06            [24] 1170 	pop	ar6
      00055E D0 07            [24] 1171 	pop	ar7
      000560                       1172 00148$:
                                   1173 ;	./src/main.c:182: preINPUT8 = INPUT2;
      000560 A2 86            [12] 1174 	mov	c,_P0_6
      000562 E4               [12] 1175 	clr	a
      000563 33               [12] 1176 	rlc	a
      000564 F5 12            [12] 1177 	mov	_main_sloc3_1_0,a
      000566 75 13 00         [24] 1178 	mov	(_main_sloc3_1_0 + 1),#0x00
                                   1179 ;	./src/main.c:185: if ((INPUT3 == 0) && (preINPUT9 == 1))
      000569 30 85 03         [24] 1180 	jnb	_P0_5,00339$
      00056C 02 06 86         [24] 1181 	ljmp	00159$
      00056F                       1182 00339$:
      00056F 74 01            [12] 1183 	mov	a,#0x01
      000571 B5 14 06         [24] 1184 	cjne	a,_main_sloc4_1_0,00340$
      000574 14               [12] 1185 	dec	a
      000575 B5 15 02         [24] 1186 	cjne	a,(_main_sloc4_1_0 + 1),00340$
      000578 80 03            [24] 1187 	sjmp	00341$
      00057A                       1188 00340$:
      00057A 02 06 86         [24] 1189 	ljmp	00159$
      00057D                       1190 00341$:
                                   1191 ;	./src/main.c:187: delay_ms(20);
      00057D 90 00 14         [24] 1192 	mov	dptr,#0x0014
      000580 C0 07            [24] 1193 	push	ar7
      000582 C0 06            [24] 1194 	push	ar6
      000584 C0 05            [24] 1195 	push	ar5
      000586 C0 04            [24] 1196 	push	ar4
      000588 C0 03            [24] 1197 	push	ar3
      00058A C0 02            [24] 1198 	push	ar2
      00058C C0 01            [24] 1199 	push	ar1
      00058E C0 00            [24] 1200 	push	ar0
      000590 12 06 92         [24] 1201 	lcall	_delay_ms
      000593 D0 00            [24] 1202 	pop	ar0
      000595 D0 01            [24] 1203 	pop	ar1
      000597 D0 02            [24] 1204 	pop	ar2
      000599 D0 03            [24] 1205 	pop	ar3
      00059B D0 04            [24] 1206 	pop	ar4
      00059D D0 05            [24] 1207 	pop	ar5
      00059F D0 06            [24] 1208 	pop	ar6
      0005A1 D0 07            [24] 1209 	pop	ar7
                                   1210 ;	./src/main.c:188: if (INPUT3 == 0)
      0005A3 30 85 03         [24] 1211 	jnb	_P0_5,00342$
      0005A6 02 06 86         [24] 1212 	ljmp	00159$
      0005A9                       1213 00342$:
                                   1214 ;	./src/main.c:190: delay_ms(1500);
      0005A9 90 05 DC         [24] 1215 	mov	dptr,#0x05dc
      0005AC C0 07            [24] 1216 	push	ar7
      0005AE C0 06            [24] 1217 	push	ar6
      0005B0 C0 05            [24] 1218 	push	ar5
      0005B2 C0 04            [24] 1219 	push	ar4
      0005B4 C0 03            [24] 1220 	push	ar3
      0005B6 C0 02            [24] 1221 	push	ar2
      0005B8 C0 01            [24] 1222 	push	ar1
      0005BA C0 00            [24] 1223 	push	ar0
      0005BC 12 06 92         [24] 1224 	lcall	_delay_ms
      0005BF D0 00            [24] 1225 	pop	ar0
      0005C1 D0 01            [24] 1226 	pop	ar1
      0005C3 D0 02            [24] 1227 	pop	ar2
      0005C5 D0 03            [24] 1228 	pop	ar3
      0005C7 D0 04            [24] 1229 	pop	ar4
      0005C9 D0 05            [24] 1230 	pop	ar5
      0005CB D0 06            [24] 1231 	pop	ar6
      0005CD D0 07            [24] 1232 	pop	ar7
                                   1233 ;	./src/main.c:191: if (INPUT1 != 0)
      0005CF 20 87 03         [24] 1234 	jb	_P0_7,00343$
      0005D2 02 06 5A         [24] 1235 	ljmp	00154$
      0005D5                       1236 00343$:
                                   1237 ;	./src/main.c:193: delay_ms(20);
      0005D5 90 00 14         [24] 1238 	mov	dptr,#0x0014
      0005D8 C0 07            [24] 1239 	push	ar7
      0005DA C0 06            [24] 1240 	push	ar6
      0005DC C0 05            [24] 1241 	push	ar5
      0005DE C0 04            [24] 1242 	push	ar4
      0005E0 C0 03            [24] 1243 	push	ar3
      0005E2 C0 02            [24] 1244 	push	ar2
      0005E4 C0 01            [24] 1245 	push	ar1
      0005E6 C0 00            [24] 1246 	push	ar0
      0005E8 12 06 92         [24] 1247 	lcall	_delay_ms
      0005EB D0 00            [24] 1248 	pop	ar0
      0005ED D0 01            [24] 1249 	pop	ar1
      0005EF D0 02            [24] 1250 	pop	ar2
      0005F1 D0 03            [24] 1251 	pop	ar3
      0005F3 D0 04            [24] 1252 	pop	ar4
      0005F5 D0 05            [24] 1253 	pop	ar5
      0005F7 D0 06            [24] 1254 	pop	ar6
      0005F9 D0 07            [24] 1255 	pop	ar7
                                   1256 ;	./src/main.c:194: if (INPUT1 == 0)
      0005FB 20 87 2E         [24] 1257 	jb	_P0_7,00151$
                                   1258 ;	./src/main.c:195: patt = shift_left(3, patt);
      0005FE 85 0B 08         [24] 1259 	mov	_shift_left_PARM_2,_main_patt_65536_17
      000601 90 00 03         [24] 1260 	mov	dptr,#0x0003
      000604 C0 07            [24] 1261 	push	ar7
      000606 C0 06            [24] 1262 	push	ar6
      000608 C0 05            [24] 1263 	push	ar5
      00060A C0 04            [24] 1264 	push	ar4
      00060C C0 03            [24] 1265 	push	ar3
      00060E C0 02            [24] 1266 	push	ar2
      000610 C0 01            [24] 1267 	push	ar1
      000612 C0 00            [24] 1268 	push	ar0
      000614 12 00 62         [24] 1269 	lcall	_shift_left
      000617 85 82 0B         [24] 1270 	mov	_main_patt_65536_17,dpl
      00061A D0 00            [24] 1271 	pop	ar0
      00061C D0 01            [24] 1272 	pop	ar1
      00061E D0 02            [24] 1273 	pop	ar2
      000620 D0 03            [24] 1274 	pop	ar3
      000622 D0 04            [24] 1275 	pop	ar4
      000624 D0 05            [24] 1276 	pop	ar5
      000626 D0 06            [24] 1277 	pop	ar6
      000628 D0 07            [24] 1278 	pop	ar7
      00062A 80 5A            [24] 1279 	sjmp	00159$
      00062C                       1280 00151$:
                                   1281 ;	./src/main.c:197: patt = shift_left(1, patt);
      00062C 85 0B 08         [24] 1282 	mov	_shift_left_PARM_2,_main_patt_65536_17
      00062F 90 00 01         [24] 1283 	mov	dptr,#0x0001
      000632 C0 07            [24] 1284 	push	ar7
      000634 C0 06            [24] 1285 	push	ar6
      000636 C0 05            [24] 1286 	push	ar5
      000638 C0 04            [24] 1287 	push	ar4
      00063A C0 03            [24] 1288 	push	ar3
      00063C C0 02            [24] 1289 	push	ar2
      00063E C0 01            [24] 1290 	push	ar1
      000640 C0 00            [24] 1291 	push	ar0
      000642 12 00 62         [24] 1292 	lcall	_shift_left
      000645 85 82 0B         [24] 1293 	mov	_main_patt_65536_17,dpl
      000648 D0 00            [24] 1294 	pop	ar0
      00064A D0 01            [24] 1295 	pop	ar1
      00064C D0 02            [24] 1296 	pop	ar2
      00064E D0 03            [24] 1297 	pop	ar3
      000650 D0 04            [24] 1298 	pop	ar4
      000652 D0 05            [24] 1299 	pop	ar5
      000654 D0 06            [24] 1300 	pop	ar6
      000656 D0 07            [24] 1301 	pop	ar7
      000658 80 2C            [24] 1302 	sjmp	00159$
      00065A                       1303 00154$:
                                   1304 ;	./src/main.c:200: patt = shift_right(2, patt);
      00065A 85 0B 09         [24] 1305 	mov	_shift_right_PARM_2,_main_patt_65536_17
      00065D 90 00 02         [24] 1306 	mov	dptr,#0x0002
      000660 C0 07            [24] 1307 	push	ar7
      000662 C0 06            [24] 1308 	push	ar6
      000664 C0 05            [24] 1309 	push	ar5
      000666 C0 04            [24] 1310 	push	ar4
      000668 C0 03            [24] 1311 	push	ar3
      00066A C0 02            [24] 1312 	push	ar2
      00066C C0 01            [24] 1313 	push	ar1
      00066E C0 00            [24] 1314 	push	ar0
      000670 12 00 87         [24] 1315 	lcall	_shift_right
      000673 85 82 0B         [24] 1316 	mov	_main_patt_65536_17,dpl
      000676 D0 00            [24] 1317 	pop	ar0
      000678 D0 01            [24] 1318 	pop	ar1
      00067A D0 02            [24] 1319 	pop	ar2
      00067C D0 03            [24] 1320 	pop	ar3
      00067E D0 04            [24] 1321 	pop	ar4
      000680 D0 05            [24] 1322 	pop	ar5
      000682 D0 06            [24] 1323 	pop	ar6
      000684 D0 07            [24] 1324 	pop	ar7
      000686                       1325 00159$:
                                   1326 ;	./src/main.c:203: preINPUT9 = INPUT3;
      000686 A2 85            [12] 1327 	mov	c,_P0_5
      000688 E4               [12] 1328 	clr	a
      000689 33               [12] 1329 	rlc	a
      00068A F5 14            [12] 1330 	mov	_main_sloc4_1_0,a
      00068C 75 15 00         [24] 1331 	mov	(_main_sloc4_1_0 + 1),#0x00
                                   1332 ;	./src/main.c:205: }
      00068F 02 01 1B         [24] 1333 	ljmp	00162$
                                   1334 	.area CSEG    (CODE)
                                   1335 	.area CONST   (CODE)
                                   1336 	.area XINIT   (CODE)
                                   1337 	.area CABS    (ABS,CODE)
