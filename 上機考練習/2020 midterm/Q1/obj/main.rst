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
                                     12 	.globl _shiftRight
                                     13 	.globl _shiftLeft
                                     14 	.globl _read_currINPUT
                                     15 	.globl _delay_ms
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _patt
                                    113 	.globl _states
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000008                        229 _states::
      000008                        230 	.ds 4
      00000C                        231 _patt::
      00000C                        232 	.ds 1
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram
                                    235 ;--------------------------------------------------------
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 	.area	OSEG    (OVR,DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; Stack segment in internal ram
                                    240 ;--------------------------------------------------------
                                    241 	.area SSEG
      00000D                        242 __start__stack:
      00000D                        243 	.ds	1
                                    244 
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area IABS    (ABS,DATA)
                                    253 	.area IABS    (ABS,DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; bit data
                                    256 ;--------------------------------------------------------
                                    257 	.area BSEG    (BIT)
                                    258 ;--------------------------------------------------------
                                    259 ; paged external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area PSEG    (PAG,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; uninitialized external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XSEG    (XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; absolute external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XABS    (ABS,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; initialized external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XISEG   (XDATA)
                                    274 	.area HOME    (CODE)
                                    275 	.area GSINIT0 (CODE)
                                    276 	.area GSINIT1 (CODE)
                                    277 	.area GSINIT2 (CODE)
                                    278 	.area GSINIT3 (CODE)
                                    279 	.area GSINIT4 (CODE)
                                    280 	.area GSINIT5 (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 	.area GSFINAL (CODE)
                                    283 	.area CSEG    (CODE)
                                    284 ;--------------------------------------------------------
                                    285 ; interrupt vector
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
      000000                        288 __interrupt_vect:
      000000 02 00 06         [24]  289 	ljmp	__sdcc_gsinit_startup
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.globl __sdcc_gsinit_startup
                                    298 	.globl __sdcc_program_startup
                                    299 	.globl __start__stack
                                    300 	.globl __mcs51_genXINIT
                                    301 	.globl __mcs51_genXRAMCLEAR
                                    302 	.globl __mcs51_genRAMCLEAR
                                    303 ;	./src/main.c:28: unsigned char patt = 0x80;
      00005F 75 0C 80         [24]  304 	mov	_patt,#0x80
                                    305 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  306 	ljmp	__sdcc_program_startup
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
      000003                        312 __sdcc_program_startup:
      000003 02 00 BA         [24]  313 	ljmp	_main
                                    314 ;	return from main will return to caller
                                    315 ;--------------------------------------------------------
                                    316 ; code
                                    317 ;--------------------------------------------------------
                                    318 	.area CSEG    (CODE)
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'read_currINPUT'
                                    321 ;------------------------------------------------------------
                                    322 ;	./src/main.c:31: void read_currINPUT(void)
                                    323 ;	-----------------------------------------
                                    324 ;	 function read_currINPUT
                                    325 ;	-----------------------------------------
      000065                        326 _read_currINPUT:
                           000007   327 	ar7 = 0x07
                           000006   328 	ar6 = 0x06
                           000005   329 	ar5 = 0x05
                           000004   330 	ar4 = 0x04
                           000003   331 	ar3 = 0x03
                           000002   332 	ar2 = 0x02
                           000001   333 	ar1 = 0x01
                           000000   334 	ar0 = 0x00
                                    335 ;	./src/main.c:33: states[0].currINPUT = PB1;
      000065 A2 B2            [12]  336 	mov	c,_INT0
      000067 E4               [12]  337 	clr	a
      000068 33               [12]  338 	rlc	a
      000069 78 08            [12]  339 	mov	r0,#_states
      00006B 13               [12]  340 	rrc	a
      00006C E6               [12]  341 	mov	a,@r0
      00006D 92 E0            [24]  342 	mov	acc.0,c
      00006F F6               [12]  343 	mov	@r0,a
                                    344 ;	./src/main.c:34: states[1].currINPUT = PB2;
      000070 A2 B3            [12]  345 	mov	c,_INT1
      000072 E4               [12]  346 	clr	a
      000073 33               [12]  347 	rlc	a
      000074 78 09            [12]  348 	mov	r0,#(_states + 0x0001)
      000076 13               [12]  349 	rrc	a
      000077 E6               [12]  350 	mov	a,@r0
      000078 92 E0            [24]  351 	mov	acc.0,c
      00007A F6               [12]  352 	mov	@r0,a
                                    353 ;	./src/main.c:35: states[2].currINPUT = PB3;
      00007B A2 A0            [12]  354 	mov	c,_P2_0
      00007D E4               [12]  355 	clr	a
      00007E 33               [12]  356 	rlc	a
      00007F 78 0A            [12]  357 	mov	r0,#(_states + 0x0002)
      000081 13               [12]  358 	rrc	a
      000082 E6               [12]  359 	mov	a,@r0
      000083 92 E0            [24]  360 	mov	acc.0,c
      000085 F6               [12]  361 	mov	@r0,a
                                    362 ;	./src/main.c:36: states[3].currINPUT = PB4;
      000086 A2 A1            [12]  363 	mov	c,_P2_1
      000088 E4               [12]  364 	clr	a
      000089 33               [12]  365 	rlc	a
      00008A 78 0B            [12]  366 	mov	r0,#(_states + 0x0003)
      00008C 13               [12]  367 	rrc	a
      00008D E6               [12]  368 	mov	a,@r0
      00008E 92 E0            [24]  369 	mov	acc.0,c
      000090 F6               [12]  370 	mov	@r0,a
                                    371 ;	./src/main.c:37: }
      000091 22               [24]  372 	ret
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'shiftLeft'
                                    375 ;------------------------------------------------------------
                                    376 ;mode                      Allocated to registers 
                                    377 ;------------------------------------------------------------
                                    378 ;	./src/main.c:39: void shiftLeft(int mode){
                                    379 ;	-----------------------------------------
                                    380 ;	 function shiftLeft
                                    381 ;	-----------------------------------------
      000092                        382 _shiftLeft:
                                    383 ;	./src/main.c:40: patt = patt >> 1;
      000092 E5 0C            [12]  384 	mov	a,_patt
      000094 C3               [12]  385 	clr	c
      000095 13               [12]  386 	rrc	a
                                    387 ;	./src/main.c:41: if (patt == 0x00)
      000096 F5 0C            [12]  388 	mov	_patt,a
      000098 70 03            [24]  389 	jnz	00102$
                                    390 ;	./src/main.c:42: patt = 0x80;
      00009A 75 0C 80         [24]  391 	mov	_patt,#0x80
      00009D                        392 00102$:
                                    393 ;	./src/main.c:43: led = ~patt;
      00009D E5 0C            [12]  394 	mov	a,_patt
      00009F F4               [12]  395 	cpl	a
      0000A0 F5 90            [12]  396 	mov	_P1,a
                                    397 ;	./src/main.c:46: return;
                                    398 ;	./src/main.c:47: }
      0000A2 22               [24]  399 	ret
                                    400 ;------------------------------------------------------------
                                    401 ;Allocation info for local variables in function 'shiftRight'
                                    402 ;------------------------------------------------------------
                                    403 ;mode                      Allocated to registers 
                                    404 ;------------------------------------------------------------
                                    405 ;	./src/main.c:49: void shiftRight(int mode){
                                    406 ;	-----------------------------------------
                                    407 ;	 function shiftRight
                                    408 ;	-----------------------------------------
      0000A3                        409 _shiftRight:
                                    410 ;	./src/main.c:50: if (patt == 0x80)
      0000A3 74 80            [12]  411 	mov	a,#0x80
      0000A5 B5 0C 05         [24]  412 	cjne	a,_patt,00102$
                                    413 ;	./src/main.c:51: patt = 0x00 + 1;
      0000A8 75 0C 01         [24]  414 	mov	_patt,#0x01
      0000AB 80 07            [24]  415 	sjmp	00103$
      0000AD                        416 00102$:
                                    417 ;	./src/main.c:53: patt = patt << 1;
      0000AD E5 0C            [12]  418 	mov	a,_patt
      0000AF FF               [12]  419 	mov	r7,a
      0000B0 25 E0            [12]  420 	add	a,acc
      0000B2 F5 0C            [12]  421 	mov	_patt,a
      0000B4                        422 00103$:
                                    423 ;	./src/main.c:54: led = ~patt;
      0000B4 E5 0C            [12]  424 	mov	a,_patt
      0000B6 F4               [12]  425 	cpl	a
      0000B7 F5 90            [12]  426 	mov	_P1,a
                                    427 ;	./src/main.c:57: return;
                                    428 ;	./src/main.c:58: }
      0000B9 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'main'
                                    432 ;------------------------------------------------------------
                                    433 ;a                         Allocated to registers r6 r7 
                                    434 ;i                         Allocated to registers r6 r7 
                                    435 ;------------------------------------------------------------
                                    436 ;	./src/main.c:60: void main(void)
                                    437 ;	-----------------------------------------
                                    438 ;	 function main
                                    439 ;	-----------------------------------------
      0000BA                        440 _main:
                                    441 ;	./src/main.c:62: for (unsigned int a = 0; a < 4; a++)
      0000BA 7E 00            [12]  442 	mov	r6,#0x00
      0000BC 7F 00            [12]  443 	mov	r7,#0x00
      0000BE                        444 00139$:
      0000BE C3               [12]  445 	clr	c
      0000BF EE               [12]  446 	mov	a,r6
      0000C0 94 04            [12]  447 	subb	a,#0x04
      0000C2 EF               [12]  448 	mov	a,r7
      0000C3 94 00            [12]  449 	subb	a,#0x00
      0000C5 50 1F            [24]  450 	jnc	00101$
                                    451 ;	./src/main.c:64: states[a].currINPUT = LEVEL_HIGH;
      0000C7 EE               [12]  452 	mov	a,r6
      0000C8 24 08            [12]  453 	add	a,#_states
      0000CA F8               [12]  454 	mov	r0,a
      0000CB E6               [12]  455 	mov	a,@r0
      0000CC 44 01            [12]  456 	orl	a,#0x01
      0000CE F6               [12]  457 	mov	@r0,a
                                    458 ;	./src/main.c:65: states[a].currState = BTN_RELEASED;
      0000CF EE               [12]  459 	mov	a,r6
      0000D0 24 08            [12]  460 	add	a,#_states
      0000D2 F8               [12]  461 	mov	r0,a
      0000D3 E6               [12]  462 	mov	a,@r0
      0000D4 54 F9            [12]  463 	anl	a,#0xf9
      0000D6 F6               [12]  464 	mov	@r0,a
                                    465 ;	./src/main.c:66: states[a].prevState = BTN_RELEASED;
      0000D7 EE               [12]  466 	mov	a,r6
      0000D8 24 08            [12]  467 	add	a,#_states
      0000DA F8               [12]  468 	mov	r0,a
      0000DB E6               [12]  469 	mov	a,@r0
      0000DC 54 E7            [12]  470 	anl	a,#0xe7
      0000DE F6               [12]  471 	mov	@r0,a
                                    472 ;	./src/main.c:62: for (unsigned int a = 0; a < 4; a++)
      0000DF 0E               [12]  473 	inc	r6
      0000E0 BE 00 DB         [24]  474 	cjne	r6,#0x00,00139$
      0000E3 0F               [12]  475 	inc	r7
      0000E4 80 D8            [24]  476 	sjmp	00139$
      0000E6                        477 00101$:
                                    478 ;	./src/main.c:68: led = ~patt;
      0000E6 E5 0C            [12]  479 	mov	a,_patt
      0000E8 F4               [12]  480 	cpl	a
      0000E9 F5 90            [12]  481 	mov	_P1,a
                                    482 ;	./src/main.c:70: while(1) {
      0000EB                        483 00136$:
                                    484 ;	./src/main.c:71: delay_ms(20);
      0000EB 90 00 14         [24]  485 	mov	dptr,#0x0014
      0000EE 12 02 5A         [24]  486 	lcall	_delay_ms
                                    487 ;	./src/main.c:73: read_currINPUT();
      0000F1 12 00 65         [24]  488 	lcall	_read_currINPUT
                                    489 ;	./src/main.c:74: for (unsigned int i = 0; i < 4; i++)
      0000F4 7E 00            [12]  490 	mov	r6,#0x00
      0000F6 7F 00            [12]  491 	mov	r7,#0x00
      0000F8                        492 00142$:
      0000F8 C3               [12]  493 	clr	c
      0000F9 EE               [12]  494 	mov	a,r6
      0000FA 94 04            [12]  495 	subb	a,#0x04
      0000FC EF               [12]  496 	mov	a,r7
      0000FD 94 00            [12]  497 	subb	a,#0x00
      0000FF 50 EA            [24]  498 	jnc	00136$
                                    499 ;	./src/main.c:77: switch (states[i].currState)
      000101 EE               [12]  500 	mov	a,r6
      000102 24 08            [12]  501 	add	a,#_states
      000104 F9               [12]  502 	mov	r1,a
      000105 E7               [12]  503 	mov	a,@r1
      000106 03               [12]  504 	rr	a
      000107 54 03            [12]  505 	anl	a,#0x03
      000109 FD               [12]  506 	mov	r5,a
      00010A 60 0A            [24]  507 	jz	00102$
      00010C BD 01 02         [24]  508 	cjne	r5,#0x01,00231$
      00010F 80 23            [24]  509 	sjmp	00106$
      000111                        510 00231$:
                                    511 ;	./src/main.c:79: case BTN_RELEASED:
      000111 BD 02 5A         [24]  512 	cjne	r5,#0x02,00115$
      000114 80 3C            [24]  513 	sjmp	00110$
      000116                        514 00102$:
                                    515 ;	./src/main.c:80: if (states[i].currINPUT == LEVEL_LOW)
      000116 EE               [12]  516 	mov	a,r6
      000117 24 08            [12]  517 	add	a,#_states
      000119 F9               [12]  518 	mov	r1,a
      00011A E7               [12]  519 	mov	a,@r1
      00011B 20 E0 0C         [24]  520 	jb	acc.0,00104$
                                    521 ;	./src/main.c:81: states[i].currState = BTN_DEBOUNCED;
      00011E EE               [12]  522 	mov	a,r6
      00011F 24 08            [12]  523 	add	a,#_states
      000121 F8               [12]  524 	mov	r0,a
      000122 E6               [12]  525 	mov	a,@r0
      000123 54 F9            [12]  526 	anl	a,#0xf9
      000125 44 02            [12]  527 	orl	a,#0x02
      000127 F6               [12]  528 	mov	@r0,a
      000128 80 44            [24]  529 	sjmp	00115$
      00012A                        530 00104$:
                                    531 ;	./src/main.c:83: states[i].currState = BTN_RELEASED;
      00012A EE               [12]  532 	mov	a,r6
      00012B 24 08            [12]  533 	add	a,#_states
      00012D F8               [12]  534 	mov	r0,a
      00012E E6               [12]  535 	mov	a,@r0
      00012F 54 F9            [12]  536 	anl	a,#0xf9
      000131 F6               [12]  537 	mov	@r0,a
                                    538 ;	./src/main.c:84: break;
                                    539 ;	./src/main.c:85: case BTN_DEBOUNCED:
      000132 80 3A            [24]  540 	sjmp	00115$
      000134                        541 00106$:
                                    542 ;	./src/main.c:86: if (states[i].currINPUT == LEVEL_LOW)
      000134 EE               [12]  543 	mov	a,r6
      000135 24 08            [12]  544 	add	a,#_states
      000137 F9               [12]  545 	mov	r1,a
      000138 E7               [12]  546 	mov	a,@r1
      000139 20 E0 0C         [24]  547 	jb	acc.0,00108$
                                    548 ;	./src/main.c:87: states[i].currState = BTN_PRESSED;
      00013C EE               [12]  549 	mov	a,r6
      00013D 24 08            [12]  550 	add	a,#_states
      00013F F8               [12]  551 	mov	r0,a
      000140 E6               [12]  552 	mov	a,@r0
      000141 54 F9            [12]  553 	anl	a,#0xf9
      000143 44 04            [12]  554 	orl	a,#0x04
      000145 F6               [12]  555 	mov	@r0,a
      000146 80 26            [24]  556 	sjmp	00115$
      000148                        557 00108$:
                                    558 ;	./src/main.c:89: states[i].currState = BTN_RELEASED;
      000148 EE               [12]  559 	mov	a,r6
      000149 24 08            [12]  560 	add	a,#_states
      00014B F8               [12]  561 	mov	r0,a
      00014C E6               [12]  562 	mov	a,@r0
      00014D 54 F9            [12]  563 	anl	a,#0xf9
      00014F F6               [12]  564 	mov	@r0,a
                                    565 ;	./src/main.c:90: break;
                                    566 ;	./src/main.c:91: case BTN_PRESSED:
      000150 80 1C            [24]  567 	sjmp	00115$
      000152                        568 00110$:
                                    569 ;	./src/main.c:92: if (states[i].currINPUT == LEVEL_LOW)
      000152 EE               [12]  570 	mov	a,r6
      000153 24 08            [12]  571 	add	a,#_states
      000155 F9               [12]  572 	mov	r1,a
      000156 E7               [12]  573 	mov	a,@r1
      000157 20 E0 0C         [24]  574 	jb	acc.0,00112$
                                    575 ;	./src/main.c:93: states[i].currState = BTN_PRESSED;
      00015A EE               [12]  576 	mov	a,r6
      00015B 24 08            [12]  577 	add	a,#_states
      00015D F8               [12]  578 	mov	r0,a
      00015E E6               [12]  579 	mov	a,@r0
      00015F 54 F9            [12]  580 	anl	a,#0xf9
      000161 44 04            [12]  581 	orl	a,#0x04
      000163 F6               [12]  582 	mov	@r0,a
      000164 80 08            [24]  583 	sjmp	00115$
      000166                        584 00112$:
                                    585 ;	./src/main.c:95: states[i].currState = BTN_RELEASED;
      000166 EE               [12]  586 	mov	a,r6
      000167 24 08            [12]  587 	add	a,#_states
      000169 F8               [12]  588 	mov	r0,a
      00016A E6               [12]  589 	mov	a,@r0
      00016B 54 F9            [12]  590 	anl	a,#0xf9
      00016D F6               [12]  591 	mov	@r0,a
                                    592 ;	./src/main.c:99: }
      00016E                        593 00115$:
                                    594 ;	./src/main.c:100: switch (i)
      00016E C3               [12]  595 	clr	c
      00016F 74 03            [12]  596 	mov	a,#0x03
      000171 9E               [12]  597 	subb	a,r6
      000172 E4               [12]  598 	clr	a
      000173 9F               [12]  599 	subb	a,r7
      000174 50 03            [24]  600 	jnc	00236$
      000176 02 02 39         [24]  601 	ljmp	00133$
      000179                        602 00236$:
      000179 EE               [12]  603 	mov	a,r6
      00017A 2E               [12]  604 	add	a,r6
      00017B 2E               [12]  605 	add	a,r6
      00017C 90 01 80         [24]  606 	mov	dptr,#00237$
      00017F 73               [24]  607 	jmp	@a+dptr
      000180                        608 00237$:
      000180 02 01 8C         [24]  609 	ljmp	00116$
      000183 02 01 BB         [24]  610 	ljmp	00120$
      000186 02 01 E9         [24]  611 	ljmp	00124$
      000189 02 02 12         [24]  612 	ljmp	00128$
                                    613 ;	./src/main.c:102: case 0:
      00018C                        614 00116$:
                                    615 ;	./src/main.c:103: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED))
      00018C EE               [12]  616 	mov	a,r6
      00018D 24 08            [12]  617 	add	a,#_states
      00018F F9               [12]  618 	mov	r1,a
      000190 E7               [12]  619 	mov	a,@r1
      000191 54 06            [12]  620 	anl	a,#0x06
      000193 60 03            [24]  621 	jz	00238$
      000195 02 02 39         [24]  622 	ljmp	00133$
      000198                        623 00238$:
      000198 EE               [12]  624 	mov	a,r6
      000199 24 08            [12]  625 	add	a,#_states
      00019B F9               [12]  626 	mov	r1,a
      00019C E7               [12]  627 	mov	a,@r1
      00019D C4               [12]  628 	swap	a
      00019E 23               [12]  629 	rl	a
      00019F 54 03            [12]  630 	anl	a,#0x03
      0001A1 FD               [12]  631 	mov	r5,a
      0001A2 BD 02 02         [24]  632 	cjne	r5,#0x02,00239$
      0001A5 80 03            [24]  633 	sjmp	00240$
      0001A7                        634 00239$:
      0001A7 02 02 39         [24]  635 	ljmp	00133$
      0001AA                        636 00240$:
                                    637 ;	./src/main.c:104: shiftLeft(0);
      0001AA 90 00 00         [24]  638 	mov	dptr,#0x0000
      0001AD C0 07            [24]  639 	push	ar7
      0001AF C0 06            [24]  640 	push	ar6
      0001B1 12 00 92         [24]  641 	lcall	_shiftLeft
      0001B4 D0 06            [24]  642 	pop	ar6
      0001B6 D0 07            [24]  643 	pop	ar7
                                    644 ;	./src/main.c:105: break;
      0001B8 02 02 39         [24]  645 	ljmp	00133$
                                    646 ;	./src/main.c:106: case 1:
      0001BB                        647 00120$:
                                    648 ;	./src/main.c:107: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED))
      0001BB EE               [12]  649 	mov	a,r6
      0001BC 24 08            [12]  650 	add	a,#_states
      0001BE F9               [12]  651 	mov	r1,a
      0001BF E7               [12]  652 	mov	a,@r1
      0001C0 54 06            [12]  653 	anl	a,#0x06
      0001C2 60 03            [24]  654 	jz	00241$
      0001C4 02 02 39         [24]  655 	ljmp	00133$
      0001C7                        656 00241$:
      0001C7 EE               [12]  657 	mov	a,r6
      0001C8 24 08            [12]  658 	add	a,#_states
      0001CA F9               [12]  659 	mov	r1,a
      0001CB E7               [12]  660 	mov	a,@r1
      0001CC C4               [12]  661 	swap	a
      0001CD 23               [12]  662 	rl	a
      0001CE 54 03            [12]  663 	anl	a,#0x03
      0001D0 FD               [12]  664 	mov	r5,a
      0001D1 BD 02 02         [24]  665 	cjne	r5,#0x02,00242$
      0001D4 80 03            [24]  666 	sjmp	00243$
      0001D6                        667 00242$:
      0001D6 02 02 39         [24]  668 	ljmp	00133$
      0001D9                        669 00243$:
                                    670 ;	./src/main.c:108: shiftRight(0);
      0001D9 90 00 00         [24]  671 	mov	dptr,#0x0000
      0001DC C0 07            [24]  672 	push	ar7
      0001DE C0 06            [24]  673 	push	ar6
      0001E0 12 00 A3         [24]  674 	lcall	_shiftRight
      0001E3 D0 06            [24]  675 	pop	ar6
      0001E5 D0 07            [24]  676 	pop	ar7
                                    677 ;	./src/main.c:109: break;
                                    678 ;	./src/main.c:110: case 2:
      0001E7 80 50            [24]  679 	sjmp	00133$
      0001E9                        680 00124$:
                                    681 ;	./src/main.c:111: if ((states[i].currState == BTN_PRESSED) && (states[i].prevState == BTN_PRESSED))
      0001E9 EE               [12]  682 	mov	a,r6
      0001EA 24 08            [12]  683 	add	a,#_states
      0001EC F9               [12]  684 	mov	r1,a
      0001ED E7               [12]  685 	mov	a,@r1
      0001EE 03               [12]  686 	rr	a
      0001EF 54 03            [12]  687 	anl	a,#0x03
      0001F1 FD               [12]  688 	mov	r5,a
      0001F2 BD 02 44         [24]  689 	cjne	r5,#0x02,00133$
      0001F5 EE               [12]  690 	mov	a,r6
      0001F6 24 08            [12]  691 	add	a,#_states
      0001F8 F9               [12]  692 	mov	r1,a
      0001F9 E7               [12]  693 	mov	a,@r1
      0001FA C4               [12]  694 	swap	a
      0001FB 23               [12]  695 	rl	a
      0001FC 54 03            [12]  696 	anl	a,#0x03
      0001FE FD               [12]  697 	mov	r5,a
      0001FF BD 02 37         [24]  698 	cjne	r5,#0x02,00133$
                                    699 ;	./src/main.c:112: shiftLeft(1);
      000202 90 00 01         [24]  700 	mov	dptr,#0x0001
      000205 C0 07            [24]  701 	push	ar7
      000207 C0 06            [24]  702 	push	ar6
      000209 12 00 92         [24]  703 	lcall	_shiftLeft
      00020C D0 06            [24]  704 	pop	ar6
      00020E D0 07            [24]  705 	pop	ar7
                                    706 ;	./src/main.c:113: break;
                                    707 ;	./src/main.c:114: case 3:
      000210 80 27            [24]  708 	sjmp	00133$
      000212                        709 00128$:
                                    710 ;	./src/main.c:115: if ((states[i].currState == BTN_PRESSED) && (states[i].prevState == BTN_PRESSED))
      000212 EE               [12]  711 	mov	a,r6
      000213 24 08            [12]  712 	add	a,#_states
      000215 F9               [12]  713 	mov	r1,a
      000216 E7               [12]  714 	mov	a,@r1
      000217 03               [12]  715 	rr	a
      000218 54 03            [12]  716 	anl	a,#0x03
      00021A FD               [12]  717 	mov	r5,a
      00021B BD 02 1B         [24]  718 	cjne	r5,#0x02,00133$
      00021E EE               [12]  719 	mov	a,r6
      00021F 24 08            [12]  720 	add	a,#_states
      000221 F9               [12]  721 	mov	r1,a
      000222 E7               [12]  722 	mov	a,@r1
      000223 C4               [12]  723 	swap	a
      000224 23               [12]  724 	rl	a
      000225 54 03            [12]  725 	anl	a,#0x03
      000227 FD               [12]  726 	mov	r5,a
      000228 BD 02 0E         [24]  727 	cjne	r5,#0x02,00133$
                                    728 ;	./src/main.c:116: shiftRight(1);
      00022B 90 00 01         [24]  729 	mov	dptr,#0x0001
      00022E C0 07            [24]  730 	push	ar7
      000230 C0 06            [24]  731 	push	ar6
      000232 12 00 A3         [24]  732 	lcall	_shiftRight
      000235 D0 06            [24]  733 	pop	ar6
      000237 D0 07            [24]  734 	pop	ar7
                                    735 ;	./src/main.c:120: }
      000239                        736 00133$:
                                    737 ;	./src/main.c:121: states[i].prevState = states[i].currState;
      000239 EE               [12]  738 	mov	a,r6
      00023A 24 08            [12]  739 	add	a,#_states
      00023C F9               [12]  740 	mov	r1,a
      00023D EE               [12]  741 	mov	a,r6
      00023E 24 08            [12]  742 	add	a,#_states
      000240 F8               [12]  743 	mov	r0,a
      000241 E6               [12]  744 	mov	a,@r0
      000242 03               [12]  745 	rr	a
      000243 54 03            [12]  746 	anl	a,#0x03
      000245 FD               [12]  747 	mov	r5,a
      000246 C4               [12]  748 	swap	a
      000247 03               [12]  749 	rr	a
      000248 54 18            [12]  750 	anl	a,#(0xf8&0x18)
      00024A F5 F0            [12]  751 	mov	b,a
      00024C E7               [12]  752 	mov	a,@r1
      00024D 54 E7            [12]  753 	anl	a,#0xe7
      00024F 45 F0            [12]  754 	orl	a,b
      000251 F7               [12]  755 	mov	@r1,a
                                    756 ;	./src/main.c:74: for (unsigned int i = 0; i < 4; i++)
      000252 0E               [12]  757 	inc	r6
      000253 BE 00 01         [24]  758 	cjne	r6,#0x00,00252$
      000256 0F               [12]  759 	inc	r7
      000257                        760 00252$:
                                    761 ;	./src/main.c:124: }
      000257 02 00 F8         [24]  762 	ljmp	00142$
                                    763 	.area CSEG    (CODE)
                                    764 	.area CONST   (CODE)
                                    765 	.area XINIT   (CODE)
                                    766 	.area CABS    (ABS,CODE)
