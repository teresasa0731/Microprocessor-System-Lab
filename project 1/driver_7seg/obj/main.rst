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
                                     13 	.globl _func_call
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
                                    338 ;	./src/main.c:213: unsigned char display_seg[] = {
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
      000003 02 02 F5         [24]  358 	ljmp	_main
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
                                    388 ;	./src/main.c:60: CLK = 0;
                                    389 ;	assignBit
      00008F C2 A0            [12]  390 	clr	_P2_0
                                    391 ;	./src/main.c:61: DOUT = ( address & 0x80);   //get msb and shift left
      000091 EF               [12]  392 	mov	a,r7
      000092 23               [12]  393 	rl	a
      000093 54 01            [12]  394 	anl	a,#0x01
                                    395 ;	assignBit
      000095 24 FF            [12]  396 	add	a,#0xff
      000097 92 A2            [24]  397 	mov	_P2_2,c
                                    398 ;	./src/main.c:62: address <<= 1;
      000099 8F 05            [24]  399 	mov	ar5,r7
      00009B ED               [12]  400 	mov	a,r5
      00009C 2D               [12]  401 	add	a,r5
      00009D FF               [12]  402 	mov	r7,a
                                    403 ;	./src/main.c:63: CLK = 1;
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
                                    414 ;	./src/main.c:67: CLK = 0;
                                    415 ;	assignBit
      0000A8 C2 A0            [12]  416 	clr	_P2_0
                                    417 ;	./src/main.c:68: DOUT=( dat & 0x80);    //get msb and shit left
      0000AA E5 74            [12]  418 	mov	a,_sendbyte_PARM_2
      0000AC 23               [12]  419 	rl	a
      0000AD 54 01            [12]  420 	anl	a,#0x01
                                    421 ;	assignBit
      0000AF 24 FF            [12]  422 	add	a,#0xff
      0000B1 92 A2            [24]  423 	mov	_P2_2,c
                                    424 ;	./src/main.c:69: dat <<= 1;
      0000B3 E5 74            [12]  425 	mov	a,_sendbyte_PARM_2
      0000B5 25 E0            [12]  426 	add	a,acc
      0000B7 F5 74            [12]  427 	mov	_sendbyte_PARM_2,a
                                    428 ;	./src/main.c:70: CLK = 1;
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
                                    445 ;	./src/main.c:75: void Write7219(unsigned char address, unsigned char dat)
                                    446 ;	-----------------------------------------
                                    447 ;	 function Write7219
                                    448 ;	-----------------------------------------
      0000C2                        449 _Write7219:
      0000C2 AF 82            [24]  450 	mov	r7,dpl
                                    451 ;	./src/main.c:78: LOAD = 0;
                                    452 ;	assignBit
      0000C4 C2 A1            [12]  453 	clr	_P2_1
                                    454 ;	./src/main.c:80: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000C6 7E 01            [12]  455 	mov	r6,#0x01
      0000C8                        456 00102$:
                                    457 ;	./src/main.c:82: sendbyte(address, dat);
      0000C8 85 68 74         [24]  458 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000CB 8F 82            [24]  459 	mov	dpl,r7
      0000CD C0 07            [24]  460 	push	ar7
      0000CF C0 06            [24]  461 	push	ar6
      0000D1 12 00 8B         [24]  462 	lcall	_sendbyte
      0000D4 D0 06            [24]  463 	pop	ar6
      0000D6 D0 07            [24]  464 	pop	ar7
                                    465 ;	./src/main.c:80: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000D8 0E               [12]  466 	inc	r6
      0000D9 EE               [12]  467 	mov	a,r6
      0000DA 24 FE            [12]  468 	add	a,#0xff - 0x01
      0000DC 50 EA            [24]  469 	jnc	00102$
                                    470 ;	./src/main.c:85: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    471 ;	assignBit
      0000DE D2 A1            [12]  472 	setb	_P2_1
                                    473 ;	./src/main.c:86: }
      0000E0 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'Initial'
                                    477 ;------------------------------------------------------------
                                    478 ;i                         Allocated to registers r7 
                                    479 ;------------------------------------------------------------
                                    480 ;	./src/main.c:89: void Initial(void)
                                    481 ;	-----------------------------------------
                                    482 ;	 function Initial
                                    483 ;	-----------------------------------------
      0000E1                        484 _Initial:
                                    485 ;	./src/main.c:92: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      0000E1 75 68 01         [24]  486 	mov	_Write7219_PARM_2,#0x01
      0000E4 75 82 0C         [24]  487 	mov	dpl,#0x0c
      0000E7 12 00 C2         [24]  488 	lcall	_Write7219
                                    489 ;	./src/main.c:93: Write7219(DISPLAY_TEST,0x00);
      0000EA 75 68 00         [24]  490 	mov	_Write7219_PARM_2,#0x00
      0000ED 75 82 0F         [24]  491 	mov	dpl,#0x0f
      0000F0 12 00 C2         [24]  492 	lcall	_Write7219
                                    493 ;	./src/main.c:94: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      0000F3 75 68 00         [24]  494 	mov	_Write7219_PARM_2,#0x00
      0000F6 75 82 09         [24]  495 	mov	dpl,#0x09
      0000F9 12 00 C2         [24]  496 	lcall	_Write7219
                                    497 ;	./src/main.c:95: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      0000FC 75 68 07         [24]  498 	mov	_Write7219_PARM_2,#0x07
      0000FF 75 82 0B         [24]  499 	mov	dpl,#0x0b
      000102 12 00 C2         [24]  500 	lcall	_Write7219
                                    501 ;	./src/main.c:96: Write7219(INTENSITY,0x00);         //set up intensity
      000105 75 68 00         [24]  502 	mov	_Write7219_PARM_2,#0x00
      000108 75 82 0A         [24]  503 	mov	dpl,#0x0a
      00010B 12 00 C2         [24]  504 	lcall	_Write7219
                                    505 ;	./src/main.c:97: for(i=1;i<=8;i++){
      00010E 7F 01            [12]  506 	mov	r7,#0x01
      000110                        507 00102$:
                                    508 ;	./src/main.c:98: Write7219(i,0x00);   //turn off all LED
      000110 75 68 00         [24]  509 	mov	_Write7219_PARM_2,#0x00
      000113 8F 82            [24]  510 	mov	dpl,r7
      000115 C0 07            [24]  511 	push	ar7
      000117 12 00 C2         [24]  512 	lcall	_Write7219
      00011A D0 07            [24]  513 	pop	ar7
                                    514 ;	./src/main.c:97: for(i=1;i<=8;i++){
      00011C 0F               [12]  515 	inc	r7
      00011D EF               [12]  516 	mov	a,r7
      00011E 24 F7            [12]  517 	add	a,#0xff - 0x08
      000120 50 EE            [24]  518 	jnc	00102$
                                    519 ;	./src/main.c:100: }
      000122 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'draw'
                                    523 ;------------------------------------------------------------
                                    524 ;picture                   Allocated to registers 
                                    525 ;i                         Allocated to registers r7 
                                    526 ;------------------------------------------------------------
                                    527 ;	./src/main.c:103: void draw(unsigned char *picture){
                                    528 ;	-----------------------------------------
                                    529 ;	 function draw
                                    530 ;	-----------------------------------------
      000123                        531 _draw:
                                    532 ;	./src/main.c:108: for(i=1; i<=8; i++) {
      000123 7F 01            [12]  533 	mov	r7,#0x01
      000125                        534 00102$:
                                    535 ;	./src/main.c:109: Write7219(i, display[i-1]);
      000125 8F 06            [24]  536 	mov	ar6,r7
      000127 EE               [12]  537 	mov	a,r6
      000128 14               [12]  538 	dec	a
      000129 24 5C            [12]  539 	add	a,#_display
      00012B F9               [12]  540 	mov	r1,a
      00012C 87 68            [24]  541 	mov	_Write7219_PARM_2,@r1
      00012E 8F 82            [24]  542 	mov	dpl,r7
      000130 C0 07            [24]  543 	push	ar7
      000132 12 00 C2         [24]  544 	lcall	_Write7219
      000135 D0 07            [24]  545 	pop	ar7
                                    546 ;	./src/main.c:108: for(i=1; i<=8; i++) {
      000137 0F               [12]  547 	inc	r7
      000138 EF               [12]  548 	mov	a,r7
      000139 24 F7            [12]  549 	add	a,#0xff - 0x08
      00013B 50 E8            [24]  550 	jnc	00102$
                                    551 ;	./src/main.c:111: }
      00013D 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'scan_row'
                                    555 ;------------------------------------------------------------
                                    556 ;row                       Allocated to registers r6 r7 
                                    557 ;------------------------------------------------------------
                                    558 ;	./src/main.c:113: void scan_row(unsigned int row)
                                    559 ;	-----------------------------------------
                                    560 ;	 function scan_row
                                    561 ;	-----------------------------------------
      00013E                        562 _scan_row:
      00013E AE 82            [24]  563 	mov	r6,dpl
      000140 AF 83            [24]  564 	mov	r7,dph
                                    565 ;	./src/main.c:115: switch (row)
      000142 C3               [12]  566 	clr	c
      000143 74 03            [12]  567 	mov	a,#0x03
      000145 9E               [12]  568 	subb	a,r6
      000146 E4               [12]  569 	clr	a
      000147 9F               [12]  570 	subb	a,r7
      000148 40 31            [24]  571 	jc	00107$
      00014A EE               [12]  572 	mov	a,r6
      00014B 2E               [12]  573 	add	a,r6
                                    574 ;	./src/main.c:117: case 0:
      00014C 90 01 50         [24]  575 	mov	dptr,#00114$
      00014F 73               [24]  576 	jmp	@a+dptr
      000150                        577 00114$:
      000150 80 06            [24]  578 	sjmp	00101$
      000152 80 0D            [24]  579 	sjmp	00102$
      000154 80 14            [24]  580 	sjmp	00103$
      000156 80 1B            [24]  581 	sjmp	00104$
      000158                        582 00101$:
                                    583 ;	./src/main.c:118: OUTPUT1 = 0; // row1 output 0
                                    584 ;	assignBit
      000158 C2 86            [12]  585 	clr	_P0_6
                                    586 ;	./src/main.c:119: OUTPUT2 = 1; // row2 output 1
                                    587 ;	assignBit
      00015A D2 85            [12]  588 	setb	_P0_5
                                    589 ;	./src/main.c:120: OUTPUT3 = 1; // row3 output 1
                                    590 ;	assignBit
      00015C D2 84            [12]  591 	setb	_P0_4
                                    592 ;	./src/main.c:121: OUTPUT0 = 1; // row0 output 1
                                    593 ;	assignBit
      00015E D2 83            [12]  594 	setb	_P0_3
                                    595 ;	./src/main.c:122: break;
                                    596 ;	./src/main.c:123: case 1:
      000160 22               [24]  597 	ret
      000161                        598 00102$:
                                    599 ;	./src/main.c:124: OUTPUT1 = 1; // row1 output 1
                                    600 ;	assignBit
      000161 D2 86            [12]  601 	setb	_P0_6
                                    602 ;	./src/main.c:125: OUTPUT2 = 0; // row2 output 0
                                    603 ;	assignBit
      000163 C2 85            [12]  604 	clr	_P0_5
                                    605 ;	./src/main.c:126: OUTPUT3 = 1; // row3 output 1
                                    606 ;	assignBit
      000165 D2 84            [12]  607 	setb	_P0_4
                                    608 ;	./src/main.c:127: OUTPUT0 = 1; // row0 output 1
                                    609 ;	assignBit
      000167 D2 83            [12]  610 	setb	_P0_3
                                    611 ;	./src/main.c:128: break;
                                    612 ;	./src/main.c:129: case 2:
      000169 22               [24]  613 	ret
      00016A                        614 00103$:
                                    615 ;	./src/main.c:130: OUTPUT1 = 1; // row1 output 1
                                    616 ;	assignBit
      00016A D2 86            [12]  617 	setb	_P0_6
                                    618 ;	./src/main.c:131: OUTPUT2 = 1; // row2 output 1
                                    619 ;	assignBit
      00016C D2 85            [12]  620 	setb	_P0_5
                                    621 ;	./src/main.c:132: OUTPUT3 = 0; // row3 output 0
                                    622 ;	assignBit
      00016E C2 84            [12]  623 	clr	_P0_4
                                    624 ;	./src/main.c:133: OUTPUT0 = 1; // row0 output 1
                                    625 ;	assignBit
      000170 D2 83            [12]  626 	setb	_P0_3
                                    627 ;	./src/main.c:134: break;
                                    628 ;	./src/main.c:135: case 3:
      000172 22               [24]  629 	ret
      000173                        630 00104$:
                                    631 ;	./src/main.c:136: OUTPUT1 = 1; // row1 output 1
                                    632 ;	assignBit
      000173 D2 86            [12]  633 	setb	_P0_6
                                    634 ;	./src/main.c:137: OUTPUT2 = 1; // row2 output 1
                                    635 ;	assignBit
      000175 D2 85            [12]  636 	setb	_P0_5
                                    637 ;	./src/main.c:138: OUTPUT3 = 1; // row3 output 1
                                    638 ;	assignBit
      000177 D2 84            [12]  639 	setb	_P0_4
                                    640 ;	./src/main.c:139: OUTPUT0 = 0; // row0 output 0
                                    641 ;	assignBit
      000179 C2 83            [12]  642 	clr	_P0_3
                                    643 ;	./src/main.c:143: }
      00017B                        644 00107$:
                                    645 ;	./src/main.c:144: }
      00017B 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'read_curINPUT'
                                    649 ;------------------------------------------------------------
                                    650 ;i                         Allocated to registers r6 r7 
                                    651 ;------------------------------------------------------------
                                    652 ;	./src/main.c:146: void read_curINPUT(void)
                                    653 ;	-----------------------------------------
                                    654 ;	 function read_curINPUT
                                    655 ;	-----------------------------------------
      00017C                        656 _read_curINPUT:
                                    657 ;	./src/main.c:148: for (int i = 0; i < 4; i++)
      00017C 7E 00            [12]  658 	mov	r6,#0x00
      00017E 7F 00            [12]  659 	mov	r7,#0x00
      000180                        660 00106$:
      000180 C3               [12]  661 	clr	c
      000181 EE               [12]  662 	mov	a,r6
      000182 94 04            [12]  663 	subb	a,#0x04
      000184 EF               [12]  664 	mov	a,r7
      000185 64 80            [12]  665 	xrl	a,#0x80
      000187 94 80            [12]  666 	subb	a,#0x80
      000189 50 6C            [24]  667 	jnc	00104$
                                    668 ;	./src/main.c:150: scan_row(i);
      00018B 8E 82            [24]  669 	mov	dpl,r6
      00018D 8F 83            [24]  670 	mov	dph,r7
      00018F C0 07            [24]  671 	push	ar7
      000191 C0 06            [24]  672 	push	ar6
      000193 12 01 3E         [24]  673 	lcall	_scan_row
      000196 D0 06            [24]  674 	pop	ar6
      000198 D0 07            [24]  675 	pop	ar7
                                    676 ;	./src/main.c:151: if(i==3)
      00019A BE 03 10         [24]  677 	cjne	r6,#0x03,00102$
      00019D BF 00 0D         [24]  678 	cjne	r7,#0x00,00102$
                                    679 ;	./src/main.c:152: curINPUT[9] = INPUT2;
      0001A0 A2 81            [12]  680 	mov	c,_P0_1
      0001A2 E4               [12]  681 	clr	a
      0001A3 33               [12]  682 	rlc	a
      0001A4 FC               [12]  683 	mov	r4,a
      0001A5 7D 00            [12]  684 	mov	r5,#0x00
      0001A7 8C 1A            [24]  685 	mov	((_curINPUT + 0x0012) + 0),r4
      0001A9 8D 1B            [24]  686 	mov	((_curINPUT + 0x0012) + 1),r5
      0001AB 80 42            [24]  687 	sjmp	00107$
      0001AD                        688 00102$:
                                    689 ;	./src/main.c:154: curINPUT[i * 3 + 0] = INPUT1;
      0001AD 8E 05            [24]  690 	mov	ar5,r6
      0001AF ED               [12]  691 	mov	a,r5
      0001B0 75 F0 03         [24]  692 	mov	b,#0x03
      0001B3 A4               [48]  693 	mul	ab
      0001B4 FD               [12]  694 	mov	r5,a
      0001B5 25 E0            [12]  695 	add	a,acc
      0001B7 24 08            [12]  696 	add	a,#_curINPUT
      0001B9 F9               [12]  697 	mov	r1,a
      0001BA A2 80            [12]  698 	mov	c,_P0_0
      0001BC E4               [12]  699 	clr	a
      0001BD 33               [12]  700 	rlc	a
      0001BE FB               [12]  701 	mov	r3,a
      0001BF 7C 00            [12]  702 	mov	r4,#0x00
      0001C1 A7 03            [24]  703 	mov	@r1,ar3
      0001C3 09               [12]  704 	inc	r1
      0001C4 A7 04            [24]  705 	mov	@r1,ar4
      0001C6 19               [12]  706 	dec	r1
                                    707 ;	./src/main.c:155: curINPUT[i * 3 + 1] = INPUT2;
      0001C7 ED               [12]  708 	mov	a,r5
      0001C8 04               [12]  709 	inc	a
      0001C9 25 E0            [12]  710 	add	a,acc
      0001CB 24 08            [12]  711 	add	a,#_curINPUT
      0001CD F9               [12]  712 	mov	r1,a
      0001CE A2 81            [12]  713 	mov	c,_P0_1
      0001D0 E4               [12]  714 	clr	a
      0001D1 33               [12]  715 	rlc	a
      0001D2 FB               [12]  716 	mov	r3,a
      0001D3 7C 00            [12]  717 	mov	r4,#0x00
      0001D5 A7 03            [24]  718 	mov	@r1,ar3
      0001D7 09               [12]  719 	inc	r1
      0001D8 A7 04            [24]  720 	mov	@r1,ar4
      0001DA 19               [12]  721 	dec	r1
                                    722 ;	./src/main.c:156: curINPUT[i * 3 + 2] = INPUT3;
      0001DB 0D               [12]  723 	inc	r5
      0001DC 0D               [12]  724 	inc	r5
      0001DD ED               [12]  725 	mov	a,r5
      0001DE 2D               [12]  726 	add	a,r5
      0001DF 24 08            [12]  727 	add	a,#_curINPUT
      0001E1 F9               [12]  728 	mov	r1,a
      0001E2 A2 82            [12]  729 	mov	c,_P0_2
      0001E4 E4               [12]  730 	clr	a
      0001E5 33               [12]  731 	rlc	a
      0001E6 FC               [12]  732 	mov	r4,a
      0001E7 7D 00            [12]  733 	mov	r5,#0x00
      0001E9 A7 04            [24]  734 	mov	@r1,ar4
      0001EB 09               [12]  735 	inc	r1
      0001EC A7 05            [24]  736 	mov	@r1,ar5
      0001EE 19               [12]  737 	dec	r1
      0001EF                        738 00107$:
                                    739 ;	./src/main.c:148: for (int i = 0; i < 4; i++)
      0001EF 0E               [12]  740 	inc	r6
      0001F0 BE 00 01         [24]  741 	cjne	r6,#0x00,00126$
      0001F3 0F               [12]  742 	inc	r7
      0001F4                        743 00126$:
      0001F4 02 01 80         [24]  744 	ljmp	00106$
      0001F7                        745 00104$:
                                    746 ;	./src/main.c:159: curINPUT[10] = but1;
      0001F7 A2 B2            [12]  747 	mov	c,_INT0
      0001F9 E4               [12]  748 	clr	a
      0001FA 33               [12]  749 	rlc	a
      0001FB FE               [12]  750 	mov	r6,a
      0001FC 7F 00            [12]  751 	mov	r7,#0x00
      0001FE 8E 1C            [24]  752 	mov	((_curINPUT + 0x0014) + 0),r6
      000200 8F 1D            [24]  753 	mov	((_curINPUT + 0x0014) + 1),r7
                                    754 ;	./src/main.c:160: curINPUT[11] = but2;
      000202 A2 B3            [12]  755 	mov	c,_INT1
      000204 E4               [12]  756 	clr	a
      000205 33               [12]  757 	rlc	a
      000206 FE               [12]  758 	mov	r6,a
      000207 7F 00            [12]  759 	mov	r7,#0x00
      000209 8E 1E            [24]  760 	mov	((_curINPUT + 0x0016) + 0),r6
      00020B 8F 1F            [24]  761 	mov	((_curINPUT + 0x0016) + 1),r7
                                    762 ;	./src/main.c:161: curINPUT[12] = but3;
      00020D A2 A0            [12]  763 	mov	c,_P2_0
      00020F E4               [12]  764 	clr	a
      000210 33               [12]  765 	rlc	a
      000211 FE               [12]  766 	mov	r6,a
      000212 7F 00            [12]  767 	mov	r7,#0x00
      000214 8E 20            [24]  768 	mov	((_curINPUT + 0x0018) + 0),r6
      000216 8F 21            [24]  769 	mov	((_curINPUT + 0x0018) + 1),r7
                                    770 ;	./src/main.c:162: curINPUT[13] = but4;
      000218 A2 A1            [12]  771 	mov	c,_P2_1
      00021A E4               [12]  772 	clr	a
      00021B 33               [12]  773 	rlc	a
      00021C FE               [12]  774 	mov	r6,a
      00021D 7F 00            [12]  775 	mov	r7,#0x00
      00021F 8E 22            [24]  776 	mov	((_curINPUT + 0x001a) + 0),r6
      000221 8F 23            [24]  777 	mov	((_curINPUT + 0x001a) + 1),r7
                                    778 ;	./src/main.c:163: }
      000223 22               [24]  779 	ret
                                    780 ;------------------------------------------------------------
                                    781 ;Allocation info for local variables in function 'sequence'
                                    782 ;------------------------------------------------------------
                                    783 ;a                         Allocated to registers r6 r7 
                                    784 ;------------------------------------------------------------
                                    785 ;	./src/main.c:165: void sequence(void){
                                    786 ;	-----------------------------------------
                                    787 ;	 function sequence
                                    788 ;	-----------------------------------------
      000224                        789 _sequence:
                                    790 ;	./src/main.c:166: for(int a = 7; a > 0; a--){
      000224 7E 07            [12]  791 	mov	r6,#0x07
      000226 7F 00            [12]  792 	mov	r7,#0x00
      000228                        793 00103$:
      000228 C3               [12]  794 	clr	c
      000229 E4               [12]  795 	clr	a
      00022A 9E               [12]  796 	subb	a,r6
      00022B 74 80            [12]  797 	mov	a,#(0x00 ^ 0x80)
      00022D 8F F0            [24]  798 	mov	b,r7
      00022F 63 F0 80         [24]  799 	xrl	b,#0x80
      000232 95 F0            [12]  800 	subb	a,b
      000234 50 16            [24]  801 	jnc	00101$
                                    802 ;	./src/main.c:167: display[a] = display[a-1];
      000236 EE               [12]  803 	mov	a,r6
      000237 24 5C            [12]  804 	add	a,#_display
      000239 F9               [12]  805 	mov	r1,a
      00023A 8E 05            [24]  806 	mov	ar5,r6
      00023C ED               [12]  807 	mov	a,r5
      00023D 14               [12]  808 	dec	a
      00023E 24 5C            [12]  809 	add	a,#_display
      000240 F8               [12]  810 	mov	r0,a
      000241 86 05            [24]  811 	mov	ar5,@r0
      000243 A7 05            [24]  812 	mov	@r1,ar5
                                    813 ;	./src/main.c:166: for(int a = 7; a > 0; a--){
      000245 1E               [12]  814 	dec	r6
      000246 BE FF 01         [24]  815 	cjne	r6,#0xff,00117$
      000249 1F               [12]  816 	dec	r7
      00024A                        817 00117$:
      00024A 80 DC            [24]  818 	sjmp	00103$
      00024C                        819 00101$:
                                    820 ;	./src/main.c:170: delay_ms(100);
      00024C 90 00 64         [24]  821 	mov	dptr,#0x0064
                                    822 ;	./src/main.c:171: }
      00024F 02 04 51         [24]  823 	ljmp	_delay_ms
                                    824 ;------------------------------------------------------------
                                    825 ;Allocation info for local variables in function 'func_call'
                                    826 ;------------------------------------------------------------
                                    827 ;cmd                       Allocated to registers r6 r7 
                                    828 ;a                         Allocated to registers r6 r7 
                                    829 ;------------------------------------------------------------
                                    830 ;	./src/main.c:173: void func_call(unsigned int cmd){
                                    831 ;	-----------------------------------------
                                    832 ;	 function func_call
                                    833 ;	-----------------------------------------
      000252                        834 _func_call:
      000252 AE 82            [24]  835 	mov	r6,dpl
      000254 AF 83            [24]  836 	mov	r7,dph
                                    837 ;	./src/main.c:175: switch (cmd)
      000256 BE 0A 05         [24]  838 	cjne	r6,#0x0a,00151$
      000259 BF 00 02         [24]  839 	cjne	r7,#0x00,00151$
      00025C 80 1A            [24]  840 	sjmp	00101$
      00025E                        841 00151$:
      00025E BE 0B 05         [24]  842 	cjne	r6,#0x0b,00152$
      000261 BF 00 02         [24]  843 	cjne	r7,#0x00,00152$
      000264 80 32            [24]  844 	sjmp	00107$
      000266                        845 00152$:
      000266 BE 0C 05         [24]  846 	cjne	r6,#0x0c,00153$
      000269 BF 00 02         [24]  847 	cjne	r7,#0x00,00153$
      00026C 80 36            [24]  848 	sjmp	00125$
      00026E                        849 00153$:
      00026E BE 0D 06         [24]  850 	cjne	r6,#0x0d,00154$
      000271 BF 00 03         [24]  851 	cjne	r7,#0x00,00154$
      000274 02 02 E9         [24]  852 	ljmp	00110$
      000277                        853 00154$:
      000277 22               [24]  854 	ret
                                    855 ;	./src/main.c:177: case 10:	//op
      000278                        856 00101$:
                                    857 ;	./src/main.c:178: if(patt == 0x80)
      000278 74 80            [12]  858 	mov	a,#0x80
      00027A B5 64 05         [24]  859 	cjne	a,_patt,00105$
                                    860 ;	./src/main.c:179: patt = 0x08;
      00027D 75 64 08         [24]  861 	mov	_patt,#0x08
      000280 80 07            [24]  862 	sjmp	00106$
      000282                        863 00105$:
                                    864 ;	./src/main.c:180: else if (patt == 0x00)
      000282 E5 64            [12]  865 	mov	a,_patt
      000284 70 03            [24]  866 	jnz	00106$
                                    867 ;	./src/main.c:181: patt = 0x08;
      000286 75 64 08         [24]  868 	mov	_patt,#0x08
      000289                        869 00106$:
                                    870 ;	./src/main.c:183: patt = patt << 1;
      000289 E5 64            [12]  871 	mov	a,_patt
      00028B 25 E0            [12]  872 	add	a,acc
                                    873 ;	./src/main.c:184: led = ~patt;
      00028D F5 64            [12]  874 	mov	_patt,a
      00028F F4               [12]  875 	cpl	a
      000290 F5 90            [12]  876 	mov	_P1,a
                                    877 ;	./src/main.c:185: delay_ms(20);
      000292 90 00 14         [24]  878 	mov	dptr,#0x0014
                                    879 ;	./src/main.c:186: break;
                                    880 ;	./src/main.c:187: case 11:	//back <-
      000295 02 04 51         [24]  881 	ljmp	_delay_ms
      000298                        882 00107$:
                                    883 ;	./src/main.c:188: patt1 = 0x01;
      000298 75 65 01         [24]  884 	mov	_patt1,#0x01
                                    885 ;	./src/main.c:189: led = ~patt1;
      00029B 75 90 FE         [24]  886 	mov	_P1,#0xfe
                                    887 ;	./src/main.c:190: delay_ms(20);
      00029E 90 00 14         [24]  888 	mov	dptr,#0x0014
                                    889 ;	./src/main.c:191: break;
                                    890 ;	./src/main.c:193: for(int a = 0; a < 8; a++){
      0002A1 02 04 51         [24]  891 	ljmp	_delay_ms
      0002A4                        892 00125$:
      0002A4 7E 00            [12]  893 	mov	r6,#0x00
      0002A6 7F 00            [12]  894 	mov	r7,#0x00
      0002A8                        895 00114$:
      0002A8 C3               [12]  896 	clr	c
      0002A9 EE               [12]  897 	mov	a,r6
      0002AA 94 08            [12]  898 	subb	a,#0x08
      0002AC EF               [12]  899 	mov	a,r7
      0002AD 64 80            [12]  900 	xrl	a,#0x80
      0002AF 94 80            [12]  901 	subb	a,#0x80
      0002B1 50 21            [24]  902 	jnc	00109$
                                    903 ;	./src/main.c:194: display[a] = 0x00;
      0002B3 EE               [12]  904 	mov	a,r6
      0002B4 24 5C            [12]  905 	add	a,#_display
      0002B6 F8               [12]  906 	mov	r0,a
      0002B7 76 00            [12]  907 	mov	@r0,#0x00
                                    908 ;	./src/main.c:195: Write7219(a+1,0x00);
      0002B9 8E 05            [24]  909 	mov	ar5,r6
      0002BB ED               [12]  910 	mov	a,r5
      0002BC 04               [12]  911 	inc	a
      0002BD F5 82            [12]  912 	mov	dpl,a
      0002BF 75 68 00         [24]  913 	mov	_Write7219_PARM_2,#0x00
      0002C2 C0 07            [24]  914 	push	ar7
      0002C4 C0 06            [24]  915 	push	ar6
      0002C6 12 00 C2         [24]  916 	lcall	_Write7219
      0002C9 D0 06            [24]  917 	pop	ar6
      0002CB D0 07            [24]  918 	pop	ar7
                                    919 ;	./src/main.c:193: for(int a = 0; a < 8; a++){
      0002CD 0E               [12]  920 	inc	r6
      0002CE BE 00 D7         [24]  921 	cjne	r6,#0x00,00114$
      0002D1 0F               [12]  922 	inc	r7
      0002D2 80 D4            [24]  923 	sjmp	00114$
      0002D4                        924 00109$:
                                    925 ;	./src/main.c:197: Write7219(0x01,0x08);
      0002D4 75 68 08         [24]  926 	mov	_Write7219_PARM_2,#0x08
      0002D7 75 82 01         [24]  927 	mov	dpl,#0x01
      0002DA 12 00 C2         [24]  928 	lcall	_Write7219
                                    929 ;	./src/main.c:198: patt1 = 0x02;
      0002DD 75 65 02         [24]  930 	mov	_patt1,#0x02
                                    931 ;	./src/main.c:199: led = ~patt1;
      0002E0 75 90 FD         [24]  932 	mov	_P1,#0xfd
                                    933 ;	./src/main.c:200: delay_ms(20);
      0002E3 90 00 14         [24]  934 	mov	dptr,#0x0014
                                    935 ;	./src/main.c:201: break;
                                    936 ;	./src/main.c:202: case 13:	//equal=
      0002E6 02 04 51         [24]  937 	ljmp	_delay_ms
      0002E9                        938 00110$:
                                    939 ;	./src/main.c:203: patt1 = 0x04;
      0002E9 75 65 04         [24]  940 	mov	_patt1,#0x04
                                    941 ;	./src/main.c:204: led = ~patt1;
      0002EC 75 90 FB         [24]  942 	mov	_P1,#0xfb
                                    943 ;	./src/main.c:205: delay_ms(20);
      0002EF 90 00 14         [24]  944 	mov	dptr,#0x0014
                                    945 ;	./src/main.c:209: }
                                    946 ;	./src/main.c:210: }
      0002F2 02 04 51         [24]  947 	ljmp	_delay_ms
                                    948 ;------------------------------------------------------------
                                    949 ;Allocation info for local variables in function 'main'
                                    950 ;------------------------------------------------------------
                                    951 ;i                         Allocated to registers r6 r7 
                                    952 ;i                         Allocated to registers r6 r7 
                                    953 ;------------------------------------------------------------
                                    954 ;	./src/main.c:229: void main(void)
                                    955 ;	-----------------------------------------
                                    956 ;	 function main
                                    957 ;	-----------------------------------------
      0002F5                        958 _main:
                                    959 ;	./src/main.c:232: Initial();
      0002F5 12 00 E1         [24]  960 	lcall	_Initial
                                    961 ;	./src/main.c:233: for (int i = 0; i < 14; i++)
      0002F8 7E 00            [12]  962 	mov	r6,#0x00
      0002FA 7F 00            [12]  963 	mov	r7,#0x00
      0002FC                        964 00127$:
      0002FC C3               [12]  965 	clr	c
      0002FD EE               [12]  966 	mov	a,r6
      0002FE 94 0E            [12]  967 	subb	a,#0x0e
      000300 EF               [12]  968 	mov	a,r7
      000301 64 80            [12]  969 	xrl	a,#0x80
      000303 94 80            [12]  970 	subb	a,#0x80
      000305 50 27            [24]  971 	jnc	00101$
                                    972 ;	./src/main.c:235: curINPUT[i] = LEVEL_HIGH;
      000307 EE               [12]  973 	mov	a,r6
      000308 2E               [12]  974 	add	a,r6
      000309 FC               [12]  975 	mov	r4,a
      00030A EF               [12]  976 	mov	a,r7
      00030B 33               [12]  977 	rlc	a
      00030C EC               [12]  978 	mov	a,r4
      00030D 24 08            [12]  979 	add	a,#_curINPUT
      00030F F8               [12]  980 	mov	r0,a
      000310 76 01            [12]  981 	mov	@r0,#0x01
      000312 08               [12]  982 	inc	r0
      000313 76 00            [12]  983 	mov	@r0,#0x00
                                    984 ;	./src/main.c:236: state[i] = BTN_RELEASED;
      000315 EC               [12]  985 	mov	a,r4
      000316 24 24            [12]  986 	add	a,#_state
      000318 F8               [12]  987 	mov	r0,a
      000319 76 00            [12]  988 	mov	@r0,#0x00
      00031B 08               [12]  989 	inc	r0
      00031C 76 00            [12]  990 	mov	@r0,#0x00
                                    991 ;	./src/main.c:237: prestate[i] = BTN_RELEASED;
      00031E EC               [12]  992 	mov	a,r4
      00031F 24 40            [12]  993 	add	a,#_prestate
      000321 F8               [12]  994 	mov	r0,a
      000322 76 00            [12]  995 	mov	@r0,#0x00
      000324 08               [12]  996 	inc	r0
      000325 76 00            [12]  997 	mov	@r0,#0x00
                                    998 ;	./src/main.c:233: for (int i = 0; i < 14; i++)
      000327 0E               [12]  999 	inc	r6
      000328 BE 00 D1         [24] 1000 	cjne	r6,#0x00,00127$
      00032B 0F               [12] 1001 	inc	r7
      00032C 80 CE            [24] 1002 	sjmp	00127$
      00032E                       1003 00101$:
                                   1004 ;	./src/main.c:239: func_call(12);
      00032E 90 00 0C         [24] 1005 	mov	dptr,#0x000c
      000331 12 02 52         [24] 1006 	lcall	_func_call
                                   1007 ;	./src/main.c:241: while(1)
      000334                       1008 00124$:
                                   1009 ;	./src/main.c:243: delay_ms(20);
      000334 90 00 14         [24] 1010 	mov	dptr,#0x0014
      000337 12 04 51         [24] 1011 	lcall	_delay_ms
                                   1012 ;	./src/main.c:246: read_curINPUT();
      00033A 12 01 7C         [24] 1013 	lcall	_read_curINPUT
                                   1014 ;	./src/main.c:247: for (int i = 0; i < 14; i++)
      00033D 7E 00            [12] 1015 	mov	r6,#0x00
      00033F 7F 00            [12] 1016 	mov	r7,#0x00
      000341                       1017 00130$:
      000341 C3               [12] 1018 	clr	c
      000342 EE               [12] 1019 	mov	a,r6
      000343 94 0E            [12] 1020 	subb	a,#0x0e
      000345 EF               [12] 1021 	mov	a,r7
      000346 64 80            [12] 1022 	xrl	a,#0x80
      000348 94 80            [12] 1023 	subb	a,#0x80
      00034A 50 E8            [24] 1024 	jnc	00124$
                                   1025 ;	./src/main.c:250: switch (state[i])
      00034C EE               [12] 1026 	mov	a,r6
      00034D 2E               [12] 1027 	add	a,r6
      00034E FC               [12] 1028 	mov	r4,a
      00034F EF               [12] 1029 	mov	a,r7
      000350 33               [12] 1030 	rlc	a
      000351 FD               [12] 1031 	mov	r5,a
      000352 EC               [12] 1032 	mov	a,r4
      000353 24 24            [12] 1033 	add	a,#_state
      000355 F9               [12] 1034 	mov	r1,a
      000356 87 02            [24] 1035 	mov	ar2,@r1
      000358 09               [12] 1036 	inc	r1
      000359 87 03            [24] 1037 	mov	ar3,@r1
      00035B 19               [12] 1038 	dec	r1
      00035C BA 00 05         [24] 1039 	cjne	r2,#0x00,00194$
      00035F BB 00 02         [24] 1040 	cjne	r3,#0x00,00194$
      000362 80 10            [24] 1041 	sjmp	00102$
      000364                       1042 00194$:
      000364 BA 01 05         [24] 1043 	cjne	r2,#0x01,00195$
      000367 BB 00 02         [24] 1044 	cjne	r3,#0x00,00195$
      00036A 80 26            [24] 1045 	sjmp	00106$
      00036C                       1046 00195$:
                                   1047 ;	./src/main.c:252: case BTN_RELEASED:
      00036C BA 02 5D         [24] 1048 	cjne	r2,#0x02,00115$
      00036F BB 00 5A         [24] 1049 	cjne	r3,#0x00,00115$
      000372 80 3C            [24] 1050 	sjmp	00110$
      000374                       1051 00102$:
                                   1052 ;	./src/main.c:253: if (curINPUT[i] == LEVEL_LOW)
      000374 EC               [12] 1053 	mov	a,r4
      000375 24 08            [12] 1054 	add	a,#_curINPUT
      000377 F8               [12] 1055 	mov	r0,a
      000378 86 02            [24] 1056 	mov	ar2,@r0
      00037A 08               [12] 1057 	inc	r0
      00037B 86 03            [24] 1058 	mov	ar3,@r0
      00037D 18               [12] 1059 	dec	r0
      00037E EA               [12] 1060 	mov	a,r2
      00037F 4B               [12] 1061 	orl	a,r3
      000380 70 08            [24] 1062 	jnz	00104$
                                   1063 ;	./src/main.c:254: state[i] = BTN_DEBOUNCED;
      000382 77 01            [12] 1064 	mov	@r1,#0x01
      000384 09               [12] 1065 	inc	r1
      000385 77 00            [12] 1066 	mov	@r1,#0x00
      000387 19               [12] 1067 	dec	r1
      000388 80 42            [24] 1068 	sjmp	00115$
      00038A                       1069 00104$:
                                   1070 ;	./src/main.c:256: state[i] = BTN_RELEASED;
      00038A 77 00            [12] 1071 	mov	@r1,#0x00
      00038C 09               [12] 1072 	inc	r1
      00038D 77 00            [12] 1073 	mov	@r1,#0x00
      00038F 19               [12] 1074 	dec	r1
                                   1075 ;	./src/main.c:257: break;
                                   1076 ;	./src/main.c:258: case BTN_DEBOUNCED:
      000390 80 3A            [24] 1077 	sjmp	00115$
      000392                       1078 00106$:
                                   1079 ;	./src/main.c:259: if (curINPUT[i] == LEVEL_LOW)
      000392 EC               [12] 1080 	mov	a,r4
      000393 24 08            [12] 1081 	add	a,#_curINPUT
      000395 F8               [12] 1082 	mov	r0,a
      000396 86 02            [24] 1083 	mov	ar2,@r0
      000398 08               [12] 1084 	inc	r0
      000399 86 03            [24] 1085 	mov	ar3,@r0
      00039B 18               [12] 1086 	dec	r0
      00039C EA               [12] 1087 	mov	a,r2
      00039D 4B               [12] 1088 	orl	a,r3
      00039E 70 08            [24] 1089 	jnz	00108$
                                   1090 ;	./src/main.c:260: state[i] = BTN_PRESSED;
      0003A0 77 02            [12] 1091 	mov	@r1,#0x02
      0003A2 09               [12] 1092 	inc	r1
      0003A3 77 00            [12] 1093 	mov	@r1,#0x00
      0003A5 19               [12] 1094 	dec	r1
      0003A6 80 24            [24] 1095 	sjmp	00115$
      0003A8                       1096 00108$:
                                   1097 ;	./src/main.c:262: state[i] = BTN_RELEASED;
      0003A8 77 00            [12] 1098 	mov	@r1,#0x00
      0003AA 09               [12] 1099 	inc	r1
      0003AB 77 00            [12] 1100 	mov	@r1,#0x00
      0003AD 19               [12] 1101 	dec	r1
                                   1102 ;	./src/main.c:263: break;
                                   1103 ;	./src/main.c:264: case BTN_PRESSED:
      0003AE 80 1C            [24] 1104 	sjmp	00115$
      0003B0                       1105 00110$:
                                   1106 ;	./src/main.c:265: if (curINPUT[i] == LEVEL_LOW)
      0003B0 EC               [12] 1107 	mov	a,r4
      0003B1 24 08            [12] 1108 	add	a,#_curINPUT
      0003B3 F8               [12] 1109 	mov	r0,a
      0003B4 86 04            [24] 1110 	mov	ar4,@r0
      0003B6 08               [12] 1111 	inc	r0
      0003B7 86 05            [24] 1112 	mov	ar5,@r0
      0003B9 18               [12] 1113 	dec	r0
      0003BA EC               [12] 1114 	mov	a,r4
      0003BB 4D               [12] 1115 	orl	a,r5
      0003BC 70 08            [24] 1116 	jnz	00112$
                                   1117 ;	./src/main.c:266: state[i] = BTN_PRESSED;
      0003BE 77 02            [12] 1118 	mov	@r1,#0x02
      0003C0 09               [12] 1119 	inc	r1
      0003C1 77 00            [12] 1120 	mov	@r1,#0x00
      0003C3 19               [12] 1121 	dec	r1
      0003C4 80 06            [24] 1122 	sjmp	00115$
      0003C6                       1123 00112$:
                                   1124 ;	./src/main.c:268: state[i] = BTN_RELEASED;
      0003C6 77 00            [12] 1125 	mov	@r1,#0x00
      0003C8 09               [12] 1126 	inc	r1
      0003C9 77 00            [12] 1127 	mov	@r1,#0x00
      0003CB 19               [12] 1128 	dec	r1
                                   1129 ;	./src/main.c:272: }
      0003CC                       1130 00115$:
                                   1131 ;	./src/main.c:274: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)){
      0003CC EE               [12] 1132 	mov	a,r6
      0003CD 2E               [12] 1133 	add	a,r6
      0003CE FC               [12] 1134 	mov	r4,a
      0003CF EF               [12] 1135 	mov	a,r7
      0003D0 33               [12] 1136 	rlc	a
      0003D1 FD               [12] 1137 	mov	r5,a
      0003D2 EC               [12] 1138 	mov	a,r4
      0003D3 24 24            [12] 1139 	add	a,#_state
      0003D5 F9               [12] 1140 	mov	r1,a
      0003D6 87 02            [24] 1141 	mov	ar2,@r1
      0003D8 09               [12] 1142 	inc	r1
      0003D9 87 03            [24] 1143 	mov	ar3,@r1
      0003DB 19               [12] 1144 	dec	r1
      0003DC EA               [12] 1145 	mov	a,r2
      0003DD 4B               [12] 1146 	orl	a,r3
      0003DE 70 50            [24] 1147 	jnz	00120$
      0003E0 EC               [12] 1148 	mov	a,r4
      0003E1 24 40            [12] 1149 	add	a,#_prestate
      0003E3 F9               [12] 1150 	mov	r1,a
      0003E4 87 04            [24] 1151 	mov	ar4,@r1
      0003E6 09               [12] 1152 	inc	r1
      0003E7 87 05            [24] 1153 	mov	ar5,@r1
      0003E9 19               [12] 1154 	dec	r1
      0003EA BC 02 43         [24] 1155 	cjne	r4,#0x02,00120$
      0003ED BD 00 40         [24] 1156 	cjne	r5,#0x00,00120$
                                   1157 ;	./src/main.c:276: if (i < 10){
      0003F0 C3               [12] 1158 	clr	c
      0003F1 EE               [12] 1159 	mov	a,r6
      0003F2 94 0A            [12] 1160 	subb	a,#0x0a
      0003F4 EF               [12] 1161 	mov	a,r7
      0003F5 64 80            [12] 1162 	xrl	a,#0x80
      0003F7 94 80            [12] 1163 	subb	a,#0x80
      0003F9 50 26            [24] 1164 	jnc	00117$
                                   1165 ;	./src/main.c:277: sequence();
      0003FB C0 07            [24] 1166 	push	ar7
      0003FD C0 06            [24] 1167 	push	ar6
      0003FF 12 02 24         [24] 1168 	lcall	_sequence
      000402 D0 06            [24] 1169 	pop	ar6
      000404 D0 07            [24] 1170 	pop	ar7
                                   1171 ;	./src/main.c:278: display[0] = display_seg[i];
      000406 EE               [12] 1172 	mov	a,r6
      000407 24 69            [12] 1173 	add	a,#_display_seg
      000409 F9               [12] 1174 	mov	r1,a
      00040A 87 05            [24] 1175 	mov	ar5,@r1
      00040C 8D 5C            [24] 1176 	mov	_display,r5
                                   1177 ;	./src/main.c:279: draw(display);
      00040E 90 00 5C         [24] 1178 	mov	dptr,#_display
      000411 75 F0 40         [24] 1179 	mov	b,#0x40
      000414 C0 07            [24] 1180 	push	ar7
      000416 C0 06            [24] 1181 	push	ar6
      000418 12 01 23         [24] 1182 	lcall	_draw
      00041B D0 06            [24] 1183 	pop	ar6
      00041D D0 07            [24] 1184 	pop	ar7
      00041F 80 0F            [24] 1185 	sjmp	00120$
      000421                       1186 00117$:
                                   1187 ;	./src/main.c:281: func_call(i);
      000421 8E 82            [24] 1188 	mov	dpl,r6
      000423 8F 83            [24] 1189 	mov	dph,r7
      000425 C0 07            [24] 1190 	push	ar7
      000427 C0 06            [24] 1191 	push	ar6
      000429 12 02 52         [24] 1192 	lcall	_func_call
      00042C D0 06            [24] 1193 	pop	ar6
      00042E D0 07            [24] 1194 	pop	ar7
      000430                       1195 00120$:
                                   1196 ;	./src/main.c:284: prestate[i] = state[i];
      000430 EE               [12] 1197 	mov	a,r6
      000431 2E               [12] 1198 	add	a,r6
      000432 FC               [12] 1199 	mov	r4,a
      000433 EF               [12] 1200 	mov	a,r7
      000434 33               [12] 1201 	rlc	a
      000435 EC               [12] 1202 	mov	a,r4
      000436 24 40            [12] 1203 	add	a,#_prestate
      000438 F9               [12] 1204 	mov	r1,a
      000439 EC               [12] 1205 	mov	a,r4
      00043A 24 24            [12] 1206 	add	a,#_state
      00043C F8               [12] 1207 	mov	r0,a
      00043D 86 04            [24] 1208 	mov	ar4,@r0
      00043F 08               [12] 1209 	inc	r0
      000440 86 05            [24] 1210 	mov	ar5,@r0
      000442 18               [12] 1211 	dec	r0
      000443 A7 04            [24] 1212 	mov	@r1,ar4
      000445 09               [12] 1213 	inc	r1
      000446 A7 05            [24] 1214 	mov	@r1,ar5
      000448 19               [12] 1215 	dec	r1
                                   1216 ;	./src/main.c:247: for (int i = 0; i < 14; i++)
      000449 0E               [12] 1217 	inc	r6
      00044A BE 00 01         [24] 1218 	cjne	r6,#0x00,00204$
      00044D 0F               [12] 1219 	inc	r7
      00044E                       1220 00204$:
                                   1221 ;	./src/main.c:287: }
      00044E 02 03 41         [24] 1222 	ljmp	00130$
                                   1223 	.area CSEG    (CODE)
                                   1224 	.area CONST   (CODE)
                                   1225 	.area XINIT   (CODE)
                                   1226 	.area CABS    (ABS,CODE)
