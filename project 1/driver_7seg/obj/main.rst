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
      000069                        258 _draw_picture_65536_22:
      000069                        259 	.ds 3
      00006C                        260 _display_seg::
      00006C                        261 	.ds 11
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable items in internal ram
                                    264 ;--------------------------------------------------------
                                    265 	.area	OSEG    (OVR,DATA)
      000077                        266 _sendbyte_PARM_2:
      000077                        267 	.ds 1
                                    268 	.area	OSEG    (OVR,DATA)
                                    269 	.area	OSEG    (OVR,DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; Stack segment in internal ram
                                    272 ;--------------------------------------------------------
                                    273 	.area SSEG
      000078                        274 __start__stack:
      000078                        275 	.ds	1
                                    276 
                                    277 ;--------------------------------------------------------
                                    278 ; indirectly addressable internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area ISEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area IABS    (ABS,DATA)
                                    285 	.area IABS    (ABS,DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; bit data
                                    288 ;--------------------------------------------------------
                                    289 	.area BSEG    (BIT)
                                    290 ;--------------------------------------------------------
                                    291 ; paged external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area PSEG    (PAG,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; uninitialized external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XSEG    (XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XABS    (ABS,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; initialized external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XISEG   (XDATA)
                                    306 	.area HOME    (CODE)
                                    307 	.area GSINIT0 (CODE)
                                    308 	.area GSINIT1 (CODE)
                                    309 	.area GSINIT2 (CODE)
                                    310 	.area GSINIT3 (CODE)
                                    311 	.area GSINIT4 (CODE)
                                    312 	.area GSINIT5 (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.area GSFINAL (CODE)
                                    315 	.area CSEG    (CODE)
                                    316 ;--------------------------------------------------------
                                    317 ; interrupt vector
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
      000000                        320 __interrupt_vect:
      000000 02 00 06         [24]  321 	ljmp	__sdcc_gsinit_startup
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.globl __sdcc_gsinit_startup
                                    330 	.globl __sdcc_program_startup
                                    331 	.globl __start__stack
                                    332 	.globl __mcs51_genXINIT
                                    333 	.globl __mcs51_genXRAMCLEAR
                                    334 	.globl __mcs51_genRAMCLEAR
                                    335 ;	./src/main.c:52: unsigned char patt = 0x08,patt1; // led value
      00005F 75 64 08         [24]  336 	mov	_patt,#0x08
                                    337 ;	./src/main.c:53: unsigned int op_cnt = 0;
      000062 E4               [12]  338 	clr	a
      000063 F5 66            [12]  339 	mov	_op_cnt,a
      000065 F5 67            [12]  340 	mov	(_op_cnt + 1),a
                                    341 ;	./src/main.c:224: unsigned char display_seg[] = {
      000067 75 6C 30         [24]  342 	mov	_display_seg,#0x30
      00006A 75 6D 6D         [24]  343 	mov	(_display_seg + 0x0001),#0x6d
      00006D 75 6E 79         [24]  344 	mov	(_display_seg + 0x0002),#0x79
      000070 75 6F 33         [24]  345 	mov	(_display_seg + 0x0003),#0x33
      000073 75 70 5B         [24]  346 	mov	(_display_seg + 0x0004),#0x5b
      000076 75 71 5F         [24]  347 	mov	(_display_seg + 0x0005),#0x5f
      000079 75 72 70         [24]  348 	mov	(_display_seg + 0x0006),#0x70
      00007C 75 73 7F         [24]  349 	mov	(_display_seg + 0x0007),#0x7f
      00007F 75 74 7B         [24]  350 	mov	(_display_seg + 0x0008),#0x7b
      000082 75 75 7E         [24]  351 	mov	(_display_seg + 0x0009),#0x7e
      000085 75 76 4F         [24]  352 	mov	(_display_seg + 0x000a),#0x4f
                                    353 	.area GSFINAL (CODE)
      000088 02 00 03         [24]  354 	ljmp	__sdcc_program_startup
                                    355 ;--------------------------------------------------------
                                    356 ; Home
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area HOME    (CODE)
      000003                        360 __sdcc_program_startup:
      000003 02 03 59         [24]  361 	ljmp	_main
                                    362 ;	return from main will return to caller
                                    363 ;--------------------------------------------------------
                                    364 ; code
                                    365 ;--------------------------------------------------------
                                    366 	.area CSEG    (CODE)
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'sendbyte'
                                    369 ;------------------------------------------------------------
                                    370 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    371 ;address                   Allocated to registers r7 
                                    372 ;i                         Allocated to registers r6 
                                    373 ;------------------------------------------------------------
                                    374 ;	./src/main.c:56: void sendbyte(unsigned char address,unsigned char dat){
                                    375 ;	-----------------------------------------
                                    376 ;	 function sendbyte
                                    377 ;	-----------------------------------------
      00008B                        378 _sendbyte:
                           000007   379 	ar7 = 0x07
                           000006   380 	ar6 = 0x06
                           000005   381 	ar5 = 0x05
                           000004   382 	ar4 = 0x04
                           000003   383 	ar3 = 0x03
                           000002   384 	ar2 = 0x02
                           000001   385 	ar1 = 0x01
                           000000   386 	ar0 = 0x00
      00008B AF 82            [24]  387 	mov	r7,dpl
                                    388 ;	./src/main.c:58: for (i=0;i<8;i++)        //get last 8 bits(address)
      00008D 7E 00            [12]  389 	mov	r6,#0x00
      00008F                        390 00103$:
                                    391 ;	./src/main.c:60: CLK = 0;
                                    392 ;	assignBit
      00008F C2 A0            [12]  393 	clr	_P2_0
                                    394 ;	./src/main.c:61: DOUT = ( address & 0x80);   //get msb and shift left
      000091 EF               [12]  395 	mov	a,r7
      000092 23               [12]  396 	rl	a
      000093 54 01            [12]  397 	anl	a,#0x01
                                    398 ;	assignBit
      000095 24 FF            [12]  399 	add	a,#0xff
      000097 92 A2            [24]  400 	mov	_P2_2,c
                                    401 ;	./src/main.c:62: address <<= 1;
      000099 8F 05            [24]  402 	mov	ar5,r7
      00009B ED               [12]  403 	mov	a,r5
      00009C 2D               [12]  404 	add	a,r5
      00009D FF               [12]  405 	mov	r7,a
                                    406 ;	./src/main.c:63: CLK = 1;
                                    407 ;	assignBit
      00009E D2 A0            [12]  408 	setb	_P2_0
                                    409 ;	./src/main.c:58: for (i=0;i<8;i++)        //get last 8 bits(address)
      0000A0 0E               [12]  410 	inc	r6
      0000A1 BE 08 00         [24]  411 	cjne	r6,#0x08,00123$
      0000A4                        412 00123$:
      0000A4 40 E9            [24]  413 	jc	00103$
                                    414 ;	./src/main.c:65: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000A6 7F 00            [12]  415 	mov	r7,#0x00
      0000A8                        416 00105$:
                                    417 ;	./src/main.c:67: CLK = 0;
                                    418 ;	assignBit
      0000A8 C2 A0            [12]  419 	clr	_P2_0
                                    420 ;	./src/main.c:68: DOUT=( dat & 0x80);    //get msb and shit left
      0000AA E5 77            [12]  421 	mov	a,_sendbyte_PARM_2
      0000AC 23               [12]  422 	rl	a
      0000AD 54 01            [12]  423 	anl	a,#0x01
                                    424 ;	assignBit
      0000AF 24 FF            [12]  425 	add	a,#0xff
      0000B1 92 A2            [24]  426 	mov	_P2_2,c
                                    427 ;	./src/main.c:69: dat <<= 1;
      0000B3 E5 77            [12]  428 	mov	a,_sendbyte_PARM_2
      0000B5 25 E0            [12]  429 	add	a,acc
      0000B7 F5 77            [12]  430 	mov	_sendbyte_PARM_2,a
                                    431 ;	./src/main.c:70: CLK = 1;
                                    432 ;	assignBit
      0000B9 D2 A0            [12]  433 	setb	_P2_0
                                    434 ;	./src/main.c:65: for (i=0;i<8;i++)      //get first 8 bits(data)
      0000BB 0F               [12]  435 	inc	r7
      0000BC BF 08 00         [24]  436 	cjne	r7,#0x08,00125$
      0000BF                        437 00125$:
      0000BF 40 E7            [24]  438 	jc	00105$
                                    439 ;	./src/main.c:72: }
      0000C1 22               [24]  440 	ret
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'Write7219'
                                    443 ;------------------------------------------------------------
                                    444 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    445 ;address                   Allocated to registers r7 
                                    446 ;cnt                       Allocated to registers r6 
                                    447 ;------------------------------------------------------------
                                    448 ;	./src/main.c:75: void Write7219(unsigned char address, unsigned char dat)
                                    449 ;	-----------------------------------------
                                    450 ;	 function Write7219
                                    451 ;	-----------------------------------------
      0000C2                        452 _Write7219:
      0000C2 AF 82            [24]  453 	mov	r7,dpl
                                    454 ;	./src/main.c:78: LOAD = 0;
                                    455 ;	assignBit
      0000C4 C2 A1            [12]  456 	clr	_P2_1
                                    457 ;	./src/main.c:80: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000C6 7E 01            [12]  458 	mov	r6,#0x01
      0000C8                        459 00102$:
                                    460 ;	./src/main.c:82: sendbyte(address, dat);
      0000C8 85 68 77         [24]  461 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000CB 8F 82            [24]  462 	mov	dpl,r7
      0000CD C0 07            [24]  463 	push	ar7
      0000CF C0 06            [24]  464 	push	ar6
      0000D1 12 00 8B         [24]  465 	lcall	_sendbyte
      0000D4 D0 06            [24]  466 	pop	ar6
      0000D6 D0 07            [24]  467 	pop	ar7
                                    468 ;	./src/main.c:80: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000D8 0E               [12]  469 	inc	r6
      0000D9 EE               [12]  470 	mov	a,r6
      0000DA 24 FE            [12]  471 	add	a,#0xff - 0x01
      0000DC 50 EA            [24]  472 	jnc	00102$
                                    473 ;	./src/main.c:85: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    474 ;	assignBit
      0000DE D2 A1            [12]  475 	setb	_P2_1
                                    476 ;	./src/main.c:86: }
      0000E0 22               [24]  477 	ret
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'Initial'
                                    480 ;------------------------------------------------------------
                                    481 ;i                         Allocated to registers r7 
                                    482 ;------------------------------------------------------------
                                    483 ;	./src/main.c:89: void Initial(void)
                                    484 ;	-----------------------------------------
                                    485 ;	 function Initial
                                    486 ;	-----------------------------------------
      0000E1                        487 _Initial:
                                    488 ;	./src/main.c:92: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      0000E1 75 68 01         [24]  489 	mov	_Write7219_PARM_2,#0x01
      0000E4 75 82 0C         [24]  490 	mov	dpl,#0x0c
      0000E7 12 00 C2         [24]  491 	lcall	_Write7219
                                    492 ;	./src/main.c:93: Write7219(DISPLAY_TEST,0x00);
      0000EA 75 68 00         [24]  493 	mov	_Write7219_PARM_2,#0x00
      0000ED 75 82 0F         [24]  494 	mov	dpl,#0x0f
      0000F0 12 00 C2         [24]  495 	lcall	_Write7219
                                    496 ;	./src/main.c:94: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      0000F3 75 68 00         [24]  497 	mov	_Write7219_PARM_2,#0x00
      0000F6 75 82 09         [24]  498 	mov	dpl,#0x09
      0000F9 12 00 C2         [24]  499 	lcall	_Write7219
                                    500 ;	./src/main.c:95: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      0000FC 75 68 07         [24]  501 	mov	_Write7219_PARM_2,#0x07
      0000FF 75 82 0B         [24]  502 	mov	dpl,#0x0b
      000102 12 00 C2         [24]  503 	lcall	_Write7219
                                    504 ;	./src/main.c:96: Write7219(INTENSITY,0x00);         //set up intensity
      000105 75 68 00         [24]  505 	mov	_Write7219_PARM_2,#0x00
      000108 75 82 0A         [24]  506 	mov	dpl,#0x0a
      00010B 12 00 C2         [24]  507 	lcall	_Write7219
                                    508 ;	./src/main.c:97: for(i=1;i<=8;i++){
      00010E 7F 01            [12]  509 	mov	r7,#0x01
      000110                        510 00102$:
                                    511 ;	./src/main.c:98: Write7219(i,0x00);   //turn off all LED
      000110 75 68 00         [24]  512 	mov	_Write7219_PARM_2,#0x00
      000113 8F 82            [24]  513 	mov	dpl,r7
      000115 C0 07            [24]  514 	push	ar7
      000117 12 00 C2         [24]  515 	lcall	_Write7219
      00011A D0 07            [24]  516 	pop	ar7
                                    517 ;	./src/main.c:97: for(i=1;i<=8;i++){
      00011C 0F               [12]  518 	inc	r7
      00011D EF               [12]  519 	mov	a,r7
      00011E 24 F7            [12]  520 	add	a,#0xff - 0x08
      000120 50 EE            [24]  521 	jnc	00102$
                                    522 ;	./src/main.c:100: }
      000122 22               [24]  523 	ret
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'draw'
                                    526 ;------------------------------------------------------------
                                    527 ;picture                   Allocated with name '_draw_picture_65536_22'
                                    528 ;value                     Allocated to registers r7 
                                    529 ;i                         Allocated to registers r4 
                                    530 ;------------------------------------------------------------
                                    531 ;	./src/main.c:103: void draw(unsigned char *picture){
                                    532 ;	-----------------------------------------
                                    533 ;	 function draw
                                    534 ;	-----------------------------------------
      000123                        535 _draw:
      000123 85 82 69         [24]  536 	mov	_draw_picture_65536_22,dpl
      000126 85 83 6A         [24]  537 	mov	(_draw_picture_65536_22 + 1),dph
      000129 85 F0 6B         [24]  538 	mov	(_draw_picture_65536_22 + 2),b
                                    539 ;	./src/main.c:107: for(i=1; i<=8; i++) {
      00012C 7C 01            [12]  540 	mov	r4,#0x01
      00012E                        541 00105$:
                                    542 ;	./src/main.c:108: value = *(picture+i-1);
      00012E EC               [12]  543 	mov	a,r4
      00012F 25 69            [12]  544 	add	a,_draw_picture_65536_22
      000131 FA               [12]  545 	mov	r2,a
      000132 E4               [12]  546 	clr	a
      000133 35 6A            [12]  547 	addc	a,(_draw_picture_65536_22 + 1)
      000135 FB               [12]  548 	mov	r3,a
      000136 AF 6B            [24]  549 	mov	r7,(_draw_picture_65536_22 + 2)
      000138 1A               [12]  550 	dec	r2
      000139 BA FF 01         [24]  551 	cjne	r2,#0xff,00118$
      00013C 1B               [12]  552 	dec	r3
      00013D                        553 00118$:
      00013D 8A 82            [24]  554 	mov	dpl,r2
      00013F 8B 83            [24]  555 	mov	dph,r3
      000141 8F F0            [24]  556 	mov	b,r7
      000143 12 04 C2         [24]  557 	lcall	__gptrget
      000146 FF               [12]  558 	mov	r7,a
                                    559 ;	./src/main.c:109: if(value == display[i-1]){
      000147 8C 06            [24]  560 	mov	ar6,r4
      000149 EE               [12]  561 	mov	a,r6
      00014A 14               [12]  562 	dec	a
      00014B 24 5C            [12]  563 	add	a,#_display
      00014D F9               [12]  564 	mov	r1,a
      00014E 87 06            [24]  565 	mov	ar6,@r1
      000150 EF               [12]  566 	mov	a,r7
      000151 B5 06 16         [24]  567 	cjne	a,ar6,00102$
                                    568 ;	./src/main.c:110: patt = 0x80;
      000154 75 64 80         [24]  569 	mov	_patt,#0x80
                                    570 ;	./src/main.c:111: led = ~patt;
      000157 75 90 7F         [24]  571 	mov	_P1,#0x7f
                                    572 ;	./src/main.c:112: delay_ms(20);
      00015A 90 00 14         [24]  573 	mov	dptr,#0x0014
      00015D C0 07            [24]  574 	push	ar7
      00015F C0 04            [24]  575 	push	ar4
      000161 12 04 B5         [24]  576 	lcall	_delay_ms
      000164 D0 04            [24]  577 	pop	ar4
      000166 D0 07            [24]  578 	pop	ar7
      000168 80 14            [24]  579 	sjmp	00103$
      00016A                        580 00102$:
                                    581 ;	./src/main.c:114: patt = 0x08;
      00016A 75 64 08         [24]  582 	mov	_patt,#0x08
                                    583 ;	./src/main.c:115: led = ~patt;
      00016D 75 90 F7         [24]  584 	mov	_P1,#0xf7
                                    585 ;	./src/main.c:116: delay_ms(20);
      000170 90 00 14         [24]  586 	mov	dptr,#0x0014
      000173 C0 07            [24]  587 	push	ar7
      000175 C0 04            [24]  588 	push	ar4
      000177 12 04 B5         [24]  589 	lcall	_delay_ms
      00017A D0 04            [24]  590 	pop	ar4
      00017C D0 07            [24]  591 	pop	ar7
      00017E                        592 00103$:
                                    593 ;	./src/main.c:118: Write7219(i, value);
      00017E 8F 68            [24]  594 	mov	_Write7219_PARM_2,r7
      000180 8C 82            [24]  595 	mov	dpl,r4
      000182 C0 04            [24]  596 	push	ar4
      000184 12 00 C2         [24]  597 	lcall	_Write7219
      000187 D0 04            [24]  598 	pop	ar4
                                    599 ;	./src/main.c:107: for(i=1; i<=8; i++) {
      000189 0C               [12]  600 	inc	r4
      00018A EC               [12]  601 	mov	a,r4
      00018B 24 F7            [12]  602 	add	a,#0xff - 0x08
      00018D 50 9F            [24]  603 	jnc	00105$
                                    604 ;	./src/main.c:120: }
      00018F 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'scan_row'
                                    608 ;------------------------------------------------------------
                                    609 ;row                       Allocated to registers r6 r7 
                                    610 ;------------------------------------------------------------
                                    611 ;	./src/main.c:122: void scan_row(unsigned int row)
                                    612 ;	-----------------------------------------
                                    613 ;	 function scan_row
                                    614 ;	-----------------------------------------
      000190                        615 _scan_row:
      000190 AE 82            [24]  616 	mov	r6,dpl
      000192 AF 83            [24]  617 	mov	r7,dph
                                    618 ;	./src/main.c:124: switch (row)
      000194 C3               [12]  619 	clr	c
      000195 74 03            [12]  620 	mov	a,#0x03
      000197 9E               [12]  621 	subb	a,r6
      000198 E4               [12]  622 	clr	a
      000199 9F               [12]  623 	subb	a,r7
      00019A 40 31            [24]  624 	jc	00107$
      00019C EE               [12]  625 	mov	a,r6
      00019D 2E               [12]  626 	add	a,r6
                                    627 ;	./src/main.c:126: case 0:
      00019E 90 01 A2         [24]  628 	mov	dptr,#00114$
      0001A1 73               [24]  629 	jmp	@a+dptr
      0001A2                        630 00114$:
      0001A2 80 06            [24]  631 	sjmp	00101$
      0001A4 80 0D            [24]  632 	sjmp	00102$
      0001A6 80 14            [24]  633 	sjmp	00103$
      0001A8 80 1B            [24]  634 	sjmp	00104$
      0001AA                        635 00101$:
                                    636 ;	./src/main.c:127: OUTPUT1 = 0; // row1 output 0
                                    637 ;	assignBit
      0001AA C2 86            [12]  638 	clr	_P0_6
                                    639 ;	./src/main.c:128: OUTPUT2 = 1; // row2 output 1
                                    640 ;	assignBit
      0001AC D2 85            [12]  641 	setb	_P0_5
                                    642 ;	./src/main.c:129: OUTPUT3 = 1; // row3 output 1
                                    643 ;	assignBit
      0001AE D2 84            [12]  644 	setb	_P0_4
                                    645 ;	./src/main.c:130: OUTPUT0 = 1; // row0 output 1
                                    646 ;	assignBit
      0001B0 D2 83            [12]  647 	setb	_P0_3
                                    648 ;	./src/main.c:131: break;
                                    649 ;	./src/main.c:132: case 1:
      0001B2 22               [24]  650 	ret
      0001B3                        651 00102$:
                                    652 ;	./src/main.c:133: OUTPUT1 = 1; // row1 output 1
                                    653 ;	assignBit
      0001B3 D2 86            [12]  654 	setb	_P0_6
                                    655 ;	./src/main.c:134: OUTPUT2 = 0; // row2 output 0
                                    656 ;	assignBit
      0001B5 C2 85            [12]  657 	clr	_P0_5
                                    658 ;	./src/main.c:135: OUTPUT3 = 1; // row3 output 1
                                    659 ;	assignBit
      0001B7 D2 84            [12]  660 	setb	_P0_4
                                    661 ;	./src/main.c:136: OUTPUT0 = 1; // row0 output 1
                                    662 ;	assignBit
      0001B9 D2 83            [12]  663 	setb	_P0_3
                                    664 ;	./src/main.c:137: break;
                                    665 ;	./src/main.c:138: case 2:
      0001BB 22               [24]  666 	ret
      0001BC                        667 00103$:
                                    668 ;	./src/main.c:139: OUTPUT1 = 1; // row1 output 1
                                    669 ;	assignBit
      0001BC D2 86            [12]  670 	setb	_P0_6
                                    671 ;	./src/main.c:140: OUTPUT2 = 1; // row2 output 1
                                    672 ;	assignBit
      0001BE D2 85            [12]  673 	setb	_P0_5
                                    674 ;	./src/main.c:141: OUTPUT3 = 0; // row3 output 0
                                    675 ;	assignBit
      0001C0 C2 84            [12]  676 	clr	_P0_4
                                    677 ;	./src/main.c:142: OUTPUT0 = 1; // row0 output 1
                                    678 ;	assignBit
      0001C2 D2 83            [12]  679 	setb	_P0_3
                                    680 ;	./src/main.c:143: break;
                                    681 ;	./src/main.c:144: case 3:
      0001C4 22               [24]  682 	ret
      0001C5                        683 00104$:
                                    684 ;	./src/main.c:145: OUTPUT1 = 1; // row1 output 1
                                    685 ;	assignBit
      0001C5 D2 86            [12]  686 	setb	_P0_6
                                    687 ;	./src/main.c:146: OUTPUT2 = 1; // row2 output 1
                                    688 ;	assignBit
      0001C7 D2 85            [12]  689 	setb	_P0_5
                                    690 ;	./src/main.c:147: OUTPUT3 = 1; // row3 output 1
                                    691 ;	assignBit
      0001C9 D2 84            [12]  692 	setb	_P0_4
                                    693 ;	./src/main.c:148: OUTPUT0 = 0; // row0 output 0
                                    694 ;	assignBit
      0001CB C2 83            [12]  695 	clr	_P0_3
                                    696 ;	./src/main.c:152: }
      0001CD                        697 00107$:
                                    698 ;	./src/main.c:153: }
      0001CD 22               [24]  699 	ret
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'read_curINPUT'
                                    702 ;------------------------------------------------------------
                                    703 ;i                         Allocated to registers r6 r7 
                                    704 ;------------------------------------------------------------
                                    705 ;	./src/main.c:155: void read_curINPUT(void)
                                    706 ;	-----------------------------------------
                                    707 ;	 function read_curINPUT
                                    708 ;	-----------------------------------------
      0001CE                        709 _read_curINPUT:
                                    710 ;	./src/main.c:157: for (int i = 0; i < 4; i++)
      0001CE 7E 00            [12]  711 	mov	r6,#0x00
      0001D0 7F 00            [12]  712 	mov	r7,#0x00
      0001D2                        713 00106$:
      0001D2 C3               [12]  714 	clr	c
      0001D3 EE               [12]  715 	mov	a,r6
      0001D4 94 04            [12]  716 	subb	a,#0x04
      0001D6 EF               [12]  717 	mov	a,r7
      0001D7 64 80            [12]  718 	xrl	a,#0x80
      0001D9 94 80            [12]  719 	subb	a,#0x80
      0001DB 50 6C            [24]  720 	jnc	00104$
                                    721 ;	./src/main.c:159: scan_row(i);
      0001DD 8E 82            [24]  722 	mov	dpl,r6
      0001DF 8F 83            [24]  723 	mov	dph,r7
      0001E1 C0 07            [24]  724 	push	ar7
      0001E3 C0 06            [24]  725 	push	ar6
      0001E5 12 01 90         [24]  726 	lcall	_scan_row
      0001E8 D0 06            [24]  727 	pop	ar6
      0001EA D0 07            [24]  728 	pop	ar7
                                    729 ;	./src/main.c:160: if(i==3)
      0001EC BE 03 10         [24]  730 	cjne	r6,#0x03,00102$
      0001EF BF 00 0D         [24]  731 	cjne	r7,#0x00,00102$
                                    732 ;	./src/main.c:161: curINPUT[9] = INPUT2;
      0001F2 A2 81            [12]  733 	mov	c,_P0_1
      0001F4 E4               [12]  734 	clr	a
      0001F5 33               [12]  735 	rlc	a
      0001F6 FC               [12]  736 	mov	r4,a
      0001F7 7D 00            [12]  737 	mov	r5,#0x00
      0001F9 8C 1A            [24]  738 	mov	((_curINPUT + 0x0012) + 0),r4
      0001FB 8D 1B            [24]  739 	mov	((_curINPUT + 0x0012) + 1),r5
      0001FD 80 42            [24]  740 	sjmp	00107$
      0001FF                        741 00102$:
                                    742 ;	./src/main.c:163: curINPUT[i * 3 + 0] = INPUT1;
      0001FF 8E 05            [24]  743 	mov	ar5,r6
      000201 ED               [12]  744 	mov	a,r5
      000202 75 F0 03         [24]  745 	mov	b,#0x03
      000205 A4               [48]  746 	mul	ab
      000206 FD               [12]  747 	mov	r5,a
      000207 25 E0            [12]  748 	add	a,acc
      000209 24 08            [12]  749 	add	a,#_curINPUT
      00020B F9               [12]  750 	mov	r1,a
      00020C A2 80            [12]  751 	mov	c,_P0_0
      00020E E4               [12]  752 	clr	a
      00020F 33               [12]  753 	rlc	a
      000210 FB               [12]  754 	mov	r3,a
      000211 7C 00            [12]  755 	mov	r4,#0x00
      000213 A7 03            [24]  756 	mov	@r1,ar3
      000215 09               [12]  757 	inc	r1
      000216 A7 04            [24]  758 	mov	@r1,ar4
      000218 19               [12]  759 	dec	r1
                                    760 ;	./src/main.c:164: curINPUT[i * 3 + 1] = INPUT2;
      000219 ED               [12]  761 	mov	a,r5
      00021A 04               [12]  762 	inc	a
      00021B 25 E0            [12]  763 	add	a,acc
      00021D 24 08            [12]  764 	add	a,#_curINPUT
      00021F F9               [12]  765 	mov	r1,a
      000220 A2 81            [12]  766 	mov	c,_P0_1
      000222 E4               [12]  767 	clr	a
      000223 33               [12]  768 	rlc	a
      000224 FB               [12]  769 	mov	r3,a
      000225 7C 00            [12]  770 	mov	r4,#0x00
      000227 A7 03            [24]  771 	mov	@r1,ar3
      000229 09               [12]  772 	inc	r1
      00022A A7 04            [24]  773 	mov	@r1,ar4
      00022C 19               [12]  774 	dec	r1
                                    775 ;	./src/main.c:165: curINPUT[i * 3 + 2] = INPUT3;
      00022D 0D               [12]  776 	inc	r5
      00022E 0D               [12]  777 	inc	r5
      00022F ED               [12]  778 	mov	a,r5
      000230 2D               [12]  779 	add	a,r5
      000231 24 08            [12]  780 	add	a,#_curINPUT
      000233 F9               [12]  781 	mov	r1,a
      000234 A2 82            [12]  782 	mov	c,_P0_2
      000236 E4               [12]  783 	clr	a
      000237 33               [12]  784 	rlc	a
      000238 FC               [12]  785 	mov	r4,a
      000239 7D 00            [12]  786 	mov	r5,#0x00
      00023B A7 04            [24]  787 	mov	@r1,ar4
      00023D 09               [12]  788 	inc	r1
      00023E A7 05            [24]  789 	mov	@r1,ar5
      000240 19               [12]  790 	dec	r1
      000241                        791 00107$:
                                    792 ;	./src/main.c:157: for (int i = 0; i < 4; i++)
      000241 0E               [12]  793 	inc	r6
      000242 BE 00 01         [24]  794 	cjne	r6,#0x00,00126$
      000245 0F               [12]  795 	inc	r7
      000246                        796 00126$:
      000246 02 01 D2         [24]  797 	ljmp	00106$
      000249                        798 00104$:
                                    799 ;	./src/main.c:168: curINPUT[10] = but1;
      000249 A2 B2            [12]  800 	mov	c,_INT0
      00024B E4               [12]  801 	clr	a
      00024C 33               [12]  802 	rlc	a
      00024D FE               [12]  803 	mov	r6,a
      00024E 7F 00            [12]  804 	mov	r7,#0x00
      000250 8E 1C            [24]  805 	mov	((_curINPUT + 0x0014) + 0),r6
      000252 8F 1D            [24]  806 	mov	((_curINPUT + 0x0014) + 1),r7
                                    807 ;	./src/main.c:169: curINPUT[11] = but2;
      000254 A2 B3            [12]  808 	mov	c,_INT1
      000256 E4               [12]  809 	clr	a
      000257 33               [12]  810 	rlc	a
      000258 FE               [12]  811 	mov	r6,a
      000259 7F 00            [12]  812 	mov	r7,#0x00
      00025B 8E 1E            [24]  813 	mov	((_curINPUT + 0x0016) + 0),r6
      00025D 8F 1F            [24]  814 	mov	((_curINPUT + 0x0016) + 1),r7
                                    815 ;	./src/main.c:170: curINPUT[12] = but3;
      00025F A2 A0            [12]  816 	mov	c,_P2_0
      000261 E4               [12]  817 	clr	a
      000262 33               [12]  818 	rlc	a
      000263 FE               [12]  819 	mov	r6,a
      000264 7F 00            [12]  820 	mov	r7,#0x00
      000266 8E 20            [24]  821 	mov	((_curINPUT + 0x0018) + 0),r6
      000268 8F 21            [24]  822 	mov	((_curINPUT + 0x0018) + 1),r7
                                    823 ;	./src/main.c:171: curINPUT[13] = but4;
      00026A A2 A1            [12]  824 	mov	c,_P2_1
      00026C E4               [12]  825 	clr	a
      00026D 33               [12]  826 	rlc	a
      00026E FE               [12]  827 	mov	r6,a
      00026F 7F 00            [12]  828 	mov	r7,#0x00
      000271 8E 22            [24]  829 	mov	((_curINPUT + 0x001a) + 0),r6
      000273 8F 23            [24]  830 	mov	((_curINPUT + 0x001a) + 1),r7
                                    831 ;	./src/main.c:172: }
      000275 22               [24]  832 	ret
                                    833 ;------------------------------------------------------------
                                    834 ;Allocation info for local variables in function 'sequence'
                                    835 ;------------------------------------------------------------
                                    836 ;a                         Allocated to registers r6 r7 
                                    837 ;------------------------------------------------------------
                                    838 ;	./src/main.c:174: void sequence(void){
                                    839 ;	-----------------------------------------
                                    840 ;	 function sequence
                                    841 ;	-----------------------------------------
      000276                        842 _sequence:
                                    843 ;	./src/main.c:175: for(int a = 7; a > 0; a--){
      000276 7E 07            [12]  844 	mov	r6,#0x07
      000278 7F 00            [12]  845 	mov	r7,#0x00
      00027A                        846 00103$:
      00027A C3               [12]  847 	clr	c
      00027B E4               [12]  848 	clr	a
      00027C 9E               [12]  849 	subb	a,r6
      00027D 74 80            [12]  850 	mov	a,#(0x00 ^ 0x80)
      00027F 8F F0            [24]  851 	mov	b,r7
      000281 63 F0 80         [24]  852 	xrl	b,#0x80
      000284 95 F0            [12]  853 	subb	a,b
      000286 50 16            [24]  854 	jnc	00105$
                                    855 ;	./src/main.c:176: display[a] = display[a-1];
      000288 EE               [12]  856 	mov	a,r6
      000289 24 5C            [12]  857 	add	a,#_display
      00028B F9               [12]  858 	mov	r1,a
      00028C 8E 05            [24]  859 	mov	ar5,r6
      00028E ED               [12]  860 	mov	a,r5
      00028F 14               [12]  861 	dec	a
      000290 24 5C            [12]  862 	add	a,#_display
      000292 F8               [12]  863 	mov	r0,a
      000293 86 05            [24]  864 	mov	ar5,@r0
      000295 A7 05            [24]  865 	mov	@r1,ar5
                                    866 ;	./src/main.c:175: for(int a = 7; a > 0; a--){
      000297 1E               [12]  867 	dec	r6
      000298 BE FF 01         [24]  868 	cjne	r6,#0xff,00117$
      00029B 1F               [12]  869 	dec	r7
      00029C                        870 00117$:
      00029C 80 DC            [24]  871 	sjmp	00103$
      00029E                        872 00105$:
                                    873 ;	./src/main.c:178: }
      00029E 22               [24]  874 	ret
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'func_call'
                                    877 ;------------------------------------------------------------
                                    878 ;cmd                       Allocated to registers r6 r7 
                                    879 ;a                         Allocated to registers r6 r7 
                                    880 ;------------------------------------------------------------
                                    881 ;	./src/main.c:180: void func_call(unsigned int cmd){
                                    882 ;	-----------------------------------------
                                    883 ;	 function func_call
                                    884 ;	-----------------------------------------
      00029F                        885 _func_call:
      00029F AE 82            [24]  886 	mov	r6,dpl
      0002A1 AF 83            [24]  887 	mov	r7,dph
                                    888 ;	./src/main.c:182: switch (cmd)
      0002A3 BE 0A 05         [24]  889 	cjne	r6,#0x0a,00157$
      0002A6 BF 00 02         [24]  890 	cjne	r7,#0x00,00157$
      0002A9 80 1A            [24]  891 	sjmp	00101$
      0002AB                        892 00157$:
      0002AB BE 0B 05         [24]  893 	cjne	r6,#0x0b,00158$
      0002AE BF 00 02         [24]  894 	cjne	r7,#0x00,00158$
      0002B1 80 49            [24]  895 	sjmp	00109$
      0002B3                        896 00158$:
      0002B3 BE 0C 05         [24]  897 	cjne	r6,#0x0c,00159$
      0002B6 BF 00 02         [24]  898 	cjne	r7,#0x00,00159$
      0002B9 80 4D            [24]  899 	sjmp	00128$
      0002BB                        900 00159$:
      0002BB BE 0D 06         [24]  901 	cjne	r6,#0x0d,00160$
      0002BE BF 00 03         [24]  902 	cjne	r7,#0x00,00160$
      0002C1 02 03 4D         [24]  903 	ljmp	00112$
      0002C4                        904 00160$:
      0002C4 22               [24]  905 	ret
                                    906 ;	./src/main.c:184: case 10:	//op
      0002C5                        907 00101$:
                                    908 ;	./src/main.c:185: if(patt == 0x80)
      0002C5 74 80            [12]  909 	mov	a,#0x80
      0002C7 B5 64 05         [24]  910 	cjne	a,_patt,00105$
                                    911 ;	./src/main.c:186: patt = 0x08;
      0002CA 75 64 08         [24]  912 	mov	_patt,#0x08
      0002CD 80 07            [24]  913 	sjmp	00106$
      0002CF                        914 00105$:
                                    915 ;	./src/main.c:187: else if (patt == 0x00)
      0002CF E5 64            [12]  916 	mov	a,_patt
      0002D1 70 03            [24]  917 	jnz	00106$
                                    918 ;	./src/main.c:188: patt = 0x08;
      0002D3 75 64 08         [24]  919 	mov	_patt,#0x08
      0002D6                        920 00106$:
                                    921 ;	./src/main.c:190: op_cnt++;
      0002D6 05 66            [12]  922 	inc	_op_cnt
      0002D8 E4               [12]  923 	clr	a
      0002D9 B5 66 02         [24]  924 	cjne	a,_op_cnt,00164$
      0002DC 05 67            [12]  925 	inc	(_op_cnt + 1)
      0002DE                        926 00164$:
                                    927 ;	./src/main.c:191: if(op_cnt > 4)
      0002DE C3               [12]  928 	clr	c
      0002DF 74 04            [12]  929 	mov	a,#0x04
      0002E1 95 66            [12]  930 	subb	a,_op_cnt
      0002E3 E4               [12]  931 	clr	a
      0002E4 95 67            [12]  932 	subb	a,(_op_cnt + 1)
      0002E6 50 05            [24]  933 	jnc	00108$
                                    934 ;	./src/main.c:192: op_cnt = 0;
      0002E8 E4               [12]  935 	clr	a
      0002E9 F5 66            [12]  936 	mov	_op_cnt,a
      0002EB F5 67            [12]  937 	mov	(_op_cnt + 1),a
      0002ED                        938 00108$:
                                    939 ;	./src/main.c:194: patt = patt << 1;
      0002ED E5 64            [12]  940 	mov	a,_patt
      0002EF 25 E0            [12]  941 	add	a,acc
                                    942 ;	./src/main.c:195: led = ~patt;
      0002F1 F5 64            [12]  943 	mov	_patt,a
      0002F3 F4               [12]  944 	cpl	a
      0002F4 F5 90            [12]  945 	mov	_P1,a
                                    946 ;	./src/main.c:196: delay_ms(20);
      0002F6 90 00 14         [24]  947 	mov	dptr,#0x0014
                                    948 ;	./src/main.c:197: break;
                                    949 ;	./src/main.c:198: case 11:	//back <-
      0002F9 02 04 B5         [24]  950 	ljmp	_delay_ms
      0002FC                        951 00109$:
                                    952 ;	./src/main.c:199: patt1 = 0x01;
      0002FC 75 65 01         [24]  953 	mov	_patt1,#0x01
                                    954 ;	./src/main.c:200: led = ~patt1;
      0002FF 75 90 FE         [24]  955 	mov	_P1,#0xfe
                                    956 ;	./src/main.c:201: delay_ms(20);
      000302 90 00 14         [24]  957 	mov	dptr,#0x0014
                                    958 ;	./src/main.c:202: break;
                                    959 ;	./src/main.c:204: for(int a = 0; a < 8; a++){
      000305 02 04 B5         [24]  960 	ljmp	_delay_ms
      000308                        961 00128$:
      000308 7E 00            [12]  962 	mov	r6,#0x00
      00030A 7F 00            [12]  963 	mov	r7,#0x00
      00030C                        964 00116$:
      00030C C3               [12]  965 	clr	c
      00030D EE               [12]  966 	mov	a,r6
      00030E 94 08            [12]  967 	subb	a,#0x08
      000310 EF               [12]  968 	mov	a,r7
      000311 64 80            [12]  969 	xrl	a,#0x80
      000313 94 80            [12]  970 	subb	a,#0x80
      000315 50 21            [24]  971 	jnc	00111$
                                    972 ;	./src/main.c:205: display[a] = 0x00;
      000317 EE               [12]  973 	mov	a,r6
      000318 24 5C            [12]  974 	add	a,#_display
      00031A F8               [12]  975 	mov	r0,a
      00031B 76 00            [12]  976 	mov	@r0,#0x00
                                    977 ;	./src/main.c:206: Write7219(a+1,0x00);
      00031D 8E 05            [24]  978 	mov	ar5,r6
      00031F ED               [12]  979 	mov	a,r5
      000320 04               [12]  980 	inc	a
      000321 F5 82            [12]  981 	mov	dpl,a
      000323 75 68 00         [24]  982 	mov	_Write7219_PARM_2,#0x00
      000326 C0 07            [24]  983 	push	ar7
      000328 C0 06            [24]  984 	push	ar6
      00032A 12 00 C2         [24]  985 	lcall	_Write7219
      00032D D0 06            [24]  986 	pop	ar6
      00032F D0 07            [24]  987 	pop	ar7
                                    988 ;	./src/main.c:204: for(int a = 0; a < 8; a++){
      000331 0E               [12]  989 	inc	r6
      000332 BE 00 D7         [24]  990 	cjne	r6,#0x00,00116$
      000335 0F               [12]  991 	inc	r7
      000336 80 D4            [24]  992 	sjmp	00116$
      000338                        993 00111$:
                                    994 ;	./src/main.c:208: Write7219(0x01,0x08);
      000338 75 68 08         [24]  995 	mov	_Write7219_PARM_2,#0x08
      00033B 75 82 01         [24]  996 	mov	dpl,#0x01
      00033E 12 00 C2         [24]  997 	lcall	_Write7219
                                    998 ;	./src/main.c:209: patt1 = 0x02;
      000341 75 65 02         [24]  999 	mov	_patt1,#0x02
                                   1000 ;	./src/main.c:210: led = ~patt1;
      000344 75 90 FD         [24] 1001 	mov	_P1,#0xfd
                                   1002 ;	./src/main.c:211: delay_ms(20);
      000347 90 00 14         [24] 1003 	mov	dptr,#0x0014
                                   1004 ;	./src/main.c:212: break;
                                   1005 ;	./src/main.c:213: case 13:	//equal=
      00034A 02 04 B5         [24] 1006 	ljmp	_delay_ms
      00034D                       1007 00112$:
                                   1008 ;	./src/main.c:214: patt1 = 0x04;
      00034D 75 65 04         [24] 1009 	mov	_patt1,#0x04
                                   1010 ;	./src/main.c:215: led = ~patt1;
      000350 75 90 FB         [24] 1011 	mov	_P1,#0xfb
                                   1012 ;	./src/main.c:216: delay_ms(20);
      000353 90 00 14         [24] 1013 	mov	dptr,#0x0014
                                   1014 ;	./src/main.c:220: }
                                   1015 ;	./src/main.c:221: }
      000356 02 04 B5         [24] 1016 	ljmp	_delay_ms
                                   1017 ;------------------------------------------------------------
                                   1018 ;Allocation info for local variables in function 'main'
                                   1019 ;------------------------------------------------------------
                                   1020 ;i                         Allocated to registers r6 r7 
                                   1021 ;i                         Allocated to registers r6 r7 
                                   1022 ;------------------------------------------------------------
                                   1023 ;	./src/main.c:240: void main(void)
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function main
                                   1026 ;	-----------------------------------------
      000359                       1027 _main:
                                   1028 ;	./src/main.c:243: Initial();
      000359 12 00 E1         [24] 1029 	lcall	_Initial
                                   1030 ;	./src/main.c:244: for (int i = 0; i < 14; i++)
      00035C 7E 00            [12] 1031 	mov	r6,#0x00
      00035E 7F 00            [12] 1032 	mov	r7,#0x00
      000360                       1033 00127$:
      000360 C3               [12] 1034 	clr	c
      000361 EE               [12] 1035 	mov	a,r6
      000362 94 0E            [12] 1036 	subb	a,#0x0e
      000364 EF               [12] 1037 	mov	a,r7
      000365 64 80            [12] 1038 	xrl	a,#0x80
      000367 94 80            [12] 1039 	subb	a,#0x80
      000369 50 27            [24] 1040 	jnc	00101$
                                   1041 ;	./src/main.c:246: curINPUT[i] = LEVEL_HIGH;
      00036B EE               [12] 1042 	mov	a,r6
      00036C 2E               [12] 1043 	add	a,r6
      00036D FC               [12] 1044 	mov	r4,a
      00036E EF               [12] 1045 	mov	a,r7
      00036F 33               [12] 1046 	rlc	a
      000370 EC               [12] 1047 	mov	a,r4
      000371 24 08            [12] 1048 	add	a,#_curINPUT
      000373 F8               [12] 1049 	mov	r0,a
      000374 76 01            [12] 1050 	mov	@r0,#0x01
      000376 08               [12] 1051 	inc	r0
      000377 76 00            [12] 1052 	mov	@r0,#0x00
                                   1053 ;	./src/main.c:247: state[i] = BTN_RELEASED;
      000379 EC               [12] 1054 	mov	a,r4
      00037A 24 24            [12] 1055 	add	a,#_state
      00037C F8               [12] 1056 	mov	r0,a
      00037D 76 00            [12] 1057 	mov	@r0,#0x00
      00037F 08               [12] 1058 	inc	r0
      000380 76 00            [12] 1059 	mov	@r0,#0x00
                                   1060 ;	./src/main.c:248: prestate[i] = BTN_RELEASED;
      000382 EC               [12] 1061 	mov	a,r4
      000383 24 40            [12] 1062 	add	a,#_prestate
      000385 F8               [12] 1063 	mov	r0,a
      000386 76 00            [12] 1064 	mov	@r0,#0x00
      000388 08               [12] 1065 	inc	r0
      000389 76 00            [12] 1066 	mov	@r0,#0x00
                                   1067 ;	./src/main.c:244: for (int i = 0; i < 14; i++)
      00038B 0E               [12] 1068 	inc	r6
      00038C BE 00 D1         [24] 1069 	cjne	r6,#0x00,00127$
      00038F 0F               [12] 1070 	inc	r7
      000390 80 CE            [24] 1071 	sjmp	00127$
      000392                       1072 00101$:
                                   1073 ;	./src/main.c:250: func_call(12);
      000392 90 00 0C         [24] 1074 	mov	dptr,#0x000c
      000395 12 02 9F         [24] 1075 	lcall	_func_call
                                   1076 ;	./src/main.c:252: while(1)
      000398                       1077 00124$:
                                   1078 ;	./src/main.c:254: delay_ms(20);
      000398 90 00 14         [24] 1079 	mov	dptr,#0x0014
      00039B 12 04 B5         [24] 1080 	lcall	_delay_ms
                                   1081 ;	./src/main.c:257: read_curINPUT();
      00039E 12 01 CE         [24] 1082 	lcall	_read_curINPUT
                                   1083 ;	./src/main.c:258: for (int i = 0; i < 14; i++)
      0003A1 7E 00            [12] 1084 	mov	r6,#0x00
      0003A3 7F 00            [12] 1085 	mov	r7,#0x00
      0003A5                       1086 00130$:
      0003A5 C3               [12] 1087 	clr	c
      0003A6 EE               [12] 1088 	mov	a,r6
      0003A7 94 0E            [12] 1089 	subb	a,#0x0e
      0003A9 EF               [12] 1090 	mov	a,r7
      0003AA 64 80            [12] 1091 	xrl	a,#0x80
      0003AC 94 80            [12] 1092 	subb	a,#0x80
      0003AE 50 E8            [24] 1093 	jnc	00124$
                                   1094 ;	./src/main.c:261: switch (state[i])
      0003B0 EE               [12] 1095 	mov	a,r6
      0003B1 2E               [12] 1096 	add	a,r6
      0003B2 FC               [12] 1097 	mov	r4,a
      0003B3 EF               [12] 1098 	mov	a,r7
      0003B4 33               [12] 1099 	rlc	a
      0003B5 FD               [12] 1100 	mov	r5,a
      0003B6 EC               [12] 1101 	mov	a,r4
      0003B7 24 24            [12] 1102 	add	a,#_state
      0003B9 F9               [12] 1103 	mov	r1,a
      0003BA 87 02            [24] 1104 	mov	ar2,@r1
      0003BC 09               [12] 1105 	inc	r1
      0003BD 87 03            [24] 1106 	mov	ar3,@r1
      0003BF 19               [12] 1107 	dec	r1
      0003C0 BA 00 05         [24] 1108 	cjne	r2,#0x00,00194$
      0003C3 BB 00 02         [24] 1109 	cjne	r3,#0x00,00194$
      0003C6 80 10            [24] 1110 	sjmp	00102$
      0003C8                       1111 00194$:
      0003C8 BA 01 05         [24] 1112 	cjne	r2,#0x01,00195$
      0003CB BB 00 02         [24] 1113 	cjne	r3,#0x00,00195$
      0003CE 80 26            [24] 1114 	sjmp	00106$
      0003D0                       1115 00195$:
                                   1116 ;	./src/main.c:263: case BTN_RELEASED:
      0003D0 BA 02 5D         [24] 1117 	cjne	r2,#0x02,00115$
      0003D3 BB 00 5A         [24] 1118 	cjne	r3,#0x00,00115$
      0003D6 80 3C            [24] 1119 	sjmp	00110$
      0003D8                       1120 00102$:
                                   1121 ;	./src/main.c:264: if (curINPUT[i] == LEVEL_LOW)
      0003D8 EC               [12] 1122 	mov	a,r4
      0003D9 24 08            [12] 1123 	add	a,#_curINPUT
      0003DB F8               [12] 1124 	mov	r0,a
      0003DC 86 02            [24] 1125 	mov	ar2,@r0
      0003DE 08               [12] 1126 	inc	r0
      0003DF 86 03            [24] 1127 	mov	ar3,@r0
      0003E1 18               [12] 1128 	dec	r0
      0003E2 EA               [12] 1129 	mov	a,r2
      0003E3 4B               [12] 1130 	orl	a,r3
      0003E4 70 08            [24] 1131 	jnz	00104$
                                   1132 ;	./src/main.c:265: state[i] = BTN_DEBOUNCED;
      0003E6 77 01            [12] 1133 	mov	@r1,#0x01
      0003E8 09               [12] 1134 	inc	r1
      0003E9 77 00            [12] 1135 	mov	@r1,#0x00
      0003EB 19               [12] 1136 	dec	r1
      0003EC 80 42            [24] 1137 	sjmp	00115$
      0003EE                       1138 00104$:
                                   1139 ;	./src/main.c:267: state[i] = BTN_RELEASED;
      0003EE 77 00            [12] 1140 	mov	@r1,#0x00
      0003F0 09               [12] 1141 	inc	r1
      0003F1 77 00            [12] 1142 	mov	@r1,#0x00
      0003F3 19               [12] 1143 	dec	r1
                                   1144 ;	./src/main.c:268: break;
                                   1145 ;	./src/main.c:269: case BTN_DEBOUNCED:
      0003F4 80 3A            [24] 1146 	sjmp	00115$
      0003F6                       1147 00106$:
                                   1148 ;	./src/main.c:270: if (curINPUT[i] == LEVEL_LOW)
      0003F6 EC               [12] 1149 	mov	a,r4
      0003F7 24 08            [12] 1150 	add	a,#_curINPUT
      0003F9 F8               [12] 1151 	mov	r0,a
      0003FA 86 02            [24] 1152 	mov	ar2,@r0
      0003FC 08               [12] 1153 	inc	r0
      0003FD 86 03            [24] 1154 	mov	ar3,@r0
      0003FF 18               [12] 1155 	dec	r0
      000400 EA               [12] 1156 	mov	a,r2
      000401 4B               [12] 1157 	orl	a,r3
      000402 70 08            [24] 1158 	jnz	00108$
                                   1159 ;	./src/main.c:271: state[i] = BTN_PRESSED;
      000404 77 02            [12] 1160 	mov	@r1,#0x02
      000406 09               [12] 1161 	inc	r1
      000407 77 00            [12] 1162 	mov	@r1,#0x00
      000409 19               [12] 1163 	dec	r1
      00040A 80 24            [24] 1164 	sjmp	00115$
      00040C                       1165 00108$:
                                   1166 ;	./src/main.c:273: state[i] = BTN_RELEASED;
      00040C 77 00            [12] 1167 	mov	@r1,#0x00
      00040E 09               [12] 1168 	inc	r1
      00040F 77 00            [12] 1169 	mov	@r1,#0x00
      000411 19               [12] 1170 	dec	r1
                                   1171 ;	./src/main.c:274: break;
                                   1172 ;	./src/main.c:275: case BTN_PRESSED:
      000412 80 1C            [24] 1173 	sjmp	00115$
      000414                       1174 00110$:
                                   1175 ;	./src/main.c:276: if (curINPUT[i] == LEVEL_LOW)
      000414 EC               [12] 1176 	mov	a,r4
      000415 24 08            [12] 1177 	add	a,#_curINPUT
      000417 F8               [12] 1178 	mov	r0,a
      000418 86 04            [24] 1179 	mov	ar4,@r0
      00041A 08               [12] 1180 	inc	r0
      00041B 86 05            [24] 1181 	mov	ar5,@r0
      00041D 18               [12] 1182 	dec	r0
      00041E EC               [12] 1183 	mov	a,r4
      00041F 4D               [12] 1184 	orl	a,r5
      000420 70 08            [24] 1185 	jnz	00112$
                                   1186 ;	./src/main.c:277: state[i] = BTN_PRESSED;
      000422 77 02            [12] 1187 	mov	@r1,#0x02
      000424 09               [12] 1188 	inc	r1
      000425 77 00            [12] 1189 	mov	@r1,#0x00
      000427 19               [12] 1190 	dec	r1
      000428 80 06            [24] 1191 	sjmp	00115$
      00042A                       1192 00112$:
                                   1193 ;	./src/main.c:279: state[i] = BTN_RELEASED;
      00042A 77 00            [12] 1194 	mov	@r1,#0x00
      00042C 09               [12] 1195 	inc	r1
      00042D 77 00            [12] 1196 	mov	@r1,#0x00
      00042F 19               [12] 1197 	dec	r1
                                   1198 ;	./src/main.c:283: }
      000430                       1199 00115$:
                                   1200 ;	./src/main.c:285: if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)){
      000430 EE               [12] 1201 	mov	a,r6
      000431 2E               [12] 1202 	add	a,r6
      000432 FC               [12] 1203 	mov	r4,a
      000433 EF               [12] 1204 	mov	a,r7
      000434 33               [12] 1205 	rlc	a
      000435 FD               [12] 1206 	mov	r5,a
      000436 EC               [12] 1207 	mov	a,r4
      000437 24 24            [12] 1208 	add	a,#_state
      000439 F9               [12] 1209 	mov	r1,a
      00043A 87 02            [24] 1210 	mov	ar2,@r1
      00043C 09               [12] 1211 	inc	r1
      00043D 87 03            [24] 1212 	mov	ar3,@r1
      00043F 19               [12] 1213 	dec	r1
      000440 EA               [12] 1214 	mov	a,r2
      000441 4B               [12] 1215 	orl	a,r3
      000442 70 50            [24] 1216 	jnz	00120$
      000444 EC               [12] 1217 	mov	a,r4
      000445 24 40            [12] 1218 	add	a,#_prestate
      000447 F9               [12] 1219 	mov	r1,a
      000448 87 04            [24] 1220 	mov	ar4,@r1
      00044A 09               [12] 1221 	inc	r1
      00044B 87 05            [24] 1222 	mov	ar5,@r1
      00044D 19               [12] 1223 	dec	r1
      00044E BC 02 43         [24] 1224 	cjne	r4,#0x02,00120$
      000451 BD 00 40         [24] 1225 	cjne	r5,#0x00,00120$
                                   1226 ;	./src/main.c:287: if (i < 10){
      000454 C3               [12] 1227 	clr	c
      000455 EE               [12] 1228 	mov	a,r6
      000456 94 0A            [12] 1229 	subb	a,#0x0a
      000458 EF               [12] 1230 	mov	a,r7
      000459 64 80            [12] 1231 	xrl	a,#0x80
      00045B 94 80            [12] 1232 	subb	a,#0x80
      00045D 50 26            [24] 1233 	jnc	00117$
                                   1234 ;	./src/main.c:288: sequence();
      00045F C0 07            [24] 1235 	push	ar7
      000461 C0 06            [24] 1236 	push	ar6
      000463 12 02 76         [24] 1237 	lcall	_sequence
      000466 D0 06            [24] 1238 	pop	ar6
      000468 D0 07            [24] 1239 	pop	ar7
                                   1240 ;	./src/main.c:289: display[0] = display_seg[i];
      00046A EE               [12] 1241 	mov	a,r6
      00046B 24 6C            [12] 1242 	add	a,#_display_seg
      00046D F9               [12] 1243 	mov	r1,a
      00046E 87 05            [24] 1244 	mov	ar5,@r1
      000470 8D 5C            [24] 1245 	mov	_display,r5
                                   1246 ;	./src/main.c:290: draw(display);
      000472 90 00 5C         [24] 1247 	mov	dptr,#_display
      000475 75 F0 40         [24] 1248 	mov	b,#0x40
      000478 C0 07            [24] 1249 	push	ar7
      00047A C0 06            [24] 1250 	push	ar6
      00047C 12 01 23         [24] 1251 	lcall	_draw
      00047F D0 06            [24] 1252 	pop	ar6
      000481 D0 07            [24] 1253 	pop	ar7
      000483 80 0F            [24] 1254 	sjmp	00120$
      000485                       1255 00117$:
                                   1256 ;	./src/main.c:292: func_call(i);
      000485 8E 82            [24] 1257 	mov	dpl,r6
      000487 8F 83            [24] 1258 	mov	dph,r7
      000489 C0 07            [24] 1259 	push	ar7
      00048B C0 06            [24] 1260 	push	ar6
      00048D 12 02 9F         [24] 1261 	lcall	_func_call
      000490 D0 06            [24] 1262 	pop	ar6
      000492 D0 07            [24] 1263 	pop	ar7
      000494                       1264 00120$:
                                   1265 ;	./src/main.c:295: prestate[i] = state[i];
      000494 EE               [12] 1266 	mov	a,r6
      000495 2E               [12] 1267 	add	a,r6
      000496 FC               [12] 1268 	mov	r4,a
      000497 EF               [12] 1269 	mov	a,r7
      000498 33               [12] 1270 	rlc	a
      000499 EC               [12] 1271 	mov	a,r4
      00049A 24 40            [12] 1272 	add	a,#_prestate
      00049C F9               [12] 1273 	mov	r1,a
      00049D EC               [12] 1274 	mov	a,r4
      00049E 24 24            [12] 1275 	add	a,#_state
      0004A0 F8               [12] 1276 	mov	r0,a
      0004A1 86 04            [24] 1277 	mov	ar4,@r0
      0004A3 08               [12] 1278 	inc	r0
      0004A4 86 05            [24] 1279 	mov	ar5,@r0
      0004A6 18               [12] 1280 	dec	r0
      0004A7 A7 04            [24] 1281 	mov	@r1,ar4
      0004A9 09               [12] 1282 	inc	r1
      0004AA A7 05            [24] 1283 	mov	@r1,ar5
      0004AC 19               [12] 1284 	dec	r1
                                   1285 ;	./src/main.c:258: for (int i = 0; i < 14; i++)
      0004AD 0E               [12] 1286 	inc	r6
      0004AE BE 00 01         [24] 1287 	cjne	r6,#0x00,00204$
      0004B1 0F               [12] 1288 	inc	r7
      0004B2                       1289 00204$:
                                   1290 ;	./src/main.c:298: }
      0004B2 02 03 A5         [24] 1291 	ljmp	00130$
                                   1292 	.area CSEG    (CODE)
                                   1293 	.area CONST   (CODE)
                                   1294 	.area XINIT   (CODE)
                                   1295 	.area CABS    (ABS,CODE)
