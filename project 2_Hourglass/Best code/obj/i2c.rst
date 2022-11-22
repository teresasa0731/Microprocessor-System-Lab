                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _I2C_SendACK_PARM_1
                                    108 	.globl _Single_ReadI2C_PARM_2
                                    109 	.globl _Single_WriteI2C_PARM_3
                                    110 	.globl _Single_WriteI2C_PARM_2
                                    111 	.globl _Delay
                                    112 	.globl _I2C_Start
                                    113 	.globl _I2C_Stop
                                    114 	.globl _I2C_SendACK
                                    115 	.globl _I2C_RecvACK
                                    116 	.globl _I2C_SendByte
                                    117 	.globl _I2C_RecvByte
                                    118 	.globl _Single_WriteI2C
                                    119 	.globl _Single_ReadI2C
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000008                        235 _Single_WriteI2C_PARM_2:
      000008                        236 	.ds 1
      000009                        237 _Single_WriteI2C_PARM_3:
      000009                        238 	.ds 1
      00000A                        239 _Single_ReadI2C_PARM_2:
      00000A                        240 	.ds 1
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable items in internal ram
                                    243 ;--------------------------------------------------------
                                    244 	.area	OSEG    (OVR,DATA)
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
      000000                        258 _I2C_SendACK_PARM_1:
      000000                        259 	.ds 1
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
                                    287 ; global & static initialisations
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; Home
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area HOME    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; code
                                    300 ;--------------------------------------------------------
                                    301 	.area CSEG    (CODE)
                                    302 ;------------------------------------------------------------
                                    303 ;Allocation info for local variables in function 'Delay'
                                    304 ;------------------------------------------------------------
                                    305 ;i                         Allocated to registers r7 
                                    306 ;------------------------------------------------------------
                                    307 ;	./src/i2c.c:5: void Delay(void)
                                    308 ;	-----------------------------------------
                                    309 ;	 function Delay
                                    310 ;	-----------------------------------------
      0004E3                        311 _Delay:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
                                    320 ;	./src/i2c.c:8: for (i = 0; i < 5; i++);
      0004E3 7F 05            [12]  321 	mov	r7,#0x05
      0004E5                        322 00104$:
      0004E5 DF FE            [24]  323 	djnz	r7,00104$
                                    324 ;	./src/i2c.c:9: }
      0004E7 22               [24]  325 	ret
                                    326 ;------------------------------------------------------------
                                    327 ;Allocation info for local variables in function 'I2C_Start'
                                    328 ;------------------------------------------------------------
                                    329 ;	./src/i2c.c:12: void I2C_Start(void)
                                    330 ;	-----------------------------------------
                                    331 ;	 function I2C_Start
                                    332 ;	-----------------------------------------
      0004E8                        333 _I2C_Start:
                                    334 ;	./src/i2c.c:14: SDA = 1;
                                    335 ;	assignBit
      0004E8 D2 81            [12]  336 	setb	_P0_1
                                    337 ;	./src/i2c.c:15: SCL = 1;
                                    338 ;	assignBit
      0004EA D2 80            [12]  339 	setb	_P0_0
                                    340 ;	./src/i2c.c:16: Delay();
      0004EC 12 04 E3         [24]  341 	lcall	_Delay
                                    342 ;	./src/i2c.c:17: SDA = 0;
                                    343 ;	assignBit
      0004EF C2 81            [12]  344 	clr	_P0_1
                                    345 ;	./src/i2c.c:18: Delay();
      0004F1 12 04 E3         [24]  346 	lcall	_Delay
                                    347 ;	./src/i2c.c:19: SCL = 0;
                                    348 ;	assignBit
      0004F4 C2 80            [12]  349 	clr	_P0_0
                                    350 ;	./src/i2c.c:20: }
      0004F6 22               [24]  351 	ret
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'I2C_Stop'
                                    354 ;------------------------------------------------------------
                                    355 ;	./src/i2c.c:23: void I2C_Stop(void)
                                    356 ;	-----------------------------------------
                                    357 ;	 function I2C_Stop
                                    358 ;	-----------------------------------------
      0004F7                        359 _I2C_Stop:
                                    360 ;	./src/i2c.c:25: SDA = 0;
                                    361 ;	assignBit
      0004F7 C2 81            [12]  362 	clr	_P0_1
                                    363 ;	./src/i2c.c:26: SCL = 1;
                                    364 ;	assignBit
      0004F9 D2 80            [12]  365 	setb	_P0_0
                                    366 ;	./src/i2c.c:27: Delay();
      0004FB 12 04 E3         [24]  367 	lcall	_Delay
                                    368 ;	./src/i2c.c:28: SDA = 1;
                                    369 ;	assignBit
      0004FE D2 81            [12]  370 	setb	_P0_1
                                    371 ;	./src/i2c.c:29: Delay();
                                    372 ;	./src/i2c.c:30: }
      000500 02 04 E3         [24]  373 	ljmp	_Delay
                                    374 ;------------------------------------------------------------
                                    375 ;Allocation info for local variables in function 'I2C_SendACK'
                                    376 ;------------------------------------------------------------
                                    377 ;	./src/i2c.c:33: void I2C_SendACK(__bit ack)
                                    378 ;	-----------------------------------------
                                    379 ;	 function I2C_SendACK
                                    380 ;	-----------------------------------------
      000503                        381 _I2C_SendACK:
                                    382 ;	./src/i2c.c:35: SDA = ack;
                                    383 ;	assignBit
      000503 A2 00            [12]  384 	mov	c,_I2C_SendACK_PARM_1
      000505 92 81            [24]  385 	mov	_P0_1,c
                                    386 ;	./src/i2c.c:36: SCL = 1;
                                    387 ;	assignBit
      000507 D2 80            [12]  388 	setb	_P0_0
                                    389 ;	./src/i2c.c:37: Delay();
      000509 12 04 E3         [24]  390 	lcall	_Delay
                                    391 ;	./src/i2c.c:38: SCL = 0;
                                    392 ;	assignBit
      00050C C2 80            [12]  393 	clr	_P0_0
                                    394 ;	./src/i2c.c:39: Delay();
                                    395 ;	./src/i2c.c:40: }
      00050E 02 04 E3         [24]  396 	ljmp	_Delay
                                    397 ;------------------------------------------------------------
                                    398 ;Allocation info for local variables in function 'I2C_RecvACK'
                                    399 ;------------------------------------------------------------
                                    400 ;	./src/i2c.c:43: __bit I2C_RecvACK(void)
                                    401 ;	-----------------------------------------
                                    402 ;	 function I2C_RecvACK
                                    403 ;	-----------------------------------------
      000511                        404 _I2C_RecvACK:
                                    405 ;	./src/i2c.c:45: SCL = 1;
                                    406 ;	assignBit
      000511 D2 80            [12]  407 	setb	_P0_0
                                    408 ;	./src/i2c.c:46: Delay();
      000513 12 04 E3         [24]  409 	lcall	_Delay
                                    410 ;	./src/i2c.c:47: CY = SDA;
                                    411 ;	assignBit
      000516 A2 81            [12]  412 	mov	c,_P0_1
      000518 92 D7            [24]  413 	mov	_CY,c
                                    414 ;	./src/i2c.c:48: SCL = 0;
                                    415 ;	assignBit
      00051A C2 80            [12]  416 	clr	_P0_0
                                    417 ;	./src/i2c.c:49: Delay();
      00051C 12 04 E3         [24]  418 	lcall	_Delay
                                    419 ;	./src/i2c.c:50: return CY;
      00051F A2 D7            [12]  420 	mov	c,_CY
                                    421 ;	./src/i2c.c:51: }
      000521 22               [24]  422 	ret
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'I2C_SendByte'
                                    425 ;------------------------------------------------------------
                                    426 ;dat                       Allocated to registers r7 
                                    427 ;i                         Allocated to registers r6 
                                    428 ;------------------------------------------------------------
                                    429 ;	./src/i2c.c:54: void I2C_SendByte(uint8_t dat)
                                    430 ;	-----------------------------------------
                                    431 ;	 function I2C_SendByte
                                    432 ;	-----------------------------------------
      000522                        433 _I2C_SendByte:
      000522 AF 82            [24]  434 	mov	r7,dpl
                                    435 ;	./src/i2c.c:57: for (i=0; i<8; i++)
      000524 7E 00            [12]  436 	mov	r6,#0x00
      000526                        437 00102$:
                                    438 ;	./src/i2c.c:59: dat <<= 1;
      000526 8F 05            [24]  439 	mov	ar5,r7
      000528 ED               [12]  440 	mov	a,r5
      000529 2D               [12]  441 	add	a,r5
      00052A FF               [12]  442 	mov	r7,a
                                    443 ;	./src/i2c.c:60: SDA = CY;
                                    444 ;	assignBit
      00052B A2 D7            [12]  445 	mov	c,_CY
      00052D 92 81            [24]  446 	mov	_P0_1,c
                                    447 ;	./src/i2c.c:61: SCL = 1;
                                    448 ;	assignBit
      00052F D2 80            [12]  449 	setb	_P0_0
                                    450 ;	./src/i2c.c:62: Delay();
      000531 C0 07            [24]  451 	push	ar7
      000533 C0 06            [24]  452 	push	ar6
      000535 12 04 E3         [24]  453 	lcall	_Delay
                                    454 ;	./src/i2c.c:63: SCL = 0;
                                    455 ;	assignBit
      000538 C2 80            [12]  456 	clr	_P0_0
                                    457 ;	./src/i2c.c:64: Delay();
      00053A 12 04 E3         [24]  458 	lcall	_Delay
      00053D D0 06            [24]  459 	pop	ar6
      00053F D0 07            [24]  460 	pop	ar7
                                    461 ;	./src/i2c.c:57: for (i=0; i<8; i++)
      000541 0E               [12]  462 	inc	r6
      000542 BE 08 00         [24]  463 	cjne	r6,#0x08,00115$
      000545                        464 00115$:
      000545 40 DF            [24]  465 	jc	00102$
                                    466 ;	./src/i2c.c:66: I2C_RecvACK();
                                    467 ;	./src/i2c.c:67: }
      000547 02 05 11         [24]  468 	ljmp	_I2C_RecvACK
                                    469 ;------------------------------------------------------------
                                    470 ;Allocation info for local variables in function 'I2C_RecvByte'
                                    471 ;------------------------------------------------------------
                                    472 ;i                         Allocated to registers r6 
                                    473 ;dat                       Allocated to registers r5 
                                    474 ;------------------------------------------------------------
                                    475 ;	./src/i2c.c:70: uint8_t I2C_RecvByte(void)
                                    476 ;	-----------------------------------------
                                    477 ;	 function I2C_RecvByte
                                    478 ;	-----------------------------------------
      00054A                        479 _I2C_RecvByte:
                                    480 ;	./src/i2c.c:73: uint8_t dat = 0;
      00054A 7F 00            [12]  481 	mov	r7,#0x00
                                    482 ;	./src/i2c.c:74: SDA = 1;
                                    483 ;	assignBit
      00054C D2 81            [12]  484 	setb	_P0_1
                                    485 ;	./src/i2c.c:75: for (i=0; i<8; i++)
      00054E 7E 00            [12]  486 	mov	r6,#0x00
      000550                        487 00102$:
                                    488 ;	./src/i2c.c:77: dat <<= 1;
      000550 8F 05            [24]  489 	mov	ar5,r7
      000552 ED               [12]  490 	mov	a,r5
      000553 2D               [12]  491 	add	a,r5
      000554 FD               [12]  492 	mov	r5,a
                                    493 ;	./src/i2c.c:78: SCL = 1;
                                    494 ;	assignBit
      000555 D2 80            [12]  495 	setb	_P0_0
                                    496 ;	./src/i2c.c:79: Delay();
      000557 C0 06            [24]  497 	push	ar6
      000559 C0 05            [24]  498 	push	ar5
      00055B 12 04 E3         [24]  499 	lcall	_Delay
      00055E D0 05            [24]  500 	pop	ar5
      000560 D0 06            [24]  501 	pop	ar6
                                    502 ;	./src/i2c.c:80: dat |= SDA;             
      000562 A2 81            [12]  503 	mov	c,_P0_1
      000564 E4               [12]  504 	clr	a
      000565 33               [12]  505 	rlc	a
      000566 4D               [12]  506 	orl	a,r5
      000567 FF               [12]  507 	mov	r7,a
                                    508 ;	./src/i2c.c:81: SCL = 0;
                                    509 ;	assignBit
      000568 C2 80            [12]  510 	clr	_P0_0
                                    511 ;	./src/i2c.c:82: Delay();
      00056A C0 07            [24]  512 	push	ar7
      00056C C0 06            [24]  513 	push	ar6
      00056E 12 04 E3         [24]  514 	lcall	_Delay
      000571 D0 06            [24]  515 	pop	ar6
      000573 D0 07            [24]  516 	pop	ar7
                                    517 ;	./src/i2c.c:75: for (i=0; i<8; i++)
      000575 0E               [12]  518 	inc	r6
      000576 BE 08 00         [24]  519 	cjne	r6,#0x08,00117$
      000579                        520 00117$:
      000579 40 D5            [24]  521 	jc	00102$
                                    522 ;	./src/i2c.c:84: return dat;
      00057B 8F 82            [24]  523 	mov	dpl,r7
                                    524 ;	./src/i2c.c:85: }
      00057D 22               [24]  525 	ret
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'Single_WriteI2C'
                                    528 ;------------------------------------------------------------
                                    529 ;REG_Address               Allocated with name '_Single_WriteI2C_PARM_2'
                                    530 ;REG_data                  Allocated with name '_Single_WriteI2C_PARM_3'
                                    531 ;SlaveAddress              Allocated to registers r7 
                                    532 ;------------------------------------------------------------
                                    533 ;	./src/i2c.c:88: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data)
                                    534 ;	-----------------------------------------
                                    535 ;	 function Single_WriteI2C
                                    536 ;	-----------------------------------------
      00057E                        537 _Single_WriteI2C:
      00057E AF 82            [24]  538 	mov	r7,dpl
                                    539 ;	./src/i2c.c:90: I2C_Start();
      000580 C0 07            [24]  540 	push	ar7
      000582 12 04 E8         [24]  541 	lcall	_I2C_Start
      000585 D0 07            [24]  542 	pop	ar7
                                    543 ;	./src/i2c.c:91: I2C_SendByte(SlaveAddress);
      000587 8F 82            [24]  544 	mov	dpl,r7
      000589 12 05 22         [24]  545 	lcall	_I2C_SendByte
                                    546 ;	./src/i2c.c:92: I2C_SendByte(REG_Address);
      00058C 85 08 82         [24]  547 	mov	dpl,_Single_WriteI2C_PARM_2
      00058F 12 05 22         [24]  548 	lcall	_I2C_SendByte
                                    549 ;	./src/i2c.c:93: I2C_SendByte(REG_data);
      000592 85 09 82         [24]  550 	mov	dpl,_Single_WriteI2C_PARM_3
      000595 12 05 22         [24]  551 	lcall	_I2C_SendByte
                                    552 ;	./src/i2c.c:94: I2C_Stop();
                                    553 ;	./src/i2c.c:95: }
      000598 02 04 F7         [24]  554 	ljmp	_I2C_Stop
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'Single_ReadI2C'
                                    557 ;------------------------------------------------------------
                                    558 ;REG_Address               Allocated with name '_Single_ReadI2C_PARM_2'
                                    559 ;SlaveAddress              Allocated to registers r7 
                                    560 ;REG_data                  Allocated to registers r7 
                                    561 ;------------------------------------------------------------
                                    562 ;	./src/i2c.c:98: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
                                    563 ;	-----------------------------------------
                                    564 ;	 function Single_ReadI2C
                                    565 ;	-----------------------------------------
      00059B                        566 _Single_ReadI2C:
      00059B AF 82            [24]  567 	mov	r7,dpl
                                    568 ;	./src/i2c.c:101: I2C_Start();
      00059D C0 07            [24]  569 	push	ar7
      00059F 12 04 E8         [24]  570 	lcall	_I2C_Start
      0005A2 D0 07            [24]  571 	pop	ar7
                                    572 ;	./src/i2c.c:102: I2C_SendByte(SlaveAddress);
      0005A4 8F 82            [24]  573 	mov	dpl,r7
      0005A6 C0 07            [24]  574 	push	ar7
      0005A8 12 05 22         [24]  575 	lcall	_I2C_SendByte
                                    576 ;	./src/i2c.c:103: I2C_SendByte(REG_Address);
      0005AB 85 0A 82         [24]  577 	mov	dpl,_Single_ReadI2C_PARM_2
      0005AE 12 05 22         [24]  578 	lcall	_I2C_SendByte
                                    579 ;	./src/i2c.c:104: I2C_Stop();
      0005B1 12 04 F7         [24]  580 	lcall	_I2C_Stop
                                    581 ;	./src/i2c.c:106: I2C_Start();
      0005B4 12 04 E8         [24]  582 	lcall	_I2C_Start
      0005B7 D0 07            [24]  583 	pop	ar7
                                    584 ;	./src/i2c.c:107: I2C_SendByte(SlaveAddress|0x01);  // R/W#: 1 means read mode
      0005B9 74 01            [12]  585 	mov	a,#0x01
      0005BB 4F               [12]  586 	orl	a,r7
      0005BC F5 82            [12]  587 	mov	dpl,a
      0005BE 12 05 22         [24]  588 	lcall	_I2C_SendByte
                                    589 ;	./src/i2c.c:108: REG_data=I2C_RecvByte();
      0005C1 12 05 4A         [24]  590 	lcall	_I2C_RecvByte
      0005C4 AF 82            [24]  591 	mov	r7,dpl
                                    592 ;	./src/i2c.c:109: I2C_SendACK(1);
                                    593 ;	assignBit
      0005C6 D2 00            [12]  594 	setb	_I2C_SendACK_PARM_1
      0005C8 C0 07            [24]  595 	push	ar7
      0005CA 12 05 03         [24]  596 	lcall	_I2C_SendACK
                                    597 ;	./src/i2c.c:110: I2C_Stop();
      0005CD 12 04 F7         [24]  598 	lcall	_I2C_Stop
      0005D0 D0 07            [24]  599 	pop	ar7
                                    600 ;	./src/i2c.c:111: return REG_data;
      0005D2 8F 82            [24]  601 	mov	dpl,r7
                                    602 ;	./src/i2c.c:112: }
      0005D4 22               [24]  603 	ret
                                    604 	.area CSEG    (CODE)
                                    605 	.area CONST   (CODE)
                                    606 	.area XINIT   (CODE)
                                    607 	.area CABS    (ABS,CODE)
