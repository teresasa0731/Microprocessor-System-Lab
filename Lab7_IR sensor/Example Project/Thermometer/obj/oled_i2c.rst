                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled_i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _OledFontTable
                                     12 	.globl _Single_WriteI2C
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _OLED_SetCursor_PARM_2
                                    110 	.globl _OLED_Init
                                    111 	.globl _OLED_DisplayChar
                                    112 	.globl _OLED_DisplayString
                                    113 	.globl _OLED_Clear
                                    114 	.globl _OLED_SetCursor
                                    115 	.globl _oledSendCommand
                                    116 	.globl _oledSendData
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000010                        232 _OLED_SetCursor_PARM_2:
      000010                        233 	.ds 1
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram
                                    236 ;--------------------------------------------------------
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; uninitialized external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; initialized external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; global & static initialisations
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; Home
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area HOME    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; code
                                    290 ;--------------------------------------------------------
                                    291 	.area CSEG    (CODE)
                                    292 ;------------------------------------------------------------
                                    293 ;Allocation info for local variables in function 'OLED_Init'
                                    294 ;------------------------------------------------------------
                                    295 ;	./src/oled_i2c.c:17: void OLED_Init(void)
                                    296 ;	-----------------------------------------
                                    297 ;	 function OLED_Init
                                    298 ;	-----------------------------------------
      0003CD                        299 _OLED_Init:
                           000007   300 	ar7 = 0x07
                           000006   301 	ar6 = 0x06
                           000005   302 	ar5 = 0x05
                           000004   303 	ar4 = 0x04
                           000003   304 	ar3 = 0x03
                           000002   305 	ar2 = 0x02
                           000001   306 	ar1 = 0x01
                           000000   307 	ar0 = 0x00
                                    308 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
      0003CD 75 82 A8         [24]  309 	mov	dpl,#0xa8
      0003D0 12 05 13         [24]  310 	lcall	_oledSendCommand
                                    311 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
      0003D3 75 82 3F         [24]  312 	mov	dpl,#0x3f
      0003D6 12 05 13         [24]  313 	lcall	_oledSendCommand
                                    314 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
      0003D9 75 82 D3         [24]  315 	mov	dpl,#0xd3
      0003DC 12 05 13         [24]  316 	lcall	_oledSendCommand
                                    317 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
      0003DF 75 82 00         [24]  318 	mov	dpl,#0x00
      0003E2 12 05 13         [24]  319 	lcall	_oledSendCommand
                                    320 ;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
      0003E5 75 82 40         [24]  321 	mov	dpl,#0x40
      0003E8 12 05 13         [24]  322 	lcall	_oledSendCommand
                                    323 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      0003EB 75 82 A1         [24]  324 	mov	dpl,#0xa1
      0003EE 12 05 13         [24]  325 	lcall	_oledSendCommand
                                    326 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
      0003F1 75 82 C8         [24]  327 	mov	dpl,#0xc8
      0003F4 12 05 13         [24]  328 	lcall	_oledSendCommand
                                    329 ;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
      0003F7 75 82 DA         [24]  330 	mov	dpl,#0xda
      0003FA 12 05 13         [24]  331 	lcall	_oledSendCommand
                                    332 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      0003FD 75 82 12         [24]  333 	mov	dpl,#0x12
      000400 12 05 13         [24]  334 	lcall	_oledSendCommand
                                    335 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      000403 75 82 81         [24]  336 	mov	dpl,#0x81
      000406 12 05 13         [24]  337 	lcall	_oledSendCommand
                                    338 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      000409 75 82 7F         [24]  339 	mov	dpl,#0x7f
      00040C 12 05 13         [24]  340 	lcall	_oledSendCommand
                                    341 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      00040F 75 82 A4         [24]  342 	mov	dpl,#0xa4
      000412 12 05 13         [24]  343 	lcall	_oledSendCommand
                                    344 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      000415 75 82 A6         [24]  345 	mov	dpl,#0xa6
      000418 12 05 13         [24]  346 	lcall	_oledSendCommand
                                    347 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      00041B 75 82 D5         [24]  348 	mov	dpl,#0xd5
      00041E 12 05 13         [24]  349 	lcall	_oledSendCommand
                                    350 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      000421 75 82 80         [24]  351 	mov	dpl,#0x80
      000424 12 05 13         [24]  352 	lcall	_oledSendCommand
                                    353 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      000427 75 82 8D         [24]  354 	mov	dpl,#0x8d
      00042A 12 05 13         [24]  355 	lcall	_oledSendCommand
                                    356 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      00042D 75 82 14         [24]  357 	mov	dpl,#0x14
      000430 12 05 13         [24]  358 	lcall	_oledSendCommand
                                    359 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      000433 75 82 AF         [24]  360 	mov	dpl,#0xaf
      000436 12 05 13         [24]  361 	lcall	_oledSendCommand
                                    362 ;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
                                    363 ;	./src/oled_i2c.c:39: }
      000439 02 04 B8         [24]  364 	ljmp	_OLED_Clear
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    367 ;------------------------------------------------------------
                                    368 ;ch                        Allocated to registers r7 
                                    369 ;i                         Allocated to registers r5 
                                    370 ;index                     Allocated to registers r6 r7 
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
                                    373 ;	-----------------------------------------
                                    374 ;	 function OLED_DisplayChar
                                    375 ;	-----------------------------------------
      00043C                        376 _OLED_DisplayChar:
      00043C AF 82            [24]  377 	mov	r7,dpl
                                    378 ;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
      00043E BF 0A 01         [24]  379 	cjne	r7,#0x0a,00124$
      000441 22               [24]  380 	ret
      000442                        381 00124$:
                                    382 ;	./src/oled_i2c.c:57: index = (ch - 0x20);
      000442 7E 00            [12]  383 	mov	r6,#0x00
      000444 EF               [12]  384 	mov	a,r7
      000445 24 E0            [12]  385 	add	a,#0xe0
      000447 F5 11            [12]  386 	mov	__mulint_PARM_2,a
      000449 EE               [12]  387 	mov	a,r6
      00044A 34 FF            [12]  388 	addc	a,#0xff
      00044C F5 12            [12]  389 	mov	(__mulint_PARM_2 + 1),a
                                    390 ;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
      00044E 90 00 05         [24]  391 	mov	dptr,#0x0005
      000451 12 06 3A         [24]  392 	lcall	__mulint
      000454 AE 82            [24]  393 	mov	r6,dpl
      000456 AF 83            [24]  394 	mov	r7,dph
                                    395 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      000458 7D 00            [12]  396 	mov	r5,#0x00
      00045A                        397 00104$:
                                    398 ;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      00045A 8D 03            [24]  399 	mov	ar3,r5
      00045C 7C 00            [12]  400 	mov	r4,#0x00
      00045E EB               [12]  401 	mov	a,r3
      00045F 2E               [12]  402 	add	a,r6
      000460 FB               [12]  403 	mov	r3,a
      000461 EC               [12]  404 	mov	a,r4
      000462 3F               [12]  405 	addc	a,r7
      000463 FC               [12]  406 	mov	r4,a
      000464 EB               [12]  407 	mov	a,r3
      000465 24 47            [12]  408 	add	a,#_OledFontTable
      000467 F5 82            [12]  409 	mov	dpl,a
      000469 EC               [12]  410 	mov	a,r4
      00046A 34 09            [12]  411 	addc	a,#(_OledFontTable >> 8)
      00046C F5 83            [12]  412 	mov	dph,a
      00046E E4               [12]  413 	clr	a
      00046F 93               [24]  414 	movc	a,@a+dptr
      000470 F5 82            [12]  415 	mov	dpl,a
      000472 C0 07            [24]  416 	push	ar7
      000474 C0 06            [24]  417 	push	ar6
      000476 C0 05            [24]  418 	push	ar5
      000478 12 05 1F         [24]  419 	lcall	_oledSendData
      00047B D0 05            [24]  420 	pop	ar5
      00047D D0 06            [24]  421 	pop	ar6
      00047F D0 07            [24]  422 	pop	ar7
                                    423 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      000481 0D               [12]  424 	inc	r5
      000482 BD 05 00         [24]  425 	cjne	r5,#0x05,00125$
      000485                        426 00125$:
      000485 40 D3            [24]  427 	jc	00104$
                                    428 ;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
      000487 75 82 00         [24]  429 	mov	dpl,#0x00
                                    430 ;	./src/oled_i2c.c:65: }
      00048A 02 05 1F         [24]  431 	ljmp	_oledSendData
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    434 ;------------------------------------------------------------
                                    435 ;ptr                       Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    438 ;	-----------------------------------------
                                    439 ;	 function OLED_DisplayString
                                    440 ;	-----------------------------------------
      00048D                        441 _OLED_DisplayString:
      00048D AD 82            [24]  442 	mov	r5,dpl
      00048F AE 83            [24]  443 	mov	r6,dph
      000491 AF F0            [24]  444 	mov	r7,b
                                    445 ;	./src/oled_i2c.c:83: while(*ptr)
      000493                        446 00101$:
      000493 8D 82            [24]  447 	mov	dpl,r5
      000495 8E 83            [24]  448 	mov	dph,r6
      000497 8F F0            [24]  449 	mov	b,r7
      000499 12 07 CF         [24]  450 	lcall	__gptrget
      00049C FC               [12]  451 	mov	r4,a
      00049D 60 18            [24]  452 	jz	00104$
                                    453 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      00049F 8C 82            [24]  454 	mov	dpl,r4
      0004A1 0D               [12]  455 	inc	r5
      0004A2 BD 00 01         [24]  456 	cjne	r5,#0x00,00116$
      0004A5 0E               [12]  457 	inc	r6
      0004A6                        458 00116$:
      0004A6 C0 07            [24]  459 	push	ar7
      0004A8 C0 06            [24]  460 	push	ar6
      0004AA C0 05            [24]  461 	push	ar5
      0004AC 12 04 3C         [24]  462 	lcall	_OLED_DisplayChar
      0004AF D0 05            [24]  463 	pop	ar5
      0004B1 D0 06            [24]  464 	pop	ar6
      0004B3 D0 07            [24]  465 	pop	ar7
      0004B5 80 DC            [24]  466 	sjmp	00101$
      0004B7                        467 00104$:
                                    468 ;	./src/oled_i2c.c:85: }
      0004B7 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'OLED_Clear'
                                    472 ;------------------------------------------------------------
                                    473 ;oled_clean_col            Allocated to registers r6 
                                    474 ;oled_clean_page           Allocated to registers r7 
                                    475 ;------------------------------------------------------------
                                    476 ;	./src/oled_i2c.c:96: void OLED_Clear(void)
                                    477 ;	-----------------------------------------
                                    478 ;	 function OLED_Clear
                                    479 ;	-----------------------------------------
      0004B8                        480 _OLED_Clear:
                                    481 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      0004B8 7F 00            [12]  482 	mov	r7,#0x00
      0004BA                        483 00105$:
                                    484 ;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
      0004BA 75 10 00         [24]  485 	mov	_OLED_SetCursor_PARM_2,#0x00
      0004BD 8F 82            [24]  486 	mov	dpl,r7
      0004BF C0 07            [24]  487 	push	ar7
      0004C1 12 04 E3         [24]  488 	lcall	_OLED_SetCursor
      0004C4 D0 07            [24]  489 	pop	ar7
                                    490 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      0004C6 7E 00            [12]  491 	mov	r6,#0x00
      0004C8                        492 00103$:
                                    493 ;	./src/oled_i2c.c:102: oledSendData(0);
      0004C8 75 82 00         [24]  494 	mov	dpl,#0x00
      0004CB C0 07            [24]  495 	push	ar7
      0004CD C0 06            [24]  496 	push	ar6
      0004CF 12 05 1F         [24]  497 	lcall	_oledSendData
      0004D2 D0 06            [24]  498 	pop	ar6
      0004D4 D0 07            [24]  499 	pop	ar7
                                    500 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      0004D6 0E               [12]  501 	inc	r6
      0004D7 BE 80 00         [24]  502 	cjne	r6,#0x80,00123$
      0004DA                        503 00123$:
      0004DA 40 EC            [24]  504 	jc	00103$
                                    505 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      0004DC 0F               [12]  506 	inc	r7
      0004DD BF 08 00         [24]  507 	cjne	r7,#0x08,00125$
      0004E0                        508 00125$:
      0004E0 40 D8            [24]  509 	jc	00105$
                                    510 ;	./src/oled_i2c.c:105: }
      0004E2 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    514 ;------------------------------------------------------------
                                    515 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    516 ;lineNumber                Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	./src/oled_i2c.c:122: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    519 ;	-----------------------------------------
                                    520 ;	 function OLED_SetCursor
                                    521 ;	-----------------------------------------
      0004E3                        522 _OLED_SetCursor:
      0004E3 AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
      0004E5 AE 10            [24]  525 	mov	r6,_OLED_SetCursor_PARM_2
      0004E7 74 02            [12]  526 	mov	a,#0x02
      0004E9 2E               [12]  527 	add	a,r6
      0004EA F5 10            [12]  528 	mov	_OLED_SetCursor_PARM_2,a
                                    529 ;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      0004EC AE 10            [24]  530 	mov	r6,_OLED_SetCursor_PARM_2
      0004EE 74 0F            [12]  531 	mov	a,#0x0f
      0004F0 5E               [12]  532 	anl	a,r6
      0004F1 F5 82            [12]  533 	mov	dpl,a
      0004F3 C0 07            [24]  534 	push	ar7
      0004F5 C0 06            [24]  535 	push	ar6
      0004F7 12 05 13         [24]  536 	lcall	_oledSendCommand
      0004FA D0 06            [24]  537 	pop	ar6
                                    538 ;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      0004FC EE               [12]  539 	mov	a,r6
      0004FD C4               [12]  540 	swap	a
      0004FE 54 0F            [12]  541 	anl	a,#0x0f
      000500 FE               [12]  542 	mov	r6,a
      000501 74 10            [12]  543 	mov	a,#0x10
      000503 4E               [12]  544 	orl	a,r6
      000504 F5 82            [12]  545 	mov	dpl,a
      000506 12 05 13         [24]  546 	lcall	_oledSendCommand
      000509 D0 07            [24]  547 	pop	ar7
                                    548 ;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
      00050B 74 B0            [12]  549 	mov	a,#0xb0
      00050D 4F               [12]  550 	orl	a,r7
      00050E F5 82            [12]  551 	mov	dpl,a
                                    552 ;	./src/oled_i2c.c:128: }
      000510 02 05 13         [24]  553 	ljmp	_oledSendCommand
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'oledSendCommand'
                                    556 ;------------------------------------------------------------
                                    557 ;cmd                       Allocated to registers 
                                    558 ;------------------------------------------------------------
                                    559 ;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
                                    560 ;	-----------------------------------------
                                    561 ;	 function oledSendCommand
                                    562 ;	-----------------------------------------
      000513                        563 _oledSendCommand:
      000513 85 82 0D         [24]  564 	mov	_Single_WriteI2C_PARM_3,dpl
                                    565 ;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000516 75 0C 00         [24]  566 	mov	_Single_WriteI2C_PARM_2,#0x00
      000519 75 82 78         [24]  567 	mov	dpl,#0x78
                                    568 ;	./src/oled_i2c.c:136: }
      00051C 02 02 73         [24]  569 	ljmp	_Single_WriteI2C
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'oledSendData'
                                    572 ;------------------------------------------------------------
                                    573 ;cmd                       Allocated to registers 
                                    574 ;------------------------------------------------------------
                                    575 ;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
                                    576 ;	-----------------------------------------
                                    577 ;	 function oledSendData
                                    578 ;	-----------------------------------------
      00051F                        579 _oledSendData:
      00051F 85 82 0D         [24]  580 	mov	_Single_WriteI2C_PARM_3,dpl
                                    581 ;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      000522 75 0C 40         [24]  582 	mov	_Single_WriteI2C_PARM_2,#0x40
      000525 75 82 78         [24]  583 	mov	dpl,#0x78
                                    584 ;	./src/oled_i2c.c:141: }
      000528 02 02 73         [24]  585 	ljmp	_Single_WriteI2C
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
      000947                        588 _OledFontTable:
      000947 00                     589 	.db #0x00	; 0
      000948 00                     590 	.db #0x00	; 0
      000949 00                     591 	.db #0x00	; 0
      00094A 00                     592 	.db #0x00	; 0
      00094B 00                     593 	.db #0x00	; 0
      00094C 00                     594 	.db #0x00	; 0
      00094D 00                     595 	.db #0x00	; 0
      00094E 2F                     596 	.db #0x2f	; 47
      00094F 00                     597 	.db #0x00	; 0
      000950 00                     598 	.db #0x00	; 0
      000951 00                     599 	.db #0x00	; 0
      000952 07                     600 	.db #0x07	; 7
      000953 00                     601 	.db #0x00	; 0
      000954 07                     602 	.db #0x07	; 7
      000955 00                     603 	.db #0x00	; 0
      000956 14                     604 	.db #0x14	; 20
      000957 7F                     605 	.db #0x7f	; 127
      000958 14                     606 	.db #0x14	; 20
      000959 7F                     607 	.db #0x7f	; 127
      00095A 14                     608 	.db #0x14	; 20
      00095B 24                     609 	.db #0x24	; 36
      00095C 2A                     610 	.db #0x2a	; 42
      00095D 7F                     611 	.db #0x7f	; 127
      00095E 2A                     612 	.db #0x2a	; 42
      00095F 12                     613 	.db #0x12	; 18
      000960 23                     614 	.db #0x23	; 35
      000961 13                     615 	.db #0x13	; 19
      000962 08                     616 	.db #0x08	; 8
      000963 64                     617 	.db #0x64	; 100	'd'
      000964 62                     618 	.db #0x62	; 98	'b'
      000965 36                     619 	.db #0x36	; 54	'6'
      000966 49                     620 	.db #0x49	; 73	'I'
      000967 55                     621 	.db #0x55	; 85	'U'
      000968 22                     622 	.db #0x22	; 34
      000969 50                     623 	.db #0x50	; 80	'P'
      00096A 00                     624 	.db #0x00	; 0
      00096B 05                     625 	.db #0x05	; 5
      00096C 03                     626 	.db #0x03	; 3
      00096D 00                     627 	.db #0x00	; 0
      00096E 00                     628 	.db #0x00	; 0
      00096F 00                     629 	.db #0x00	; 0
      000970 1C                     630 	.db #0x1c	; 28
      000971 22                     631 	.db #0x22	; 34
      000972 41                     632 	.db #0x41	; 65	'A'
      000973 00                     633 	.db #0x00	; 0
      000974 00                     634 	.db #0x00	; 0
      000975 41                     635 	.db #0x41	; 65	'A'
      000976 22                     636 	.db #0x22	; 34
      000977 1C                     637 	.db #0x1c	; 28
      000978 00                     638 	.db #0x00	; 0
      000979 14                     639 	.db #0x14	; 20
      00097A 08                     640 	.db #0x08	; 8
      00097B 3E                     641 	.db #0x3e	; 62
      00097C 08                     642 	.db #0x08	; 8
      00097D 14                     643 	.db #0x14	; 20
      00097E 08                     644 	.db #0x08	; 8
      00097F 08                     645 	.db #0x08	; 8
      000980 3E                     646 	.db #0x3e	; 62
      000981 08                     647 	.db #0x08	; 8
      000982 08                     648 	.db #0x08	; 8
      000983 00                     649 	.db #0x00	; 0
      000984 00                     650 	.db #0x00	; 0
      000985 A0                     651 	.db #0xa0	; 160
      000986 60                     652 	.db #0x60	; 96
      000987 00                     653 	.db #0x00	; 0
      000988 08                     654 	.db #0x08	; 8
      000989 08                     655 	.db #0x08	; 8
      00098A 08                     656 	.db #0x08	; 8
      00098B 08                     657 	.db #0x08	; 8
      00098C 08                     658 	.db #0x08	; 8
      00098D 00                     659 	.db #0x00	; 0
      00098E 60                     660 	.db #0x60	; 96
      00098F 60                     661 	.db #0x60	; 96
      000990 00                     662 	.db #0x00	; 0
      000991 00                     663 	.db #0x00	; 0
      000992 20                     664 	.db #0x20	; 32
      000993 10                     665 	.db #0x10	; 16
      000994 08                     666 	.db #0x08	; 8
      000995 04                     667 	.db #0x04	; 4
      000996 02                     668 	.db #0x02	; 2
      000997 3E                     669 	.db #0x3e	; 62
      000998 51                     670 	.db #0x51	; 81	'Q'
      000999 49                     671 	.db #0x49	; 73	'I'
      00099A 45                     672 	.db #0x45	; 69	'E'
      00099B 3E                     673 	.db #0x3e	; 62
      00099C 00                     674 	.db #0x00	; 0
      00099D 42                     675 	.db #0x42	; 66	'B'
      00099E 7F                     676 	.db #0x7f	; 127
      00099F 40                     677 	.db #0x40	; 64
      0009A0 00                     678 	.db #0x00	; 0
      0009A1 42                     679 	.db #0x42	; 66	'B'
      0009A2 61                     680 	.db #0x61	; 97	'a'
      0009A3 51                     681 	.db #0x51	; 81	'Q'
      0009A4 49                     682 	.db #0x49	; 73	'I'
      0009A5 46                     683 	.db #0x46	; 70	'F'
      0009A6 21                     684 	.db #0x21	; 33
      0009A7 41                     685 	.db #0x41	; 65	'A'
      0009A8 45                     686 	.db #0x45	; 69	'E'
      0009A9 4B                     687 	.db #0x4b	; 75	'K'
      0009AA 31                     688 	.db #0x31	; 49	'1'
      0009AB 18                     689 	.db #0x18	; 24
      0009AC 14                     690 	.db #0x14	; 20
      0009AD 12                     691 	.db #0x12	; 18
      0009AE 7F                     692 	.db #0x7f	; 127
      0009AF 10                     693 	.db #0x10	; 16
      0009B0 27                     694 	.db #0x27	; 39
      0009B1 45                     695 	.db #0x45	; 69	'E'
      0009B2 45                     696 	.db #0x45	; 69	'E'
      0009B3 45                     697 	.db #0x45	; 69	'E'
      0009B4 39                     698 	.db #0x39	; 57	'9'
      0009B5 3C                     699 	.db #0x3c	; 60
      0009B6 4A                     700 	.db #0x4a	; 74	'J'
      0009B7 49                     701 	.db #0x49	; 73	'I'
      0009B8 49                     702 	.db #0x49	; 73	'I'
      0009B9 30                     703 	.db #0x30	; 48	'0'
      0009BA 01                     704 	.db #0x01	; 1
      0009BB 71                     705 	.db #0x71	; 113	'q'
      0009BC 09                     706 	.db #0x09	; 9
      0009BD 05                     707 	.db #0x05	; 5
      0009BE 03                     708 	.db #0x03	; 3
      0009BF 36                     709 	.db #0x36	; 54	'6'
      0009C0 49                     710 	.db #0x49	; 73	'I'
      0009C1 49                     711 	.db #0x49	; 73	'I'
      0009C2 49                     712 	.db #0x49	; 73	'I'
      0009C3 36                     713 	.db #0x36	; 54	'6'
      0009C4 06                     714 	.db #0x06	; 6
      0009C5 49                     715 	.db #0x49	; 73	'I'
      0009C6 49                     716 	.db #0x49	; 73	'I'
      0009C7 29                     717 	.db #0x29	; 41
      0009C8 1E                     718 	.db #0x1e	; 30
      0009C9 00                     719 	.db #0x00	; 0
      0009CA 36                     720 	.db #0x36	; 54	'6'
      0009CB 36                     721 	.db #0x36	; 54	'6'
      0009CC 00                     722 	.db #0x00	; 0
      0009CD 00                     723 	.db #0x00	; 0
      0009CE 00                     724 	.db #0x00	; 0
      0009CF 56                     725 	.db #0x56	; 86	'V'
      0009D0 36                     726 	.db #0x36	; 54	'6'
      0009D1 00                     727 	.db #0x00	; 0
      0009D2 00                     728 	.db #0x00	; 0
      0009D3 08                     729 	.db #0x08	; 8
      0009D4 14                     730 	.db #0x14	; 20
      0009D5 22                     731 	.db #0x22	; 34
      0009D6 41                     732 	.db #0x41	; 65	'A'
      0009D7 00                     733 	.db #0x00	; 0
      0009D8 14                     734 	.db #0x14	; 20
      0009D9 14                     735 	.db #0x14	; 20
      0009DA 14                     736 	.db #0x14	; 20
      0009DB 14                     737 	.db #0x14	; 20
      0009DC 14                     738 	.db #0x14	; 20
      0009DD 00                     739 	.db #0x00	; 0
      0009DE 41                     740 	.db #0x41	; 65	'A'
      0009DF 22                     741 	.db #0x22	; 34
      0009E0 14                     742 	.db #0x14	; 20
      0009E1 08                     743 	.db #0x08	; 8
      0009E2 02                     744 	.db #0x02	; 2
      0009E3 01                     745 	.db #0x01	; 1
      0009E4 51                     746 	.db #0x51	; 81	'Q'
      0009E5 09                     747 	.db #0x09	; 9
      0009E6 06                     748 	.db #0x06	; 6
      0009E7 32                     749 	.db #0x32	; 50	'2'
      0009E8 49                     750 	.db #0x49	; 73	'I'
      0009E9 59                     751 	.db #0x59	; 89	'Y'
      0009EA 51                     752 	.db #0x51	; 81	'Q'
      0009EB 3E                     753 	.db #0x3e	; 62
      0009EC 7C                     754 	.db #0x7c	; 124
      0009ED 12                     755 	.db #0x12	; 18
      0009EE 11                     756 	.db #0x11	; 17
      0009EF 12                     757 	.db #0x12	; 18
      0009F0 7C                     758 	.db #0x7c	; 124
      0009F1 7F                     759 	.db #0x7f	; 127
      0009F2 49                     760 	.db #0x49	; 73	'I'
      0009F3 49                     761 	.db #0x49	; 73	'I'
      0009F4 49                     762 	.db #0x49	; 73	'I'
      0009F5 36                     763 	.db #0x36	; 54	'6'
      0009F6 3E                     764 	.db #0x3e	; 62
      0009F7 41                     765 	.db #0x41	; 65	'A'
      0009F8 41                     766 	.db #0x41	; 65	'A'
      0009F9 41                     767 	.db #0x41	; 65	'A'
      0009FA 22                     768 	.db #0x22	; 34
      0009FB 7F                     769 	.db #0x7f	; 127
      0009FC 41                     770 	.db #0x41	; 65	'A'
      0009FD 41                     771 	.db #0x41	; 65	'A'
      0009FE 22                     772 	.db #0x22	; 34
      0009FF 1C                     773 	.db #0x1c	; 28
      000A00 7F                     774 	.db #0x7f	; 127
      000A01 49                     775 	.db #0x49	; 73	'I'
      000A02 49                     776 	.db #0x49	; 73	'I'
      000A03 49                     777 	.db #0x49	; 73	'I'
      000A04 41                     778 	.db #0x41	; 65	'A'
      000A05 7F                     779 	.db #0x7f	; 127
      000A06 09                     780 	.db #0x09	; 9
      000A07 09                     781 	.db #0x09	; 9
      000A08 09                     782 	.db #0x09	; 9
      000A09 01                     783 	.db #0x01	; 1
      000A0A 3E                     784 	.db #0x3e	; 62
      000A0B 41                     785 	.db #0x41	; 65	'A'
      000A0C 49                     786 	.db #0x49	; 73	'I'
      000A0D 49                     787 	.db #0x49	; 73	'I'
      000A0E 7A                     788 	.db #0x7a	; 122	'z'
      000A0F 7F                     789 	.db #0x7f	; 127
      000A10 08                     790 	.db #0x08	; 8
      000A11 08                     791 	.db #0x08	; 8
      000A12 08                     792 	.db #0x08	; 8
      000A13 7F                     793 	.db #0x7f	; 127
      000A14 00                     794 	.db #0x00	; 0
      000A15 41                     795 	.db #0x41	; 65	'A'
      000A16 7F                     796 	.db #0x7f	; 127
      000A17 41                     797 	.db #0x41	; 65	'A'
      000A18 00                     798 	.db #0x00	; 0
      000A19 20                     799 	.db #0x20	; 32
      000A1A 40                     800 	.db #0x40	; 64
      000A1B 41                     801 	.db #0x41	; 65	'A'
      000A1C 3F                     802 	.db #0x3f	; 63
      000A1D 01                     803 	.db #0x01	; 1
      000A1E 7F                     804 	.db #0x7f	; 127
      000A1F 08                     805 	.db #0x08	; 8
      000A20 14                     806 	.db #0x14	; 20
      000A21 22                     807 	.db #0x22	; 34
      000A22 41                     808 	.db #0x41	; 65	'A'
      000A23 7F                     809 	.db #0x7f	; 127
      000A24 40                     810 	.db #0x40	; 64
      000A25 40                     811 	.db #0x40	; 64
      000A26 40                     812 	.db #0x40	; 64
      000A27 40                     813 	.db #0x40	; 64
      000A28 7F                     814 	.db #0x7f	; 127
      000A29 02                     815 	.db #0x02	; 2
      000A2A 0C                     816 	.db #0x0c	; 12
      000A2B 02                     817 	.db #0x02	; 2
      000A2C 7F                     818 	.db #0x7f	; 127
      000A2D 7F                     819 	.db #0x7f	; 127
      000A2E 04                     820 	.db #0x04	; 4
      000A2F 08                     821 	.db #0x08	; 8
      000A30 10                     822 	.db #0x10	; 16
      000A31 7F                     823 	.db #0x7f	; 127
      000A32 3E                     824 	.db #0x3e	; 62
      000A33 41                     825 	.db #0x41	; 65	'A'
      000A34 41                     826 	.db #0x41	; 65	'A'
      000A35 41                     827 	.db #0x41	; 65	'A'
      000A36 3E                     828 	.db #0x3e	; 62
      000A37 7F                     829 	.db #0x7f	; 127
      000A38 09                     830 	.db #0x09	; 9
      000A39 09                     831 	.db #0x09	; 9
      000A3A 09                     832 	.db #0x09	; 9
      000A3B 06                     833 	.db #0x06	; 6
      000A3C 3E                     834 	.db #0x3e	; 62
      000A3D 41                     835 	.db #0x41	; 65	'A'
      000A3E 51                     836 	.db #0x51	; 81	'Q'
      000A3F 21                     837 	.db #0x21	; 33
      000A40 5E                     838 	.db #0x5e	; 94
      000A41 7F                     839 	.db #0x7f	; 127
      000A42 09                     840 	.db #0x09	; 9
      000A43 19                     841 	.db #0x19	; 25
      000A44 29                     842 	.db #0x29	; 41
      000A45 46                     843 	.db #0x46	; 70	'F'
      000A46 46                     844 	.db #0x46	; 70	'F'
      000A47 49                     845 	.db #0x49	; 73	'I'
      000A48 49                     846 	.db #0x49	; 73	'I'
      000A49 49                     847 	.db #0x49	; 73	'I'
      000A4A 31                     848 	.db #0x31	; 49	'1'
      000A4B 01                     849 	.db #0x01	; 1
      000A4C 01                     850 	.db #0x01	; 1
      000A4D 7F                     851 	.db #0x7f	; 127
      000A4E 01                     852 	.db #0x01	; 1
      000A4F 01                     853 	.db #0x01	; 1
      000A50 3F                     854 	.db #0x3f	; 63
      000A51 40                     855 	.db #0x40	; 64
      000A52 40                     856 	.db #0x40	; 64
      000A53 40                     857 	.db #0x40	; 64
      000A54 3F                     858 	.db #0x3f	; 63
      000A55 1F                     859 	.db #0x1f	; 31
      000A56 20                     860 	.db #0x20	; 32
      000A57 40                     861 	.db #0x40	; 64
      000A58 20                     862 	.db #0x20	; 32
      000A59 1F                     863 	.db #0x1f	; 31
      000A5A 3F                     864 	.db #0x3f	; 63
      000A5B 40                     865 	.db #0x40	; 64
      000A5C 38                     866 	.db #0x38	; 56	'8'
      000A5D 40                     867 	.db #0x40	; 64
      000A5E 3F                     868 	.db #0x3f	; 63
      000A5F 63                     869 	.db #0x63	; 99	'c'
      000A60 14                     870 	.db #0x14	; 20
      000A61 08                     871 	.db #0x08	; 8
      000A62 14                     872 	.db #0x14	; 20
      000A63 63                     873 	.db #0x63	; 99	'c'
      000A64 07                     874 	.db #0x07	; 7
      000A65 08                     875 	.db #0x08	; 8
      000A66 70                     876 	.db #0x70	; 112	'p'
      000A67 08                     877 	.db #0x08	; 8
      000A68 07                     878 	.db #0x07	; 7
      000A69 61                     879 	.db #0x61	; 97	'a'
      000A6A 51                     880 	.db #0x51	; 81	'Q'
      000A6B 49                     881 	.db #0x49	; 73	'I'
      000A6C 45                     882 	.db #0x45	; 69	'E'
      000A6D 43                     883 	.db #0x43	; 67	'C'
      000A6E 00                     884 	.db #0x00	; 0
      000A6F 7F                     885 	.db #0x7f	; 127
      000A70 41                     886 	.db #0x41	; 65	'A'
      000A71 41                     887 	.db #0x41	; 65	'A'
      000A72 00                     888 	.db #0x00	; 0
      000A73 55                     889 	.db #0x55	; 85	'U'
      000A74 AA                     890 	.db #0xaa	; 170
      000A75 55                     891 	.db #0x55	; 85	'U'
      000A76 AA                     892 	.db #0xaa	; 170
      000A77 55                     893 	.db #0x55	; 85	'U'
      000A78 00                     894 	.db #0x00	; 0
      000A79 41                     895 	.db #0x41	; 65	'A'
      000A7A 41                     896 	.db #0x41	; 65	'A'
      000A7B 7F                     897 	.db #0x7f	; 127
      000A7C 00                     898 	.db #0x00	; 0
      000A7D 04                     899 	.db #0x04	; 4
      000A7E 02                     900 	.db #0x02	; 2
      000A7F 01                     901 	.db #0x01	; 1
      000A80 02                     902 	.db #0x02	; 2
      000A81 04                     903 	.db #0x04	; 4
      000A82 40                     904 	.db #0x40	; 64
      000A83 40                     905 	.db #0x40	; 64
      000A84 40                     906 	.db #0x40	; 64
      000A85 40                     907 	.db #0x40	; 64
      000A86 40                     908 	.db #0x40	; 64
      000A87 00                     909 	.db #0x00	; 0
      000A88 03                     910 	.db #0x03	; 3
      000A89 05                     911 	.db #0x05	; 5
      000A8A 00                     912 	.db #0x00	; 0
      000A8B 00                     913 	.db #0x00	; 0
      000A8C 20                     914 	.db #0x20	; 32
      000A8D 54                     915 	.db #0x54	; 84	'T'
      000A8E 54                     916 	.db #0x54	; 84	'T'
      000A8F 54                     917 	.db #0x54	; 84	'T'
      000A90 78                     918 	.db #0x78	; 120	'x'
      000A91 7F                     919 	.db #0x7f	; 127
      000A92 48                     920 	.db #0x48	; 72	'H'
      000A93 44                     921 	.db #0x44	; 68	'D'
      000A94 44                     922 	.db #0x44	; 68	'D'
      000A95 38                     923 	.db #0x38	; 56	'8'
      000A96 38                     924 	.db #0x38	; 56	'8'
      000A97 44                     925 	.db #0x44	; 68	'D'
      000A98 44                     926 	.db #0x44	; 68	'D'
      000A99 44                     927 	.db #0x44	; 68	'D'
      000A9A 20                     928 	.db #0x20	; 32
      000A9B 38                     929 	.db #0x38	; 56	'8'
      000A9C 44                     930 	.db #0x44	; 68	'D'
      000A9D 44                     931 	.db #0x44	; 68	'D'
      000A9E 48                     932 	.db #0x48	; 72	'H'
      000A9F 7F                     933 	.db #0x7f	; 127
      000AA0 38                     934 	.db #0x38	; 56	'8'
      000AA1 54                     935 	.db #0x54	; 84	'T'
      000AA2 54                     936 	.db #0x54	; 84	'T'
      000AA3 54                     937 	.db #0x54	; 84	'T'
      000AA4 18                     938 	.db #0x18	; 24
      000AA5 08                     939 	.db #0x08	; 8
      000AA6 7E                     940 	.db #0x7e	; 126
      000AA7 09                     941 	.db #0x09	; 9
      000AA8 01                     942 	.db #0x01	; 1
      000AA9 02                     943 	.db #0x02	; 2
      000AAA 18                     944 	.db #0x18	; 24
      000AAB A4                     945 	.db #0xa4	; 164
      000AAC A4                     946 	.db #0xa4	; 164
      000AAD A4                     947 	.db #0xa4	; 164
      000AAE 7C                     948 	.db #0x7c	; 124
      000AAF 7F                     949 	.db #0x7f	; 127
      000AB0 08                     950 	.db #0x08	; 8
      000AB1 04                     951 	.db #0x04	; 4
      000AB2 04                     952 	.db #0x04	; 4
      000AB3 78                     953 	.db #0x78	; 120	'x'
      000AB4 00                     954 	.db #0x00	; 0
      000AB5 44                     955 	.db #0x44	; 68	'D'
      000AB6 7D                     956 	.db #0x7d	; 125
      000AB7 40                     957 	.db #0x40	; 64
      000AB8 00                     958 	.db #0x00	; 0
      000AB9 40                     959 	.db #0x40	; 64
      000ABA 80                     960 	.db #0x80	; 128
      000ABB 84                     961 	.db #0x84	; 132
      000ABC 7D                     962 	.db #0x7d	; 125
      000ABD 00                     963 	.db #0x00	; 0
      000ABE 7F                     964 	.db #0x7f	; 127
      000ABF 10                     965 	.db #0x10	; 16
      000AC0 28                     966 	.db #0x28	; 40
      000AC1 44                     967 	.db #0x44	; 68	'D'
      000AC2 00                     968 	.db #0x00	; 0
      000AC3 00                     969 	.db #0x00	; 0
      000AC4 41                     970 	.db #0x41	; 65	'A'
      000AC5 7F                     971 	.db #0x7f	; 127
      000AC6 40                     972 	.db #0x40	; 64
      000AC7 00                     973 	.db #0x00	; 0
      000AC8 7C                     974 	.db #0x7c	; 124
      000AC9 04                     975 	.db #0x04	; 4
      000ACA 18                     976 	.db #0x18	; 24
      000ACB 04                     977 	.db #0x04	; 4
      000ACC 78                     978 	.db #0x78	; 120	'x'
      000ACD 7C                     979 	.db #0x7c	; 124
      000ACE 08                     980 	.db #0x08	; 8
      000ACF 04                     981 	.db #0x04	; 4
      000AD0 04                     982 	.db #0x04	; 4
      000AD1 78                     983 	.db #0x78	; 120	'x'
      000AD2 38                     984 	.db #0x38	; 56	'8'
      000AD3 44                     985 	.db #0x44	; 68	'D'
      000AD4 44                     986 	.db #0x44	; 68	'D'
      000AD5 44                     987 	.db #0x44	; 68	'D'
      000AD6 38                     988 	.db #0x38	; 56	'8'
      000AD7 FC                     989 	.db #0xfc	; 252
      000AD8 24                     990 	.db #0x24	; 36
      000AD9 24                     991 	.db #0x24	; 36
      000ADA 24                     992 	.db #0x24	; 36
      000ADB 18                     993 	.db #0x18	; 24
      000ADC 18                     994 	.db #0x18	; 24
      000ADD 24                     995 	.db #0x24	; 36
      000ADE 24                     996 	.db #0x24	; 36
      000ADF 18                     997 	.db #0x18	; 24
      000AE0 FC                     998 	.db #0xfc	; 252
      000AE1 7C                     999 	.db #0x7c	; 124
      000AE2 08                    1000 	.db #0x08	; 8
      000AE3 04                    1001 	.db #0x04	; 4
      000AE4 04                    1002 	.db #0x04	; 4
      000AE5 08                    1003 	.db #0x08	; 8
      000AE6 48                    1004 	.db #0x48	; 72	'H'
      000AE7 54                    1005 	.db #0x54	; 84	'T'
      000AE8 54                    1006 	.db #0x54	; 84	'T'
      000AE9 54                    1007 	.db #0x54	; 84	'T'
      000AEA 20                    1008 	.db #0x20	; 32
      000AEB 04                    1009 	.db #0x04	; 4
      000AEC 3F                    1010 	.db #0x3f	; 63
      000AED 44                    1011 	.db #0x44	; 68	'D'
      000AEE 40                    1012 	.db #0x40	; 64
      000AEF 20                    1013 	.db #0x20	; 32
      000AF0 3C                    1014 	.db #0x3c	; 60
      000AF1 40                    1015 	.db #0x40	; 64
      000AF2 40                    1016 	.db #0x40	; 64
      000AF3 20                    1017 	.db #0x20	; 32
      000AF4 7C                    1018 	.db #0x7c	; 124
      000AF5 1C                    1019 	.db #0x1c	; 28
      000AF6 20                    1020 	.db #0x20	; 32
      000AF7 40                    1021 	.db #0x40	; 64
      000AF8 20                    1022 	.db #0x20	; 32
      000AF9 1C                    1023 	.db #0x1c	; 28
      000AFA 3C                    1024 	.db #0x3c	; 60
      000AFB 40                    1025 	.db #0x40	; 64
      000AFC 30                    1026 	.db #0x30	; 48	'0'
      000AFD 40                    1027 	.db #0x40	; 64
      000AFE 3C                    1028 	.db #0x3c	; 60
      000AFF 44                    1029 	.db #0x44	; 68	'D'
      000B00 28                    1030 	.db #0x28	; 40
      000B01 10                    1031 	.db #0x10	; 16
      000B02 28                    1032 	.db #0x28	; 40
      000B03 44                    1033 	.db #0x44	; 68	'D'
      000B04 1C                    1034 	.db #0x1c	; 28
      000B05 A0                    1035 	.db #0xa0	; 160
      000B06 A0                    1036 	.db #0xa0	; 160
      000B07 A0                    1037 	.db #0xa0	; 160
      000B08 7C                    1038 	.db #0x7c	; 124
      000B09 44                    1039 	.db #0x44	; 68	'D'
      000B0A 64                    1040 	.db #0x64	; 100	'd'
      000B0B 54                    1041 	.db #0x54	; 84	'T'
      000B0C 4C                    1042 	.db #0x4c	; 76	'L'
      000B0D 44                    1043 	.db #0x44	; 68	'D'
      000B0E 00                    1044 	.db #0x00	; 0
      000B0F 10                    1045 	.db #0x10	; 16
      000B10 7C                    1046 	.db #0x7c	; 124
      000B11 82                    1047 	.db #0x82	; 130
      000B12 00                    1048 	.db #0x00	; 0
      000B13 00                    1049 	.db #0x00	; 0
      000B14 00                    1050 	.db #0x00	; 0
      000B15 FF                    1051 	.db #0xff	; 255
      000B16 00                    1052 	.db #0x00	; 0
      000B17 00                    1053 	.db #0x00	; 0
      000B18 00                    1054 	.db #0x00	; 0
      000B19 82                    1055 	.db #0x82	; 130
      000B1A 7C                    1056 	.db #0x7c	; 124
      000B1B 10                    1057 	.db #0x10	; 16
      000B1C 00                    1058 	.db #0x00	; 0
      000B1D 00                    1059 	.db #0x00	; 0
      000B1E 06                    1060 	.db #0x06	; 6
      000B1F 09                    1061 	.db #0x09	; 9
      000B20 09                    1062 	.db #0x09	; 9
      000B21 06                    1063 	.db #0x06	; 6
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
