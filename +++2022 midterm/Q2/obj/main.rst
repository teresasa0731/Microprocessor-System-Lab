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
                                     11 	.globl _sendbyte_PARM_2
                                     12 	.globl _main
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
                                     15 	.globl _sendbyte
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
                                    112 	.globl _Write7219_PARM_2
                                    113 	.globl _delay_ms
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
      000008                        229 _display_seg:
      000008                        230 	.ds 12
      000014                        231 _Write7219_PARM_2:
      000014                        232 	.ds 1
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram
                                    235 ;--------------------------------------------------------
                                    236 	.area	OSEG    (OVR,DATA)
      000015                        237 _sendbyte_PARM_2:
      000015                        238 	.ds 1
                                    239 	.area	OSEG    (OVR,DATA)
                                    240 ;--------------------------------------------------------
                                    241 ; Stack segment in internal ram
                                    242 ;--------------------------------------------------------
                                    243 	.area SSEG
      000016                        244 __start__stack:
      000016                        245 	.ds	1
                                    246 
                                    247 ;--------------------------------------------------------
                                    248 ; indirectly addressable internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area ISEG    (DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area IABS    (ABS,DATA)
                                    255 	.area IABS    (ABS,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; bit data
                                    258 ;--------------------------------------------------------
                                    259 	.area BSEG    (BIT)
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; uninitialized external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; initialized external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; interrupt vector
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
      000000                        290 __interrupt_vect:
      000000 02 00 06         [24]  291 	ljmp	__sdcc_gsinit_startup
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.globl __sdcc_gsinit_startup
                                    300 	.globl __sdcc_program_startup
                                    301 	.globl __start__stack
                                    302 	.globl __mcs51_genXINIT
                                    303 	.globl __mcs51_genXRAMCLEAR
                                    304 	.globl __mcs51_genRAMCLEAR
                                    305 ;	./src/main.c:18: static unsigned char display_seg[] = {
      00005F 75 08 7E         [24]  306 	mov	_display_seg,#0x7e
      000062 75 09 30         [24]  307 	mov	(_display_seg + 0x0001),#0x30
      000065 75 0A 6D         [24]  308 	mov	(_display_seg + 0x0002),#0x6d
      000068 75 0B 79         [24]  309 	mov	(_display_seg + 0x0003),#0x79
      00006B 75 0C 33         [24]  310 	mov	(_display_seg + 0x0004),#0x33
      00006E 75 0D 5B         [24]  311 	mov	(_display_seg + 0x0005),#0x5b
      000071 75 0E 5F         [24]  312 	mov	(_display_seg + 0x0006),#0x5f
      000074 75 0F 70         [24]  313 	mov	(_display_seg + 0x0007),#0x70
      000077 75 10 7F         [24]  314 	mov	(_display_seg + 0x0008),#0x7f
      00007A 75 11 7B         [24]  315 	mov	(_display_seg + 0x0009),#0x7b
      00007D 75 12 01         [24]  316 	mov	(_display_seg + 0x000a),#0x01
      000080 75 13 00         [24]  317 	mov	(_display_seg + 0x000b),#0x00
                                    318 	.area GSFINAL (CODE)
      000083 02 00 03         [24]  319 	ljmp	__sdcc_program_startup
                                    320 ;--------------------------------------------------------
                                    321 ; Home
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area HOME    (CODE)
      000003                        325 __sdcc_program_startup:
      000003 02 01 22         [24]  326 	ljmp	_main
                                    327 ;	return from main will return to caller
                                    328 ;--------------------------------------------------------
                                    329 ; code
                                    330 ;--------------------------------------------------------
                                    331 	.area CSEG    (CODE)
                                    332 ;------------------------------------------------------------
                                    333 ;Allocation info for local variables in function 'sendbyte'
                                    334 ;------------------------------------------------------------
                                    335 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    336 ;address                   Allocated to registers r7 
                                    337 ;a                         Allocated to registers r5 r6 
                                    338 ;------------------------------------------------------------
                                    339 ;	./src/main.c:34: void sendbyte(unsigned char address,unsigned char dat){
                                    340 ;	-----------------------------------------
                                    341 ;	 function sendbyte
                                    342 ;	-----------------------------------------
      000086                        343 _sendbyte:
                           000007   344 	ar7 = 0x07
                           000006   345 	ar6 = 0x06
                           000005   346 	ar5 = 0x05
                           000004   347 	ar4 = 0x04
                           000003   348 	ar3 = 0x03
                           000002   349 	ar2 = 0x02
                           000001   350 	ar1 = 0x01
                           000000   351 	ar0 = 0x00
      000086 AF 82            [24]  352 	mov	r7,dpl
                                    353 ;	./src/main.c:36: for (a=0;a<8;a++)        //get last 8 bits(address)
      000088 7D 00            [12]  354 	mov	r5,#0x00
      00008A 7E 00            [12]  355 	mov	r6,#0x00
      00008C                        356 00103$:
                                    357 ;	./src/main.c:38: CLK = 0;
                                    358 ;	assignBit
      00008C C2 A0            [12]  359 	clr	_P2_0
                                    360 ;	./src/main.c:39: DOUT = ( address & 0x80);   //get msb and shift left
      00008E EF               [12]  361 	mov	a,r7
      00008F 23               [12]  362 	rl	a
      000090 54 01            [12]  363 	anl	a,#0x01
                                    364 ;	assignBit
      000092 24 FF            [12]  365 	add	a,#0xff
      000094 92 A2            [24]  366 	mov	_P2_2,c
                                    367 ;	./src/main.c:40: address <<= 1;
      000096 8F 04            [24]  368 	mov	ar4,r7
      000098 EC               [12]  369 	mov	a,r4
      000099 2C               [12]  370 	add	a,r4
      00009A FF               [12]  371 	mov	r7,a
                                    372 ;	./src/main.c:41: CLK = 1;
                                    373 ;	assignBit
      00009B D2 A0            [12]  374 	setb	_P2_0
                                    375 ;	./src/main.c:36: for (a=0;a<8;a++)        //get last 8 bits(address)
      00009D 0D               [12]  376 	inc	r5
      00009E BD 00 01         [24]  377 	cjne	r5,#0x00,00123$
      0000A1 0E               [12]  378 	inc	r6
      0000A2                        379 00123$:
      0000A2 C3               [12]  380 	clr	c
      0000A3 ED               [12]  381 	mov	a,r5
      0000A4 94 08            [12]  382 	subb	a,#0x08
      0000A6 EE               [12]  383 	mov	a,r6
      0000A7 94 00            [12]  384 	subb	a,#0x00
      0000A9 40 E1            [24]  385 	jc	00103$
                                    386 ;	./src/main.c:43: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000AB 7E 00            [12]  387 	mov	r6,#0x00
      0000AD 7F 00            [12]  388 	mov	r7,#0x00
      0000AF                        389 00105$:
                                    390 ;	./src/main.c:45: CLK = 0;
                                    391 ;	assignBit
      0000AF C2 A0            [12]  392 	clr	_P2_0
                                    393 ;	./src/main.c:46: DOUT=( dat & 0x80);    //get msb and shit left
      0000B1 E5 15            [12]  394 	mov	a,_sendbyte_PARM_2
      0000B3 23               [12]  395 	rl	a
      0000B4 54 01            [12]  396 	anl	a,#0x01
                                    397 ;	assignBit
      0000B6 24 FF            [12]  398 	add	a,#0xff
      0000B8 92 A2            [24]  399 	mov	_P2_2,c
                                    400 ;	./src/main.c:47: dat <<= 1;
      0000BA E5 15            [12]  401 	mov	a,_sendbyte_PARM_2
      0000BC 25 E0            [12]  402 	add	a,acc
      0000BE F5 15            [12]  403 	mov	_sendbyte_PARM_2,a
                                    404 ;	./src/main.c:48: CLK = 1;
                                    405 ;	assignBit
      0000C0 D2 A0            [12]  406 	setb	_P2_0
                                    407 ;	./src/main.c:43: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000C2 0E               [12]  408 	inc	r6
      0000C3 BE 00 01         [24]  409 	cjne	r6,#0x00,00125$
      0000C6 0F               [12]  410 	inc	r7
      0000C7                        411 00125$:
      0000C7 C3               [12]  412 	clr	c
      0000C8 EE               [12]  413 	mov	a,r6
      0000C9 94 08            [12]  414 	subb	a,#0x08
      0000CB EF               [12]  415 	mov	a,r7
      0000CC 94 00            [12]  416 	subb	a,#0x00
      0000CE 40 DF            [24]  417 	jc	00105$
                                    418 ;	./src/main.c:50: }
      0000D0 22               [24]  419 	ret
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'Write7219'
                                    422 ;------------------------------------------------------------
                                    423 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    424 ;address                   Allocated to registers r7 
                                    425 ;------------------------------------------------------------
                                    426 ;	./src/main.c:53: void Write7219(unsigned char address, unsigned char dat)
                                    427 ;	-----------------------------------------
                                    428 ;	 function Write7219
                                    429 ;	-----------------------------------------
      0000D1                        430 _Write7219:
      0000D1 AF 82            [24]  431 	mov	r7,dpl
                                    432 ;	./src/main.c:55: LOAD = 0;
                                    433 ;	assignBit
      0000D3 C2 A1            [12]  434 	clr	_P2_1
                                    435 ;	./src/main.c:56: sendbyte(address, dat);
      0000D5 85 14 15         [24]  436 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000D8 8F 82            [24]  437 	mov	dpl,r7
      0000DA 12 00 86         [24]  438 	lcall	_sendbyte
                                    439 ;	./src/main.c:57: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    440 ;	assignBit
      0000DD D2 A1            [12]  441 	setb	_P2_1
                                    442 ;	./src/main.c:58: }
      0000DF 22               [24]  443 	ret
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'Initial'
                                    446 ;------------------------------------------------------------
                                    447 ;i                         Allocated to registers r7 
                                    448 ;------------------------------------------------------------
                                    449 ;	./src/main.c:61: void Initial(void)
                                    450 ;	-----------------------------------------
                                    451 ;	 function Initial
                                    452 ;	-----------------------------------------
      0000E0                        453 _Initial:
                                    454 ;	./src/main.c:64: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      0000E0 75 14 01         [24]  455 	mov	_Write7219_PARM_2,#0x01
      0000E3 75 82 0C         [24]  456 	mov	dpl,#0x0c
      0000E6 12 00 D1         [24]  457 	lcall	_Write7219
                                    458 ;	./src/main.c:65: Write7219(DISPLAY_TEST,0x00);
      0000E9 75 14 00         [24]  459 	mov	_Write7219_PARM_2,#0x00
      0000EC 75 82 0F         [24]  460 	mov	dpl,#0x0f
      0000EF 12 00 D1         [24]  461 	lcall	_Write7219
                                    462 ;	./src/main.c:66: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      0000F2 75 14 00         [24]  463 	mov	_Write7219_PARM_2,#0x00
      0000F5 75 82 09         [24]  464 	mov	dpl,#0x09
      0000F8 12 00 D1         [24]  465 	lcall	_Write7219
                                    466 ;	./src/main.c:67: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      0000FB 75 14 07         [24]  467 	mov	_Write7219_PARM_2,#0x07
      0000FE 75 82 0B         [24]  468 	mov	dpl,#0x0b
      000101 12 00 D1         [24]  469 	lcall	_Write7219
                                    470 ;	./src/main.c:68: Write7219(INTENSITY,0x00);         //set up intensity
      000104 75 14 00         [24]  471 	mov	_Write7219_PARM_2,#0x00
      000107 75 82 0A         [24]  472 	mov	dpl,#0x0a
      00010A 12 00 D1         [24]  473 	lcall	_Write7219
                                    474 ;	./src/main.c:69: for(i=1;i<=8;i++){
      00010D 7F 01            [12]  475 	mov	r7,#0x01
      00010F                        476 00102$:
                                    477 ;	./src/main.c:70: Write7219(i,0x00);   //turn off all LED
      00010F 75 14 00         [24]  478 	mov	_Write7219_PARM_2,#0x00
      000112 8F 82            [24]  479 	mov	dpl,r7
      000114 C0 07            [24]  480 	push	ar7
      000116 12 00 D1         [24]  481 	lcall	_Write7219
      000119 D0 07            [24]  482 	pop	ar7
                                    483 ;	./src/main.c:69: for(i=1;i<=8;i++){
      00011B 0F               [12]  484 	inc	r7
      00011C EF               [12]  485 	mov	a,r7
      00011D 24 F7            [12]  486 	add	a,#0xff - 0x08
      00011F 50 EE            [24]  487 	jnc	00102$
                                    488 ;	./src/main.c:72: }
      000121 22               [24]  489 	ret
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'main'
                                    492 ;------------------------------------------------------------
                                    493 ;i                         Allocated to registers r7 
                                    494 ;------------------------------------------------------------
                                    495 ;	./src/main.c:74: int main(void)
                                    496 ;	-----------------------------------------
                                    497 ;	 function main
                                    498 ;	-----------------------------------------
      000122                        499 _main:
                                    500 ;	./src/main.c:76: Initial();
      000122 12 00 E0         [24]  501 	lcall	_Initial
                                    502 ;	./src/main.c:77: for(unsigned char i = 1;i < 9;i++){
      000125 7F 01            [12]  503 	mov	r7,#0x01
      000127                        504 00103$:
      000127 BF 09 00         [24]  505 	cjne	r7,#0x09,00116$
      00012A                        506 00116$:
      00012A 50 0F            [24]  507 	jnc	00105$
                                    508 ;	./src/main.c:78: Write7219(i, 0x01);
      00012C 75 14 01         [24]  509 	mov	_Write7219_PARM_2,#0x01
      00012F 8F 82            [24]  510 	mov	dpl,r7
      000131 C0 07            [24]  511 	push	ar7
      000133 12 00 D1         [24]  512 	lcall	_Write7219
      000136 D0 07            [24]  513 	pop	ar7
                                    514 ;	./src/main.c:77: for(unsigned char i = 1;i < 9;i++){
      000138 0F               [12]  515 	inc	r7
      000139 80 EC            [24]  516 	sjmp	00103$
      00013B                        517 00105$:
                                    518 ;	./src/main.c:80: }
      00013B 22               [24]  519 	ret
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'delay_ms'
                                    522 ;------------------------------------------------------------
                                    523 ;input_ms                  Allocated to registers r6 r7 
                                    524 ;cnt1                      Allocated to registers r4 r5 
                                    525 ;cnt2                      Allocated to registers r3 
                                    526 ;------------------------------------------------------------
                                    527 ;	./src/main.c:82: void delay_ms(unsigned int input_ms)
                                    528 ;	-----------------------------------------
                                    529 ;	 function delay_ms
                                    530 ;	-----------------------------------------
      00013C                        531 _delay_ms:
      00013C AE 82            [24]  532 	mov	r6,dpl
      00013E AF 83            [24]  533 	mov	r7,dph
                                    534 ;	./src/main.c:87: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      000140 7C 00            [12]  535 	mov	r4,#0x00
      000142 7D 00            [12]  536 	mov	r5,#0x00
      000144                        537 00107$:
      000144 C3               [12]  538 	clr	c
      000145 EC               [12]  539 	mov	a,r4
      000146 9E               [12]  540 	subb	a,r6
      000147 ED               [12]  541 	mov	a,r5
      000148 9F               [12]  542 	subb	a,r7
      000149 50 0B            [24]  543 	jnc	00109$
                                    544 ;	./src/main.c:89: for(cnt2 = 0; cnt2 < 90; cnt2 ++);
      00014B 7B 5A            [12]  545 	mov	r3,#0x5a
      00014D                        546 00105$:
      00014D DB FE            [24]  547 	djnz	r3,00105$
                                    548 ;	./src/main.c:87: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      00014F 0C               [12]  549 	inc	r4
      000150 BC 00 F1         [24]  550 	cjne	r4,#0x00,00107$
      000153 0D               [12]  551 	inc	r5
      000154 80 EE            [24]  552 	sjmp	00107$
      000156                        553 00109$:
                                    554 ;	./src/main.c:91: }
      000156 22               [24]  555 	ret
                                    556 	.area CSEG    (CODE)
                                    557 	.area CONST   (CODE)
                                    558 	.area XINIT   (CODE)
                                    559 	.area CABS    (ABS,CODE)
