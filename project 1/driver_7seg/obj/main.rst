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
                                    114 	.globl _Write7219_PARM_2
                                    115 	.globl _op_cnt
                                    116 	.globl _patt1
                                    117 	.globl _patt
                                    118 	.globl _display
                                    119 	.globl _prestate
                                    120 	.globl _state
                                    121 	.globl _curINPUT
                                    122 	.globl _sendbyte
                                    123 	.globl _Write7219
                                    124 	.globl _Initial
                                    125 	.globl _draw
                                    126 	.globl _scan_row
                                    127 ;--------------------------------------------------------
                                    128 ; special function registers
                                    129 ;--------------------------------------------------------
                                    130 	.area RSEG    (ABS,DATA)
      000000                        131 	.org 0x0000
                           000080   132 _P0	=	0x0080
                           000081   133 _SP	=	0x0081
                           000082   134 _DPL	=	0x0082
                           000083   135 _DPH	=	0x0083
                           000087   136 _PCON	=	0x0087
                           000088   137 _TCON	=	0x0088
                           000089   138 _TMOD	=	0x0089
                           00008A   139 _TL0	=	0x008a
                           00008B   140 _TL1	=	0x008b
                           00008C   141 _TH0	=	0x008c
                           00008D   142 _TH1	=	0x008d
                           000090   143 _P1	=	0x0090
                           000098   144 _SCON	=	0x0098
                           000099   145 _SBUF	=	0x0099
                           0000A0   146 _P2	=	0x00a0
                           0000A8   147 _IE	=	0x00a8
                           0000B0   148 _P3	=	0x00b0
                           0000B8   149 _IP	=	0x00b8
                           0000D0   150 _PSW	=	0x00d0
                           0000E0   151 _ACC	=	0x00e0
                           0000F0   152 _B	=	0x00f0
                                    153 ;--------------------------------------------------------
                                    154 ; special function bits
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0_0	=	0x0080
                           000081   159 _P0_1	=	0x0081
                           000082   160 _P0_2	=	0x0082
                           000083   161 _P0_3	=	0x0083
                           000084   162 _P0_4	=	0x0084
                           000085   163 _P0_5	=	0x0085
                           000086   164 _P0_6	=	0x0086
                           000087   165 _P0_7	=	0x0087
                           000088   166 _IT0	=	0x0088
                           000089   167 _IE0	=	0x0089
                           00008A   168 _IT1	=	0x008a
                           00008B   169 _IE1	=	0x008b
                           00008C   170 _TR0	=	0x008c
                           00008D   171 _TF0	=	0x008d
                           00008E   172 _TR1	=	0x008e
                           00008F   173 _TF1	=	0x008f
                           000090   174 _P1_0	=	0x0090
                           000091   175 _P1_1	=	0x0091
                           000092   176 _P1_2	=	0x0092
                           000093   177 _P1_3	=	0x0093
                           000094   178 _P1_4	=	0x0094
                           000095   179 _P1_5	=	0x0095
                           000096   180 _P1_6	=	0x0096
                           000097   181 _P1_7	=	0x0097
                           000098   182 _RI	=	0x0098
                           000099   183 _TI	=	0x0099
                           00009A   184 _RB8	=	0x009a
                           00009B   185 _TB8	=	0x009b
                           00009C   186 _REN	=	0x009c
                           00009D   187 _SM2	=	0x009d
                           00009E   188 _SM1	=	0x009e
                           00009F   189 _SM0	=	0x009f
                           0000A0   190 _P2_0	=	0x00a0
                           0000A1   191 _P2_1	=	0x00a1
                           0000A2   192 _P2_2	=	0x00a2
                           0000A3   193 _P2_3	=	0x00a3
                           0000A4   194 _P2_4	=	0x00a4
                           0000A5   195 _P2_5	=	0x00a5
                           0000A6   196 _P2_6	=	0x00a6
                           0000A7   197 _P2_7	=	0x00a7
                           0000A8   198 _EX0	=	0x00a8
                           0000A9   199 _ET0	=	0x00a9
                           0000AA   200 _EX1	=	0x00aa
                           0000AB   201 _ET1	=	0x00ab
                           0000AC   202 _ES	=	0x00ac
                           0000AF   203 _EA	=	0x00af
                           0000B0   204 _P3_0	=	0x00b0
                           0000B1   205 _P3_1	=	0x00b1
                           0000B2   206 _P3_2	=	0x00b2
                           0000B3   207 _P3_3	=	0x00b3
                           0000B4   208 _P3_4	=	0x00b4
                           0000B5   209 _P3_5	=	0x00b5
                           0000B6   210 _P3_6	=	0x00b6
                           0000B7   211 _P3_7	=	0x00b7
                           0000B0   212 _RXD	=	0x00b0
                           0000B1   213 _TXD	=	0x00b1
                           0000B2   214 _INT0	=	0x00b2
                           0000B3   215 _INT1	=	0x00b3
                           0000B4   216 _T0	=	0x00b4
                           0000B5   217 _T1	=	0x00b5
                           0000B6   218 _WR	=	0x00b6
                           0000B7   219 _RD	=	0x00b7
                           0000B8   220 _PX0	=	0x00b8
                           0000B9   221 _PT0	=	0x00b9
                           0000BA   222 _PX1	=	0x00ba
                           0000BB   223 _PT1	=	0x00bb
                           0000BC   224 _PS	=	0x00bc
                           0000D0   225 _P	=	0x00d0
                           0000D1   226 _F1	=	0x00d1
                           0000D2   227 _OV	=	0x00d2
                           0000D3   228 _RS0	=	0x00d3
                           0000D4   229 _RS1	=	0x00d4
                           0000D5   230 _F0	=	0x00d5
                           0000D6   231 _AC	=	0x00d6
                           0000D7   232 _CY	=	0x00d7
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable register banks
                                    235 ;--------------------------------------------------------
                                    236 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        237 	.ds 8
                                    238 ;--------------------------------------------------------
                                    239 ; internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area DSEG    (DATA)
      000008                        242 _curINPUT::
      000008                        243 	.ds 28
      000024                        244 _state::
      000024                        245 	.ds 28
      000040                        246 _prestate::
      000040                        247 	.ds 28
      00005C                        248 _display::
      00005C                        249 	.ds 8
      000064                        250 _patt::
      000064                        251 	.ds 1
      000065                        252 _patt1::
      000065                        253 	.ds 1
      000066                        254 _op_cnt::
      000066                        255 	.ds 2
      000068                        256 _Write7219_PARM_2:
      000068                        257 	.ds 1
      000069                        258 _display_seg::
      000069                        259 	.ds 11
                                    260 ;--------------------------------------------------------
                                    261 ; overlayable items in internal ram
                                    262 ;--------------------------------------------------------
                                    263 	.area	OSEG    (OVR,DATA)
      000074                        264 _sendbyte_PARM_2:
      000074                        265 	.ds 1
                                    266 	.area	OSEG    (OVR,DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; Stack segment in internal ram
                                    269 ;--------------------------------------------------------
                                    270 	.area SSEG
      000075                        271 __start__stack:
      000075                        272 	.ds	1
                                    273 
                                    274 ;--------------------------------------------------------
                                    275 ; indirectly addressable internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area ISEG    (DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; absolute internal ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area IABS    (ABS,DATA)
                                    282 	.area IABS    (ABS,DATA)
                                    283 ;--------------------------------------------------------
                                    284 ; bit data
                                    285 ;--------------------------------------------------------
                                    286 	.area BSEG    (BIT)
                                    287 ;--------------------------------------------------------
                                    288 ; paged external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area PSEG    (PAG,XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; uninitialized external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XSEG    (XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; absolute external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XABS    (ABS,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; initialized external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XISEG   (XDATA)
                                    303 	.area HOME    (CODE)
                                    304 	.area GSINIT0 (CODE)
                                    305 	.area GSINIT1 (CODE)
                                    306 	.area GSINIT2 (CODE)
                                    307 	.area GSINIT3 (CODE)
                                    308 	.area GSINIT4 (CODE)
                                    309 	.area GSINIT5 (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.area GSFINAL (CODE)
                                    312 	.area CSEG    (CODE)
                                    313 ;--------------------------------------------------------
                                    314 ; interrupt vector
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
      000000                        317 __interrupt_vect:
      000000 02 00 06         [24]  318 	ljmp	__sdcc_gsinit_startup
                                    319 ;--------------------------------------------------------
                                    320 ; global & static initialisations
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.globl __sdcc_gsinit_startup
                                    327 	.globl __sdcc_program_startup
                                    328 	.globl __start__stack
                                    329 	.globl __mcs51_genXINIT
                                    330 	.globl __mcs51_genXRAMCLEAR
                                    331 	.globl __mcs51_genRAMCLEAR
                                    332 ;	./src/main.c:52: unsigned char patt = 0x08,patt1; // led value
      00005F 75 64 08         [24]  333 	mov	_patt,#0x08
                                    334 ;	./src/main.c:53: unsigned int op_cnt = 0;
      000062 E4               [12]  335 	clr	a
      000063 F5 66            [12]  336 	mov	_op_cnt,a
      000065 F5 67            [12]  337 	mov	(_op_cnt + 1),a
                                    338 ;	./src/main.c:209: unsigned char display_seg[] = {
      000067 75 69 30         [24]  339 	mov	_display_seg,#0x30
      00006A 75 6A 6D         [24]  340 	mov	(_display_seg + 0x0001),#0x6d
      00006D 75 6B 79         [24]  341 	mov	(_display_seg + 0x0002),#0x79
      000070 75 6C 33         [24]  342 	mov	(_display_seg + 0x0003),#0x33
      000073 75 6D 5B         [24]  343 	mov	(_display_seg + 0x0004),#0x5b
      000076 75 6E 5F         [24]  344 	mov	(_display_seg + 0x0005),#0x5f
      000079 75 6F 70         [24]  345 	mov	(_display_seg + 0x0006),#0x70
      00007C 75 70 7F         [24]  346 	mov	(_display_seg + 0x0007),#0x7f
      00007F 75 71 7B         [24]  347 	mov	(_display_seg + 0x0008),#0x7b
      000082 75 72 7E         [24]  348 	mov	(_display_seg + 0x0009),#0x7e
      000085 75 73 4F         [24]  349 	mov	(_display_seg + 0x000a),#0x4f
                                    350 	.area GSFINAL (CODE)
      000088 02 00 03         [24]  351 	ljmp	__sdcc_program_startup
                                    352 ;--------------------------------------------------------
                                    353 ; Home
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area HOME    (CODE)
      000003                        357 __sdcc_program_startup:
      000003 02 03 1D         [24]  358 	ljmp	_main
                                    359 ;	return from main will return to caller
                                    360 ;--------------------------------------------------------
                                    361 ; code
                                    362 ;--------------------------------------------------------
                                    363 	.area CSEG    (CODE)
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'sendbyte'
                                    366 ;------------------------------------------------------------
                                    367 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    368 ;address                   Allocated to registers r7 
                                    369 ;i                         Allocated to registers r6 
                                    370 ;------------------------------------------------------------
                                    371 ;	./src/main.c:56: void sendbyte(unsigned char address,unsigned char dat){
                                    372 ;	-----------------------------------------
                                    373 ;	 function sendbyte
                                    374 ;	-----------------------------------------
      00008B                        375 _sendbyte:
                           000007   376 	ar7 = 0x07
                           000006   377 	ar6 = 0x06
                           000005   378 	ar5 = 0x05
                           000004   379 	ar4 = 0x04
                           000003   380 	ar3 = 0x03
                           000002   381 	ar2 = 0x02
                           000001   382 	ar1 = 0x01
                           000000   383 	ar0 = 0x00
      00008B AF 82            [24]  384 	mov	r7,dpl
                                    385 ;	./src/main.c:58: for (i=0;i<8;i++)        //get last 8 bits(address)
      00008D 7E 00            [12]  386 	mov	r6,#0x00
      00008F                        387 00103$:
                                    388 ;	./src/main.c:60: CLK=0;
                                    389 ;	assignBit
      00008F C2 A0            [12]  390 	clr	_P2_0
                                    391 ;	./src/main.c:61: DIN=(address&0x80);   //get msb and shift left
      000091 EF               [12]  392 	mov	a,r7
      000092 23               [12]  393 	rl	a
      000093 54 01            [12]  394 	anl	a,#0x01
                                    395 ;	assignBit
      000095 24 FF            [12]  396 	add	a,#0xff
      000097 92 A2            [24]  397 	mov	_P2_2,c
                                    398 ;	./src/main.c:62: address<<=1;
      000099 8F 05            [24]  399 	mov	ar5,r7
      00009B ED               [12]  400 	mov	a,r5
      00009C 2D               [12]  401 	add	a,r5
      00009D FF               [12]  402 	mov	r7,a
                                    403 ;	./src/main.c:63: CLK=1;
                                    404 ;	assignBit
      00009E D2 A0            [12]  405 	setb	_P2_0
                                    406 ;	./src/main.c:58: for (i=0;i<8;i++)        //get last 8 bits(address)
      0000A0 0E               [12]  407 	inc	r6
      0000A1 BE 08 00         [24]  408 	cjne	r6,#0x08,00123$
      0000A4                        409 00123$:
      0000A4 40 E9            [24]  410 	jc	00103$
                                    411 ;	./src/main.c:65: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000A6 7F 00            [12]  412 	mov	r7,#0x00
      0000A8                        413 00105$:
                                    414 ;	./src/main.c:67: CLK=0;
                                    415 ;	assignBit
      0000A8 C2 A0            [12]  416 	clr	_P2_0
                                    417 ;	./src/main.c:68: DIN=(dat&0x80);    //get msb and shit left
      0000AA E5 74            [12]  418 	mov	a,_sendbyte_PARM_2
      0000AC 23               [12]  419 	rl	a
      0000AD 54 01            [12]  420 	anl	a,#0x01
                                    421 ;	assignBit
      0000AF 24 FF            [12]  422 	add	a,#0xff
      0000B1 92 A2            [24]  423 	mov	_P2_2,c
                                    424 ;	./src/main.c:69: dat<<=1;
      0000B3 E5 74            [12]  425 	mov	a,_sendbyte_PARM_2
      0000B5 25 E0            [12]  426 	add	a,acc
      0000B7 F5 74            [12]  427 	mov	_sendbyte_PARM_2,a
                                    428 ;	./src/main.c:70: CLK=1;
                                    429 ;	assignBit
      0000B9 D2 A0            [12]  430 	setb	_P2_0
                                    431 ;	./src/main.c:65: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000BB 0F               [12]  432 	inc	r7
      0000BC BF 08 00         [24]  433 	cjne	r7,#0x08,00125$
      0000BF                        434 00125$:
      0000BF 40 E7            [24]  435 	jc	00105$
                                    436 ;	./src/main.c:72: }
      0000C1 22               [24]  437 	ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'Write7219'
                                    440 ;------------------------------------------------------------
                                    441 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    442 ;address                   Allocated to registers r7 
                                    443 ;cnt                       Allocated to registers r6 
                                    444 ;------------------------------------------------------------
                                    445 ;	./src/main.c:75: void Write7219(unsigned char address,unsigned char dat)
                                    446 ;	-----------------------------------------
                                    447 ;	 function Write7219
                                    448 ;	-----------------------------------------
      0000C2                        449 _Write7219:
      0000C2 AF 82            [24]  450 	mov	r7,dpl
                                    451 ;	./src/main.c:78: LOAD=0;
                                    452 ;	assignBit
      0000C4 C2 A1            [12]  453 	clr	_P2_1
                                    454 ;	./src/main.c:79: for(cnt=1;cnt<=matrixnum;cnt++)      //send address and data according to the nuber of your matrix
      0000C6 7E 01            [12]  455 	mov	r6,#0x01
      0000C8                        456 00102$:
                                    457 ;	./src/main.c:81: sendbyte(address,dat);
      0000C8 85 68 74         [24]  458 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000CB 8F 82            [24]  459 	mov	dpl,r7
      0000CD C0 07            [24]  460 	push	ar7
      0000CF C0 06            [24]  461 	push	ar6
      0000D1 12 00 8B         [24]  462 	lcall	_sendbyte
      0000D4 D0 06            [24]  463 	pop	ar6
      0000D6 D0 07            [24]  464 	pop	ar7
                                    465 ;	./src/main.c:79: for(cnt=1;cnt<=matrixnum;cnt++)      //send address and data according to the nuber of your matrix
      0000D8 0E               [12]  466 	inc	r6
      0000D9 EE               [12]  467 	mov	a,r6
      0000DA 24 FE            [12]  468 	add	a,#0xff - 0x01
      0000DC 50 EA            [24]  469 	jnc	00102$
                                    470 ;	./src/main.c:83: LOAD=1;                              //after the load becomes 1, will the 7-segment display display
                                    471 ;	assignBit
      0000DE D2 A1            [12]  472 	setb	_P2_1
                                    473 ;	./src/main.c:84: }
      0000E0 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'Initial'
                                    477 ;------------------------------------------------------------
                                    478 ;i                         Allocated to registers r7 
                                    479 ;------------------------------------------------------------
                                    480 ;	./src/main.c:87: void Initial(void)
                                    481 ;	-----------------------------------------
                                    482 ;	 function Initial
                                    483 ;	-----------------------------------------
      0000E1                        484 _Initial:
                                    485 ;	./src/main.c:90: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      0000E1 75 68 01         [24]  486 	mov	_Write7219_PARM_2,#0x01
      0000E4 75 82 0C         [24]  487 	mov	dpl,#0x0c
      0000E7 12 00 C2         [24]  488 	lcall	_Write7219
                                    489 ;	./src/main.c:91: Write7219(DISPLAY_TEST,0x00);
      0000EA 75 68 00         [24]  490 	mov	_Write7219_PARM_2,#0x00
      0000ED 75 82 0F         [24]  491 	mov	dpl,#0x0f
      0000F0 12 00 C2         [24]  492 	lcall	_Write7219
                                    493 ;	./src/main.c:92: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      0000F3 75 68 00         [24]  494 	mov	_Write7219_PARM_2,#0x00
      0000F6 75 82 09         [24]  495 	mov	dpl,#0x09
      0000F9 12 00 C2         [24]  496 	lcall	_Write7219
                                    497 ;	./src/main.c:93: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      0000FC 75 68 07         [24]  498 	mov	_Write7219_PARM_2,#0x07
      0000FF 75 82 0B         [24]  499 	mov	dpl,#0x0b
      000102 12 00 C2         [24]  500 	lcall	_Write7219
                                    501 ;	./src/main.c:94: Write7219(INTENSITY,0x00);         //set up intensity
      000105 75 68 00         [24]  502 	mov	_Write7219_PARM_2,#0x00
      000108 75 82 0A         [24]  503 	mov	dpl,#0x0a
      00010B 12 00 C2         [24]  504 	lcall	_Write7219
                                    505 ;	./src/main.c:95: for(i=1;i<=8;i++){
      00010E 7F 01            [12]  506 	mov	r7,#0x01
      000110                        507 00102$:
                                    508 ;	./src/main.c:96: Write7219(i,0x00);   //turn off all LED
      000110 75 68 00         [24]  509 	mov	_Write7219_PARM_2,#0x00
      000113 8F 82            [24]  510 	mov	dpl,r7
      000115 C0 07            [24]  511 	push	ar7
      000117 12 00 C2         [24]  512 	lcall	_Write7219
      00011A D0 07            [24]  513 	pop	ar7
                                    514 ;	./src/main.c:95: for(i=1;i<=8;i++){
      00011C 0F               [12]  515 	inc	r7
      00011D EF               [12]  516 	mov	a,r7
      00011E 24 F7            [12]  517 	add	a,#0xff - 0x08
      000120 50 EE            [24]  518 	jnc	00102$
                                    519 ;	./src/main.c:98: }
      000122 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'draw'
                                    523 ;------------------------------------------------------------
                                    524 ;picture                   Allocated to registers r5 r6 r7 
                                    525 ;i                         Allocated to registers r4 
                                    526 ;------------------------------------------------------------
                                    527 ;	./src/main.c:101: void draw(unsigned char *picture){
                                    528 ;	-----------------------------------------
                                    529 ;	 function draw
                                    530 ;	-----------------------------------------
      000123                        531 _draw:
      000123 AD 82            [24]  532 	mov	r5,dpl
      000125 AE 83            [24]  533 	mov	r6,dph
      000127 AF F0            [24]  534 	mov	r7,b
                                    535 ;	./src/main.c:103: for(i=1;i<=8;i++){
      000129 7C 01            [12]  536 	mov	r4,#0x01
      00012B                        537 00102$:
                                    538 ;	./src/main.c:104: Write7219(i,picture[i-1]);
      00012B 8C 02            [24]  539 	mov	ar2,r4
      00012D 7B 00            [12]  540 	mov	r3,#0x00
      00012F 1A               [12]  541 	dec	r2
      000130 BA FF 01         [24]  542 	cjne	r2,#0xff,00111$
      000133 1B               [12]  543 	dec	r3
      000134                        544 00111$:
      000134 EA               [12]  545 	mov	a,r2
      000135 2D               [12]  546 	add	a,r5
      000136 FA               [12]  547 	mov	r2,a
      000137 EB               [12]  548 	mov	a,r3
      000138 3E               [12]  549 	addc	a,r6
      000139 F9               [12]  550 	mov	r1,a
      00013A 8F 03            [24]  551 	mov	ar3,r7
      00013C 8A 82            [24]  552 	mov	dpl,r2
      00013E 89 83            [24]  553 	mov	dph,r1
      000140 8B F0            [24]  554 	mov	b,r3
      000142 12 04 86         [24]  555 	lcall	__gptrget
      000145 F5 68            [12]  556 	mov	_Write7219_PARM_2,a
      000147 8C 82            [24]  557 	mov	dpl,r4
      000149 C0 07            [24]  558 	push	ar7
      00014B C0 06            [24]  559 	push	ar6
      00014D C0 05            [24]  560 	push	ar5
      00014F C0 04            [24]  561 	push	ar4
      000151 12 00 C2         [24]  562 	lcall	_Write7219
      000154 D0 04            [24]  563 	pop	ar4
      000156 D0 05            [24]  564 	pop	ar5
      000158 D0 06            [24]  565 	pop	ar6
      00015A D0 07            [24]  566 	pop	ar7
                                    567 ;	./src/main.c:103: for(i=1;i<=8;i++){
      00015C 0C               [12]  568 	inc	r4
      00015D EC               [12]  569 	mov	a,r4
      00015E 24 F7            [12]  570 	add	a,#0xff - 0x08
      000160 50 C9            [24]  571 	jnc	00102$
                                    572 ;	./src/main.c:106: }
      000162 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'scan_row'
                                    576 ;------------------------------------------------------------
                                    577 ;row                       Allocated to registers r6 r7 
                                    578 ;------------------------------------------------------------
                                    579 ;	./src/main.c:108: void scan_row(unsigned int row)
                                    580 ;	-----------------------------------------
                                    581 ;	 function scan_row
                                    582 ;	-----------------------------------------
      000163                        583 _scan_row:
      000163 AE 82            [24]  584 	mov	r6,dpl
      000165 AF 83            [24]  585 	mov	r7,dph
                                    586 ;	./src/main.c:110: switch (row)
      000167 C3               [12]  587 	clr	c
      000168 74 03            [12]  588 	mov	a,#0x03
      00016A 9E               [12]  589 	subb	a,r6
      00016B E4               [12]  590 	clr	a
      00016C 9F               [12]  591 	subb	a,r7
      00016D 40 31            [24]  592 	jc	00107$
      00016F EE               [12]  593 	mov	a,r6
      000170 2E               [12]  594 	add	a,r6
                                    595 ;	./src/main.c:112: case 0:
      000171 90 01 75         [24]  596 	mov	dptr,#00114$
      000174 73               [24]  597 	jmp	@a+dptr
      000175                        598 00114$:
      000175 80 06            [24]  599 	sjmp	00101$
      000177 80 0D            [24]  600 	sjmp	00102$
      000179 80 14            [24]  601 	sjmp	00103$
      00017B 80 1B            [24]  602 	sjmp	00104$
      00017D                        603 00101$:
                                    604 ;	./src/main.c:113: OUTPUT1 = 0; // row1 output 0
                                    605 ;	assignBit
      00017D C2 86            [12]  606 	clr	_P0_6
                                    607 ;	./src/main.c:114: OUTPUT2 = 1; // row2 output 1
                                    608 ;	assignBit
      00017F D2 85            [12]  609 	setb	_P0_5
                                    610 ;	./src/main.c:115: OUTPUT3 = 1; // row3 output 1
                                    611 ;	assignBit
      000181 D2 84            [12]  612 	setb	_P0_4
                                    613 ;	./src/main.c:116: OUTPUT0 = 1; // row0 output 1
                                    614 ;	assignBit
      000183 D2 83            [12]  615 	setb	_P0_3
                                    616 ;	./src/main.c:117: break;
                                    617 ;	./src/main.c:118: case 1:
      000185 22               [24]  618 	ret
      000186                        619 00102$:
                                    620 ;	./src/main.c:119: OUTPUT1 = 1; // row1 output 1
                                    621 ;	assignBit
      000186 D2 86            [12]  622 	setb	_P0_6
                                    623 ;	./src/main.c:120: OUTPUT2 = 0; // row2 output 0
                                    624 ;	assignBit
      000188 C2 85            [12]  625 	clr	_P0_5
                                    626 ;	./src/main.c:121: OUTPUT3 = 1; // row3 output 1
                                    627 ;	assignBit
      00018A D2 84            [12]  628 	setb	_P0_4
                                    629 ;	./src/main.c:122: OUTPUT0 = 1; // row0 output 1
                                    630 ;	assignBit
      00018C D2 83            [12]  631 	setb	_P0_3
                                    632 ;	./src/main.c:123: break;
                                    633 ;	./src/main.c:124: case 2:
      00018E 22               [24]  634 	ret
      00018F                        635 00103$:
                                    636 ;	./src/main.c:125: OUTPUT1 = 1; // row1 output 1
                                    637 ;	assignBit
      00018F D2 86            [12]  638 	setb	_P0_6
                                    639 ;	./src/main.c:126: OUTPUT2 = 1; // row2 output 1
                                    640 ;	assignBit
      000191 D2 85            [12]  641 	setb	_P0_5
                                    642 ;	./src/main.c:127: OUTPUT3 = 0; // row3 output 0
                                    643 ;	assignBit
      000193 C2 84            [12]  644 	clr	_P0_4
                                    645 ;	./src/main.c:128: OUTPUT0 = 1; // row0 output 1
                                    646 ;	assignBit
      000195 D2 83            [12]  647 	setb	_P0_3
                                    648 ;	./src/main.c:129: break;
                                    649 ;	./src/main.c:130: case 3:
      000197 22               [24]  650 	ret
      000198                        651 00104$:
                                    652 ;	./src/main.c:131: OUTPUT1 = 1; // row1 output 1
                                    653 ;	assignBit
      000198 D2 86            [12]  654 	setb	_P0_6
                                    655 ;	./src/main.c:132: OUTPUT2 = 1; // row2 output 1
                                    656 ;	assignBit
      00019A D2 85            [12]  657 	setb	_P0_5
                                    658 ;	./src/main.c:133: OUTPUT3 = 1; // row3 output 1
                                    659 ;	assignBit
      00019C D2 84            [12]  660 	setb	_P0_4
                                    661 ;	./src/main.c:134: OUTPUT0 = 0; // row0 output 0
                                    662 ;	assignBit
      00019E C2 83            [12]  663 	clr	_P0_3
                                    664 ;	./src/main.c:138: }
      0001A0                        665 00107$:
                                    666 ;	./src/main.c:139: }
      0001A0 22               [24]  667 	ret
                                    668 ;------------------------------------------------------------
                                    669 ;Allocation info for local variables in function 'read_curINPUT'
                                    670 ;------------------------------------------------------------
                                    671 ;i                         Allocated to registers r6 r7 
                                    672 ;------------------------------------------------------------
                                    673 ;	./src/main.c:141: void read_curINPUT(void)
                                    674 ;	-----------------------------------------
                                    675 ;	 function read_curINPUT
                                    676 ;	-----------------------------------------
      0001A1                        677 _read_curINPUT:
                                    678 ;	./src/main.c:143: for (int i = 0; i < 4; i++)
      0001A1 7E 00            [12]  679 	mov	r6,#0x00
      0001A3 7F 00            [12]  680 	mov	r7,#0x00
      0001A5                        681 00106$:
      0001A5 C3               [12]  682 	clr	c
      0001A6 EE               [12]  683 	mov	a,r6
      0001A7 94 04            [12]  684 	subb	a,#0x04
      0001A9 EF               [12]  685 	mov	a,r7
      0001AA 64 80            [12]  686 	xrl	a,#0x80
      0001AC 94 80            [12]  687 	subb	a,#0x80
      0001AE 50 6C            [24]  688 	jnc	00104$
                                    689 ;	./src/main.c:145: scan_row(i);
      0001B0 8E 82            [24]  690 	mov	dpl,r6
      0001B2 8F 83            [24]  691 	mov	dph,r7
      0001B4 C0 07            [24]  692 	push	ar7
      0001B6 C0 06            [24]  693 	push	ar6
      0001B8 12 01 63         [24]  694 	lcall	_scan_row
      0001BB D0 06            [24]  695 	pop	ar6
      0001BD D0 07            [24]  696 	pop	ar7
                                    697 ;	./src/main.c:146: if(i==3)
      0001BF BE 03 10         [24]  698 	cjne	r6,#0x03,00102$
      0001C2 BF 00 0D         [24]  699 	cjne	r7,#0x00,00102$
                                    700 ;	./src/main.c:147: curINPUT[9] = INPUT2;
      0001C5 A2 81            [12]  701 	mov	c,_P0_1
      0001C7 E4               [12]  702 	clr	a
      0001C8 33               [12]  703 	rlc	a
      0001C9 FC               [12]  704 	mov	r4,a
      0001CA 7D 00            [12]  705 	mov	r5,#0x00
      0001CC 8C 1A            [24]  706 	mov	((_curINPUT + 0x0012) + 0),r4
      0001CE 8D 1B            [24]  707 	mov	((_curINPUT + 0x0012) + 1),r5
      0001D0 80 42            [24]  708 	sjmp	00107$
      0001D2                        709 00102$:
                                    710 ;	./src/main.c:149: curINPUT[i * 3 + 0] = INPUT1;
      0001D2 8E 05            [24]  711 	mov	ar5,r6
      0001D4 ED               [12]  712 	mov	a,r5
      0001D5 75 F0 03         [24]  713 	mov	b,#0x03
      0001D8 A4               [48]  714 	mul	ab
      0001D9 FD               [12]  715 	mov	r5,a
      0001DA 25 E0            [12]  716 	add	a,acc
      0001DC 24 08            [12]  717 	add	a,#_curINPUT
      0001DE F9               [12]  718 	mov	r1,a
      0001DF A2 80            [12]  719 	mov	c,_P0_0
      0001E1 E4               [12]  720 	clr	a
      0001E2 33               [12]  721 	rlc	a
      0001E3 FB               [12]  722 	mov	r3,a
      0001E4 7C 00            [12]  723 	mov	r4,#0x00
      0001E6 A7 03            [24]  724 	mov	@r1,ar3
      0001E8 09               [12]  725 	inc	r1
      0001E9 A7 04            [24]  726 	mov	@r1,ar4
      0001EB 19               [12]  727 	dec	r1
                                    728 ;	./src/main.c:150: curINPUT[i * 3 + 1] = INPUT2;
      0001EC ED               [12]  729 	mov	a,r5
      0001ED 04               [12]  730 	inc	a
      0001EE 25 E0            [12]  731 	add	a,acc
      0001F0 24 08            [12]  732 	add	a,#_curINPUT
      0001F2 F9               [12]  733 	mov	r1,a
      0001F3 A2 81            [12]  734 	mov	c,_P0_1
      0001F5 E4               [12]  735 	clr	a
      0001F6 33               [12]  736 	rlc	a
      0001F7 FB               [12]  737 	mov	r3,a
      0001F8 7C 00            [12]  738 	mov	r4,#0x00
      0001FA A7 03            [24]  739 	mov	@r1,ar3
      0001FC 09               [12]  740 	inc	r1
      0001FD A7 04            [24]  741 	mov	@r1,ar4
      0001FF 19               [12]  742 	dec	r1
                                    743 ;	./src/main.c:151: curINPUT[i * 3 + 2] = INPUT3;
      000200 0D               [12]  744 	inc	r5
      000201 0D               [12]  745 	inc	r5
      000202 ED               [12]  746 	mov	a,r5
      000203 2D               [12]  747 	add	a,r5
      000204 24 08            [12]  748 	add	a,#_curINPUT
      000206 F9               [12]  749 	mov	r1,a
      000207 A2 82            [12]  750 	mov	c,_P0_2
      000209 E4               [12]  751 	clr	a
      00020A 33               [12]  752 	rlc	a
      00020B FC               [12]  753 	mov	r4,a
      00020C 7D 00            [12]  754 	mov	r5,#0x00
      00020E A7 04            [24]  755 	mov	@r1,ar4
      000210 09               [12]  756 	inc	r1
      000211 A7 05            [24]  757 	mov	@r1,ar5
      000213 19               [12]  758 	dec	r1
      000214                        759 00107$:
                                    760 ;	./src/main.c:143: for (int i = 0; i < 4; i++)
      000214 0E               [12]  761 	inc	r6
      000215 BE 00 01         [24]  762 	cjne	r6,#0x00,00126$
      000218 0F               [12]  763 	inc	r7
      000219                        764 00126$:
      000219 02 01 A5         [24]  765 	ljmp	00106$
      00021C                        766 00104$:
                                    767 ;	./src/main.c:154: curINPUT[10] = but1;
      00021C A2 B2            [12]  768 	mov	c,_INT0
      00021E E4               [12]  769 	clr	a
      00021F 33               [12]  770 	rlc	a
      000220 FE               [12]  771 	mov	r6,a
      000221 7F 00            [12]  772 	mov	r7,#0x00
      000223 8E 1C            [24]  773 	mov	((_curINPUT + 0x0014) + 0),r6
      000225 8F 1D            [24]  774 	mov	((_curINPUT + 0x0014) + 1),r7
                                    775 ;	./src/main.c:155: curINPUT[11] = but2;
      000227 A2 B3            [12]  776 	mov	c,_INT1
      000229 E4               [12]  777 	clr	a
      00022A 33               [12]  778 	rlc	a
      00022B FE               [12]  779 	mov	r6,a
      00022C 7F 00            [12]  780 	mov	r7,#0x00
      00022E 8E 1E            [24]  781 	mov	((_curINPUT + 0x0016) + 0),r6
      000230 8F 1F            [24]  782 	mov	((_curINPUT + 0x0016) + 1),r7
                                    783 ;	./src/main.c:156: curINPUT[12] = but3;
      000232 A2 A0            [12]  784 	mov	c,_P2_0
      000234 E4               [12]  785 	clr	a
      000235 33               [12]  786 	rlc	a
      000236 FE               [12]  787 	mov	r6,a
      000237 7F 00            [12]  788 	mov	r7,#0x00
      000239 8E 20            [24]  789 	mov	((_curINPUT + 0x0018) + 0),r6
      00023B 8F 21            [24]  790 	mov	((_curINPUT + 0x0018) + 1),r7
                                    791 ;	./src/main.c:157: curINPUT[13] = but4;
      00023D A2 A1            [12]  792 	mov	c,_P2_1
      00023F E4               [12]  793 	clr	a
      000240 33               [12]  794 	rlc	a
      000241 FE               [12]  795 	mov	r6,a
      000242 7F 00            [12]  796 	mov	r7,#0x00
      000244 8E 22            [24]  797 	mov	((_curINPUT + 0x001a) + 0),r6
      000246 8F 23            [24]  798 	mov	((_curINPUT + 0x001a) + 1),r7
                                    799 ;	./src/main.c:158: }
      000248 22               [24]  800 	ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'sequence'
                                    803 ;------------------------------------------------------------
                                    804 ;a                         Allocated to registers r6 r7 
                                    805 ;------------------------------------------------------------
                                    806 ;	./src/main.c:160: void sequence(void){
                                    807 ;	-----------------------------------------
                                    808 ;	 function sequence
                                    809 ;	-----------------------------------------
      000249                        810 _sequence:
                                    811 ;	./src/main.c:161: for(int a = 7; a > 0; a--){
      000249 7E 07            [12]  812 	mov	r6,#0x07
      00024B 7F 00            [12]  813 	mov	r7,#0x00
      00024D                        814 00103$:
      00024D C3               [12]  815 	clr	c
      00024E E4               [12]  816 	clr	a
      00024F 9E               [12]  817 	subb	a,r6
      000250 74 80            [12]  818 	mov	a,#(0x00 ^ 0x80)
      000252 8F F0            [24]  819 	mov	b,r7
      000254 63 F0 80         [24]  820 	xrl	b,#0x80
      000257 95 F0            [12]  821 	subb	a,b
      000259 50 16            [24]  822 	jnc	00101$
                                    823 ;	./src/main.c:162: display[a] = display[a-1];
      00025B EE               [12]  824 	mov	a,r6
      00025C 24 5C            [12]  825 	add	a,#_display
      00025E F9               [12]  826 	mov	r1,a
      00025F 8E 05            [24]  827 	mov	ar5,r6
      000261 ED               [12]  828 	mov	a,r5
      000262 14               [12]  829 	dec	a
      000263 24 5C            [12]  830 	add	a,#_display
      000265 F8               [12]  831 	mov	r0,a
      000266 86 05            [24]  832 	mov	ar5,@r0
      000268 A7 05            [24]  833 	mov	@r1,ar5
                                    834 ;	./src/main.c:161: for(int a = 7; a > 0; a--){
      00026A 1E               [12]  835 	dec	r6
      00026B BE FF 01         [24]  836 	cjne	r6,#0xff,00117$
      00026E 1F               [12]  837 	dec	r7
      00026F                        838 00117$:
      00026F 80 DC            [24]  839 	sjmp	00103$
      000271                        840 00101$:
                                    841 ;	./src/main.c:164: patt =0x00;
      000271 75 64 00         [24]  842 	mov	_patt,#0x00
                                    843 ;	./src/main.c:165: delay_ms(20);
      000274 90 00 14         [24]  844 	mov	dptr,#0x0014
                                    845 ;	./src/main.c:166: }
      000277 02 04 79         [24]  846 	ljmp	_delay_ms
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'func_cal'
                                    849 ;------------------------------------------------------------
                                    850 ;cmd                       Allocated to registers r6 r7 
                                    851 ;a                         Allocated to registers r6 r7 
                                    852 ;------------------------------------------------------------
                                    853 ;	./src/main.c:168: void func_cal(unsigned int cmd){
                                    854 ;	-----------------------------------------
                                    855 ;	 function func_cal
                                    856 ;	-----------------------------------------
      00027A                        857 _func_cal:
      00027A AE 82            [24]  858 	mov	r6,dpl
      00027C AF 83            [24]  859 	mov	r7,dph
                                    860 ;	./src/main.c:170: switch (cmd)
      00027E BE 0A 05         [24]  861 	cjne	r6,#0x0a,00151$
      000281 BF 00 02         [24]  862 	cjne	r7,#0x00,00151$
      000284 80 1A            [24]  863 	sjmp	00101$
      000286                        864 00151$:
      000286 BE 0B 05         [24]  865 	cjne	r6,#0x0b,00152$
      000289 BF 00 02         [24]  866 	cjne	r7,#0x00,00152$
      00028C 80 32            [24]  867 	sjmp	00107$
      00028E                        868 00152$:
      00028E BE 0C 05         [24]  869 	cjne	r6,#0x0c,00153$
      000291 BF 00 02         [24]  870 	cjne	r7,#0x00,00153$
      000294 80 36            [24]  871 	sjmp	00125$
      000296                        872 00153$:
      000296 BE 0D 06         [24]  873 	cjne	r6,#0x0d,00154$
      000299 BF 00 03         [24]  874 	cjne	r7,#0x00,00154$
      00029C 02 03 11         [24]  875 	ljmp	00110$
      00029F                        876 00154$:
      00029F 22               [24]  877 	ret
                                    878 ;	./src/main.c:172: case 10:	//op
      0002A0                        879 00101$:
                                    880 ;	./src/main.c:173: if(patt == 0x80)
      0002A0 74 80            [12]  881 	mov	a,#0x80
      0002A2 B5 64 05         [24]  882 	cjne	a,_patt,00105$
                                    883 ;	./src/main.c:174: patt = 0x08;
      0002A5 75 64 08         [24]  884 	mov	_patt,#0x08
      0002A8 80 07            [24]  885 	sjmp	00106$
      0002AA                        886 00105$:
                                    887 ;	./src/main.c:175: else if (patt == 0x00)
      0002AA E5 64            [12]  888 	mov	a,_patt
      0002AC 70 03            [24]  889 	jnz	00106$
                                    890 ;	./src/main.c:176: patt = 0x08;
      0002AE 75 64 08         [24]  891 	mov	_patt,#0x08
      0002B1                        892 00106$:
                                    893 ;	./src/main.c:178: patt = patt << 1;
      0002B1 E5 64            [12]  894 	mov	a,_patt
      0002B3 25 E0            [12]  895 	add	a,acc
                                    896 ;	./src/main.c:179: led = ~patt;
      0002B5 F5 64            [12]  897 	mov	_patt,a
      0002B7 F4               [12]  898 	cpl	a
      0002B8 F5 90            [12]  899 	mov	_P1,a
                                    900 ;	./src/main.c:180: delay_ms(20);
      0002BA 90 00 14         [24]  901 	mov	dptr,#0x0014
                                    902 ;	./src/main.c:181: break;
                                    903 ;	./src/main.c:182: case 11:	//back <-
      0002BD 02 04 79         [24]  904 	ljmp	_delay_ms
      0002C0                        905 00107$:
                                    906 ;	./src/main.c:183: patt1 = 0x01;
      0002C0 75 65 01         [24]  907 	mov	_patt1,#0x01
                                    908 ;	./src/main.c:184: led = ~patt1;
      0002C3 75 90 FE         [24]  909 	mov	_P1,#0xfe
                                    910 ;	./src/main.c:185: delay_ms(20);
      0002C6 90 00 14         [24]  911 	mov	dptr,#0x0014
                                    912 ;	./src/main.c:186: break;
                                    913 ;	./src/main.c:188: for(int a = 0; a < 8; a++){
      0002C9 02 04 79         [24]  914 	ljmp	_delay_ms
      0002CC                        915 00125$:
      0002CC 7E 00            [12]  916 	mov	r6,#0x00
      0002CE 7F 00            [12]  917 	mov	r7,#0x00
      0002D0                        918 00114$:
      0002D0 C3               [12]  919 	clr	c
      0002D1 EE               [12]  920 	mov	a,r6
      0002D2 94 08            [12]  921 	subb	a,#0x08
      0002D4 EF               [12]  922 	mov	a,r7
      0002D5 64 80            [12]  923 	xrl	a,#0x80
      0002D7 94 80            [12]  924 	subb	a,#0x80
      0002D9 50 21            [24]  925 	jnc	00109$
                                    926 ;	./src/main.c:189: display[a] = 0x00;
      0002DB EE               [12]  927 	mov	a,r6
      0002DC 24 5C            [12]  928 	add	a,#_display
      0002DE F8               [12]  929 	mov	r0,a
      0002DF 76 00            [12]  930 	mov	@r0,#0x00
                                    931 ;	./src/main.c:190: Write7219(a+1,0x00);
      0002E1 8E 05            [24]  932 	mov	ar5,r6
      0002E3 ED               [12]  933 	mov	a,r5
      0002E4 04               [12]  934 	inc	a
      0002E5 F5 82            [12]  935 	mov	dpl,a
      0002E7 75 68 00         [24]  936 	mov	_Write7219_PARM_2,#0x00
      0002EA C0 07            [24]  937 	push	ar7
      0002EC C0 06            [24]  938 	push	ar6
      0002EE 12 00 C2         [24]  939 	lcall	_Write7219
      0002F1 D0 06            [24]  940 	pop	ar6
      0002F3 D0 07            [24]  941 	pop	ar7
                                    942 ;	./src/main.c:188: for(int a = 0; a < 8; a++){
      0002F5 0E               [12]  943 	inc	r6
      0002F6 BE 00 D7         [24]  944 	cjne	r6,#0x00,00114$
      0002F9 0F               [12]  945 	inc	r7
      0002FA 80 D4            [24]  946 	sjmp	00114$
      0002FC                        947 00109$:
                                    948 ;	./src/main.c:192: Write7219(0x01,0x08);
      0002FC 75 68 08         [24]  949 	mov	_Write7219_PARM_2,#0x08
      0002FF 75 82 01         [24]  950 	mov	dpl,#0x01
      000302 12 00 C2         [24]  951 	lcall	_Write7219
                                    952 ;	./src/main.c:193: patt1 = 0x02;
      000305 75 65 02         [24]  953 	mov	_patt1,#0x02
                                    954 ;	./src/main.c:194: led = ~patt1;
      000308 75 90 FD         [24]  955 	mov	_P1,#0xfd
                                    956 ;	./src/main.c:195: delay_ms(20);
      00030B 90 00 14         [24]  957 	mov	dptr,#0x0014
                                    958 ;	./src/main.c:196: break;
                                    959 ;	./src/main.c:197: case 13:	//equal=
      00030E 02 04 79         [24]  960 	ljmp	_delay_ms
      000311                        961 00110$:
                                    962 ;	./src/main.c:198: patt1 = 0x04;
      000311 75 65 04         [24]  963 	mov	_patt1,#0x04
                                    964 ;	./src/main.c:199: led = ~patt1;
      000314 75 90 FB         [24]  965 	mov	_P1,#0xfb
                                    966 ;	./src/main.c:200: delay_ms(20);
      000317 90 00 14         [24]  967 	mov	dptr,#0x0014
                                    968 ;	./src/main.c:204: }
                                    969 ;	./src/main.c:205: }
      00031A 02 04 79         [24]  970 	ljmp	_delay_ms
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'main'
                                    973 ;------------------------------------------------------------
                                    974 ;i                         Allocated to registers r6 r7 
                                    975 ;i                         Allocated to registers r6 r7 
                                    976 ;------------------------------------------------------------
                                    977 ;	./src/main.c:225: void main(void)
                                    978 ;	-----------------------------------------
                                    979 ;	 function main
                                    980 ;	-----------------------------------------
      00031D                        981 _main:
                                    982 ;	./src/main.c:228: Initial();
      00031D 12 00 E1         [24]  983 	lcall	_Initial
                                    984 ;	./src/main.c:229: for (int i = 0; i < 14; i++)
      000320 7E 00            [12]  985 	mov	r6,#0x00
      000322 7F 00            [12]  986 	mov	r7,#0x00
      000324                        987 00127$:
      000324 C3               [12]  988 	clr	c
      000325 EE               [12]  989 	mov	a,r6
      000326 94 0E            [12]  990 	subb	a,#0x0e
      000328 EF               [12]  991 	mov	a,r7
      000329 64 80            [12]  992 	xrl	a,#0x80
      00032B 94 80            [12]  993 	subb	a,#0x80
      00032D 50 27            [24]  994 	jnc	00101$
                                    995 ;	./src/main.c:231: curINPUT[i] = LEVEL_HIGH;
      00032F EE               [12]  996 	mov	a,r6
      000330 2E               [12]  997 	add	a,r6
      000331 FC               [12]  998 	mov	r4,a
      000332 EF               [12]  999 	mov	a,r7
      000333 33               [12] 1000 	rlc	a
      000334 EC               [12] 1001 	mov	a,r4
      000335 24 08            [12] 1002 	add	a,#_curINPUT
      000337 F8               [12] 1003 	mov	r0,a
      000338 76 01            [12] 1004 	mov	@r0,#0x01
      00033A 08               [12] 1005 	inc	r0
      00033B 76 00            [12] 1006 	mov	@r0,#0x00
                                   1007 ;	./src/main.c:232: state[i] = BTN_RELEASED;
      00033D EC               [12] 1008 	mov	a,r4
      00033E 24 24            [12] 1009 	add	a,#_state
      000340 F8               [12] 1010 	mov	r0,a
      000341 76 00            [12] 1011 	mov	@r0,#0x00
      000343 08               [12] 1012 	inc	r0
      000344 76 00            [12] 1013 	mov	@r0,#0x00
                                   1014 ;	./src/main.c:233: prestate[i] = BTN_RELEASED;
      000346 EC               [12] 1015 	mov	a,r4
      000347 24 40            [12] 1016 	add	a,#_prestate
      000349 F8               [12] 1017 	mov	r0,a
      00034A 76 00            [12] 1018 	mov	@r0,#0x00
      00034C 08               [12] 1019 	inc	r0
      00034D 76 00            [12] 1020 	mov	@r0,#0x00
                                   1021 ;	./src/main.c:229: for (int i = 0; i < 14; i++)
      00034F 0E               [12] 1022 	inc	r6
      000350 BE 00 D1         [24] 1023 	cjne	r6,#0x00,00127$
      000353 0F               [12] 1024 	inc	r7
      000354 80 CE            [24] 1025 	sjmp	00127$
      000356                       1026 00101$:
                                   1027 ;	./src/main.c:235: func_cal(12);
      000356 90 00 0C         [24] 1028 	mov	dptr,#0x000c
      000359 12 02 7A         [24] 1029 	lcall	_func_cal
                                   1030 ;	./src/main.c:237: while(1)
      00035C                       1031 00124$:
                                   1032 ;	./src/main.c:239: delay_ms(20);
      00035C 90 00 14         [24] 1033 	mov	dptr,#0x0014
      00035F 12 04 79         [24] 1034 	lcall	_delay_ms
                                   1035 ;	./src/main.c:242: read_curINPUT();
      000362 12 01 A1         [24] 1036 	lcall	_read_curINPUT
                                   1037 ;	./src/main.c:243: for (int i = 0; i < 14; i++)
      000365 7E 00            [12] 1038 	mov	r6,#0x00
      000367 7F 00            [12] 1039 	mov	r7,#0x00
      000369                       1040 00130$:
      000369 C3               [12] 1041 	clr	c
      00036A EE               [12] 1042 	mov	a,r6
      00036B 94 0E            [12] 1043 	subb	a,#0x0e
      00036D EF               [12] 1044 	mov	a,r7
      00036E 64 80            [12] 1045 	xrl	a,#0x80
      000370 94 80            [12] 1046 	subb	a,#0x80
      000372 50 E8            [24] 1047 	jnc	00124$
                                   1048 ;	./src/main.c:246: switch (state[i])
      000374 EE               [12] 1049 	mov	a,r6
      000375 2E               [12] 1050 	add	a,r6
      000376 FC               [12] 1051 	mov	r4,a
      000377 EF               [12] 1052 	mov	a,r7
      000378 33               [12] 1053 	rlc	a
      000379 FD               [12] 1054 	mov	r5,a
      00037A EC               [12] 1055 	mov	a,r4
      00037B 24 24            [12] 1056 	add	a,#_state
      00037D F9               [12] 1057 	mov	r1,a
      00037E 87 02            [24] 1058 	mov	ar2,@r1
      000380 09               [12] 1059 	inc	r1
      000381 87 03            [24] 1060 	mov	ar3,@r1
      000383 19               [12] 1061 	dec	r1
      000384 BA 00 05         [24] 1062 	cjne	r2,#0x00,00194$
      000387 BB 00 02         [24] 1063 	cjne	r3,#0x00,00194$
      00038A 80 10            [24] 1064 	sjmp	00102$
      00038C                       1065 00194$:
      00038C BA 01 05         [24] 1066 	cjne	r2,#0x01,00195$
      00038F BB 00 02         [24] 1067 	cjne	r3,#0x00,00195$
      000392 80 26            [24] 1068 	sjmp	00106$
      000394                       1069 00195$:
                                   1070 ;	./src/main.c:248: case BTN_RELEASED:
      000394 BA 02 5D         [24] 1071 	cjne	r2,#0x02,00115$
      000397 BB 00 5A         [24] 1072 	cjne	r3,#0x00,00115$
      00039A 80 3C            [24] 1073 	sjmp	00110$
      00039C                       1074 00102$:
                                   1075 ;	./src/main.c:249: if (curINPUT[i] == LEVEL_LOW)
      00039C EC               [12] 1076 	mov	a,r4
      00039D 24 08            [12] 1077 	add	a,#_curINPUT
      00039F F8               [12] 1078 	mov	r0,a
      0003A0 86 02            [24] 1079 	mov	ar2,@r0
      0003A2 08               [12] 1080 	inc	r0
      0003A3 86 03            [24] 1081 	mov	ar3,@r0
      0003A5 18               [12] 1082 	dec	r0
      0003A6 EA               [12] 1083 	mov	a,r2
      0003A7 4B               [12] 1084 	orl	a,r3
      0003A8 70 08            [24] 1085 	jnz	00104$
                                   1086 ;	./src/main.c:250: state[i] = BTN_DEBOUNCED;
      0003AA 77 01            [12] 1087 	mov	@r1,#0x01
      0003AC 09               [12] 1088 	inc	r1
      0003AD 77 00            [12] 1089 	mov	@r1,#0x00
      0003AF 19               [12] 1090 	dec	r1
      0003B0 80 42            [24] 1091 	sjmp	00115$
      0003B2                       1092 00104$:
                                   1093 ;	./src/main.c:252: state[i] = BTN_RELEASED;
      0003B2 77 00            [12] 1094 	mov	@r1,#0x00
      0003B4 09               [12] 1095 	inc	r1
      0003B5 77 00            [12] 1096 	mov	@r1,#0x00
      0003B7 19               [12] 1097 	dec	r1
                                   1098 ;	./src/main.c:253: break;
                                   1099 ;	./src/main.c:254: case BTN_DEBOUNCED:
      0003B8 80 3A            [24] 1100 	sjmp	00115$
      0003BA                       1101 00106$:
                                   1102 ;	./src/main.c:255: if (curINPUT[i] == LEVEL_LOW)
      0003BA EC               [12] 1103 	mov	a,r4
      0003BB 24 08            [12] 1104 	add	a,#_curINPUT
      0003BD F8               [12] 1105 	mov	r0,a
      0003BE 86 02            [24] 1106 	mov	ar2,@r0
      0003C0 08               [12] 1107 	inc	r0
      0003C1 86 03            [24] 1108 	mov	ar3,@r0
      0003C3 18               [12] 1109 	dec	r0
      0003C4 EA               [12] 1110 	mov	a,r2
      0003C5 4B               [12] 1111 	orl	a,r3
      0003C6 70 08            [24] 1112 	jnz	00108$
                                   1113 ;	./src/main.c:256: state[i] = BTN_PRESSED;
      0003C8 77 02            [12] 1114 	mov	@r1,#0x02
      0003CA 09               [12] 1115 	inc	r1
      0003CB 77 00            [12] 1116 	mov	@r1,#0x00
      0003CD 19               [12] 1117 	dec	r1
      0003CE 80 24            [24] 1118 	sjmp	00115$
      0003D0                       1119 00108$:
                                   1120 ;	./src/main.c:258: state[i] = BTN_RELEASED;
      0003D0 77 00            [12] 1121 	mov	@r1,#0x00
      0003D2 09               [12] 1122 	inc	r1
      0003D3 77 00            [12] 1123 	mov	@r1,#0x00
      0003D5 19               [12] 1124 	dec	r1
                                   1125 ;	./src/main.c:259: break;
                                   1126 ;	./src/main.c:260: case BTN_PRESSED:
      0003D6 80 1C            [24] 1127 	sjmp	00115$
      0003D8                       1128 00110$:
                                   1129 ;	./src/main.c:261: if (curINPUT[i] == LEVEL_LOW)
      0003D8 EC               [12] 1130 	mov	a,r4
      0003D9 24 08            [12] 1131 	add	a,#_curINPUT
      0003DB F8               [12] 1132 	mov	r0,a
      0003DC 86 04            [24] 1133 	mov	ar4,@r0
      0003DE 08               [12] 1134 	inc	r0
      0003DF 86 05            [24] 1135 	mov	ar5,@r0
      0003E1 18               [12] 1136 	dec	r0
      0003E2 EC               [12] 1137 	mov	a,r4
      0003E3 4D               [12] 1138 	orl	a,r5
      0003E4 70 08            [24] 1139 	jnz	00112$
                                   1140 ;	./src/main.c:262: state[i] = BTN_PRESSED;
      0003E6 77 02            [12] 1141 	mov	@r1,#0x02
      0003E8 09               [12] 1142 	inc	r1
      0003E9 77 00            [12] 1143 	mov	@r1,#0x00
      0003EB 19               [12] 1144 	dec	r1
      0003EC 80 06            [24] 1145 	sjmp	00115$
      0003EE                       1146 00112$:
                                   1147 ;	./src/main.c:264: state[i] = BTN_RELEASED;
      0003EE 77 00            [12] 1148 	mov	@r1,#0x00
      0003F0 09               [12] 1149 	inc	r1
      0003F1 77 00            [12] 1150 	mov	@r1,#0x00
      0003F3 19               [12] 1151 	dec	r1
                                   1152 ;	./src/main.c:268: }
      0003F4                       1153 00115$:
                                   1154 ;	./src/main.c:270: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)){
      0003F4 EE               [12] 1155 	mov	a,r6
      0003F5 2E               [12] 1156 	add	a,r6
      0003F6 FC               [12] 1157 	mov	r4,a
      0003F7 EF               [12] 1158 	mov	a,r7
      0003F8 33               [12] 1159 	rlc	a
      0003F9 FD               [12] 1160 	mov	r5,a
      0003FA EC               [12] 1161 	mov	a,r4
      0003FB 24 24            [12] 1162 	add	a,#_state
      0003FD F9               [12] 1163 	mov	r1,a
      0003FE 87 02            [24] 1164 	mov	ar2,@r1
      000400 09               [12] 1165 	inc	r1
      000401 87 03            [24] 1166 	mov	ar3,@r1
      000403 19               [12] 1167 	dec	r1
      000404 EA               [12] 1168 	mov	a,r2
      000405 4B               [12] 1169 	orl	a,r3
      000406 70 50            [24] 1170 	jnz	00120$
      000408 EC               [12] 1171 	mov	a,r4
      000409 24 40            [12] 1172 	add	a,#_prestate
      00040B F9               [12] 1173 	mov	r1,a
      00040C 87 04            [24] 1174 	mov	ar4,@r1
      00040E 09               [12] 1175 	inc	r1
      00040F 87 05            [24] 1176 	mov	ar5,@r1
      000411 19               [12] 1177 	dec	r1
      000412 BC 02 43         [24] 1178 	cjne	r4,#0x02,00120$
      000415 BD 00 40         [24] 1179 	cjne	r5,#0x00,00120$
                                   1180 ;	./src/main.c:272: if (i < 10){
      000418 C3               [12] 1181 	clr	c
      000419 EE               [12] 1182 	mov	a,r6
      00041A 94 0A            [12] 1183 	subb	a,#0x0a
      00041C EF               [12] 1184 	mov	a,r7
      00041D 64 80            [12] 1185 	xrl	a,#0x80
      00041F 94 80            [12] 1186 	subb	a,#0x80
      000421 50 26            [24] 1187 	jnc	00117$
                                   1188 ;	./src/main.c:273: sequence();
      000423 C0 07            [24] 1189 	push	ar7
      000425 C0 06            [24] 1190 	push	ar6
      000427 12 02 49         [24] 1191 	lcall	_sequence
      00042A D0 06            [24] 1192 	pop	ar6
      00042C D0 07            [24] 1193 	pop	ar7
                                   1194 ;	./src/main.c:274: display[0] = display_seg[i];
      00042E EE               [12] 1195 	mov	a,r6
      00042F 24 69            [12] 1196 	add	a,#_display_seg
      000431 F9               [12] 1197 	mov	r1,a
      000432 87 05            [24] 1198 	mov	ar5,@r1
      000434 8D 5C            [24] 1199 	mov	_display,r5
                                   1200 ;	./src/main.c:275: draw(display);
      000436 90 00 5C         [24] 1201 	mov	dptr,#_display
      000439 75 F0 40         [24] 1202 	mov	b,#0x40
      00043C C0 07            [24] 1203 	push	ar7
      00043E C0 06            [24] 1204 	push	ar6
      000440 12 01 23         [24] 1205 	lcall	_draw
      000443 D0 06            [24] 1206 	pop	ar6
      000445 D0 07            [24] 1207 	pop	ar7
      000447 80 0F            [24] 1208 	sjmp	00120$
      000449                       1209 00117$:
                                   1210 ;	./src/main.c:277: func_cal(i);
      000449 8E 82            [24] 1211 	mov	dpl,r6
      00044B 8F 83            [24] 1212 	mov	dph,r7
      00044D C0 07            [24] 1213 	push	ar7
      00044F C0 06            [24] 1214 	push	ar6
      000451 12 02 7A         [24] 1215 	lcall	_func_cal
      000454 D0 06            [24] 1216 	pop	ar6
      000456 D0 07            [24] 1217 	pop	ar7
      000458                       1218 00120$:
                                   1219 ;	./src/main.c:280: prestate[i] = state[i];
      000458 EE               [12] 1220 	mov	a,r6
      000459 2E               [12] 1221 	add	a,r6
      00045A FC               [12] 1222 	mov	r4,a
      00045B EF               [12] 1223 	mov	a,r7
      00045C 33               [12] 1224 	rlc	a
      00045D EC               [12] 1225 	mov	a,r4
      00045E 24 40            [12] 1226 	add	a,#_prestate
      000460 F9               [12] 1227 	mov	r1,a
      000461 EC               [12] 1228 	mov	a,r4
      000462 24 24            [12] 1229 	add	a,#_state
      000464 F8               [12] 1230 	mov	r0,a
      000465 86 04            [24] 1231 	mov	ar4,@r0
      000467 08               [12] 1232 	inc	r0
      000468 86 05            [24] 1233 	mov	ar5,@r0
      00046A 18               [12] 1234 	dec	r0
      00046B A7 04            [24] 1235 	mov	@r1,ar4
      00046D 09               [12] 1236 	inc	r1
      00046E A7 05            [24] 1237 	mov	@r1,ar5
      000470 19               [12] 1238 	dec	r1
                                   1239 ;	./src/main.c:243: for (int i = 0; i < 14; i++)
      000471 0E               [12] 1240 	inc	r6
      000472 BE 00 01         [24] 1241 	cjne	r6,#0x00,00204$
      000475 0F               [12] 1242 	inc	r7
      000476                       1243 00204$:
                                   1244 ;	./src/main.c:283: }
      000476 02 03 69         [24] 1245 	ljmp	00130$
                                   1246 	.area CSEG    (CODE)
                                   1247 	.area CONST   (CODE)
                                   1248 	.area XINIT   (CODE)
                                   1249 	.area CABS    (ABS,CODE)
