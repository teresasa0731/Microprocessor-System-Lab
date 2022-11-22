                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module seven_segment
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sendbyte_PARM_2
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _Write7219_PARM_2
                                    109 	.globl _sendbyte
                                    110 	.globl _Write7219
                                    111 	.globl _Initial
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
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      00001A                        227 _Write7219_PARM_2:
      00001A                        228 	.ds 1
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable items in internal ram
                                    231 ;--------------------------------------------------------
                                    232 	.area	OSEG    (OVR,DATA)
      00001B                        233 _sendbyte_PARM_2:
      00001B                        234 	.ds 1
                                    235 ;--------------------------------------------------------
                                    236 ; indirectly addressable internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area ISEG    (DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; absolute internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area IABS    (ABS,DATA)
                                    243 	.area IABS    (ABS,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; bit data
                                    246 ;--------------------------------------------------------
                                    247 	.area BSEG    (BIT)
                                    248 ;--------------------------------------------------------
                                    249 ; paged external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area PSEG    (PAG,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; uninitialized external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XSEG    (XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; initialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XISEG   (XDATA)
                                    264 	.area HOME    (CODE)
                                    265 	.area GSINIT0 (CODE)
                                    266 	.area GSINIT1 (CODE)
                                    267 	.area GSINIT2 (CODE)
                                    268 	.area GSINIT3 (CODE)
                                    269 	.area GSINIT4 (CODE)
                                    270 	.area GSINIT5 (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area CSEG    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; global & static initialisations
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; Home
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area HOME    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; code
                                    288 ;--------------------------------------------------------
                                    289 	.area CSEG    (CODE)
                                    290 ;------------------------------------------------------------
                                    291 ;Allocation info for local variables in function 'sendbyte'
                                    292 ;------------------------------------------------------------
                                    293 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    294 ;address                   Allocated to registers r7 
                                    295 ;i                         Allocated to registers r6 
                                    296 ;------------------------------------------------------------
                                    297 ;	./src/seven_segment.c:5: void sendbyte(unsigned char address, unsigned char dat) {
                                    298 ;	-----------------------------------------
                                    299 ;	 function sendbyte
                                    300 ;	-----------------------------------------
      0001F9                        301 _sendbyte:
                           000007   302 	ar7 = 0x07
                           000006   303 	ar6 = 0x06
                           000005   304 	ar5 = 0x05
                           000004   305 	ar4 = 0x04
                           000003   306 	ar3 = 0x03
                           000002   307 	ar2 = 0x02
                           000001   308 	ar1 = 0x01
                           000000   309 	ar0 = 0x00
      0001F9 AF 82            [24]  310 	mov	r7,dpl
                                    311 ;	./src/seven_segment.c:7: for (i=0; i<8; i++)
      0001FB 7E 00            [12]  312 	mov	r6,#0x00
      0001FD                        313 00103$:
                                    314 ;	./src/seven_segment.c:9: CLK = 0;
                                    315 ;	assignBit
      0001FD C2 A0            [12]  316 	clr	_P2_0
                                    317 ;	./src/seven_segment.c:10: DIN = (address & 0x80);
      0001FF EF               [12]  318 	mov	a,r7
      000200 23               [12]  319 	rl	a
      000201 54 01            [12]  320 	anl	a,#0x01
                                    321 ;	assignBit
      000203 24 FF            [12]  322 	add	a,#0xff
      000205 92 A1            [24]  323 	mov	_P2_1,c
                                    324 ;	./src/seven_segment.c:11: address <<= 1;
      000207 8F 05            [24]  325 	mov	ar5,r7
      000209 ED               [12]  326 	mov	a,r5
      00020A 2D               [12]  327 	add	a,r5
      00020B FF               [12]  328 	mov	r7,a
                                    329 ;	./src/seven_segment.c:12: CLK = 1;
                                    330 ;	assignBit
      00020C D2 A0            [12]  331 	setb	_P2_0
                                    332 ;	./src/seven_segment.c:7: for (i=0; i<8; i++)
      00020E 0E               [12]  333 	inc	r6
      00020F BE 08 00         [24]  334 	cjne	r6,#0x08,00123$
      000212                        335 00123$:
      000212 40 E9            [24]  336 	jc	00103$
                                    337 ;	./src/seven_segment.c:15: for (i=0; i<8; i++)
      000214 7F 00            [12]  338 	mov	r7,#0x00
      000216                        339 00105$:
                                    340 ;	./src/seven_segment.c:17: CLK = 0;
                                    341 ;	assignBit
      000216 C2 A0            [12]  342 	clr	_P2_0
                                    343 ;	./src/seven_segment.c:18: DIN = (dat & 0x80);
      000218 E5 1B            [12]  344 	mov	a,_sendbyte_PARM_2
      00021A 23               [12]  345 	rl	a
      00021B 54 01            [12]  346 	anl	a,#0x01
                                    347 ;	assignBit
      00021D 24 FF            [12]  348 	add	a,#0xff
      00021F 92 A1            [24]  349 	mov	_P2_1,c
                                    350 ;	./src/seven_segment.c:19: dat <<= 1;
      000221 E5 1B            [12]  351 	mov	a,_sendbyte_PARM_2
      000223 25 E0            [12]  352 	add	a,acc
      000225 F5 1B            [12]  353 	mov	_sendbyte_PARM_2,a
                                    354 ;	./src/seven_segment.c:20: CLK = 1;
                                    355 ;	assignBit
      000227 D2 A0            [12]  356 	setb	_P2_0
                                    357 ;	./src/seven_segment.c:15: for (i=0; i<8; i++)
      000229 0F               [12]  358 	inc	r7
      00022A BF 08 00         [24]  359 	cjne	r7,#0x08,00125$
      00022D                        360 00125$:
      00022D 40 E7            [24]  361 	jc	00105$
                                    362 ;	./src/seven_segment.c:22: }
      00022F 22               [24]  363 	ret
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'Write7219'
                                    366 ;------------------------------------------------------------
                                    367 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    368 ;address                   Allocated to registers r7 
                                    369 ;cnt                       Allocated to registers r6 
                                    370 ;------------------------------------------------------------
                                    371 ;	./src/seven_segment.c:24: void Write7219(unsigned char address, unsigned char dat)
                                    372 ;	-----------------------------------------
                                    373 ;	 function Write7219
                                    374 ;	-----------------------------------------
      000230                        375 _Write7219:
      000230 AF 82            [24]  376 	mov	r7,dpl
                                    377 ;	./src/seven_segment.c:27: LOAD_MAX = 0;
                                    378 ;	assignBit
      000232 C2 A4            [12]  379 	clr	_P2_4
                                    380 ;	./src/seven_segment.c:28: for(cnt=1; cnt<=matrixnum; cnt++)
      000234 7E 01            [12]  381 	mov	r6,#0x01
      000236                        382 00102$:
                                    383 ;	./src/seven_segment.c:30: sendbyte(address, dat);
      000236 85 1A 1B         [24]  384 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      000239 8F 82            [24]  385 	mov	dpl,r7
      00023B C0 07            [24]  386 	push	ar7
      00023D C0 06            [24]  387 	push	ar6
      00023F 12 01 F9         [24]  388 	lcall	_sendbyte
      000242 D0 06            [24]  389 	pop	ar6
      000244 D0 07            [24]  390 	pop	ar7
                                    391 ;	./src/seven_segment.c:28: for(cnt=1; cnt<=matrixnum; cnt++)
      000246 0E               [12]  392 	inc	r6
      000247 EE               [12]  393 	mov	a,r6
      000248 24 FE            [12]  394 	add	a,#0xff - 0x01
      00024A 50 EA            [24]  395 	jnc	00102$
                                    396 ;	./src/seven_segment.c:32: LOAD_MAX = 1;
                                    397 ;	assignBit
      00024C D2 A4            [12]  398 	setb	_P2_4
                                    399 ;	./src/seven_segment.c:33: }
      00024E 22               [24]  400 	ret
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'Initial'
                                    403 ;------------------------------------------------------------
                                    404 ;i                         Allocated to registers r7 
                                    405 ;------------------------------------------------------------
                                    406 ;	./src/seven_segment.c:35: void Initial(void)
                                    407 ;	-----------------------------------------
                                    408 ;	 function Initial
                                    409 ;	-----------------------------------------
      00024F                        410 _Initial:
                                    411 ;	./src/seven_segment.c:38: Write7219(SHUT_DOWN, 0x01);
      00024F 75 1A 01         [24]  412 	mov	_Write7219_PARM_2,#0x01
      000252 75 82 0C         [24]  413 	mov	dpl,#0x0c
      000255 12 02 30         [24]  414 	lcall	_Write7219
                                    415 ;	./src/seven_segment.c:39: Write7219(DISPLAY_TEST, 0x00);
      000258 75 1A 00         [24]  416 	mov	_Write7219_PARM_2,#0x00
      00025B 75 82 0F         [24]  417 	mov	dpl,#0x0f
      00025E 12 02 30         [24]  418 	lcall	_Write7219
                                    419 ;	./src/seven_segment.c:40: Write7219(DECODE_MODE, 0x00);
      000261 75 1A 00         [24]  420 	mov	_Write7219_PARM_2,#0x00
      000264 75 82 09         [24]  421 	mov	dpl,#0x09
      000267 12 02 30         [24]  422 	lcall	_Write7219
                                    423 ;	./src/seven_segment.c:41: Write7219(SCAN_LIMIT, 0x07);
      00026A 75 1A 07         [24]  424 	mov	_Write7219_PARM_2,#0x07
      00026D 75 82 0B         [24]  425 	mov	dpl,#0x0b
      000270 12 02 30         [24]  426 	lcall	_Write7219
                                    427 ;	./src/seven_segment.c:42: Write7219(INTENSITY, 0x00);
      000273 75 1A 00         [24]  428 	mov	_Write7219_PARM_2,#0x00
      000276 75 82 0A         [24]  429 	mov	dpl,#0x0a
      000279 12 02 30         [24]  430 	lcall	_Write7219
                                    431 ;	./src/seven_segment.c:44: for(i=1; i<=8; i++){
      00027C 7F 01            [12]  432 	mov	r7,#0x01
      00027E                        433 00102$:
                                    434 ;	./src/seven_segment.c:45: Write7219(i, 0x00);
      00027E 75 1A 00         [24]  435 	mov	_Write7219_PARM_2,#0x00
      000281 8F 82            [24]  436 	mov	dpl,r7
      000283 C0 07            [24]  437 	push	ar7
      000285 12 02 30         [24]  438 	lcall	_Write7219
      000288 D0 07            [24]  439 	pop	ar7
                                    440 ;	./src/seven_segment.c:44: for(i=1; i<=8; i++){
      00028A 0F               [12]  441 	inc	r7
      00028B EF               [12]  442 	mov	a,r7
      00028C 24 F7            [12]  443 	add	a,#0xff - 0x08
      00028E 50 EE            [24]  444 	jnc	00102$
                                    445 ;	./src/seven_segment.c:47: }
      000290 22               [24]  446 	ret
                                    447 	.area CSEG    (CODE)
                                    448 	.area CONST   (CODE)
                                    449 	.area XINIT   (CODE)
                                    450 	.area CABS    (ABS,CODE)
