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
                                     13 	.globl _func_cal
                                     14 	.globl _sequence
                                     15 	.globl _read_curINPUT
                                     16 	.globl _delay_ms
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _display_seg
                                    114 	.globl _Writesingle7219_PARM_3
                                    115 	.globl _Writesingle7219_PARM_2
                                    116 	.globl _Write7219_PARM_2
                                    117 	.globl _patt
                                    118 	.globl _display
                                    119 	.globl _prestate
                                    120 	.globl _state
                                    121 	.globl _curINPUT
                                    122 	.globl _sendbyte
                                    123 	.globl _Write7219
                                    124 	.globl _Writesingle7219
                                    125 	.globl _Initial
                                    126 	.globl _draw
                                    127 	.globl _scan_row
                                    128 ;--------------------------------------------------------
                                    129 ; special function registers
                                    130 ;--------------------------------------------------------
                                    131 	.area RSEG    (ABS,DATA)
      000000                        132 	.org 0x0000
                           000080   133 _P0	=	0x0080
                           000081   134 _SP	=	0x0081
                           000082   135 _DPL	=	0x0082
                           000083   136 _DPH	=	0x0083
                           000087   137 _PCON	=	0x0087
                           000088   138 _TCON	=	0x0088
                           000089   139 _TMOD	=	0x0089
                           00008A   140 _TL0	=	0x008a
                           00008B   141 _TL1	=	0x008b
                           00008C   142 _TH0	=	0x008c
                           00008D   143 _TH1	=	0x008d
                           000090   144 _P1	=	0x0090
                           000098   145 _SCON	=	0x0098
                           000099   146 _SBUF	=	0x0099
                           0000A0   147 _P2	=	0x00a0
                           0000A8   148 _IE	=	0x00a8
                           0000B0   149 _P3	=	0x00b0
                           0000B8   150 _IP	=	0x00b8
                           0000D0   151 _PSW	=	0x00d0
                           0000E0   152 _ACC	=	0x00e0
                           0000F0   153 _B	=	0x00f0
                                    154 ;--------------------------------------------------------
                                    155 ; special function bits
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0_0	=	0x0080
                           000081   160 _P0_1	=	0x0081
                           000082   161 _P0_2	=	0x0082
                           000083   162 _P0_3	=	0x0083
                           000084   163 _P0_4	=	0x0084
                           000085   164 _P0_5	=	0x0085
                           000086   165 _P0_6	=	0x0086
                           000087   166 _P0_7	=	0x0087
                           000088   167 _IT0	=	0x0088
                           000089   168 _IE0	=	0x0089
                           00008A   169 _IT1	=	0x008a
                           00008B   170 _IE1	=	0x008b
                           00008C   171 _TR0	=	0x008c
                           00008D   172 _TF0	=	0x008d
                           00008E   173 _TR1	=	0x008e
                           00008F   174 _TF1	=	0x008f
                           000090   175 _P1_0	=	0x0090
                           000091   176 _P1_1	=	0x0091
                           000092   177 _P1_2	=	0x0092
                           000093   178 _P1_3	=	0x0093
                           000094   179 _P1_4	=	0x0094
                           000095   180 _P1_5	=	0x0095
                           000096   181 _P1_6	=	0x0096
                           000097   182 _P1_7	=	0x0097
                           000098   183 _RI	=	0x0098
                           000099   184 _TI	=	0x0099
                           00009A   185 _RB8	=	0x009a
                           00009B   186 _TB8	=	0x009b
                           00009C   187 _REN	=	0x009c
                           00009D   188 _SM2	=	0x009d
                           00009E   189 _SM1	=	0x009e
                           00009F   190 _SM0	=	0x009f
                           0000A0   191 _P2_0	=	0x00a0
                           0000A1   192 _P2_1	=	0x00a1
                           0000A2   193 _P2_2	=	0x00a2
                           0000A3   194 _P2_3	=	0x00a3
                           0000A4   195 _P2_4	=	0x00a4
                           0000A5   196 _P2_5	=	0x00a5
                           0000A6   197 _P2_6	=	0x00a6
                           0000A7   198 _P2_7	=	0x00a7
                           0000A8   199 _EX0	=	0x00a8
                           0000A9   200 _ET0	=	0x00a9
                           0000AA   201 _EX1	=	0x00aa
                           0000AB   202 _ET1	=	0x00ab
                           0000AC   203 _ES	=	0x00ac
                           0000AF   204 _EA	=	0x00af
                           0000B0   205 _P3_0	=	0x00b0
                           0000B1   206 _P3_1	=	0x00b1
                           0000B2   207 _P3_2	=	0x00b2
                           0000B3   208 _P3_3	=	0x00b3
                           0000B4   209 _P3_4	=	0x00b4
                           0000B5   210 _P3_5	=	0x00b5
                           0000B6   211 _P3_6	=	0x00b6
                           0000B7   212 _P3_7	=	0x00b7
                           0000B0   213 _RXD	=	0x00b0
                           0000B1   214 _TXD	=	0x00b1
                           0000B2   215 _INT0	=	0x00b2
                           0000B3   216 _INT1	=	0x00b3
                           0000B4   217 _T0	=	0x00b4
                           0000B5   218 _T1	=	0x00b5
                           0000B6   219 _WR	=	0x00b6
                           0000B7   220 _RD	=	0x00b7
                           0000B8   221 _PX0	=	0x00b8
                           0000B9   222 _PT0	=	0x00b9
                           0000BA   223 _PX1	=	0x00ba
                           0000BB   224 _PT1	=	0x00bb
                           0000BC   225 _PS	=	0x00bc
                           0000D0   226 _P	=	0x00d0
                           0000D1   227 _F1	=	0x00d1
                           0000D2   228 _OV	=	0x00d2
                           0000D3   229 _RS0	=	0x00d3
                           0000D4   230 _RS1	=	0x00d4
                           0000D5   231 _F0	=	0x00d5
                           0000D6   232 _AC	=	0x00d6
                           0000D7   233 _CY	=	0x00d7
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable register banks
                                    236 ;--------------------------------------------------------
                                    237 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        238 	.ds 8
                                    239 ;--------------------------------------------------------
                                    240 ; internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area DSEG    (DATA)
      000008                        243 _curINPUT::
      000008                        244 	.ds 20
      00001C                        245 _state::
      00001C                        246 	.ds 20
      000030                        247 _prestate::
      000030                        248 	.ds 20
      000044                        249 _display::
      000044                        250 	.ds 8
      00004C                        251 _patt::
      00004C                        252 	.ds 1
      00004D                        253 _Write7219_PARM_2:
      00004D                        254 	.ds 1
      00004E                        255 _Writesingle7219_PARM_2:
      00004E                        256 	.ds 1
      00004F                        257 _Writesingle7219_PARM_3:
      00004F                        258 	.ds 1
      000050                        259 _display_seg::
      000050                        260 	.ds 11
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable items in internal ram
                                    263 ;--------------------------------------------------------
                                    264 	.area	OSEG    (OVR,DATA)
      00005B                        265 _sendbyte_PARM_2:
      00005B                        266 	.ds 1
                                    267 	.area	OSEG    (OVR,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; Stack segment in internal ram
                                    270 ;--------------------------------------------------------
                                    271 	.area SSEG
      00005C                        272 __start__stack:
      00005C                        273 	.ds	1
                                    274 
                                    275 ;--------------------------------------------------------
                                    276 ; indirectly addressable internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area ISEG    (DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; absolute internal ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area IABS    (ABS,DATA)
                                    283 	.area IABS    (ABS,DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; bit data
                                    286 ;--------------------------------------------------------
                                    287 	.area BSEG    (BIT)
                                    288 ;--------------------------------------------------------
                                    289 ; paged external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area PSEG    (PAG,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; uninitialized external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XSEG    (XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; absolute external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XABS    (ABS,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; initialized external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XISEG   (XDATA)
                                    304 	.area HOME    (CODE)
                                    305 	.area GSINIT0 (CODE)
                                    306 	.area GSINIT1 (CODE)
                                    307 	.area GSINIT2 (CODE)
                                    308 	.area GSINIT3 (CODE)
                                    309 	.area GSINIT4 (CODE)
                                    310 	.area GSINIT5 (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.area GSFINAL (CODE)
                                    313 	.area CSEG    (CODE)
                                    314 ;--------------------------------------------------------
                                    315 ; interrupt vector
                                    316 ;--------------------------------------------------------
                                    317 	.area HOME    (CODE)
      000000                        318 __interrupt_vect:
      000000 02 00 06         [24]  319 	ljmp	__sdcc_gsinit_startup
                                    320 ;--------------------------------------------------------
                                    321 ; global & static initialisations
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.area GSFINAL (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.globl __sdcc_gsinit_startup
                                    328 	.globl __sdcc_program_startup
                                    329 	.globl __start__stack
                                    330 	.globl __mcs51_genXINIT
                                    331 	.globl __mcs51_genXRAMCLEAR
                                    332 	.globl __mcs51_genRAMCLEAR
                                    333 ;	./src/main.c:48: unsigned char patt = 0x80; // led value
      00005F 75 4C 80         [24]  334 	mov	_patt,#0x80
                                    335 ;	./src/main.c:211: unsigned char display_seg[] = {
      000062 75 50 30         [24]  336 	mov	_display_seg,#0x30
      000065 75 51 6D         [24]  337 	mov	(_display_seg + 0x0001),#0x6d
      000068 75 52 79         [24]  338 	mov	(_display_seg + 0x0002),#0x79
      00006B 75 53 33         [24]  339 	mov	(_display_seg + 0x0003),#0x33
      00006E 75 54 5B         [24]  340 	mov	(_display_seg + 0x0004),#0x5b
      000071 75 55 5F         [24]  341 	mov	(_display_seg + 0x0005),#0x5f
      000074 75 56 70         [24]  342 	mov	(_display_seg + 0x0006),#0x70
      000077 75 57 7F         [24]  343 	mov	(_display_seg + 0x0007),#0x7f
      00007A 75 58 7B         [24]  344 	mov	(_display_seg + 0x0008),#0x7b
      00007D 75 59 7E         [24]  345 	mov	(_display_seg + 0x0009),#0x7e
      000080 75 5A 4F         [24]  346 	mov	(_display_seg + 0x000a),#0x4f
                                    347 	.area GSFINAL (CODE)
      000083 02 00 03         [24]  348 	ljmp	__sdcc_program_startup
                                    349 ;--------------------------------------------------------
                                    350 ; Home
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
                                    353 	.area HOME    (CODE)
      000003                        354 __sdcc_program_startup:
      000003 02 02 D4         [24]  355 	ljmp	_main
                                    356 ;	return from main will return to caller
                                    357 ;--------------------------------------------------------
                                    358 ; code
                                    359 ;--------------------------------------------------------
                                    360 	.area CSEG    (CODE)
                                    361 ;------------------------------------------------------------
                                    362 ;Allocation info for local variables in function 'sendbyte'
                                    363 ;------------------------------------------------------------
                                    364 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    365 ;address                   Allocated to registers r7 
                                    366 ;i                         Allocated to registers r6 
                                    367 ;------------------------------------------------------------
                                    368 ;	./src/main.c:51: void sendbyte(unsigned char address,unsigned char dat){
                                    369 ;	-----------------------------------------
                                    370 ;	 function sendbyte
                                    371 ;	-----------------------------------------
      000086                        372 _sendbyte:
                           000007   373 	ar7 = 0x07
                           000006   374 	ar6 = 0x06
                           000005   375 	ar5 = 0x05
                           000004   376 	ar4 = 0x04
                           000003   377 	ar3 = 0x03
                           000002   378 	ar2 = 0x02
                           000001   379 	ar1 = 0x01
                           000000   380 	ar0 = 0x00
      000086 AF 82            [24]  381 	mov	r7,dpl
                                    382 ;	./src/main.c:53: for (i=0;i<8;i++)        //get last 8 bits(address)
      000088 7E 00            [12]  383 	mov	r6,#0x00
      00008A                        384 00103$:
                                    385 ;	./src/main.c:55: CLK=0;
                                    386 ;	assignBit
      00008A C2 A0            [12]  387 	clr	_P2_0
                                    388 ;	./src/main.c:56: DIN=(address&0x80);   //get msb and shift left
      00008C EF               [12]  389 	mov	a,r7
      00008D 23               [12]  390 	rl	a
      00008E 54 01            [12]  391 	anl	a,#0x01
                                    392 ;	assignBit
      000090 24 FF            [12]  393 	add	a,#0xff
      000092 92 A2            [24]  394 	mov	_P2_2,c
                                    395 ;	./src/main.c:57: address<<=1;
      000094 8F 05            [24]  396 	mov	ar5,r7
      000096 ED               [12]  397 	mov	a,r5
      000097 2D               [12]  398 	add	a,r5
      000098 FF               [12]  399 	mov	r7,a
                                    400 ;	./src/main.c:58: CLK=1;
                                    401 ;	assignBit
      000099 D2 A0            [12]  402 	setb	_P2_0
                                    403 ;	./src/main.c:53: for (i=0;i<8;i++)        //get last 8 bits(address)
      00009B 0E               [12]  404 	inc	r6
      00009C BE 08 00         [24]  405 	cjne	r6,#0x08,00123$
      00009F                        406 00123$:
      00009F 40 E9            [24]  407 	jc	00103$
                                    408 ;	./src/main.c:60: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000A1 7F 00            [12]  409 	mov	r7,#0x00
      0000A3                        410 00105$:
                                    411 ;	./src/main.c:62: CLK=0;
                                    412 ;	assignBit
      0000A3 C2 A0            [12]  413 	clr	_P2_0
                                    414 ;	./src/main.c:63: DIN=(dat&0x80);    //get msb and shit left
      0000A5 E5 5B            [12]  415 	mov	a,_sendbyte_PARM_2
      0000A7 23               [12]  416 	rl	a
      0000A8 54 01            [12]  417 	anl	a,#0x01
                                    418 ;	assignBit
      0000AA 24 FF            [12]  419 	add	a,#0xff
      0000AC 92 A2            [24]  420 	mov	_P2_2,c
                                    421 ;	./src/main.c:64: dat<<=1;
      0000AE E5 5B            [12]  422 	mov	a,_sendbyte_PARM_2
      0000B0 25 E0            [12]  423 	add	a,acc
      0000B2 F5 5B            [12]  424 	mov	_sendbyte_PARM_2,a
                                    425 ;	./src/main.c:65: CLK=1;
                                    426 ;	assignBit
      0000B4 D2 A0            [12]  427 	setb	_P2_0
                                    428 ;	./src/main.c:60: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000B6 0F               [12]  429 	inc	r7
      0000B7 BF 08 00         [24]  430 	cjne	r7,#0x08,00125$
      0000BA                        431 00125$:
      0000BA 40 E7            [24]  432 	jc	00105$
                                    433 ;	./src/main.c:67: }
      0000BC 22               [24]  434 	ret
                                    435 ;------------------------------------------------------------
                                    436 ;Allocation info for local variables in function 'Write7219'
                                    437 ;------------------------------------------------------------
                                    438 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    439 ;address                   Allocated to registers r7 
                                    440 ;cnt                       Allocated to registers r6 
                                    441 ;------------------------------------------------------------
                                    442 ;	./src/main.c:70: void Write7219(unsigned char address,unsigned char dat)
                                    443 ;	-----------------------------------------
                                    444 ;	 function Write7219
                                    445 ;	-----------------------------------------
      0000BD                        446 _Write7219:
      0000BD AF 82            [24]  447 	mov	r7,dpl
                                    448 ;	./src/main.c:73: LOAD=0;
                                    449 ;	assignBit
      0000BF C2 A1            [12]  450 	clr	_P2_1
                                    451 ;	./src/main.c:74: for(cnt=1;cnt<=matrixnum;cnt++)      //send address and data according to the nuber of your matrix
      0000C1 7E 01            [12]  452 	mov	r6,#0x01
      0000C3                        453 00102$:
                                    454 ;	./src/main.c:76: sendbyte(address,dat);
      0000C3 85 4D 5B         [24]  455 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000C6 8F 82            [24]  456 	mov	dpl,r7
      0000C8 C0 07            [24]  457 	push	ar7
      0000CA C0 06            [24]  458 	push	ar6
      0000CC 12 00 86         [24]  459 	lcall	_sendbyte
      0000CF D0 06            [24]  460 	pop	ar6
      0000D1 D0 07            [24]  461 	pop	ar7
                                    462 ;	./src/main.c:74: for(cnt=1;cnt<=matrixnum;cnt++)      //send address and data according to the nuber of your matrix
      0000D3 0E               [12]  463 	inc	r6
      0000D4 EE               [12]  464 	mov	a,r6
      0000D5 24 FE            [12]  465 	add	a,#0xff - 0x01
      0000D7 50 EA            [24]  466 	jnc	00102$
                                    467 ;	./src/main.c:78: LOAD=1;                              //after the load becomes 1, will the 7-segment display display
                                    468 ;	assignBit
      0000D9 D2 A1            [12]  469 	setb	_P2_1
                                    470 ;	./src/main.c:79: }
      0000DB 22               [24]  471 	ret
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'Writesingle7219'
                                    474 ;------------------------------------------------------------
                                    475 ;address                   Allocated with name '_Writesingle7219_PARM_2'
                                    476 ;dat                       Allocated with name '_Writesingle7219_PARM_3'
                                    477 ;chosen                    Allocated to registers r7 
                                    478 ;cnt                       Allocated to registers 
                                    479 ;------------------------------------------------------------
                                    480 ;	./src/main.c:82: void Writesingle7219(unsigned char chosen,unsigned char address,unsigned char dat)
                                    481 ;	-----------------------------------------
                                    482 ;	 function Writesingle7219
                                    483 ;	-----------------------------------------
      0000DC                        484 _Writesingle7219:
      0000DC AF 82            [24]  485 	mov	r7,dpl
                                    486 ;	./src/main.c:85: LOAD=0;
                                    487 ;	assignBit
      0000DE C2 A1            [12]  488 	clr	_P2_1
                                    489 ;	./src/main.c:86: for(cnt=matrixnum;cnt>chosen;cnt--)   //write data into the selected matrix
      0000E0 7E 01            [12]  490 	mov	r6,#0x01
      0000E2                        491 00104$:
      0000E2 C3               [12]  492 	clr	c
      0000E3 EF               [12]  493 	mov	a,r7
      0000E4 9E               [12]  494 	subb	a,r6
      0000E5 50 14            [24]  495 	jnc	00101$
                                    496 ;	./src/main.c:88: sendbyte(0x00,0x00); //write 0 to no-op
      0000E7 75 5B 00         [24]  497 	mov	_sendbyte_PARM_2,#0x00
      0000EA 75 82 00         [24]  498 	mov	dpl,#0x00
      0000ED C0 07            [24]  499 	push	ar7
      0000EF C0 06            [24]  500 	push	ar6
      0000F1 12 00 86         [24]  501 	lcall	_sendbyte
      0000F4 D0 06            [24]  502 	pop	ar6
      0000F6 D0 07            [24]  503 	pop	ar7
                                    504 ;	./src/main.c:86: for(cnt=matrixnum;cnt>chosen;cnt--)   //write data into the selected matrix
      0000F8 1E               [12]  505 	dec	r6
      0000F9 80 E7            [24]  506 	sjmp	00104$
      0000FB                        507 00101$:
                                    508 ;	./src/main.c:90: sendbyte(address, dat); //sent data to chosen led-matrix
      0000FB 85 4F 5B         [24]  509 	mov	_sendbyte_PARM_2,_Writesingle7219_PARM_3
      0000FE 85 4E 82         [24]  510 	mov	dpl,_Writesingle7219_PARM_2
      000101 C0 07            [24]  511 	push	ar7
      000103 12 00 86         [24]  512 	lcall	_sendbyte
      000106 D0 07            [24]  513 	pop	ar7
                                    514 ;	./src/main.c:92: for (cnt=chosen-1;cnt>=1; cnt--)
      000108 1F               [12]  515 	dec	r7
      000109                        516 00107$:
      000109 BF 01 00         [24]  517 	cjne	r7,#0x01,00130$
      00010C                        518 00130$:
      00010C 40 10            [24]  519 	jc	00102$
                                    520 ;	./src/main.c:94: sendbyte(0x00,0x00); //write 0 to no-op
      00010E 75 5B 00         [24]  521 	mov	_sendbyte_PARM_2,#0x00
      000111 75 82 00         [24]  522 	mov	dpl,#0x00
      000114 C0 07            [24]  523 	push	ar7
      000116 12 00 86         [24]  524 	lcall	_sendbyte
      000119 D0 07            [24]  525 	pop	ar7
                                    526 ;	./src/main.c:92: for (cnt=chosen-1;cnt>=1; cnt--)
      00011B 1F               [12]  527 	dec	r7
      00011C 80 EB            [24]  528 	sjmp	00107$
      00011E                        529 00102$:
                                    530 ;	./src/main.c:96: LOAD=1;
                                    531 ;	assignBit
      00011E D2 A1            [12]  532 	setb	_P2_1
                                    533 ;	./src/main.c:97: }
      000120 22               [24]  534 	ret
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'Initial'
                                    537 ;------------------------------------------------------------
                                    538 ;i                         Allocated to registers r7 
                                    539 ;------------------------------------------------------------
                                    540 ;	./src/main.c:100: void Initial(void)
                                    541 ;	-----------------------------------------
                                    542 ;	 function Initial
                                    543 ;	-----------------------------------------
      000121                        544 _Initial:
                                    545 ;	./src/main.c:103: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      000121 75 4D 01         [24]  546 	mov	_Write7219_PARM_2,#0x01
      000124 75 82 0C         [24]  547 	mov	dpl,#0x0c
      000127 12 00 BD         [24]  548 	lcall	_Write7219
                                    549 ;	./src/main.c:104: Write7219(DISPLAY_TEST,0x00);
      00012A 75 4D 00         [24]  550 	mov	_Write7219_PARM_2,#0x00
      00012D 75 82 0F         [24]  551 	mov	dpl,#0x0f
      000130 12 00 BD         [24]  552 	lcall	_Write7219
                                    553 ;	./src/main.c:105: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      000133 75 4D 00         [24]  554 	mov	_Write7219_PARM_2,#0x00
      000136 75 82 09         [24]  555 	mov	dpl,#0x09
      000139 12 00 BD         [24]  556 	lcall	_Write7219
                                    557 ;	./src/main.c:106: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      00013C 75 4D 07         [24]  558 	mov	_Write7219_PARM_2,#0x07
      00013F 75 82 0B         [24]  559 	mov	dpl,#0x0b
      000142 12 00 BD         [24]  560 	lcall	_Write7219
                                    561 ;	./src/main.c:107: Write7219(INTENSITY,0x00);         //set up intensity
      000145 75 4D 00         [24]  562 	mov	_Write7219_PARM_2,#0x00
      000148 75 82 0A         [24]  563 	mov	dpl,#0x0a
      00014B 12 00 BD         [24]  564 	lcall	_Write7219
                                    565 ;	./src/main.c:108: for(i=1;i<=8;i++){
      00014E 7F 01            [12]  566 	mov	r7,#0x01
      000150                        567 00102$:
                                    568 ;	./src/main.c:109: Write7219(i,0x00);   //turn off all LED
      000150 75 4D 00         [24]  569 	mov	_Write7219_PARM_2,#0x00
      000153 8F 82            [24]  570 	mov	dpl,r7
      000155 C0 07            [24]  571 	push	ar7
      000157 12 00 BD         [24]  572 	lcall	_Write7219
      00015A D0 07            [24]  573 	pop	ar7
                                    574 ;	./src/main.c:108: for(i=1;i<=8;i++){
      00015C 0F               [12]  575 	inc	r7
      00015D EF               [12]  576 	mov	a,r7
      00015E 24 F7            [12]  577 	add	a,#0xff - 0x08
      000160 50 EE            [24]  578 	jnc	00102$
                                    579 ;	./src/main.c:111: }
      000162 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'draw'
                                    583 ;------------------------------------------------------------
                                    584 ;picture                   Allocated to registers r5 r6 r7 
                                    585 ;i                         Allocated to registers r4 
                                    586 ;------------------------------------------------------------
                                    587 ;	./src/main.c:114: void draw(unsigned char *picture){
                                    588 ;	-----------------------------------------
                                    589 ;	 function draw
                                    590 ;	-----------------------------------------
      000163                        591 _draw:
      000163 AD 82            [24]  592 	mov	r5,dpl
      000165 AE 83            [24]  593 	mov	r6,dph
      000167 AF F0            [24]  594 	mov	r7,b
                                    595 ;	./src/main.c:116: for(i=1;i<=8;i++){
      000169 7C 01            [12]  596 	mov	r4,#0x01
      00016B                        597 00102$:
                                    598 ;	./src/main.c:117: Write7219(i,picture[i-1]);
      00016B 8C 02            [24]  599 	mov	ar2,r4
      00016D 7B 00            [12]  600 	mov	r3,#0x00
      00016F 1A               [12]  601 	dec	r2
      000170 BA FF 01         [24]  602 	cjne	r2,#0xff,00111$
      000173 1B               [12]  603 	dec	r3
      000174                        604 00111$:
      000174 EA               [12]  605 	mov	a,r2
      000175 2D               [12]  606 	add	a,r5
      000176 FA               [12]  607 	mov	r2,a
      000177 EB               [12]  608 	mov	a,r3
      000178 3E               [12]  609 	addc	a,r6
      000179 F9               [12]  610 	mov	r1,a
      00017A 8F 03            [24]  611 	mov	ar3,r7
      00017C 8A 82            [24]  612 	mov	dpl,r2
      00017E 89 83            [24]  613 	mov	dph,r1
      000180 8B F0            [24]  614 	mov	b,r3
      000182 12 04 19         [24]  615 	lcall	__gptrget
      000185 F5 4D            [12]  616 	mov	_Write7219_PARM_2,a
      000187 8C 82            [24]  617 	mov	dpl,r4
      000189 C0 07            [24]  618 	push	ar7
      00018B C0 06            [24]  619 	push	ar6
      00018D C0 05            [24]  620 	push	ar5
      00018F C0 04            [24]  621 	push	ar4
      000191 12 00 BD         [24]  622 	lcall	_Write7219
      000194 D0 04            [24]  623 	pop	ar4
      000196 D0 05            [24]  624 	pop	ar5
      000198 D0 06            [24]  625 	pop	ar6
      00019A D0 07            [24]  626 	pop	ar7
                                    627 ;	./src/main.c:116: for(i=1;i<=8;i++){
      00019C 0C               [12]  628 	inc	r4
      00019D EC               [12]  629 	mov	a,r4
      00019E 24 F7            [12]  630 	add	a,#0xff - 0x08
      0001A0 50 C9            [24]  631 	jnc	00102$
                                    632 ;	./src/main.c:119: }
      0001A2 22               [24]  633 	ret
                                    634 ;------------------------------------------------------------
                                    635 ;Allocation info for local variables in function 'scan_row'
                                    636 ;------------------------------------------------------------
                                    637 ;row                       Allocated to registers r6 r7 
                                    638 ;------------------------------------------------------------
                                    639 ;	./src/main.c:121: void scan_row(unsigned int row)
                                    640 ;	-----------------------------------------
                                    641 ;	 function scan_row
                                    642 ;	-----------------------------------------
      0001A3                        643 _scan_row:
      0001A3 AE 82            [24]  644 	mov	r6,dpl
      0001A5 AF 83            [24]  645 	mov	r7,dph
                                    646 ;	./src/main.c:123: switch (row)
      0001A7 C3               [12]  647 	clr	c
      0001A8 74 03            [12]  648 	mov	a,#0x03
      0001AA 9E               [12]  649 	subb	a,r6
      0001AB E4               [12]  650 	clr	a
      0001AC 9F               [12]  651 	subb	a,r7
      0001AD 40 31            [24]  652 	jc	00107$
      0001AF EE               [12]  653 	mov	a,r6
      0001B0 2E               [12]  654 	add	a,r6
                                    655 ;	./src/main.c:125: case 0:
      0001B1 90 01 B5         [24]  656 	mov	dptr,#00114$
      0001B4 73               [24]  657 	jmp	@a+dptr
      0001B5                        658 00114$:
      0001B5 80 06            [24]  659 	sjmp	00101$
      0001B7 80 0D            [24]  660 	sjmp	00102$
      0001B9 80 14            [24]  661 	sjmp	00103$
      0001BB 80 1B            [24]  662 	sjmp	00104$
      0001BD                        663 00101$:
                                    664 ;	./src/main.c:126: OUTPUT1 = 0; // row1 output 0
                                    665 ;	assignBit
      0001BD C2 86            [12]  666 	clr	_P0_6
                                    667 ;	./src/main.c:127: OUTPUT2 = 1; // row2 output 1
                                    668 ;	assignBit
      0001BF D2 85            [12]  669 	setb	_P0_5
                                    670 ;	./src/main.c:128: OUTPUT3 = 1; // row3 output 1
                                    671 ;	assignBit
      0001C1 D2 84            [12]  672 	setb	_P0_4
                                    673 ;	./src/main.c:129: OUTPUT0 = 1; // row0 output 1
                                    674 ;	assignBit
      0001C3 D2 83            [12]  675 	setb	_P0_3
                                    676 ;	./src/main.c:130: break;
                                    677 ;	./src/main.c:131: case 1:
      0001C5 22               [24]  678 	ret
      0001C6                        679 00102$:
                                    680 ;	./src/main.c:132: OUTPUT1 = 1; // row1 output 1
                                    681 ;	assignBit
      0001C6 D2 86            [12]  682 	setb	_P0_6
                                    683 ;	./src/main.c:133: OUTPUT2 = 0; // row2 output 0
                                    684 ;	assignBit
      0001C8 C2 85            [12]  685 	clr	_P0_5
                                    686 ;	./src/main.c:134: OUTPUT3 = 1; // row3 output 1
                                    687 ;	assignBit
      0001CA D2 84            [12]  688 	setb	_P0_4
                                    689 ;	./src/main.c:135: OUTPUT0 = 1; // row0 output 1
                                    690 ;	assignBit
      0001CC D2 83            [12]  691 	setb	_P0_3
                                    692 ;	./src/main.c:136: break;
                                    693 ;	./src/main.c:137: case 2:
      0001CE 22               [24]  694 	ret
      0001CF                        695 00103$:
                                    696 ;	./src/main.c:138: OUTPUT1 = 1; // row1 output 1
                                    697 ;	assignBit
      0001CF D2 86            [12]  698 	setb	_P0_6
                                    699 ;	./src/main.c:139: OUTPUT2 = 1; // row2 output 1
                                    700 ;	assignBit
      0001D1 D2 85            [12]  701 	setb	_P0_5
                                    702 ;	./src/main.c:140: OUTPUT3 = 0; // row3 output 0
                                    703 ;	assignBit
      0001D3 C2 84            [12]  704 	clr	_P0_4
                                    705 ;	./src/main.c:141: OUTPUT0 = 1; // row0 output 1
                                    706 ;	assignBit
      0001D5 D2 83            [12]  707 	setb	_P0_3
                                    708 ;	./src/main.c:142: break;
                                    709 ;	./src/main.c:143: case 3:
      0001D7 22               [24]  710 	ret
      0001D8                        711 00104$:
                                    712 ;	./src/main.c:144: OUTPUT1 = 1; // row1 output 1
                                    713 ;	assignBit
      0001D8 D2 86            [12]  714 	setb	_P0_6
                                    715 ;	./src/main.c:145: OUTPUT2 = 1; // row2 output 1
                                    716 ;	assignBit
      0001DA D2 85            [12]  717 	setb	_P0_5
                                    718 ;	./src/main.c:146: OUTPUT3 = 1; // row3 output 1
                                    719 ;	assignBit
      0001DC D2 84            [12]  720 	setb	_P0_4
                                    721 ;	./src/main.c:147: OUTPUT0 = 0; // row0 output 0
                                    722 ;	assignBit
      0001DE C2 83            [12]  723 	clr	_P0_3
                                    724 ;	./src/main.c:151: }
      0001E0                        725 00107$:
                                    726 ;	./src/main.c:152: }
      0001E0 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'read_curINPUT'
                                    730 ;------------------------------------------------------------
                                    731 ;i                         Allocated to registers r6 r7 
                                    732 ;------------------------------------------------------------
                                    733 ;	./src/main.c:154: void read_curINPUT(void)
                                    734 ;	-----------------------------------------
                                    735 ;	 function read_curINPUT
                                    736 ;	-----------------------------------------
      0001E1                        737 _read_curINPUT:
                                    738 ;	./src/main.c:156: for (int i = 0; i < 4; i++)
      0001E1 7E 00            [12]  739 	mov	r6,#0x00
      0001E3 7F 00            [12]  740 	mov	r7,#0x00
      0001E5                        741 00105$:
      0001E5 C3               [12]  742 	clr	c
      0001E6 EE               [12]  743 	mov	a,r6
      0001E7 94 04            [12]  744 	subb	a,#0x04
      0001E9 EF               [12]  745 	mov	a,r7
      0001EA 64 80            [12]  746 	xrl	a,#0x80
      0001EC 94 80            [12]  747 	subb	a,#0x80
      0001EE 50 69            [24]  748 	jnc	00107$
                                    749 ;	./src/main.c:158: scan_row(i);
      0001F0 8E 82            [24]  750 	mov	dpl,r6
      0001F2 8F 83            [24]  751 	mov	dph,r7
      0001F4 C0 07            [24]  752 	push	ar7
      0001F6 C0 06            [24]  753 	push	ar6
      0001F8 12 01 A3         [24]  754 	lcall	_scan_row
      0001FB D0 06            [24]  755 	pop	ar6
      0001FD D0 07            [24]  756 	pop	ar7
                                    757 ;	./src/main.c:159: curINPUT[i * 3 + 0] = INPUT1;
      0001FF 8E 05            [24]  758 	mov	ar5,r6
      000201 ED               [12]  759 	mov	a,r5
      000202 75 F0 03         [24]  760 	mov	b,#0x03
      000205 A4               [48]  761 	mul	ab
      000206 FD               [12]  762 	mov	r5,a
      000207 25 E0            [12]  763 	add	a,acc
      000209 24 08            [12]  764 	add	a,#_curINPUT
      00020B F9               [12]  765 	mov	r1,a
      00020C A2 80            [12]  766 	mov	c,_P0_0
      00020E E4               [12]  767 	clr	a
      00020F 33               [12]  768 	rlc	a
      000210 FB               [12]  769 	mov	r3,a
      000211 7C 00            [12]  770 	mov	r4,#0x00
      000213 A7 03            [24]  771 	mov	@r1,ar3
      000215 09               [12]  772 	inc	r1
      000216 A7 04            [24]  773 	mov	@r1,ar4
      000218 19               [12]  774 	dec	r1
                                    775 ;	./src/main.c:160: curINPUT[i * 3 + 1] = INPUT2;
      000219 ED               [12]  776 	mov	a,r5
      00021A 04               [12]  777 	inc	a
      00021B 25 E0            [12]  778 	add	a,acc
      00021D 24 08            [12]  779 	add	a,#_curINPUT
      00021F F9               [12]  780 	mov	r1,a
      000220 A2 81            [12]  781 	mov	c,_P0_1
      000222 E4               [12]  782 	clr	a
      000223 33               [12]  783 	rlc	a
      000224 FB               [12]  784 	mov	r3,a
      000225 7C 00            [12]  785 	mov	r4,#0x00
      000227 A7 03            [24]  786 	mov	@r1,ar3
      000229 09               [12]  787 	inc	r1
      00022A A7 04            [24]  788 	mov	@r1,ar4
      00022C 19               [12]  789 	dec	r1
                                    790 ;	./src/main.c:161: curINPUT[i * 3 + 2] = INPUT3;
      00022D 0D               [12]  791 	inc	r5
      00022E 0D               [12]  792 	inc	r5
      00022F ED               [12]  793 	mov	a,r5
      000230 2D               [12]  794 	add	a,r5
      000231 24 08            [12]  795 	add	a,#_curINPUT
      000233 F9               [12]  796 	mov	r1,a
      000234 A2 82            [12]  797 	mov	c,_P0_2
      000236 E4               [12]  798 	clr	a
      000237 33               [12]  799 	rlc	a
      000238 FC               [12]  800 	mov	r4,a
      000239 7D 00            [12]  801 	mov	r5,#0x00
      00023B A7 04            [24]  802 	mov	@r1,ar4
      00023D 09               [12]  803 	inc	r1
      00023E A7 05            [24]  804 	mov	@r1,ar5
      000240 19               [12]  805 	dec	r1
                                    806 ;	./src/main.c:162: if(i==3)
      000241 BE 03 0E         [24]  807 	cjne	r6,#0x03,00106$
      000244 BF 00 0B         [24]  808 	cjne	r7,#0x00,00106$
                                    809 ;	./src/main.c:163: curINPUT[9] = INPUT2;
      000247 A2 81            [12]  810 	mov	c,_P0_1
      000249 E4               [12]  811 	clr	a
      00024A 33               [12]  812 	rlc	a
      00024B FC               [12]  813 	mov	r4,a
      00024C 7D 00            [12]  814 	mov	r5,#0x00
      00024E 8C 1A            [24]  815 	mov	((_curINPUT + 0x0012) + 0),r4
      000250 8D 1B            [24]  816 	mov	((_curINPUT + 0x0012) + 1),r5
      000252                        817 00106$:
                                    818 ;	./src/main.c:156: for (int i = 0; i < 4; i++)
      000252 0E               [12]  819 	inc	r6
      000253 BE 00 8F         [24]  820 	cjne	r6,#0x00,00105$
      000256 0F               [12]  821 	inc	r7
      000257 80 8C            [24]  822 	sjmp	00105$
      000259                        823 00107$:
                                    824 ;	./src/main.c:166: }
      000259 22               [24]  825 	ret
                                    826 ;------------------------------------------------------------
                                    827 ;Allocation info for local variables in function 'sequence'
                                    828 ;------------------------------------------------------------
                                    829 ;a                         Allocated to registers r6 r7 
                                    830 ;------------------------------------------------------------
                                    831 ;	./src/main.c:168: void sequence(void){
                                    832 ;	-----------------------------------------
                                    833 ;	 function sequence
                                    834 ;	-----------------------------------------
      00025A                        835 _sequence:
                                    836 ;	./src/main.c:169: for(int a = 7; a > 0; a--){
      00025A 7E 07            [12]  837 	mov	r6,#0x07
      00025C 7F 00            [12]  838 	mov	r7,#0x00
      00025E                        839 00103$:
      00025E C3               [12]  840 	clr	c
      00025F E4               [12]  841 	clr	a
      000260 9E               [12]  842 	subb	a,r6
      000261 74 80            [12]  843 	mov	a,#(0x00 ^ 0x80)
      000263 8F F0            [24]  844 	mov	b,r7
      000265 63 F0 80         [24]  845 	xrl	b,#0x80
      000268 95 F0            [12]  846 	subb	a,b
      00026A 50 16            [24]  847 	jnc	00101$
                                    848 ;	./src/main.c:170: display[a] = display[a-1];
      00026C EE               [12]  849 	mov	a,r6
      00026D 24 44            [12]  850 	add	a,#_display
      00026F F9               [12]  851 	mov	r1,a
      000270 8E 05            [24]  852 	mov	ar5,r6
      000272 ED               [12]  853 	mov	a,r5
      000273 14               [12]  854 	dec	a
      000274 24 44            [12]  855 	add	a,#_display
      000276 F8               [12]  856 	mov	r0,a
      000277 86 05            [24]  857 	mov	ar5,@r0
      000279 A7 05            [24]  858 	mov	@r1,ar5
                                    859 ;	./src/main.c:169: for(int a = 7; a > 0; a--){
      00027B 1E               [12]  860 	dec	r6
      00027C BE FF 01         [24]  861 	cjne	r6,#0xff,00117$
      00027F 1F               [12]  862 	dec	r7
      000280                        863 00117$:
      000280 80 DC            [24]  864 	sjmp	00103$
      000282                        865 00101$:
                                    866 ;	./src/main.c:172: patt = 0x00;
      000282 75 4C 00         [24]  867 	mov	_patt,#0x00
                                    868 ;	./src/main.c:173: delay_ms(100);
      000285 90 00 64         [24]  869 	mov	dptr,#0x0064
                                    870 ;	./src/main.c:176: }
      000288 02 04 0C         [24]  871 	ljmp	_delay_ms
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'func_cal'
                                    874 ;------------------------------------------------------------
                                    875 ;command                   Allocated to registers r6 r7 
                                    876 ;a                         Allocated to registers r6 r7 
                                    877 ;------------------------------------------------------------
                                    878 ;	./src/main.c:178: void func_cal(unsigned int command){
                                    879 ;	-----------------------------------------
                                    880 ;	 function func_cal
                                    881 ;	-----------------------------------------
      00028B                        882 _func_cal:
      00028B AE 82            [24]  883 	mov	r6,dpl
      00028D AF 83            [24]  884 	mov	r7,dph
                                    885 ;	./src/main.c:179: switch (command)
      00028F C3               [12]  886 	clr	c
      000290 74 06            [12]  887 	mov	a,#0x06
      000292 9E               [12]  888 	subb	a,r6
      000293 E4               [12]  889 	clr	a
      000294 9F               [12]  890 	subb	a,r7
      000295 40 3C            [24]  891 	jc	00114$
      000297 EE               [12]  892 	mov	a,r6
      000298 2E               [12]  893 	add	a,r6
                                    894 ;	./src/main.c:197: for(int a = 0; a <8; a++)
      000299 90 02 9D         [24]  895 	mov	dptr,#00131$
      00029C 73               [24]  896 	jmp	@a+dptr
      00029D                        897 00131$:
      00029D 80 34            [24]  898 	sjmp	00114$
      00029F 80 32            [24]  899 	sjmp	00114$
      0002A1 80 30            [24]  900 	sjmp	00114$
      0002A3 80 2E            [24]  901 	sjmp	00114$
      0002A5 80 2C            [24]  902 	sjmp	00114$
      0002A7 80 02            [24]  903 	sjmp	00119$
      0002A9 80 28            [24]  904 	sjmp	00114$
      0002AB                        905 00119$:
      0002AB 7E 00            [12]  906 	mov	r6,#0x00
      0002AD 7F 00            [12]  907 	mov	r7,#0x00
      0002AF                        908 00112$:
      0002AF C3               [12]  909 	clr	c
      0002B0 EE               [12]  910 	mov	a,r6
      0002B1 94 08            [12]  911 	subb	a,#0x08
      0002B3 EF               [12]  912 	mov	a,r7
      0002B4 64 80            [12]  913 	xrl	a,#0x80
      0002B6 94 80            [12]  914 	subb	a,#0x80
      0002B8 50 0D            [24]  915 	jnc	00107$
                                    916 ;	./src/main.c:198: display[a] = 0x00;
      0002BA EE               [12]  917 	mov	a,r6
      0002BB 24 44            [12]  918 	add	a,#_display
      0002BD F8               [12]  919 	mov	r0,a
      0002BE 76 00            [12]  920 	mov	@r0,#0x00
                                    921 ;	./src/main.c:197: for(int a = 0; a <8; a++)
      0002C0 0E               [12]  922 	inc	r6
      0002C1 BE 00 EB         [24]  923 	cjne	r6,#0x00,00112$
      0002C4 0F               [12]  924 	inc	r7
      0002C5 80 E8            [24]  925 	sjmp	00112$
      0002C7                        926 00107$:
                                    927 ;	./src/main.c:199: Writesingle7219(1,0x01,0x08);
      0002C7 75 4E 01         [24]  928 	mov	_Writesingle7219_PARM_2,#0x01
      0002CA 75 4F 08         [24]  929 	mov	_Writesingle7219_PARM_3,#0x08
      0002CD 75 82 01         [24]  930 	mov	dpl,#0x01
                                    931 ;	./src/main.c:206: }
                                    932 ;	./src/main.c:207: }
      0002D0 02 00 DC         [24]  933 	ljmp	_Writesingle7219
      0002D3                        934 00114$:
      0002D3 22               [24]  935 	ret
                                    936 ;------------------------------------------------------------
                                    937 ;Allocation info for local variables in function 'main'
                                    938 ;------------------------------------------------------------
                                    939 ;i                         Allocated to registers r6 r7 
                                    940 ;i                         Allocated to registers r6 r7 
                                    941 ;------------------------------------------------------------
                                    942 ;	./src/main.c:229: void main(void)
                                    943 ;	-----------------------------------------
                                    944 ;	 function main
                                    945 ;	-----------------------------------------
      0002D4                        946 _main:
                                    947 ;	./src/main.c:232: Initial();
      0002D4 12 01 21         [24]  948 	lcall	_Initial
                                    949 ;	./src/main.c:233: for (int i = 0; i < 10; i++)
      0002D7 7E 00            [12]  950 	mov	r6,#0x00
      0002D9 7F 00            [12]  951 	mov	r7,#0x00
      0002DB                        952 00123$:
      0002DB C3               [12]  953 	clr	c
      0002DC EE               [12]  954 	mov	a,r6
      0002DD 94 0A            [12]  955 	subb	a,#0x0a
      0002DF EF               [12]  956 	mov	a,r7
      0002E0 64 80            [12]  957 	xrl	a,#0x80
      0002E2 94 80            [12]  958 	subb	a,#0x80
      0002E4 50 27            [24]  959 	jnc	00101$
                                    960 ;	./src/main.c:235: curINPUT[i] = LEVEL_HIGH;
      0002E6 EE               [12]  961 	mov	a,r6
      0002E7 2E               [12]  962 	add	a,r6
      0002E8 FC               [12]  963 	mov	r4,a
      0002E9 EF               [12]  964 	mov	a,r7
      0002EA 33               [12]  965 	rlc	a
      0002EB EC               [12]  966 	mov	a,r4
      0002EC 24 08            [12]  967 	add	a,#_curINPUT
      0002EE F8               [12]  968 	mov	r0,a
      0002EF 76 01            [12]  969 	mov	@r0,#0x01
      0002F1 08               [12]  970 	inc	r0
      0002F2 76 00            [12]  971 	mov	@r0,#0x00
                                    972 ;	./src/main.c:236: state[i] = BTN_RELEASED;
      0002F4 EC               [12]  973 	mov	a,r4
      0002F5 24 1C            [12]  974 	add	a,#_state
      0002F7 F8               [12]  975 	mov	r0,a
      0002F8 76 00            [12]  976 	mov	@r0,#0x00
      0002FA 08               [12]  977 	inc	r0
      0002FB 76 00            [12]  978 	mov	@r0,#0x00
                                    979 ;	./src/main.c:237: prestate[i] = BTN_RELEASED;
      0002FD EC               [12]  980 	mov	a,r4
      0002FE 24 30            [12]  981 	add	a,#_prestate
      000300 F8               [12]  982 	mov	r0,a
      000301 76 00            [12]  983 	mov	@r0,#0x00
      000303 08               [12]  984 	inc	r0
      000304 76 00            [12]  985 	mov	@r0,#0x00
                                    986 ;	./src/main.c:233: for (int i = 0; i < 10; i++)
      000306 0E               [12]  987 	inc	r6
      000307 BE 00 D1         [24]  988 	cjne	r6,#0x00,00123$
      00030A 0F               [12]  989 	inc	r7
      00030B 80 CE            [24]  990 	sjmp	00123$
      00030D                        991 00101$:
                                    992 ;	./src/main.c:239: func_cal(5);
      00030D 90 00 05         [24]  993 	mov	dptr,#0x0005
      000310 12 02 8B         [24]  994 	lcall	_func_cal
                                    995 ;	./src/main.c:241: while(1)
      000313                        996 00120$:
                                    997 ;	./src/main.c:243: delay_ms(20);
      000313 90 00 14         [24]  998 	mov	dptr,#0x0014
      000316 12 04 0C         [24]  999 	lcall	_delay_ms
                                   1000 ;	./src/main.c:245: read_curINPUT();
      000319 12 01 E1         [24] 1001 	lcall	_read_curINPUT
                                   1002 ;	./src/main.c:246: for (int i = 0; i < 10; i++)
      00031C 7E 00            [12] 1003 	mov	r6,#0x00
      00031E 7F 00            [12] 1004 	mov	r7,#0x00
      000320                       1005 00126$:
      000320 C3               [12] 1006 	clr	c
      000321 EE               [12] 1007 	mov	a,r6
      000322 94 0A            [12] 1008 	subb	a,#0x0a
      000324 EF               [12] 1009 	mov	a,r7
      000325 64 80            [12] 1010 	xrl	a,#0x80
      000327 94 80            [12] 1011 	subb	a,#0x80
      000329 50 E8            [24] 1012 	jnc	00120$
                                   1013 ;	./src/main.c:249: switch (state[i])
      00032B EE               [12] 1014 	mov	a,r6
      00032C 2E               [12] 1015 	add	a,r6
      00032D FC               [12] 1016 	mov	r4,a
      00032E EF               [12] 1017 	mov	a,r7
      00032F 33               [12] 1018 	rlc	a
      000330 FD               [12] 1019 	mov	r5,a
      000331 EC               [12] 1020 	mov	a,r4
      000332 24 1C            [12] 1021 	add	a,#_state
      000334 F9               [12] 1022 	mov	r1,a
      000335 87 02            [24] 1023 	mov	ar2,@r1
      000337 09               [12] 1024 	inc	r1
      000338 87 03            [24] 1025 	mov	ar3,@r1
      00033A 19               [12] 1026 	dec	r1
      00033B BA 00 05         [24] 1027 	cjne	r2,#0x00,00186$
      00033E BB 00 02         [24] 1028 	cjne	r3,#0x00,00186$
      000341 80 10            [24] 1029 	sjmp	00102$
      000343                       1030 00186$:
      000343 BA 01 05         [24] 1031 	cjne	r2,#0x01,00187$
      000346 BB 00 02         [24] 1032 	cjne	r3,#0x00,00187$
      000349 80 1E            [24] 1033 	sjmp	00105$
      00034B                       1034 00187$:
                                   1035 ;	./src/main.c:251: case BTN_RELEASED:
      00034B BA 02 55         [24] 1036 	cjne	r2,#0x02,00114$
      00034E BB 00 52         [24] 1037 	cjne	r3,#0x00,00114$
      000351 80 34            [24] 1038 	sjmp	00109$
      000353                       1039 00102$:
                                   1040 ;	./src/main.c:252: if (curINPUT[i] == LEVEL_LOW)
      000353 EC               [12] 1041 	mov	a,r4
      000354 24 08            [12] 1042 	add	a,#_curINPUT
      000356 F8               [12] 1043 	mov	r0,a
      000357 86 02            [24] 1044 	mov	ar2,@r0
      000359 08               [12] 1045 	inc	r0
      00035A 86 03            [24] 1046 	mov	ar3,@r0
      00035C 18               [12] 1047 	dec	r0
      00035D EA               [12] 1048 	mov	a,r2
      00035E 4B               [12] 1049 	orl	a,r3
      00035F 70 42            [24] 1050 	jnz	00114$
                                   1051 ;	./src/main.c:253: state[i] = BTN_DEBOUNCED;
      000361 77 01            [12] 1052 	mov	@r1,#0x01
      000363 09               [12] 1053 	inc	r1
      000364 77 00            [12] 1054 	mov	@r1,#0x00
      000366 19               [12] 1055 	dec	r1
                                   1056 ;	./src/main.c:254: break;
                                   1057 ;	./src/main.c:255: case BTN_DEBOUNCED:
      000367 80 3A            [24] 1058 	sjmp	00114$
      000369                       1059 00105$:
                                   1060 ;	./src/main.c:256: if (curINPUT[i] == LEVEL_LOW)
      000369 EC               [12] 1061 	mov	a,r4
      00036A 24 08            [12] 1062 	add	a,#_curINPUT
      00036C F8               [12] 1063 	mov	r0,a
      00036D 86 02            [24] 1064 	mov	ar2,@r0
      00036F 08               [12] 1065 	inc	r0
      000370 86 03            [24] 1066 	mov	ar3,@r0
      000372 18               [12] 1067 	dec	r0
      000373 EA               [12] 1068 	mov	a,r2
      000374 4B               [12] 1069 	orl	a,r3
      000375 70 08            [24] 1070 	jnz	00107$
                                   1071 ;	./src/main.c:257: state[i] = BTN_PRESSED;
      000377 77 02            [12] 1072 	mov	@r1,#0x02
      000379 09               [12] 1073 	inc	r1
      00037A 77 00            [12] 1074 	mov	@r1,#0x00
      00037C 19               [12] 1075 	dec	r1
      00037D 80 24            [24] 1076 	sjmp	00114$
      00037F                       1077 00107$:
                                   1078 ;	./src/main.c:259: state[i] = BTN_RELEASED;
      00037F 77 00            [12] 1079 	mov	@r1,#0x00
      000381 09               [12] 1080 	inc	r1
      000382 77 00            [12] 1081 	mov	@r1,#0x00
      000384 19               [12] 1082 	dec	r1
                                   1083 ;	./src/main.c:260: break;
                                   1084 ;	./src/main.c:261: case BTN_PRESSED:
      000385 80 1C            [24] 1085 	sjmp	00114$
      000387                       1086 00109$:
                                   1087 ;	./src/main.c:262: if (curINPUT[i] == LEVEL_LOW)
      000387 EC               [12] 1088 	mov	a,r4
      000388 24 08            [12] 1089 	add	a,#_curINPUT
      00038A F8               [12] 1090 	mov	r0,a
      00038B 86 04            [24] 1091 	mov	ar4,@r0
      00038D 08               [12] 1092 	inc	r0
      00038E 86 05            [24] 1093 	mov	ar5,@r0
      000390 18               [12] 1094 	dec	r0
      000391 EC               [12] 1095 	mov	a,r4
      000392 4D               [12] 1096 	orl	a,r5
      000393 70 08            [24] 1097 	jnz	00111$
                                   1098 ;	./src/main.c:263: state[i] = BTN_PRESSED;
      000395 77 02            [12] 1099 	mov	@r1,#0x02
      000397 09               [12] 1100 	inc	r1
      000398 77 00            [12] 1101 	mov	@r1,#0x00
      00039A 19               [12] 1102 	dec	r1
      00039B 80 06            [24] 1103 	sjmp	00114$
      00039D                       1104 00111$:
                                   1105 ;	./src/main.c:265: state[i] = BTN_RELEASED;
      00039D 77 00            [12] 1106 	mov	@r1,#0x00
      00039F 09               [12] 1107 	inc	r1
      0003A0 77 00            [12] 1108 	mov	@r1,#0x00
      0003A2 19               [12] 1109 	dec	r1
                                   1110 ;	./src/main.c:269: }
      0003A3                       1111 00114$:
                                   1112 ;	./src/main.c:271: if (((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED))){
      0003A3 EE               [12] 1113 	mov	a,r6
      0003A4 2E               [12] 1114 	add	a,r6
      0003A5 FC               [12] 1115 	mov	r4,a
      0003A6 EF               [12] 1116 	mov	a,r7
      0003A7 33               [12] 1117 	rlc	a
      0003A8 FD               [12] 1118 	mov	r5,a
      0003A9 EC               [12] 1119 	mov	a,r4
      0003AA 24 1C            [12] 1120 	add	a,#_state
      0003AC F9               [12] 1121 	mov	r1,a
      0003AD 87 02            [24] 1122 	mov	ar2,@r1
      0003AF 09               [12] 1123 	inc	r1
      0003B0 87 03            [24] 1124 	mov	ar3,@r1
      0003B2 19               [12] 1125 	dec	r1
      0003B3 EA               [12] 1126 	mov	a,r2
      0003B4 4B               [12] 1127 	orl	a,r3
      0003B5 70 34            [24] 1128 	jnz	00116$
      0003B7 EC               [12] 1129 	mov	a,r4
      0003B8 24 30            [12] 1130 	add	a,#_prestate
      0003BA F9               [12] 1131 	mov	r1,a
      0003BB 87 04            [24] 1132 	mov	ar4,@r1
      0003BD 09               [12] 1133 	inc	r1
      0003BE 87 05            [24] 1134 	mov	ar5,@r1
      0003C0 19               [12] 1135 	dec	r1
      0003C1 BC 02 27         [24] 1136 	cjne	r4,#0x02,00116$
      0003C4 BD 00 24         [24] 1137 	cjne	r5,#0x00,00116$
                                   1138 ;	./src/main.c:272: sequence();
      0003C7 C0 07            [24] 1139 	push	ar7
      0003C9 C0 06            [24] 1140 	push	ar6
      0003CB 12 02 5A         [24] 1141 	lcall	_sequence
      0003CE D0 06            [24] 1142 	pop	ar6
      0003D0 D0 07            [24] 1143 	pop	ar7
                                   1144 ;	./src/main.c:273: display[0] = display_seg[i];
      0003D2 EE               [12] 1145 	mov	a,r6
      0003D3 24 50            [12] 1146 	add	a,#_display_seg
      0003D5 F9               [12] 1147 	mov	r1,a
      0003D6 87 05            [24] 1148 	mov	ar5,@r1
      0003D8 8D 44            [24] 1149 	mov	_display,r5
                                   1150 ;	./src/main.c:274: draw(display);
      0003DA 90 00 44         [24] 1151 	mov	dptr,#_display
      0003DD 75 F0 40         [24] 1152 	mov	b,#0x40
      0003E0 C0 07            [24] 1153 	push	ar7
      0003E2 C0 06            [24] 1154 	push	ar6
      0003E4 12 01 63         [24] 1155 	lcall	_draw
      0003E7 D0 06            [24] 1156 	pop	ar6
      0003E9 D0 07            [24] 1157 	pop	ar7
      0003EB                       1158 00116$:
                                   1159 ;	./src/main.c:277: prestate[i] = state[i];
      0003EB EE               [12] 1160 	mov	a,r6
      0003EC 2E               [12] 1161 	add	a,r6
      0003ED FC               [12] 1162 	mov	r4,a
      0003EE EF               [12] 1163 	mov	a,r7
      0003EF 33               [12] 1164 	rlc	a
      0003F0 EC               [12] 1165 	mov	a,r4
      0003F1 24 30            [12] 1166 	add	a,#_prestate
      0003F3 F9               [12] 1167 	mov	r1,a
      0003F4 EC               [12] 1168 	mov	a,r4
      0003F5 24 1C            [12] 1169 	add	a,#_state
      0003F7 F8               [12] 1170 	mov	r0,a
      0003F8 86 04            [24] 1171 	mov	ar4,@r0
      0003FA 08               [12] 1172 	inc	r0
      0003FB 86 05            [24] 1173 	mov	ar5,@r0
      0003FD 18               [12] 1174 	dec	r0
      0003FE A7 04            [24] 1175 	mov	@r1,ar4
      000400 09               [12] 1176 	inc	r1
      000401 A7 05            [24] 1177 	mov	@r1,ar5
      000403 19               [12] 1178 	dec	r1
                                   1179 ;	./src/main.c:246: for (int i = 0; i < 10; i++)
      000404 0E               [12] 1180 	inc	r6
      000405 BE 00 01         [24] 1181 	cjne	r6,#0x00,00195$
      000408 0F               [12] 1182 	inc	r7
      000409                       1183 00195$:
                                   1184 ;	./src/main.c:282: }
      000409 02 03 20         [24] 1185 	ljmp	00126$
                                   1186 	.area CSEG    (CODE)
                                   1187 	.area CONST   (CODE)
                                   1188 	.area XINIT   (CODE)
                                   1189 	.area CABS    (ABS,CODE)
