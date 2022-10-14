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
      000000 02 00 34         [24]  318 	ljmp	__sdcc_gsinit_startup
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
      00008D 75 64 08         [24]  333 	mov	_patt,#0x08
                                    334 ;	./src/main.c:53: unsigned int op_cnt = 0;
      000090 E4               [12]  335 	clr	a
      000091 F5 66            [12]  336 	mov	_op_cnt,a
      000093 F5 67            [12]  337 	mov	(_op_cnt + 1),a
                                    338 ;	./src/main.c:217: unsigned char display_seg[] = {
      000095 75 69 30         [24]  339 	mov	_display_seg,#0x30
      000098 75 6A 6D         [24]  340 	mov	(_display_seg + 0x0001),#0x6d
      00009B 75 6B 79         [24]  341 	mov	(_display_seg + 0x0002),#0x79
      00009E 75 6C 33         [24]  342 	mov	(_display_seg + 0x0003),#0x33
      0000A1 75 6D 5B         [24]  343 	mov	(_display_seg + 0x0004),#0x5b
      0000A4 75 6E 5F         [24]  344 	mov	(_display_seg + 0x0005),#0x5f
      0000A7 75 6F 70         [24]  345 	mov	(_display_seg + 0x0006),#0x70
      0000AA 75 70 7F         [24]  346 	mov	(_display_seg + 0x0007),#0x7f
      0000AD 75 71 7B         [24]  347 	mov	(_display_seg + 0x0008),#0x7b
      0000B0 75 72 7E         [24]  348 	mov	(_display_seg + 0x0009),#0x7e
      0000B3 75 73 4F         [24]  349 	mov	(_display_seg + 0x000a),#0x4f
                                    350 	.area GSFINAL (CODE)
      0000B6 02 00 03         [24]  351 	ljmp	__sdcc_program_startup
                                    352 ;--------------------------------------------------------
                                    353 ; Home
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area HOME    (CODE)
      000003                        357 __sdcc_program_startup:
      000003 02 03 54         [24]  358 	ljmp	_main
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
      0000B9                        375 _sendbyte:
                           000007   376 	ar7 = 0x07
                           000006   377 	ar6 = 0x06
                           000005   378 	ar5 = 0x05
                           000004   379 	ar4 = 0x04
                           000003   380 	ar3 = 0x03
                           000002   381 	ar2 = 0x02
                           000001   382 	ar1 = 0x01
                           000000   383 	ar0 = 0x00
      0000B9 AF 82            [24]  384 	mov	r7,dpl
                                    385 ;	./src/main.c:58: for (i=0;i<8;i++)        //get last 8 bits(address)
      0000BB 7E 00            [12]  386 	mov	r6,#0x00
      0000BD                        387 00103$:
                                    388 ;	./src/main.c:60: CLK = 0;
                                    389 ;	assignBit
      0000BD C2 A0            [12]  390 	clr	_P2_0
                                    391 ;	./src/main.c:61: DOUT = ( address & 0x80);   //get msb and shift left
      0000BF EF               [12]  392 	mov	a,r7
      0000C0 23               [12]  393 	rl	a
      0000C1 54 01            [12]  394 	anl	a,#0x01
                                    395 ;	assignBit
      0000C3 24 FF            [12]  396 	add	a,#0xff
      0000C5 92 A2            [24]  397 	mov	_P2_2,c
                                    398 ;	./src/main.c:62: address <<= 1;
      0000C7 8F 05            [24]  399 	mov	ar5,r7
      0000C9 ED               [12]  400 	mov	a,r5
      0000CA 2D               [12]  401 	add	a,r5
      0000CB FF               [12]  402 	mov	r7,a
                                    403 ;	./src/main.c:63: CLK = 1;
                                    404 ;	assignBit
      0000CC D2 A0            [12]  405 	setb	_P2_0
                                    406 ;	./src/main.c:58: for (i=0;i<8;i++)        //get last 8 bits(address)
      0000CE 0E               [12]  407 	inc	r6
      0000CF BE 08 00         [24]  408 	cjne	r6,#0x08,00123$
      0000D2                        409 00123$:
      0000D2 40 E9            [24]  410 	jc	00103$
                                    411 ;	./src/main.c:65: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000D4 7F 00            [12]  412 	mov	r7,#0x00
      0000D6                        413 00105$:
                                    414 ;	./src/main.c:67: CLK = 0;
                                    415 ;	assignBit
      0000D6 C2 A0            [12]  416 	clr	_P2_0
                                    417 ;	./src/main.c:68: DOUT=( dat & 0x80);    //get msb and shit left
      0000D8 E5 74            [12]  418 	mov	a,_sendbyte_PARM_2
      0000DA 23               [12]  419 	rl	a
      0000DB 54 01            [12]  420 	anl	a,#0x01
                                    421 ;	assignBit
      0000DD 24 FF            [12]  422 	add	a,#0xff
      0000DF 92 A2            [24]  423 	mov	_P2_2,c
                                    424 ;	./src/main.c:69: dat <<= 1;
      0000E1 E5 74            [12]  425 	mov	a,_sendbyte_PARM_2
      0000E3 25 E0            [12]  426 	add	a,acc
      0000E5 F5 74            [12]  427 	mov	_sendbyte_PARM_2,a
                                    428 ;	./src/main.c:70: CLK = 1;
                                    429 ;	assignBit
      0000E7 D2 A0            [12]  430 	setb	_P2_0
                                    431 ;	./src/main.c:65: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000E9 0F               [12]  432 	inc	r7
      0000EA BF 08 00         [24]  433 	cjne	r7,#0x08,00125$
      0000ED                        434 00125$:
      0000ED 40 E7            [24]  435 	jc	00105$
                                    436 ;	./src/main.c:72: }
      0000EF 22               [24]  437 	ret
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
      0000F0                        449 _Write7219:
      0000F0 AF 82            [24]  450 	mov	r7,dpl
                                    451 ;	./src/main.c:78: LOAD = 0;
                                    452 ;	assignBit
      0000F2 C2 A1            [12]  453 	clr	_P2_1
                                    454 ;	./src/main.c:80: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000F4 7E 01            [12]  455 	mov	r6,#0x01
      0000F6                        456 00102$:
                                    457 ;	./src/main.c:82: sendbyte(address, dat);
      0000F6 85 68 74         [24]  458 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000F9 8F 82            [24]  459 	mov	dpl,r7
      0000FB C0 07            [24]  460 	push	ar7
      0000FD C0 06            [24]  461 	push	ar6
      0000FF 12 00 B9         [24]  462 	lcall	_sendbyte
      000102 D0 06            [24]  463 	pop	ar6
      000104 D0 07            [24]  464 	pop	ar7
                                    465 ;	./src/main.c:80: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      000106 0E               [12]  466 	inc	r6
      000107 EE               [12]  467 	mov	a,r6
      000108 24 FE            [12]  468 	add	a,#0xff - 0x01
      00010A 50 EA            [24]  469 	jnc	00102$
                                    470 ;	./src/main.c:85: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    471 ;	assignBit
      00010C D2 A1            [12]  472 	setb	_P2_1
                                    473 ;	./src/main.c:86: }
      00010E 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'Initial'
                                    477 ;------------------------------------------------------------
                                    478 ;i                         Allocated to registers r7 
                                    479 ;------------------------------------------------------------
                                    480 ;	./src/main.c:89: void Initial(void)
                                    481 ;	-----------------------------------------
                                    482 ;	 function Initial
                                    483 ;	-----------------------------------------
      00010F                        484 _Initial:
                                    485 ;	./src/main.c:92: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      00010F 75 68 01         [24]  486 	mov	_Write7219_PARM_2,#0x01
      000112 75 82 0C         [24]  487 	mov	dpl,#0x0c
      000115 12 00 F0         [24]  488 	lcall	_Write7219
                                    489 ;	./src/main.c:93: Write7219(DISPLAY_TEST,0x00);
      000118 75 68 00         [24]  490 	mov	_Write7219_PARM_2,#0x00
      00011B 75 82 0F         [24]  491 	mov	dpl,#0x0f
      00011E 12 00 F0         [24]  492 	lcall	_Write7219
                                    493 ;	./src/main.c:94: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      000121 75 68 00         [24]  494 	mov	_Write7219_PARM_2,#0x00
      000124 75 82 09         [24]  495 	mov	dpl,#0x09
      000127 12 00 F0         [24]  496 	lcall	_Write7219
                                    497 ;	./src/main.c:95: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      00012A 75 68 07         [24]  498 	mov	_Write7219_PARM_2,#0x07
      00012D 75 82 0B         [24]  499 	mov	dpl,#0x0b
      000130 12 00 F0         [24]  500 	lcall	_Write7219
                                    501 ;	./src/main.c:96: Write7219(INTENSITY,0x00);         //set up intensity
      000133 75 68 00         [24]  502 	mov	_Write7219_PARM_2,#0x00
      000136 75 82 0A         [24]  503 	mov	dpl,#0x0a
      000139 12 00 F0         [24]  504 	lcall	_Write7219
                                    505 ;	./src/main.c:97: for(i=1;i<=8;i++){
      00013C 7F 01            [12]  506 	mov	r7,#0x01
      00013E                        507 00102$:
                                    508 ;	./src/main.c:98: Write7219(i,0x00);   //turn off all LED
      00013E 75 68 00         [24]  509 	mov	_Write7219_PARM_2,#0x00
      000141 8F 82            [24]  510 	mov	dpl,r7
      000143 C0 07            [24]  511 	push	ar7
      000145 12 00 F0         [24]  512 	lcall	_Write7219
      000148 D0 07            [24]  513 	pop	ar7
                                    514 ;	./src/main.c:97: for(i=1;i<=8;i++){
      00014A 0F               [12]  515 	inc	r7
      00014B EF               [12]  516 	mov	a,r7
      00014C 24 F7            [12]  517 	add	a,#0xff - 0x08
      00014E 50 EE            [24]  518 	jnc	00102$
                                    519 ;	./src/main.c:100: }
      000150 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'draw'
                                    523 ;------------------------------------------------------------
                                    524 ;picture                   Allocated to registers r5 r6 r7 
                                    525 ;i                         Allocated to registers r7 
                                    526 ;------------------------------------------------------------
                                    527 ;	./src/main.c:103: void draw(unsigned char *picture){
                                    528 ;	-----------------------------------------
                                    529 ;	 function draw
                                    530 ;	-----------------------------------------
      000151                        531 _draw:
      000151 AD 82            [24]  532 	mov	r5,dpl
      000153 AE 83            [24]  533 	mov	r6,dph
      000155 AF F0            [24]  534 	mov	r7,b
                                    535 ;	./src/main.c:106: if(picture == display){
      000157 74 5C            [12]  536 	mov	a,#_display
      000159 C0 E0            [24]  537 	push	acc
      00015B 74 00            [12]  538 	mov	a,#(_display >> 8)
      00015D C0 E0            [24]  539 	push	acc
      00015F 74 40            [12]  540 	mov	a,#0x40
      000161 C0 E0            [24]  541 	push	acc
      000163 8D 82            [24]  542 	mov	dpl,r5
      000165 8E 83            [24]  543 	mov	dph,r6
      000167 8F F0            [24]  544 	mov	b,r7
      000169 12 00 06         [24]  545 	lcall	___gptr_cmp
      00016C 15 81            [12]  546 	dec	sp
      00016E 15 81            [12]  547 	dec	sp
      000170 15 81            [12]  548 	dec	sp
      000172 60 02            [24]  549 	jz	00118$
      000174 80 0C            [24]  550 	sjmp	00109$
      000176                        551 00118$:
                                    552 ;	./src/main.c:107: patt = 0x80;
      000176 75 64 80         [24]  553 	mov	_patt,#0x80
                                    554 ;	./src/main.c:108: led = ~patt;
      000179 75 90 7F         [24]  555 	mov	_P1,#0x7f
                                    556 ;	./src/main.c:109: delay_ms(20);
      00017C 90 00 14         [24]  557 	mov	dptr,#0x0014
      00017F 12 04 B0         [24]  558 	lcall	_delay_ms
                                    559 ;	./src/main.c:111: for(i=1; i<=8; i++) {
      000182                        560 00109$:
      000182 7F 01            [12]  561 	mov	r7,#0x01
      000184                        562 00104$:
                                    563 ;	./src/main.c:112: Write7219(i, display[i-1]);
      000184 8F 06            [24]  564 	mov	ar6,r7
      000186 EE               [12]  565 	mov	a,r6
      000187 14               [12]  566 	dec	a
      000188 24 5C            [12]  567 	add	a,#_display
      00018A F9               [12]  568 	mov	r1,a
      00018B 87 68            [24]  569 	mov	_Write7219_PARM_2,@r1
      00018D 8F 82            [24]  570 	mov	dpl,r7
      00018F C0 07            [24]  571 	push	ar7
      000191 12 00 F0         [24]  572 	lcall	_Write7219
      000194 D0 07            [24]  573 	pop	ar7
                                    574 ;	./src/main.c:111: for(i=1; i<=8; i++) {
      000196 0F               [12]  575 	inc	r7
      000197 EF               [12]  576 	mov	a,r7
      000198 24 F7            [12]  577 	add	a,#0xff - 0x08
      00019A 50 E8            [24]  578 	jnc	00104$
                                    579 ;	./src/main.c:115: }
      00019C 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'scan_row'
                                    583 ;------------------------------------------------------------
                                    584 ;row                       Allocated to registers r6 r7 
                                    585 ;------------------------------------------------------------
                                    586 ;	./src/main.c:117: void scan_row(unsigned int row)
                                    587 ;	-----------------------------------------
                                    588 ;	 function scan_row
                                    589 ;	-----------------------------------------
      00019D                        590 _scan_row:
      00019D AE 82            [24]  591 	mov	r6,dpl
      00019F AF 83            [24]  592 	mov	r7,dph
                                    593 ;	./src/main.c:119: switch (row)
      0001A1 C3               [12]  594 	clr	c
      0001A2 74 03            [12]  595 	mov	a,#0x03
      0001A4 9E               [12]  596 	subb	a,r6
      0001A5 E4               [12]  597 	clr	a
      0001A6 9F               [12]  598 	subb	a,r7
      0001A7 40 31            [24]  599 	jc	00107$
      0001A9 EE               [12]  600 	mov	a,r6
      0001AA 2E               [12]  601 	add	a,r6
                                    602 ;	./src/main.c:121: case 0:
      0001AB 90 01 AF         [24]  603 	mov	dptr,#00114$
      0001AE 73               [24]  604 	jmp	@a+dptr
      0001AF                        605 00114$:
      0001AF 80 06            [24]  606 	sjmp	00101$
      0001B1 80 0D            [24]  607 	sjmp	00102$
      0001B3 80 14            [24]  608 	sjmp	00103$
      0001B5 80 1B            [24]  609 	sjmp	00104$
      0001B7                        610 00101$:
                                    611 ;	./src/main.c:122: OUTPUT1 = 0; // row1 output 0
                                    612 ;	assignBit
      0001B7 C2 86            [12]  613 	clr	_P0_6
                                    614 ;	./src/main.c:123: OUTPUT2 = 1; // row2 output 1
                                    615 ;	assignBit
      0001B9 D2 85            [12]  616 	setb	_P0_5
                                    617 ;	./src/main.c:124: OUTPUT3 = 1; // row3 output 1
                                    618 ;	assignBit
      0001BB D2 84            [12]  619 	setb	_P0_4
                                    620 ;	./src/main.c:125: OUTPUT0 = 1; // row0 output 1
                                    621 ;	assignBit
      0001BD D2 83            [12]  622 	setb	_P0_3
                                    623 ;	./src/main.c:126: break;
                                    624 ;	./src/main.c:127: case 1:
      0001BF 22               [24]  625 	ret
      0001C0                        626 00102$:
                                    627 ;	./src/main.c:128: OUTPUT1 = 1; // row1 output 1
                                    628 ;	assignBit
      0001C0 D2 86            [12]  629 	setb	_P0_6
                                    630 ;	./src/main.c:129: OUTPUT2 = 0; // row2 output 0
                                    631 ;	assignBit
      0001C2 C2 85            [12]  632 	clr	_P0_5
                                    633 ;	./src/main.c:130: OUTPUT3 = 1; // row3 output 1
                                    634 ;	assignBit
      0001C4 D2 84            [12]  635 	setb	_P0_4
                                    636 ;	./src/main.c:131: OUTPUT0 = 1; // row0 output 1
                                    637 ;	assignBit
      0001C6 D2 83            [12]  638 	setb	_P0_3
                                    639 ;	./src/main.c:132: break;
                                    640 ;	./src/main.c:133: case 2:
      0001C8 22               [24]  641 	ret
      0001C9                        642 00103$:
                                    643 ;	./src/main.c:134: OUTPUT1 = 1; // row1 output 1
                                    644 ;	assignBit
      0001C9 D2 86            [12]  645 	setb	_P0_6
                                    646 ;	./src/main.c:135: OUTPUT2 = 1; // row2 output 1
                                    647 ;	assignBit
      0001CB D2 85            [12]  648 	setb	_P0_5
                                    649 ;	./src/main.c:136: OUTPUT3 = 0; // row3 output 0
                                    650 ;	assignBit
      0001CD C2 84            [12]  651 	clr	_P0_4
                                    652 ;	./src/main.c:137: OUTPUT0 = 1; // row0 output 1
                                    653 ;	assignBit
      0001CF D2 83            [12]  654 	setb	_P0_3
                                    655 ;	./src/main.c:138: break;
                                    656 ;	./src/main.c:139: case 3:
      0001D1 22               [24]  657 	ret
      0001D2                        658 00104$:
                                    659 ;	./src/main.c:140: OUTPUT1 = 1; // row1 output 1
                                    660 ;	assignBit
      0001D2 D2 86            [12]  661 	setb	_P0_6
                                    662 ;	./src/main.c:141: OUTPUT2 = 1; // row2 output 1
                                    663 ;	assignBit
      0001D4 D2 85            [12]  664 	setb	_P0_5
                                    665 ;	./src/main.c:142: OUTPUT3 = 1; // row3 output 1
                                    666 ;	assignBit
      0001D6 D2 84            [12]  667 	setb	_P0_4
                                    668 ;	./src/main.c:143: OUTPUT0 = 0; // row0 output 0
                                    669 ;	assignBit
      0001D8 C2 83            [12]  670 	clr	_P0_3
                                    671 ;	./src/main.c:147: }
      0001DA                        672 00107$:
                                    673 ;	./src/main.c:148: }
      0001DA 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'read_curINPUT'
                                    677 ;------------------------------------------------------------
                                    678 ;i                         Allocated to registers r6 r7 
                                    679 ;------------------------------------------------------------
                                    680 ;	./src/main.c:150: void read_curINPUT(void)
                                    681 ;	-----------------------------------------
                                    682 ;	 function read_curINPUT
                                    683 ;	-----------------------------------------
      0001DB                        684 _read_curINPUT:
                                    685 ;	./src/main.c:152: for (int i = 0; i < 4; i++)
      0001DB 7E 00            [12]  686 	mov	r6,#0x00
      0001DD 7F 00            [12]  687 	mov	r7,#0x00
      0001DF                        688 00106$:
      0001DF C3               [12]  689 	clr	c
      0001E0 EE               [12]  690 	mov	a,r6
      0001E1 94 04            [12]  691 	subb	a,#0x04
      0001E3 EF               [12]  692 	mov	a,r7
      0001E4 64 80            [12]  693 	xrl	a,#0x80
      0001E6 94 80            [12]  694 	subb	a,#0x80
      0001E8 50 6C            [24]  695 	jnc	00104$
                                    696 ;	./src/main.c:154: scan_row(i);
      0001EA 8E 82            [24]  697 	mov	dpl,r6
      0001EC 8F 83            [24]  698 	mov	dph,r7
      0001EE C0 07            [24]  699 	push	ar7
      0001F0 C0 06            [24]  700 	push	ar6
      0001F2 12 01 9D         [24]  701 	lcall	_scan_row
      0001F5 D0 06            [24]  702 	pop	ar6
      0001F7 D0 07            [24]  703 	pop	ar7
                                    704 ;	./src/main.c:155: if(i==3)
      0001F9 BE 03 10         [24]  705 	cjne	r6,#0x03,00102$
      0001FC BF 00 0D         [24]  706 	cjne	r7,#0x00,00102$
                                    707 ;	./src/main.c:156: curINPUT[9] = INPUT2;
      0001FF A2 81            [12]  708 	mov	c,_P0_1
      000201 E4               [12]  709 	clr	a
      000202 33               [12]  710 	rlc	a
      000203 FC               [12]  711 	mov	r4,a
      000204 7D 00            [12]  712 	mov	r5,#0x00
      000206 8C 1A            [24]  713 	mov	((_curINPUT + 0x0012) + 0),r4
      000208 8D 1B            [24]  714 	mov	((_curINPUT + 0x0012) + 1),r5
      00020A 80 42            [24]  715 	sjmp	00107$
      00020C                        716 00102$:
                                    717 ;	./src/main.c:158: curINPUT[i * 3 + 0] = INPUT1;
      00020C 8E 05            [24]  718 	mov	ar5,r6
      00020E ED               [12]  719 	mov	a,r5
      00020F 75 F0 03         [24]  720 	mov	b,#0x03
      000212 A4               [48]  721 	mul	ab
      000213 FD               [12]  722 	mov	r5,a
      000214 25 E0            [12]  723 	add	a,acc
      000216 24 08            [12]  724 	add	a,#_curINPUT
      000218 F9               [12]  725 	mov	r1,a
      000219 A2 80            [12]  726 	mov	c,_P0_0
      00021B E4               [12]  727 	clr	a
      00021C 33               [12]  728 	rlc	a
      00021D FB               [12]  729 	mov	r3,a
      00021E 7C 00            [12]  730 	mov	r4,#0x00
      000220 A7 03            [24]  731 	mov	@r1,ar3
      000222 09               [12]  732 	inc	r1
      000223 A7 04            [24]  733 	mov	@r1,ar4
      000225 19               [12]  734 	dec	r1
                                    735 ;	./src/main.c:159: curINPUT[i * 3 + 1] = INPUT2;
      000226 ED               [12]  736 	mov	a,r5
      000227 04               [12]  737 	inc	a
      000228 25 E0            [12]  738 	add	a,acc
      00022A 24 08            [12]  739 	add	a,#_curINPUT
      00022C F9               [12]  740 	mov	r1,a
      00022D A2 81            [12]  741 	mov	c,_P0_1
      00022F E4               [12]  742 	clr	a
      000230 33               [12]  743 	rlc	a
      000231 FB               [12]  744 	mov	r3,a
      000232 7C 00            [12]  745 	mov	r4,#0x00
      000234 A7 03            [24]  746 	mov	@r1,ar3
      000236 09               [12]  747 	inc	r1
      000237 A7 04            [24]  748 	mov	@r1,ar4
      000239 19               [12]  749 	dec	r1
                                    750 ;	./src/main.c:160: curINPUT[i * 3 + 2] = INPUT3;
      00023A 0D               [12]  751 	inc	r5
      00023B 0D               [12]  752 	inc	r5
      00023C ED               [12]  753 	mov	a,r5
      00023D 2D               [12]  754 	add	a,r5
      00023E 24 08            [12]  755 	add	a,#_curINPUT
      000240 F9               [12]  756 	mov	r1,a
      000241 A2 82            [12]  757 	mov	c,_P0_2
      000243 E4               [12]  758 	clr	a
      000244 33               [12]  759 	rlc	a
      000245 FC               [12]  760 	mov	r4,a
      000246 7D 00            [12]  761 	mov	r5,#0x00
      000248 A7 04            [24]  762 	mov	@r1,ar4
      00024A 09               [12]  763 	inc	r1
      00024B A7 05            [24]  764 	mov	@r1,ar5
      00024D 19               [12]  765 	dec	r1
      00024E                        766 00107$:
                                    767 ;	./src/main.c:152: for (int i = 0; i < 4; i++)
      00024E 0E               [12]  768 	inc	r6
      00024F BE 00 01         [24]  769 	cjne	r6,#0x00,00126$
      000252 0F               [12]  770 	inc	r7
      000253                        771 00126$:
      000253 02 01 DF         [24]  772 	ljmp	00106$
      000256                        773 00104$:
                                    774 ;	./src/main.c:163: curINPUT[10] = but1;
      000256 A2 B2            [12]  775 	mov	c,_INT0
      000258 E4               [12]  776 	clr	a
      000259 33               [12]  777 	rlc	a
      00025A FE               [12]  778 	mov	r6,a
      00025B 7F 00            [12]  779 	mov	r7,#0x00
      00025D 8E 1C            [24]  780 	mov	((_curINPUT + 0x0014) + 0),r6
      00025F 8F 1D            [24]  781 	mov	((_curINPUT + 0x0014) + 1),r7
                                    782 ;	./src/main.c:164: curINPUT[11] = but2;
      000261 A2 B3            [12]  783 	mov	c,_INT1
      000263 E4               [12]  784 	clr	a
      000264 33               [12]  785 	rlc	a
      000265 FE               [12]  786 	mov	r6,a
      000266 7F 00            [12]  787 	mov	r7,#0x00
      000268 8E 1E            [24]  788 	mov	((_curINPUT + 0x0016) + 0),r6
      00026A 8F 1F            [24]  789 	mov	((_curINPUT + 0x0016) + 1),r7
                                    790 ;	./src/main.c:165: curINPUT[12] = but3;
      00026C A2 A0            [12]  791 	mov	c,_P2_0
      00026E E4               [12]  792 	clr	a
      00026F 33               [12]  793 	rlc	a
      000270 FE               [12]  794 	mov	r6,a
      000271 7F 00            [12]  795 	mov	r7,#0x00
      000273 8E 20            [24]  796 	mov	((_curINPUT + 0x0018) + 0),r6
      000275 8F 21            [24]  797 	mov	((_curINPUT + 0x0018) + 1),r7
                                    798 ;	./src/main.c:166: curINPUT[13] = but4;
      000277 A2 A1            [12]  799 	mov	c,_P2_1
      000279 E4               [12]  800 	clr	a
      00027A 33               [12]  801 	rlc	a
      00027B FE               [12]  802 	mov	r6,a
      00027C 7F 00            [12]  803 	mov	r7,#0x00
      00027E 8E 22            [24]  804 	mov	((_curINPUT + 0x001a) + 0),r6
      000280 8F 23            [24]  805 	mov	((_curINPUT + 0x001a) + 1),r7
                                    806 ;	./src/main.c:167: }
      000282 22               [24]  807 	ret
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'sequence'
                                    810 ;------------------------------------------------------------
                                    811 ;a                         Allocated to registers r6 r7 
                                    812 ;------------------------------------------------------------
                                    813 ;	./src/main.c:169: void sequence(void){
                                    814 ;	-----------------------------------------
                                    815 ;	 function sequence
                                    816 ;	-----------------------------------------
      000283                        817 _sequence:
                                    818 ;	./src/main.c:170: for(int a = 7; a > 0; a--){
      000283 7E 07            [12]  819 	mov	r6,#0x07
      000285 7F 00            [12]  820 	mov	r7,#0x00
      000287                        821 00103$:
      000287 C3               [12]  822 	clr	c
      000288 E4               [12]  823 	clr	a
      000289 9E               [12]  824 	subb	a,r6
      00028A 74 80            [12]  825 	mov	a,#(0x00 ^ 0x80)
      00028C 8F F0            [24]  826 	mov	b,r7
      00028E 63 F0 80         [24]  827 	xrl	b,#0x80
      000291 95 F0            [12]  828 	subb	a,b
      000293 50 16            [24]  829 	jnc	00101$
                                    830 ;	./src/main.c:171: display[a] = display[a-1];
      000295 EE               [12]  831 	mov	a,r6
      000296 24 5C            [12]  832 	add	a,#_display
      000298 F9               [12]  833 	mov	r1,a
      000299 8E 05            [24]  834 	mov	ar5,r6
      00029B ED               [12]  835 	mov	a,r5
      00029C 14               [12]  836 	dec	a
      00029D 24 5C            [12]  837 	add	a,#_display
      00029F F8               [12]  838 	mov	r0,a
      0002A0 86 05            [24]  839 	mov	ar5,@r0
      0002A2 A7 05            [24]  840 	mov	@r1,ar5
                                    841 ;	./src/main.c:170: for(int a = 7; a > 0; a--){
      0002A4 1E               [12]  842 	dec	r6
      0002A5 BE FF 01         [24]  843 	cjne	r6,#0xff,00117$
      0002A8 1F               [12]  844 	dec	r7
      0002A9                        845 00117$:
      0002A9 80 DC            [24]  846 	sjmp	00103$
      0002AB                        847 00101$:
                                    848 ;	./src/main.c:174: delay_ms(100);
      0002AB 90 00 64         [24]  849 	mov	dptr,#0x0064
                                    850 ;	./src/main.c:175: }
      0002AE 02 04 B0         [24]  851 	ljmp	_delay_ms
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'func_call'
                                    854 ;------------------------------------------------------------
                                    855 ;cmd                       Allocated to registers r6 r7 
                                    856 ;a                         Allocated to registers r6 r7 
                                    857 ;------------------------------------------------------------
                                    858 ;	./src/main.c:177: void func_call(unsigned int cmd){
                                    859 ;	-----------------------------------------
                                    860 ;	 function func_call
                                    861 ;	-----------------------------------------
      0002B1                        862 _func_call:
      0002B1 AE 82            [24]  863 	mov	r6,dpl
      0002B3 AF 83            [24]  864 	mov	r7,dph
                                    865 ;	./src/main.c:179: switch (cmd)
      0002B5 BE 0A 05         [24]  866 	cjne	r6,#0x0a,00151$
      0002B8 BF 00 02         [24]  867 	cjne	r7,#0x00,00151$
      0002BB 80 1A            [24]  868 	sjmp	00101$
      0002BD                        869 00151$:
      0002BD BE 0B 05         [24]  870 	cjne	r6,#0x0b,00152$
      0002C0 BF 00 02         [24]  871 	cjne	r7,#0x00,00152$
      0002C3 80 32            [24]  872 	sjmp	00107$
      0002C5                        873 00152$:
      0002C5 BE 0C 05         [24]  874 	cjne	r6,#0x0c,00153$
      0002C8 BF 00 02         [24]  875 	cjne	r7,#0x00,00153$
      0002CB 80 36            [24]  876 	sjmp	00125$
      0002CD                        877 00153$:
      0002CD BE 0D 06         [24]  878 	cjne	r6,#0x0d,00154$
      0002D0 BF 00 03         [24]  879 	cjne	r7,#0x00,00154$
      0002D3 02 03 48         [24]  880 	ljmp	00110$
      0002D6                        881 00154$:
      0002D6 22               [24]  882 	ret
                                    883 ;	./src/main.c:181: case 10:	//op
      0002D7                        884 00101$:
                                    885 ;	./src/main.c:182: if(patt == 0x80)
      0002D7 74 80            [12]  886 	mov	a,#0x80
      0002D9 B5 64 05         [24]  887 	cjne	a,_patt,00105$
                                    888 ;	./src/main.c:183: patt = 0x08;
      0002DC 75 64 08         [24]  889 	mov	_patt,#0x08
      0002DF 80 07            [24]  890 	sjmp	00106$
      0002E1                        891 00105$:
                                    892 ;	./src/main.c:184: else if (patt == 0x00)
      0002E1 E5 64            [12]  893 	mov	a,_patt
      0002E3 70 03            [24]  894 	jnz	00106$
                                    895 ;	./src/main.c:185: patt = 0x08;
      0002E5 75 64 08         [24]  896 	mov	_patt,#0x08
      0002E8                        897 00106$:
                                    898 ;	./src/main.c:187: patt = patt << 1;
      0002E8 E5 64            [12]  899 	mov	a,_patt
      0002EA 25 E0            [12]  900 	add	a,acc
                                    901 ;	./src/main.c:188: led = ~patt;
      0002EC F5 64            [12]  902 	mov	_patt,a
      0002EE F4               [12]  903 	cpl	a
      0002EF F5 90            [12]  904 	mov	_P1,a
                                    905 ;	./src/main.c:189: delay_ms(20);
      0002F1 90 00 14         [24]  906 	mov	dptr,#0x0014
                                    907 ;	./src/main.c:190: break;
                                    908 ;	./src/main.c:191: case 11:	//back <-
      0002F4 02 04 B0         [24]  909 	ljmp	_delay_ms
      0002F7                        910 00107$:
                                    911 ;	./src/main.c:192: patt1 = 0x01;
      0002F7 75 65 01         [24]  912 	mov	_patt1,#0x01
                                    913 ;	./src/main.c:193: led = ~patt1;
      0002FA 75 90 FE         [24]  914 	mov	_P1,#0xfe
                                    915 ;	./src/main.c:194: delay_ms(20);
      0002FD 90 00 14         [24]  916 	mov	dptr,#0x0014
                                    917 ;	./src/main.c:195: break;
                                    918 ;	./src/main.c:197: for(int a = 0; a < 8; a++){
      000300 02 04 B0         [24]  919 	ljmp	_delay_ms
      000303                        920 00125$:
      000303 7E 00            [12]  921 	mov	r6,#0x00
      000305 7F 00            [12]  922 	mov	r7,#0x00
      000307                        923 00114$:
      000307 C3               [12]  924 	clr	c
      000308 EE               [12]  925 	mov	a,r6
      000309 94 08            [12]  926 	subb	a,#0x08
      00030B EF               [12]  927 	mov	a,r7
      00030C 64 80            [12]  928 	xrl	a,#0x80
      00030E 94 80            [12]  929 	subb	a,#0x80
      000310 50 21            [24]  930 	jnc	00109$
                                    931 ;	./src/main.c:198: display[a] = 0x00;
      000312 EE               [12]  932 	mov	a,r6
      000313 24 5C            [12]  933 	add	a,#_display
      000315 F8               [12]  934 	mov	r0,a
      000316 76 00            [12]  935 	mov	@r0,#0x00
                                    936 ;	./src/main.c:199: Write7219(a+1,0x00);
      000318 8E 05            [24]  937 	mov	ar5,r6
      00031A ED               [12]  938 	mov	a,r5
      00031B 04               [12]  939 	inc	a
      00031C F5 82            [12]  940 	mov	dpl,a
      00031E 75 68 00         [24]  941 	mov	_Write7219_PARM_2,#0x00
      000321 C0 07            [24]  942 	push	ar7
      000323 C0 06            [24]  943 	push	ar6
      000325 12 00 F0         [24]  944 	lcall	_Write7219
      000328 D0 06            [24]  945 	pop	ar6
      00032A D0 07            [24]  946 	pop	ar7
                                    947 ;	./src/main.c:197: for(int a = 0; a < 8; a++){
      00032C 0E               [12]  948 	inc	r6
      00032D BE 00 D7         [24]  949 	cjne	r6,#0x00,00114$
      000330 0F               [12]  950 	inc	r7
      000331 80 D4            [24]  951 	sjmp	00114$
      000333                        952 00109$:
                                    953 ;	./src/main.c:201: Write7219(0x01,0x08);
      000333 75 68 08         [24]  954 	mov	_Write7219_PARM_2,#0x08
      000336 75 82 01         [24]  955 	mov	dpl,#0x01
      000339 12 00 F0         [24]  956 	lcall	_Write7219
                                    957 ;	./src/main.c:202: patt1 = 0x02;
      00033C 75 65 02         [24]  958 	mov	_patt1,#0x02
                                    959 ;	./src/main.c:203: led = ~patt1;
      00033F 75 90 FD         [24]  960 	mov	_P1,#0xfd
                                    961 ;	./src/main.c:204: delay_ms(20);
      000342 90 00 14         [24]  962 	mov	dptr,#0x0014
                                    963 ;	./src/main.c:205: break;
                                    964 ;	./src/main.c:206: case 13:	//equal=
      000345 02 04 B0         [24]  965 	ljmp	_delay_ms
      000348                        966 00110$:
                                    967 ;	./src/main.c:207: patt1 = 0x04;
      000348 75 65 04         [24]  968 	mov	_patt1,#0x04
                                    969 ;	./src/main.c:208: led = ~patt1;
      00034B 75 90 FB         [24]  970 	mov	_P1,#0xfb
                                    971 ;	./src/main.c:209: delay_ms(20);
      00034E 90 00 14         [24]  972 	mov	dptr,#0x0014
                                    973 ;	./src/main.c:213: }
                                    974 ;	./src/main.c:214: }
      000351 02 04 B0         [24]  975 	ljmp	_delay_ms
                                    976 ;------------------------------------------------------------
                                    977 ;Allocation info for local variables in function 'main'
                                    978 ;------------------------------------------------------------
                                    979 ;i                         Allocated to registers r6 r7 
                                    980 ;i                         Allocated to registers r6 r7 
                                    981 ;------------------------------------------------------------
                                    982 ;	./src/main.c:233: void main(void)
                                    983 ;	-----------------------------------------
                                    984 ;	 function main
                                    985 ;	-----------------------------------------
      000354                        986 _main:
                                    987 ;	./src/main.c:236: Initial();
      000354 12 01 0F         [24]  988 	lcall	_Initial
                                    989 ;	./src/main.c:237: for (int i = 0; i < 14; i++)
      000357 7E 00            [12]  990 	mov	r6,#0x00
      000359 7F 00            [12]  991 	mov	r7,#0x00
      00035B                        992 00127$:
      00035B C3               [12]  993 	clr	c
      00035C EE               [12]  994 	mov	a,r6
      00035D 94 0E            [12]  995 	subb	a,#0x0e
      00035F EF               [12]  996 	mov	a,r7
      000360 64 80            [12]  997 	xrl	a,#0x80
      000362 94 80            [12]  998 	subb	a,#0x80
      000364 50 27            [24]  999 	jnc	00101$
                                   1000 ;	./src/main.c:239: curINPUT[i] = LEVEL_HIGH;
      000366 EE               [12] 1001 	mov	a,r6
      000367 2E               [12] 1002 	add	a,r6
      000368 FC               [12] 1003 	mov	r4,a
      000369 EF               [12] 1004 	mov	a,r7
      00036A 33               [12] 1005 	rlc	a
      00036B EC               [12] 1006 	mov	a,r4
      00036C 24 08            [12] 1007 	add	a,#_curINPUT
      00036E F8               [12] 1008 	mov	r0,a
      00036F 76 01            [12] 1009 	mov	@r0,#0x01
      000371 08               [12] 1010 	inc	r0
      000372 76 00            [12] 1011 	mov	@r0,#0x00
                                   1012 ;	./src/main.c:240: state[i] = BTN_RELEASED;
      000374 EC               [12] 1013 	mov	a,r4
      000375 24 24            [12] 1014 	add	a,#_state
      000377 F8               [12] 1015 	mov	r0,a
      000378 76 00            [12] 1016 	mov	@r0,#0x00
      00037A 08               [12] 1017 	inc	r0
      00037B 76 00            [12] 1018 	mov	@r0,#0x00
                                   1019 ;	./src/main.c:241: prestate[i] = BTN_RELEASED;
      00037D EC               [12] 1020 	mov	a,r4
      00037E 24 40            [12] 1021 	add	a,#_prestate
      000380 F8               [12] 1022 	mov	r0,a
      000381 76 00            [12] 1023 	mov	@r0,#0x00
      000383 08               [12] 1024 	inc	r0
      000384 76 00            [12] 1025 	mov	@r0,#0x00
                                   1026 ;	./src/main.c:237: for (int i = 0; i < 14; i++)
      000386 0E               [12] 1027 	inc	r6
      000387 BE 00 D1         [24] 1028 	cjne	r6,#0x00,00127$
      00038A 0F               [12] 1029 	inc	r7
      00038B 80 CE            [24] 1030 	sjmp	00127$
      00038D                       1031 00101$:
                                   1032 ;	./src/main.c:243: func_call(12);
      00038D 90 00 0C         [24] 1033 	mov	dptr,#0x000c
      000390 12 02 B1         [24] 1034 	lcall	_func_call
                                   1035 ;	./src/main.c:245: while(1)
      000393                       1036 00124$:
                                   1037 ;	./src/main.c:247: delay_ms(20);
      000393 90 00 14         [24] 1038 	mov	dptr,#0x0014
      000396 12 04 B0         [24] 1039 	lcall	_delay_ms
                                   1040 ;	./src/main.c:250: read_curINPUT();
      000399 12 01 DB         [24] 1041 	lcall	_read_curINPUT
                                   1042 ;	./src/main.c:251: for (int i = 0; i < 14; i++)
      00039C 7E 00            [12] 1043 	mov	r6,#0x00
      00039E 7F 00            [12] 1044 	mov	r7,#0x00
      0003A0                       1045 00130$:
      0003A0 C3               [12] 1046 	clr	c
      0003A1 EE               [12] 1047 	mov	a,r6
      0003A2 94 0E            [12] 1048 	subb	a,#0x0e
      0003A4 EF               [12] 1049 	mov	a,r7
      0003A5 64 80            [12] 1050 	xrl	a,#0x80
      0003A7 94 80            [12] 1051 	subb	a,#0x80
      0003A9 50 E8            [24] 1052 	jnc	00124$
                                   1053 ;	./src/main.c:254: switch (state[i])
      0003AB EE               [12] 1054 	mov	a,r6
      0003AC 2E               [12] 1055 	add	a,r6
      0003AD FC               [12] 1056 	mov	r4,a
      0003AE EF               [12] 1057 	mov	a,r7
      0003AF 33               [12] 1058 	rlc	a
      0003B0 FD               [12] 1059 	mov	r5,a
      0003B1 EC               [12] 1060 	mov	a,r4
      0003B2 24 24            [12] 1061 	add	a,#_state
      0003B4 F9               [12] 1062 	mov	r1,a
      0003B5 87 02            [24] 1063 	mov	ar2,@r1
      0003B7 09               [12] 1064 	inc	r1
      0003B8 87 03            [24] 1065 	mov	ar3,@r1
      0003BA 19               [12] 1066 	dec	r1
      0003BB BA 00 05         [24] 1067 	cjne	r2,#0x00,00194$
      0003BE BB 00 02         [24] 1068 	cjne	r3,#0x00,00194$
      0003C1 80 10            [24] 1069 	sjmp	00102$
      0003C3                       1070 00194$:
      0003C3 BA 01 05         [24] 1071 	cjne	r2,#0x01,00195$
      0003C6 BB 00 02         [24] 1072 	cjne	r3,#0x00,00195$
      0003C9 80 26            [24] 1073 	sjmp	00106$
      0003CB                       1074 00195$:
                                   1075 ;	./src/main.c:256: case BTN_RELEASED:
      0003CB BA 02 5D         [24] 1076 	cjne	r2,#0x02,00115$
      0003CE BB 00 5A         [24] 1077 	cjne	r3,#0x00,00115$
      0003D1 80 3C            [24] 1078 	sjmp	00110$
      0003D3                       1079 00102$:
                                   1080 ;	./src/main.c:257: if (curINPUT[i] == LEVEL_LOW)
      0003D3 EC               [12] 1081 	mov	a,r4
      0003D4 24 08            [12] 1082 	add	a,#_curINPUT
      0003D6 F8               [12] 1083 	mov	r0,a
      0003D7 86 02            [24] 1084 	mov	ar2,@r0
      0003D9 08               [12] 1085 	inc	r0
      0003DA 86 03            [24] 1086 	mov	ar3,@r0
      0003DC 18               [12] 1087 	dec	r0
      0003DD EA               [12] 1088 	mov	a,r2
      0003DE 4B               [12] 1089 	orl	a,r3
      0003DF 70 08            [24] 1090 	jnz	00104$
                                   1091 ;	./src/main.c:258: state[i] = BTN_DEBOUNCED;
      0003E1 77 01            [12] 1092 	mov	@r1,#0x01
      0003E3 09               [12] 1093 	inc	r1
      0003E4 77 00            [12] 1094 	mov	@r1,#0x00
      0003E6 19               [12] 1095 	dec	r1
      0003E7 80 42            [24] 1096 	sjmp	00115$
      0003E9                       1097 00104$:
                                   1098 ;	./src/main.c:260: state[i] = BTN_RELEASED;
      0003E9 77 00            [12] 1099 	mov	@r1,#0x00
      0003EB 09               [12] 1100 	inc	r1
      0003EC 77 00            [12] 1101 	mov	@r1,#0x00
      0003EE 19               [12] 1102 	dec	r1
                                   1103 ;	./src/main.c:261: break;
                                   1104 ;	./src/main.c:262: case BTN_DEBOUNCED:
      0003EF 80 3A            [24] 1105 	sjmp	00115$
      0003F1                       1106 00106$:
                                   1107 ;	./src/main.c:263: if (curINPUT[i] == LEVEL_LOW)
      0003F1 EC               [12] 1108 	mov	a,r4
      0003F2 24 08            [12] 1109 	add	a,#_curINPUT
      0003F4 F8               [12] 1110 	mov	r0,a
      0003F5 86 02            [24] 1111 	mov	ar2,@r0
      0003F7 08               [12] 1112 	inc	r0
      0003F8 86 03            [24] 1113 	mov	ar3,@r0
      0003FA 18               [12] 1114 	dec	r0
      0003FB EA               [12] 1115 	mov	a,r2
      0003FC 4B               [12] 1116 	orl	a,r3
      0003FD 70 08            [24] 1117 	jnz	00108$
                                   1118 ;	./src/main.c:264: state[i] = BTN_PRESSED;
      0003FF 77 02            [12] 1119 	mov	@r1,#0x02
      000401 09               [12] 1120 	inc	r1
      000402 77 00            [12] 1121 	mov	@r1,#0x00
      000404 19               [12] 1122 	dec	r1
      000405 80 24            [24] 1123 	sjmp	00115$
      000407                       1124 00108$:
                                   1125 ;	./src/main.c:266: state[i] = BTN_RELEASED;
      000407 77 00            [12] 1126 	mov	@r1,#0x00
      000409 09               [12] 1127 	inc	r1
      00040A 77 00            [12] 1128 	mov	@r1,#0x00
      00040C 19               [12] 1129 	dec	r1
                                   1130 ;	./src/main.c:267: break;
                                   1131 ;	./src/main.c:268: case BTN_PRESSED:
      00040D 80 1C            [24] 1132 	sjmp	00115$
      00040F                       1133 00110$:
                                   1134 ;	./src/main.c:269: if (curINPUT[i] == LEVEL_LOW)
      00040F EC               [12] 1135 	mov	a,r4
      000410 24 08            [12] 1136 	add	a,#_curINPUT
      000412 F8               [12] 1137 	mov	r0,a
      000413 86 04            [24] 1138 	mov	ar4,@r0
      000415 08               [12] 1139 	inc	r0
      000416 86 05            [24] 1140 	mov	ar5,@r0
      000418 18               [12] 1141 	dec	r0
      000419 EC               [12] 1142 	mov	a,r4
      00041A 4D               [12] 1143 	orl	a,r5
      00041B 70 08            [24] 1144 	jnz	00112$
                                   1145 ;	./src/main.c:270: state[i] = BTN_PRESSED;
      00041D 77 02            [12] 1146 	mov	@r1,#0x02
      00041F 09               [12] 1147 	inc	r1
      000420 77 00            [12] 1148 	mov	@r1,#0x00
      000422 19               [12] 1149 	dec	r1
      000423 80 06            [24] 1150 	sjmp	00115$
      000425                       1151 00112$:
                                   1152 ;	./src/main.c:272: state[i] = BTN_RELEASED;
      000425 77 00            [12] 1153 	mov	@r1,#0x00
      000427 09               [12] 1154 	inc	r1
      000428 77 00            [12] 1155 	mov	@r1,#0x00
      00042A 19               [12] 1156 	dec	r1
                                   1157 ;	./src/main.c:276: }
      00042B                       1158 00115$:
                                   1159 ;	./src/main.c:278: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)){
      00042B EE               [12] 1160 	mov	a,r6
      00042C 2E               [12] 1161 	add	a,r6
      00042D FC               [12] 1162 	mov	r4,a
      00042E EF               [12] 1163 	mov	a,r7
      00042F 33               [12] 1164 	rlc	a
      000430 FD               [12] 1165 	mov	r5,a
      000431 EC               [12] 1166 	mov	a,r4
      000432 24 24            [12] 1167 	add	a,#_state
      000434 F9               [12] 1168 	mov	r1,a
      000435 87 02            [24] 1169 	mov	ar2,@r1
      000437 09               [12] 1170 	inc	r1
      000438 87 03            [24] 1171 	mov	ar3,@r1
      00043A 19               [12] 1172 	dec	r1
      00043B EA               [12] 1173 	mov	a,r2
      00043C 4B               [12] 1174 	orl	a,r3
      00043D 70 50            [24] 1175 	jnz	00120$
      00043F EC               [12] 1176 	mov	a,r4
      000440 24 40            [12] 1177 	add	a,#_prestate
      000442 F9               [12] 1178 	mov	r1,a
      000443 87 04            [24] 1179 	mov	ar4,@r1
      000445 09               [12] 1180 	inc	r1
      000446 87 05            [24] 1181 	mov	ar5,@r1
      000448 19               [12] 1182 	dec	r1
      000449 BC 02 43         [24] 1183 	cjne	r4,#0x02,00120$
      00044C BD 00 40         [24] 1184 	cjne	r5,#0x00,00120$
                                   1185 ;	./src/main.c:280: if (i < 10){
      00044F C3               [12] 1186 	clr	c
      000450 EE               [12] 1187 	mov	a,r6
      000451 94 0A            [12] 1188 	subb	a,#0x0a
      000453 EF               [12] 1189 	mov	a,r7
      000454 64 80            [12] 1190 	xrl	a,#0x80
      000456 94 80            [12] 1191 	subb	a,#0x80
      000458 50 26            [24] 1192 	jnc	00117$
                                   1193 ;	./src/main.c:281: sequence();
      00045A C0 07            [24] 1194 	push	ar7
      00045C C0 06            [24] 1195 	push	ar6
      00045E 12 02 83         [24] 1196 	lcall	_sequence
      000461 D0 06            [24] 1197 	pop	ar6
      000463 D0 07            [24] 1198 	pop	ar7
                                   1199 ;	./src/main.c:282: display[0] = display_seg[i];
      000465 EE               [12] 1200 	mov	a,r6
      000466 24 69            [12] 1201 	add	a,#_display_seg
      000468 F9               [12] 1202 	mov	r1,a
      000469 87 05            [24] 1203 	mov	ar5,@r1
      00046B 8D 5C            [24] 1204 	mov	_display,r5
                                   1205 ;	./src/main.c:283: draw(display);
      00046D 90 00 5C         [24] 1206 	mov	dptr,#_display
      000470 75 F0 40         [24] 1207 	mov	b,#0x40
      000473 C0 07            [24] 1208 	push	ar7
      000475 C0 06            [24] 1209 	push	ar6
      000477 12 01 51         [24] 1210 	lcall	_draw
      00047A D0 06            [24] 1211 	pop	ar6
      00047C D0 07            [24] 1212 	pop	ar7
      00047E 80 0F            [24] 1213 	sjmp	00120$
      000480                       1214 00117$:
                                   1215 ;	./src/main.c:285: func_call(i);
      000480 8E 82            [24] 1216 	mov	dpl,r6
      000482 8F 83            [24] 1217 	mov	dph,r7
      000484 C0 07            [24] 1218 	push	ar7
      000486 C0 06            [24] 1219 	push	ar6
      000488 12 02 B1         [24] 1220 	lcall	_func_call
      00048B D0 06            [24] 1221 	pop	ar6
      00048D D0 07            [24] 1222 	pop	ar7
      00048F                       1223 00120$:
                                   1224 ;	./src/main.c:288: prestate[i] = state[i];
      00048F EE               [12] 1225 	mov	a,r6
      000490 2E               [12] 1226 	add	a,r6
      000491 FC               [12] 1227 	mov	r4,a
      000492 EF               [12] 1228 	mov	a,r7
      000493 33               [12] 1229 	rlc	a
      000494 EC               [12] 1230 	mov	a,r4
      000495 24 40            [12] 1231 	add	a,#_prestate
      000497 F9               [12] 1232 	mov	r1,a
      000498 EC               [12] 1233 	mov	a,r4
      000499 24 24            [12] 1234 	add	a,#_state
      00049B F8               [12] 1235 	mov	r0,a
      00049C 86 04            [24] 1236 	mov	ar4,@r0
      00049E 08               [12] 1237 	inc	r0
      00049F 86 05            [24] 1238 	mov	ar5,@r0
      0004A1 18               [12] 1239 	dec	r0
      0004A2 A7 04            [24] 1240 	mov	@r1,ar4
      0004A4 09               [12] 1241 	inc	r1
      0004A5 A7 05            [24] 1242 	mov	@r1,ar5
      0004A7 19               [12] 1243 	dec	r1
                                   1244 ;	./src/main.c:251: for (int i = 0; i < 14; i++)
      0004A8 0E               [12] 1245 	inc	r6
      0004A9 BE 00 01         [24] 1246 	cjne	r6,#0x00,00204$
      0004AC 0F               [12] 1247 	inc	r7
      0004AD                       1248 00204$:
                                   1249 ;	./src/main.c:291: }
      0004AD 02 03 A0         [24] 1250 	ljmp	00130$
                                   1251 	.area CSEG    (CODE)
                                   1252 	.area CONST   (CODE)
                                   1253 	.area XINIT   (CODE)
                                   1254 	.area CABS    (ABS,CODE)
