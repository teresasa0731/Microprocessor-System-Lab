                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EX1_int
                                     12 	.globl _EX0_int
                                     13 	.globl _main
                                     14 	.globl _delay_ms
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _LED
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable bit register bank
                                    225 ;--------------------------------------------------------
                                    226 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        227 bits:
      000020                        228 	.ds 1
                           008000   229 	b0 = bits[0]
                           008100   230 	b1 = bits[1]
                           008200   231 	b2 = bits[2]
                           008300   232 	b3 = bits[3]
                           008400   233 	b4 = bits[4]
                           008500   234 	b5 = bits[5]
                           008600   235 	b6 = bits[6]
                           008700   236 	b7 = bits[7]
                                    237 ;--------------------------------------------------------
                                    238 ; internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area DSEG    (DATA)
      000008                        241 _LED::
      000008                        242 	.ds 1
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram
                                    245 ;--------------------------------------------------------
                                    246 ;--------------------------------------------------------
                                    247 ; Stack segment in internal ram
                                    248 ;--------------------------------------------------------
                                    249 	.area SSEG
      000021                        250 __start__stack:
      000021                        251 	.ds	1
                                    252 
                                    253 ;--------------------------------------------------------
                                    254 ; indirectly addressable internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area ISEG    (DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area IABS    (ABS,DATA)
                                    261 	.area IABS    (ABS,DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; bit data
                                    264 ;--------------------------------------------------------
                                    265 	.area BSEG    (BIT)
                                    266 ;--------------------------------------------------------
                                    267 ; paged external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area PSEG    (PAG,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; uninitialized external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XSEG    (XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; absolute external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XABS    (ABS,XDATA)
                                    278 ;--------------------------------------------------------
                                    279 ; initialized external ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area XISEG   (XDATA)
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT0 (CODE)
                                    284 	.area GSINIT1 (CODE)
                                    285 	.area GSINIT2 (CODE)
                                    286 	.area GSINIT3 (CODE)
                                    287 	.area GSINIT4 (CODE)
                                    288 	.area GSINIT5 (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area CSEG    (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; interrupt vector
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
      000000                        296 __interrupt_vect:
      000000 02 00 19         [24]  297 	ljmp	__sdcc_gsinit_startup
      000003 02 00 99         [24]  298 	ljmp	_EX0_int
      000006                        299 	.ds	5
      00000B 32               [24]  300 	reti
      00000C                        301 	.ds	7
      000013 02 00 E6         [24]  302 	ljmp	_EX1_int
                                    303 ;--------------------------------------------------------
                                    304 ; global & static initialisations
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.globl __sdcc_gsinit_startup
                                    311 	.globl __sdcc_program_startup
                                    312 	.globl __start__stack
                                    313 	.globl __mcs51_genXINIT
                                    314 	.globl __mcs51_genXRAMCLEAR
                                    315 	.globl __mcs51_genRAMCLEAR
                                    316 ;	./src/main.c:5: unsigned char LED=0x80;
      000072 75 08 80         [24]  317 	mov	_LED,#0x80
                                    318 	.area GSFINAL (CODE)
      000075 02 00 16         [24]  319 	ljmp	__sdcc_program_startup
                                    320 ;--------------------------------------------------------
                                    321 ; Home
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area HOME    (CODE)
      000016                        325 __sdcc_program_startup:
      000016 02 00 78         [24]  326 	ljmp	_main
                                    327 ;	return from main will return to caller
                                    328 ;--------------------------------------------------------
                                    329 ; code
                                    330 ;--------------------------------------------------------
                                    331 	.area CSEG    (CODE)
                                    332 ;------------------------------------------------------------
                                    333 ;Allocation info for local variables in function 'main'
                                    334 ;------------------------------------------------------------
                                    335 ;	./src/main.c:6: main()
                                    336 ;	-----------------------------------------
                                    337 ;	 function main
                                    338 ;	-----------------------------------------
      000078                        339 _main:
                           000007   340 	ar7 = 0x07
                           000006   341 	ar6 = 0x06
                           000005   342 	ar5 = 0x05
                           000004   343 	ar4 = 0x04
                           000003   344 	ar3 = 0x03
                           000002   345 	ar2 = 0x02
                           000001   346 	ar1 = 0x01
                           000000   347 	ar0 = 0x00
                                    348 ;	./src/main.c:8: EA=1;
                                    349 ;	assignBit
      000078 D2 AF            [12]  350 	setb	_EA
                                    351 ;	./src/main.c:9: EX0=1; 
                                    352 ;	assignBit
      00007A D2 A8            [12]  353 	setb	_EX0
                                    354 ;	./src/main.c:10: EX1=1;	
                                    355 ;	assignBit
      00007C D2 AA            [12]  356 	setb	_EX1
                                    357 ;	./src/main.c:11: TCON=0x01; 
      00007E 75 88 01         [24]  358 	mov	_TCON,#0x01
                                    359 ;	./src/main.c:12: while(1)
      000081                        360 00104$:
                                    361 ;	./src/main.c:14: P1=~LED;
      000081 E5 08            [12]  362 	mov	a,_LED
      000083 F4               [12]  363 	cpl	a
      000084 F5 90            [12]  364 	mov	_P1,a
                                    365 ;	./src/main.c:15: delay_ms(1000);	
      000086 90 03 E8         [24]  366 	mov	dptr,#0x03e8
      000089 12 01 33         [24]  367 	lcall	_delay_ms
                                    368 ;	./src/main.c:16: LED>>=1;
      00008C E5 08            [12]  369 	mov	a,_LED
      00008E C3               [12]  370 	clr	c
      00008F 13               [12]  371 	rrc	a
                                    372 ;	./src/main.c:17: if(LED==0)
      000090 F5 08            [12]  373 	mov	_LED,a
      000092 70 ED            [24]  374 	jnz	00104$
                                    375 ;	./src/main.c:18: LED=0x80;
      000094 75 08 80         [24]  376 	mov	_LED,#0x80
                                    377 ;	./src/main.c:20: } 
      000097 80 E8            [24]  378 	sjmp	00104$
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'EX0_int'
                                    381 ;------------------------------------------------------------
                                    382 ;j                         Allocated to registers r7 
                                    383 ;------------------------------------------------------------
                                    384 ;	./src/main.c:22: void EX0_int(void) __interrupt (0) // External interrupt 0
                                    385 ;	-----------------------------------------
                                    386 ;	 function EX0_int
                                    387 ;	-----------------------------------------
      000099                        388 _EX0_int:
      000099 C0 20            [24]  389 	push	bits
      00009B C0 E0            [24]  390 	push	acc
      00009D C0 F0            [24]  391 	push	b
      00009F C0 82            [24]  392 	push	dpl
      0000A1 C0 83            [24]  393 	push	dph
      0000A3 C0 07            [24]  394 	push	(0+7)
      0000A5 C0 06            [24]  395 	push	(0+6)
      0000A7 C0 05            [24]  396 	push	(0+5)
      0000A9 C0 04            [24]  397 	push	(0+4)
      0000AB C0 03            [24]  398 	push	(0+3)
      0000AD C0 02            [24]  399 	push	(0+2)
      0000AF C0 01            [24]  400 	push	(0+1)
      0000B1 C0 00            [24]  401 	push	(0+0)
      0000B3 C0 D0            [24]  402 	push	psw
      0000B5 75 D0 00         [24]  403 	mov	psw,#0x00
                                    404 ;	./src/main.c:25: j=LED;      	
      0000B8 AF 08            [24]  405 	mov	r7,_LED
                                    406 ;	./src/main.c:26: P1=0x0F;
      0000BA 75 90 0F         [24]  407 	mov	_P1,#0x0f
                                    408 ;	./src/main.c:27: delay_ms(10000); 
      0000BD 90 27 10         [24]  409 	mov	dptr,#0x2710
      0000C0 C0 07            [24]  410 	push	ar7
      0000C2 12 01 33         [24]  411 	lcall	_delay_ms
      0000C5 D0 07            [24]  412 	pop	ar7
                                    413 ;	./src/main.c:28: LED=j; 
      0000C7 8F 08            [24]  414 	mov	_LED,r7
                                    415 ;	./src/main.c:29: } 
      0000C9 D0 D0            [24]  416 	pop	psw
      0000CB D0 00            [24]  417 	pop	(0+0)
      0000CD D0 01            [24]  418 	pop	(0+1)
      0000CF D0 02            [24]  419 	pop	(0+2)
      0000D1 D0 03            [24]  420 	pop	(0+3)
      0000D3 D0 04            [24]  421 	pop	(0+4)
      0000D5 D0 05            [24]  422 	pop	(0+5)
      0000D7 D0 06            [24]  423 	pop	(0+6)
      0000D9 D0 07            [24]  424 	pop	(0+7)
      0000DB D0 83            [24]  425 	pop	dph
      0000DD D0 82            [24]  426 	pop	dpl
      0000DF D0 F0            [24]  427 	pop	b
      0000E1 D0 E0            [24]  428 	pop	acc
      0000E3 D0 20            [24]  429 	pop	bits
      0000E5 32               [24]  430 	reti
                                    431 ;------------------------------------------------------------
                                    432 ;Allocation info for local variables in function 'EX1_int'
                                    433 ;------------------------------------------------------------
                                    434 ;j                         Allocated to registers r7 
                                    435 ;------------------------------------------------------------
                                    436 ;	./src/main.c:31: void EX1_int(void) __interrupt (2) // External interrupt 1
                                    437 ;	-----------------------------------------
                                    438 ;	 function EX1_int
                                    439 ;	-----------------------------------------
      0000E6                        440 _EX1_int:
      0000E6 C0 20            [24]  441 	push	bits
      0000E8 C0 E0            [24]  442 	push	acc
      0000EA C0 F0            [24]  443 	push	b
      0000EC C0 82            [24]  444 	push	dpl
      0000EE C0 83            [24]  445 	push	dph
      0000F0 C0 07            [24]  446 	push	(0+7)
      0000F2 C0 06            [24]  447 	push	(0+6)
      0000F4 C0 05            [24]  448 	push	(0+5)
      0000F6 C0 04            [24]  449 	push	(0+4)
      0000F8 C0 03            [24]  450 	push	(0+3)
      0000FA C0 02            [24]  451 	push	(0+2)
      0000FC C0 01            [24]  452 	push	(0+1)
      0000FE C0 00            [24]  453 	push	(0+0)
      000100 C0 D0            [24]  454 	push	psw
      000102 75 D0 00         [24]  455 	mov	psw,#0x00
                                    456 ;	./src/main.c:34: j=LED;      	
      000105 AF 08            [24]  457 	mov	r7,_LED
                                    458 ;	./src/main.c:35: P1=0x00;
      000107 75 90 00         [24]  459 	mov	_P1,#0x00
                                    460 ;	./src/main.c:36: delay_ms(10000); 
      00010A 90 27 10         [24]  461 	mov	dptr,#0x2710
      00010D C0 07            [24]  462 	push	ar7
      00010F 12 01 33         [24]  463 	lcall	_delay_ms
      000112 D0 07            [24]  464 	pop	ar7
                                    465 ;	./src/main.c:37: LED=j; 
      000114 8F 08            [24]  466 	mov	_LED,r7
                                    467 ;	./src/main.c:38: } 	
      000116 D0 D0            [24]  468 	pop	psw
      000118 D0 00            [24]  469 	pop	(0+0)
      00011A D0 01            [24]  470 	pop	(0+1)
      00011C D0 02            [24]  471 	pop	(0+2)
      00011E D0 03            [24]  472 	pop	(0+3)
      000120 D0 04            [24]  473 	pop	(0+4)
      000122 D0 05            [24]  474 	pop	(0+5)
      000124 D0 06            [24]  475 	pop	(0+6)
      000126 D0 07            [24]  476 	pop	(0+7)
      000128 D0 83            [24]  477 	pop	dph
      00012A D0 82            [24]  478 	pop	dpl
      00012C D0 F0            [24]  479 	pop	b
      00012E D0 E0            [24]  480 	pop	acc
      000130 D0 20            [24]  481 	pop	bits
      000132 32               [24]  482 	reti
                                    483 	.area CSEG    (CODE)
                                    484 	.area CONST   (CODE)
                                    485 	.area XINIT   (CODE)
                                    486 	.area CABS    (ABS,CODE)
