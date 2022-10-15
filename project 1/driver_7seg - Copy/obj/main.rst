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
                                     13 	.globl _turn_to_CHAR
                                     14 	.globl _calculate_OP
                                     15 	.globl _read_currINPUT
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
                                    113 	.globl _Write7219_PARM_2
                                    114 	.globl _c
                                    115 	.globl _a
                                    116 	.globl _flag
                                    117 	.globl _num2
                                    118 	.globl _num1
                                    119 	.globl _patt
                                    120 	.globl _input
                                    121 	.globl _states
                                    122 	.globl _sendbyte
                                    123 	.globl _Write7219
                                    124 	.globl _Initial
                                    125 	.globl _draw
                                    126 	.globl _scan_row
                                    127 	.globl _sequence
                                    128 	.globl _turn_to_NUM
                                    129 	.globl _func_call
                                    130 	.globl _Clean
                                    131 ;--------------------------------------------------------
                                    132 ; special function registers
                                    133 ;--------------------------------------------------------
                                    134 	.area RSEG    (ABS,DATA)
      000000                        135 	.org 0x0000
                           000080   136 _P0	=	0x0080
                           000081   137 _SP	=	0x0081
                           000082   138 _DPL	=	0x0082
                           000083   139 _DPH	=	0x0083
                           000087   140 _PCON	=	0x0087
                           000088   141 _TCON	=	0x0088
                           000089   142 _TMOD	=	0x0089
                           00008A   143 _TL0	=	0x008a
                           00008B   144 _TL1	=	0x008b
                           00008C   145 _TH0	=	0x008c
                           00008D   146 _TH1	=	0x008d
                           000090   147 _P1	=	0x0090
                           000098   148 _SCON	=	0x0098
                           000099   149 _SBUF	=	0x0099
                           0000A0   150 _P2	=	0x00a0
                           0000A8   151 _IE	=	0x00a8
                           0000B0   152 _P3	=	0x00b0
                           0000B8   153 _IP	=	0x00b8
                           0000D0   154 _PSW	=	0x00d0
                           0000E0   155 _ACC	=	0x00e0
                           0000F0   156 _B	=	0x00f0
                                    157 ;--------------------------------------------------------
                                    158 ; special function bits
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           000080   162 _P0_0	=	0x0080
                           000081   163 _P0_1	=	0x0081
                           000082   164 _P0_2	=	0x0082
                           000083   165 _P0_3	=	0x0083
                           000084   166 _P0_4	=	0x0084
                           000085   167 _P0_5	=	0x0085
                           000086   168 _P0_6	=	0x0086
                           000087   169 _P0_7	=	0x0087
                           000088   170 _IT0	=	0x0088
                           000089   171 _IE0	=	0x0089
                           00008A   172 _IT1	=	0x008a
                           00008B   173 _IE1	=	0x008b
                           00008C   174 _TR0	=	0x008c
                           00008D   175 _TF0	=	0x008d
                           00008E   176 _TR1	=	0x008e
                           00008F   177 _TF1	=	0x008f
                           000090   178 _P1_0	=	0x0090
                           000091   179 _P1_1	=	0x0091
                           000092   180 _P1_2	=	0x0092
                           000093   181 _P1_3	=	0x0093
                           000094   182 _P1_4	=	0x0094
                           000095   183 _P1_5	=	0x0095
                           000096   184 _P1_6	=	0x0096
                           000097   185 _P1_7	=	0x0097
                           000098   186 _RI	=	0x0098
                           000099   187 _TI	=	0x0099
                           00009A   188 _RB8	=	0x009a
                           00009B   189 _TB8	=	0x009b
                           00009C   190 _REN	=	0x009c
                           00009D   191 _SM2	=	0x009d
                           00009E   192 _SM1	=	0x009e
                           00009F   193 _SM0	=	0x009f
                           0000A0   194 _P2_0	=	0x00a0
                           0000A1   195 _P2_1	=	0x00a1
                           0000A2   196 _P2_2	=	0x00a2
                           0000A3   197 _P2_3	=	0x00a3
                           0000A4   198 _P2_4	=	0x00a4
                           0000A5   199 _P2_5	=	0x00a5
                           0000A6   200 _P2_6	=	0x00a6
                           0000A7   201 _P2_7	=	0x00a7
                           0000A8   202 _EX0	=	0x00a8
                           0000A9   203 _ET0	=	0x00a9
                           0000AA   204 _EX1	=	0x00aa
                           0000AB   205 _ET1	=	0x00ab
                           0000AC   206 _ES	=	0x00ac
                           0000AF   207 _EA	=	0x00af
                           0000B0   208 _P3_0	=	0x00b0
                           0000B1   209 _P3_1	=	0x00b1
                           0000B2   210 _P3_2	=	0x00b2
                           0000B3   211 _P3_3	=	0x00b3
                           0000B4   212 _P3_4	=	0x00b4
                           0000B5   213 _P3_5	=	0x00b5
                           0000B6   214 _P3_6	=	0x00b6
                           0000B7   215 _P3_7	=	0x00b7
                           0000B0   216 _RXD	=	0x00b0
                           0000B1   217 _TXD	=	0x00b1
                           0000B2   218 _INT0	=	0x00b2
                           0000B3   219 _INT1	=	0x00b3
                           0000B4   220 _T0	=	0x00b4
                           0000B5   221 _T1	=	0x00b5
                           0000B6   222 _WR	=	0x00b6
                           0000B7   223 _RD	=	0x00b7
                           0000B8   224 _PX0	=	0x00b8
                           0000B9   225 _PT0	=	0x00b9
                           0000BA   226 _PX1	=	0x00ba
                           0000BB   227 _PT1	=	0x00bb
                           0000BC   228 _PS	=	0x00bc
                           0000D0   229 _P	=	0x00d0
                           0000D1   230 _F1	=	0x00d1
                           0000D2   231 _OV	=	0x00d2
                           0000D3   232 _RS0	=	0x00d3
                           0000D4   233 _RS1	=	0x00d4
                           0000D5   234 _F0	=	0x00d5
                           0000D6   235 _AC	=	0x00d6
                           0000D7   236 _CY	=	0x00d7
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable register banks
                                    239 ;--------------------------------------------------------
                                    240 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        241 	.ds 8
                                    242 ;--------------------------------------------------------
                                    243 ; internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area DSEG    (DATA)
      000008                        246 _states::
      000008                        247 	.ds 14
      000016                        248 _input::
      000016                        249 	.ds 16
      000026                        250 _patt::
      000026                        251 	.ds 1
      000027                        252 _num1::
      000027                        253 	.ds 2
      000029                        254 _num2::
      000029                        255 	.ds 2
      00002B                        256 _flag::
      00002B                        257 	.ds 2
      00002D                        258 _a::
      00002D                        259 	.ds 2
      00002F                        260 _c::
      00002F                        261 	.ds 2
      000031                        262 _display_seg:
      000031                        263 	.ds 12
      00003D                        264 _Write7219_PARM_2:
      00003D                        265 	.ds 1
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable items in internal ram
                                    268 ;--------------------------------------------------------
                                    269 	.area	OSEG    (OVR,DATA)
      00003E                        270 _sendbyte_PARM_2:
      00003E                        271 	.ds 1
                                    272 	.area	OSEG    (OVR,DATA)
                                    273 	.area	OSEG    (OVR,DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; Stack segment in internal ram
                                    276 ;--------------------------------------------------------
                                    277 	.area SSEG
      000040                        278 __start__stack:
      000040                        279 	.ds	1
                                    280 
                                    281 ;--------------------------------------------------------
                                    282 ; indirectly addressable internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area ISEG    (DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area IABS    (ABS,DATA)
                                    289 	.area IABS    (ABS,DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; bit data
                                    292 ;--------------------------------------------------------
                                    293 	.area BSEG    (BIT)
                                    294 ;--------------------------------------------------------
                                    295 ; paged external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area PSEG    (PAG,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; uninitialized external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XSEG    (XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; absolute external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XABS    (ABS,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; initialized external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XISEG   (XDATA)
                                    310 	.area HOME    (CODE)
                                    311 	.area GSINIT0 (CODE)
                                    312 	.area GSINIT1 (CODE)
                                    313 	.area GSINIT2 (CODE)
                                    314 	.area GSINIT3 (CODE)
                                    315 	.area GSINIT4 (CODE)
                                    316 	.area GSINIT5 (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area CSEG    (CODE)
                                    320 ;--------------------------------------------------------
                                    321 ; interrupt vector
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
      000000                        324 __interrupt_vect:
      000000 02 00 06         [24]  325 	ljmp	__sdcc_gsinit_startup
                                    326 ;--------------------------------------------------------
                                    327 ; global & static initialisations
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.globl __sdcc_gsinit_startup
                                    334 	.globl __sdcc_program_startup
                                    335 	.globl __start__stack
                                    336 	.globl __mcs51_genXINIT
                                    337 	.globl __mcs51_genXRAMCLEAR
                                    338 	.globl __mcs51_genRAMCLEAR
                                    339 ;	./src/main.c:63: unsigned char patt = 0x08; // led value
      00005F 75 26 08         [24]  340 	mov	_patt,#0x08
                                    341 ;	./src/main.c:66: static unsigned char display_seg[] = {
      000062 75 31 7E         [24]  342 	mov	_display_seg,#0x7e
      000065 75 32 30         [24]  343 	mov	(_display_seg + 0x0001),#0x30
      000068 75 33 6D         [24]  344 	mov	(_display_seg + 0x0002),#0x6d
      00006B 75 34 79         [24]  345 	mov	(_display_seg + 0x0003),#0x79
      00006E 75 35 33         [24]  346 	mov	(_display_seg + 0x0004),#0x33
      000071 75 36 5B         [24]  347 	mov	(_display_seg + 0x0005),#0x5b
      000074 75 37 5F         [24]  348 	mov	(_display_seg + 0x0006),#0x5f
      000077 75 38 70         [24]  349 	mov	(_display_seg + 0x0007),#0x70
      00007A 75 39 7F         [24]  350 	mov	(_display_seg + 0x0008),#0x7f
      00007D 75 3A 7B         [24]  351 	mov	(_display_seg + 0x0009),#0x7b
      000080 75 3B 4F         [24]  352 	mov	(_display_seg + 0x000a),#0x4f
      000083 75 3C 00         [24]  353 	mov	(_display_seg + 0x000b),#0x00
                                    354 	.area GSFINAL (CODE)
      000086 02 00 03         [24]  355 	ljmp	__sdcc_program_startup
                                    356 ;--------------------------------------------------------
                                    357 ; Home
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area HOME    (CODE)
      000003                        361 __sdcc_program_startup:
      000003 02 04 D0         [24]  362 	ljmp	_main
                                    363 ;	return from main will return to caller
                                    364 ;--------------------------------------------------------
                                    365 ; code
                                    366 ;--------------------------------------------------------
                                    367 	.area CSEG    (CODE)
                                    368 ;------------------------------------------------------------
                                    369 ;Allocation info for local variables in function 'sendbyte'
                                    370 ;------------------------------------------------------------
                                    371 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    372 ;address                   Allocated to registers r7 
                                    373 ;------------------------------------------------------------
                                    374 ;	./src/main.c:83: void sendbyte(unsigned char address,unsigned char dat){
                                    375 ;	-----------------------------------------
                                    376 ;	 function sendbyte
                                    377 ;	-----------------------------------------
      000089                        378 _sendbyte:
                           000007   379 	ar7 = 0x07
                           000006   380 	ar6 = 0x06
                           000005   381 	ar5 = 0x05
                           000004   382 	ar4 = 0x04
                           000003   383 	ar3 = 0x03
                           000002   384 	ar2 = 0x02
                           000001   385 	ar1 = 0x01
                           000000   386 	ar0 = 0x00
      000089 AF 82            [24]  387 	mov	r7,dpl
                                    388 ;	./src/main.c:84: for (a=0;a<8;a++)        //get last 8 bits(address)
      00008B E4               [12]  389 	clr	a
      00008C F5 2D            [12]  390 	mov	_a,a
      00008E F5 2E            [12]  391 	mov	(_a + 1),a
      000090                        392 00103$:
                                    393 ;	./src/main.c:86: CLK = 0;
                                    394 ;	assignBit
      000090 C2 A0            [12]  395 	clr	_P2_0
                                    396 ;	./src/main.c:87: DOUT = ( address & 0x80);   //get msb and shift left
      000092 EF               [12]  397 	mov	a,r7
      000093 23               [12]  398 	rl	a
      000094 54 01            [12]  399 	anl	a,#0x01
                                    400 ;	assignBit
      000096 24 FF            [12]  401 	add	a,#0xff
      000098 92 A2            [24]  402 	mov	_P2_2,c
                                    403 ;	./src/main.c:88: address <<= 1;
      00009A 8F 06            [24]  404 	mov	ar6,r7
      00009C EE               [12]  405 	mov	a,r6
      00009D 2E               [12]  406 	add	a,r6
      00009E FF               [12]  407 	mov	r7,a
                                    408 ;	./src/main.c:89: CLK = 1;
                                    409 ;	assignBit
      00009F D2 A0            [12]  410 	setb	_P2_0
                                    411 ;	./src/main.c:84: for (a=0;a<8;a++)        //get last 8 bits(address)
      0000A1 05 2D            [12]  412 	inc	_a
      0000A3 E4               [12]  413 	clr	a
      0000A4 B5 2D 02         [24]  414 	cjne	a,_a,00121$
      0000A7 05 2E            [12]  415 	inc	(_a + 1)
      0000A9                        416 00121$:
      0000A9 C3               [12]  417 	clr	c
      0000AA E5 2D            [12]  418 	mov	a,_a
      0000AC 94 08            [12]  419 	subb	a,#0x08
      0000AE E5 2E            [12]  420 	mov	a,(_a + 1)
      0000B0 94 00            [12]  421 	subb	a,#0x00
      0000B2 40 DC            [24]  422 	jc	00103$
                                    423 ;	./src/main.c:91: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000B4 E4               [12]  424 	clr	a
      0000B5 F5 2D            [12]  425 	mov	_a,a
      0000B7 F5 2E            [12]  426 	mov	(_a + 1),a
      0000B9                        427 00105$:
                                    428 ;	./src/main.c:93: CLK = 0;
                                    429 ;	assignBit
      0000B9 C2 A0            [12]  430 	clr	_P2_0
                                    431 ;	./src/main.c:94: DOUT=( dat & 0x80);    //get msb and shit left
      0000BB E5 3E            [12]  432 	mov	a,_sendbyte_PARM_2
      0000BD 23               [12]  433 	rl	a
      0000BE 54 01            [12]  434 	anl	a,#0x01
                                    435 ;	assignBit
      0000C0 24 FF            [12]  436 	add	a,#0xff
      0000C2 92 A2            [24]  437 	mov	_P2_2,c
                                    438 ;	./src/main.c:95: dat <<= 1;
      0000C4 E5 3E            [12]  439 	mov	a,_sendbyte_PARM_2
      0000C6 25 E0            [12]  440 	add	a,acc
      0000C8 F5 3E            [12]  441 	mov	_sendbyte_PARM_2,a
                                    442 ;	./src/main.c:96: CLK = 1;
                                    443 ;	assignBit
      0000CA D2 A0            [12]  444 	setb	_P2_0
                                    445 ;	./src/main.c:91: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000CC 05 2D            [12]  446 	inc	_a
      0000CE E4               [12]  447 	clr	a
      0000CF B5 2D 02         [24]  448 	cjne	a,_a,00123$
      0000D2 05 2E            [12]  449 	inc	(_a + 1)
      0000D4                        450 00123$:
      0000D4 C3               [12]  451 	clr	c
      0000D5 E5 2D            [12]  452 	mov	a,_a
      0000D7 94 08            [12]  453 	subb	a,#0x08
      0000D9 E5 2E            [12]  454 	mov	a,(_a + 1)
      0000DB 94 00            [12]  455 	subb	a,#0x00
      0000DD 40 DA            [24]  456 	jc	00105$
                                    457 ;	./src/main.c:98: }
      0000DF 22               [24]  458 	ret
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'Write7219'
                                    461 ;------------------------------------------------------------
                                    462 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    463 ;address                   Allocated to registers r7 
                                    464 ;cnt                       Allocated to registers r6 
                                    465 ;------------------------------------------------------------
                                    466 ;	./src/main.c:101: void Write7219(unsigned char address, unsigned char dat)
                                    467 ;	-----------------------------------------
                                    468 ;	 function Write7219
                                    469 ;	-----------------------------------------
      0000E0                        470 _Write7219:
      0000E0 AF 82            [24]  471 	mov	r7,dpl
                                    472 ;	./src/main.c:104: LOAD = 0;
                                    473 ;	assignBit
      0000E2 C2 A1            [12]  474 	clr	_P2_1
                                    475 ;	./src/main.c:106: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000E4 7E 01            [12]  476 	mov	r6,#0x01
      0000E6                        477 00102$:
                                    478 ;	./src/main.c:108: sendbyte(address, dat);
      0000E6 85 3D 3E         [24]  479 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000E9 8F 82            [24]  480 	mov	dpl,r7
      0000EB C0 07            [24]  481 	push	ar7
      0000ED C0 06            [24]  482 	push	ar6
      0000EF 12 00 89         [24]  483 	lcall	_sendbyte
      0000F2 D0 06            [24]  484 	pop	ar6
      0000F4 D0 07            [24]  485 	pop	ar7
                                    486 ;	./src/main.c:106: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000F6 0E               [12]  487 	inc	r6
      0000F7 EE               [12]  488 	mov	a,r6
      0000F8 24 FE            [12]  489 	add	a,#0xff - 0x01
      0000FA 50 EA            [24]  490 	jnc	00102$
                                    491 ;	./src/main.c:111: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    492 ;	assignBit
      0000FC D2 A1            [12]  493 	setb	_P2_1
                                    494 ;	./src/main.c:112: }
      0000FE 22               [24]  495 	ret
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'Initial'
                                    498 ;------------------------------------------------------------
                                    499 ;i                         Allocated to registers r7 
                                    500 ;------------------------------------------------------------
                                    501 ;	./src/main.c:115: void Initial(void)
                                    502 ;	-----------------------------------------
                                    503 ;	 function Initial
                                    504 ;	-----------------------------------------
      0000FF                        505 _Initial:
                                    506 ;	./src/main.c:118: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      0000FF 75 3D 01         [24]  507 	mov	_Write7219_PARM_2,#0x01
      000102 75 82 0C         [24]  508 	mov	dpl,#0x0c
      000105 12 00 E0         [24]  509 	lcall	_Write7219
                                    510 ;	./src/main.c:119: Write7219(DISPLAY_TEST,0x00);
      000108 75 3D 00         [24]  511 	mov	_Write7219_PARM_2,#0x00
      00010B 75 82 0F         [24]  512 	mov	dpl,#0x0f
      00010E 12 00 E0         [24]  513 	lcall	_Write7219
                                    514 ;	./src/main.c:120: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      000111 75 3D 00         [24]  515 	mov	_Write7219_PARM_2,#0x00
      000114 75 82 09         [24]  516 	mov	dpl,#0x09
      000117 12 00 E0         [24]  517 	lcall	_Write7219
                                    518 ;	./src/main.c:121: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      00011A 75 3D 07         [24]  519 	mov	_Write7219_PARM_2,#0x07
      00011D 75 82 0B         [24]  520 	mov	dpl,#0x0b
      000120 12 00 E0         [24]  521 	lcall	_Write7219
                                    522 ;	./src/main.c:122: Write7219(INTENSITY,0x00);         //set up intensity
      000123 75 3D 00         [24]  523 	mov	_Write7219_PARM_2,#0x00
      000126 75 82 0A         [24]  524 	mov	dpl,#0x0a
      000129 12 00 E0         [24]  525 	lcall	_Write7219
                                    526 ;	./src/main.c:123: for(i=1;i<=8;i++){
      00012C 7F 01            [12]  527 	mov	r7,#0x01
      00012E                        528 00102$:
                                    529 ;	./src/main.c:124: Write7219(i,0x00);   //turn off all LED
      00012E 75 3D 00         [24]  530 	mov	_Write7219_PARM_2,#0x00
      000131 8F 82            [24]  531 	mov	dpl,r7
      000133 C0 07            [24]  532 	push	ar7
      000135 12 00 E0         [24]  533 	lcall	_Write7219
      000138 D0 07            [24]  534 	pop	ar7
                                    535 ;	./src/main.c:123: for(i=1;i<=8;i++){
      00013A 0F               [12]  536 	inc	r7
      00013B EF               [12]  537 	mov	a,r7
      00013C 24 F7            [12]  538 	add	a,#0xff - 0x08
      00013E 50 EE            [24]  539 	jnc	00102$
                                    540 ;	./src/main.c:126: }
      000140 22               [24]  541 	ret
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'draw'
                                    544 ;------------------------------------------------------------
                                    545 ;i                         Allocated to registers r7 
                                    546 ;------------------------------------------------------------
                                    547 ;	./src/main.c:129: void draw(void){
                                    548 ;	-----------------------------------------
                                    549 ;	 function draw
                                    550 ;	-----------------------------------------
      000141                        551 _draw:
                                    552 ;	./src/main.c:131: for(i = 1;i < 9;i++){
      000141 7F 01            [12]  553 	mov	r7,#0x01
      000143                        554 00102$:
                                    555 ;	./src/main.c:132: Write7219(i, display_seg[input[i-1]]);
      000143 8F 06            [24]  556 	mov	ar6,r7
      000145 1E               [12]  557 	dec	r6
      000146 EE               [12]  558 	mov	a,r6
      000147 2E               [12]  559 	add	a,r6
      000148 24 16            [12]  560 	add	a,#_input
      00014A F9               [12]  561 	mov	r1,a
      00014B 87 05            [24]  562 	mov	ar5,@r1
      00014D 09               [12]  563 	inc	r1
      00014E 19               [12]  564 	dec	r1
      00014F ED               [12]  565 	mov	a,r5
      000150 24 31            [12]  566 	add	a,#_display_seg
      000152 F9               [12]  567 	mov	r1,a
      000153 87 3D            [24]  568 	mov	_Write7219_PARM_2,@r1
      000155 8F 82            [24]  569 	mov	dpl,r7
      000157 C0 07            [24]  570 	push	ar7
      000159 12 00 E0         [24]  571 	lcall	_Write7219
      00015C D0 07            [24]  572 	pop	ar7
                                    573 ;	./src/main.c:131: for(i = 1;i < 9;i++){
      00015E 0F               [12]  574 	inc	r7
      00015F BF 09 00         [24]  575 	cjne	r7,#0x09,00111$
      000162                        576 00111$:
      000162 40 DF            [24]  577 	jc	00102$
                                    578 ;	./src/main.c:134: }
      000164 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'scan_row'
                                    582 ;------------------------------------------------------------
                                    583 ;row                       Allocated to registers r6 r7 
                                    584 ;------------------------------------------------------------
                                    585 ;	./src/main.c:137: void scan_row(unsigned int row)
                                    586 ;	-----------------------------------------
                                    587 ;	 function scan_row
                                    588 ;	-----------------------------------------
      000165                        589 _scan_row:
      000165 AE 82            [24]  590 	mov	r6,dpl
      000167 AF 83            [24]  591 	mov	r7,dph
                                    592 ;	./src/main.c:139: switch (row)
      000169 C3               [12]  593 	clr	c
      00016A 74 03            [12]  594 	mov	a,#0x03
      00016C 9E               [12]  595 	subb	a,r6
      00016D E4               [12]  596 	clr	a
      00016E 9F               [12]  597 	subb	a,r7
      00016F 40 31            [24]  598 	jc	00107$
      000171 EE               [12]  599 	mov	a,r6
      000172 2E               [12]  600 	add	a,r6
                                    601 ;	./src/main.c:141: case 0:
      000173 90 01 77         [24]  602 	mov	dptr,#00114$
      000176 73               [24]  603 	jmp	@a+dptr
      000177                        604 00114$:
      000177 80 06            [24]  605 	sjmp	00101$
      000179 80 0D            [24]  606 	sjmp	00102$
      00017B 80 14            [24]  607 	sjmp	00103$
      00017D 80 1B            [24]  608 	sjmp	00104$
      00017F                        609 00101$:
                                    610 ;	./src/main.c:142: OUTPUT1 = 0; // row1 output 0
                                    611 ;	assignBit
      00017F C2 86            [12]  612 	clr	_P0_6
                                    613 ;	./src/main.c:143: OUTPUT2 = 1; // row2 output 1
                                    614 ;	assignBit
      000181 D2 85            [12]  615 	setb	_P0_5
                                    616 ;	./src/main.c:144: OUTPUT3 = 1; // row3 output 1
                                    617 ;	assignBit
      000183 D2 84            [12]  618 	setb	_P0_4
                                    619 ;	./src/main.c:145: OUTPUT0 = 1; // row0 output 1
                                    620 ;	assignBit
      000185 D2 83            [12]  621 	setb	_P0_3
                                    622 ;	./src/main.c:146: break;
                                    623 ;	./src/main.c:147: case 1:
      000187 22               [24]  624 	ret
      000188                        625 00102$:
                                    626 ;	./src/main.c:148: OUTPUT1 = 1; // row1 output 1
                                    627 ;	assignBit
      000188 D2 86            [12]  628 	setb	_P0_6
                                    629 ;	./src/main.c:149: OUTPUT2 = 0; // row2 output 0
                                    630 ;	assignBit
      00018A C2 85            [12]  631 	clr	_P0_5
                                    632 ;	./src/main.c:150: OUTPUT3 = 1; // row3 output 1
                                    633 ;	assignBit
      00018C D2 84            [12]  634 	setb	_P0_4
                                    635 ;	./src/main.c:151: OUTPUT0 = 1; // row0 output 1
                                    636 ;	assignBit
      00018E D2 83            [12]  637 	setb	_P0_3
                                    638 ;	./src/main.c:152: break;
                                    639 ;	./src/main.c:153: case 2:
      000190 22               [24]  640 	ret
      000191                        641 00103$:
                                    642 ;	./src/main.c:154: OUTPUT1 = 1; // row1 output 1
                                    643 ;	assignBit
      000191 D2 86            [12]  644 	setb	_P0_6
                                    645 ;	./src/main.c:155: OUTPUT2 = 1; // row2 output 1
                                    646 ;	assignBit
      000193 D2 85            [12]  647 	setb	_P0_5
                                    648 ;	./src/main.c:156: OUTPUT3 = 0; // row3 output 0
                                    649 ;	assignBit
      000195 C2 84            [12]  650 	clr	_P0_4
                                    651 ;	./src/main.c:157: OUTPUT0 = 1; // row0 output 1
                                    652 ;	assignBit
      000197 D2 83            [12]  653 	setb	_P0_3
                                    654 ;	./src/main.c:158: break;
                                    655 ;	./src/main.c:159: case 3:
      000199 22               [24]  656 	ret
      00019A                        657 00104$:
                                    658 ;	./src/main.c:160: OUTPUT1 = 1; // row1 output 1
                                    659 ;	assignBit
      00019A D2 86            [12]  660 	setb	_P0_6
                                    661 ;	./src/main.c:161: OUTPUT2 = 1; // row2 output 1
                                    662 ;	assignBit
      00019C D2 85            [12]  663 	setb	_P0_5
                                    664 ;	./src/main.c:162: OUTPUT3 = 1; // row3 output 1
                                    665 ;	assignBit
      00019E D2 84            [12]  666 	setb	_P0_4
                                    667 ;	./src/main.c:163: OUTPUT0 = 0; // row0 output 0
                                    668 ;	assignBit
      0001A0 C2 83            [12]  669 	clr	_P0_3
                                    670 ;	./src/main.c:167: }
      0001A2                        671 00107$:
                                    672 ;	./src/main.c:168: }
      0001A2 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'read_currINPUT'
                                    676 ;------------------------------------------------------------
                                    677 ;	./src/main.c:171: void read_currINPUT(void)
                                    678 ;	-----------------------------------------
                                    679 ;	 function read_currINPUT
                                    680 ;	-----------------------------------------
      0001A3                        681 _read_currINPUT:
                                    682 ;	./src/main.c:173: for (a = 0; a < 4; a++)
      0001A3 E4               [12]  683 	clr	a
      0001A4 F5 2D            [12]  684 	mov	_a,a
      0001A6 F5 2E            [12]  685 	mov	(_a + 1),a
      0001A8                        686 00105$:
                                    687 ;	./src/main.c:175: scan_row(a);
      0001A8 85 2D 82         [24]  688 	mov	dpl,_a
      0001AB 85 2E 83         [24]  689 	mov	dph,(_a + 1)
      0001AE 12 01 65         [24]  690 	lcall	_scan_row
                                    691 ;	./src/main.c:176: if(a==3)
      0001B1 74 03            [12]  692 	mov	a,#0x03
      0001B3 B5 2D 06         [24]  693 	cjne	a,_a,00121$
      0001B6 E4               [12]  694 	clr	a
      0001B7 B5 2E 02         [24]  695 	cjne	a,(_a + 1),00121$
      0001BA 80 02            [24]  696 	sjmp	00122$
      0001BC                        697 00121$:
      0001BC 80 0E            [24]  698 	sjmp	00102$
      0001BE                        699 00122$:
                                    700 ;	./src/main.c:177: states[0].currINPUT= INPUT2;
      0001BE A2 81            [12]  701 	mov	c,_P0_1
      0001C0 E4               [12]  702 	clr	a
      0001C1 33               [12]  703 	rlc	a
      0001C2 FF               [12]  704 	mov	r7,a
      0001C3 78 08            [12]  705 	mov	r0,#_states
      0001C5 13               [12]  706 	rrc	a
      0001C6 E6               [12]  707 	mov	a,@r0
      0001C7 92 E0            [24]  708 	mov	acc.0,c
      0001C9 F6               [12]  709 	mov	@r0,a
      0001CA 80 3C            [24]  710 	sjmp	00106$
      0001CC                        711 00102$:
                                    712 ;	./src/main.c:179: states[a * 3 + 1].currINPUT = INPUT1;
      0001CC E5 2D            [12]  713 	mov	a,_a
      0001CE 75 F0 03         [24]  714 	mov	b,#0x03
      0001D1 A4               [48]  715 	mul	ab
      0001D2 04               [12]  716 	inc	a
      0001D3 24 08            [12]  717 	add	a,#_states
      0001D5 F9               [12]  718 	mov	r1,a
      0001D6 A2 80            [12]  719 	mov	c,_P0_0
      0001D8 E4               [12]  720 	clr	a
      0001D9 33               [12]  721 	rlc	a
      0001DA 13               [12]  722 	rrc	a
      0001DB E7               [12]  723 	mov	a,@r1
      0001DC 92 E0            [24]  724 	mov	acc.0,c
      0001DE F7               [12]  725 	mov	@r1,a
                                    726 ;	./src/main.c:180: states[a * 3 + 2].currINPUT = INPUT2;
      0001DF E5 2D            [12]  727 	mov	a,_a
      0001E1 75 F0 03         [24]  728 	mov	b,#0x03
      0001E4 A4               [48]  729 	mul	ab
      0001E5 24 02            [12]  730 	add	a,#0x02
      0001E7 24 08            [12]  731 	add	a,#_states
      0001E9 F9               [12]  732 	mov	r1,a
      0001EA A2 81            [12]  733 	mov	c,_P0_1
      0001EC E4               [12]  734 	clr	a
      0001ED 33               [12]  735 	rlc	a
      0001EE 13               [12]  736 	rrc	a
      0001EF E7               [12]  737 	mov	a,@r1
      0001F0 92 E0            [24]  738 	mov	acc.0,c
      0001F2 F7               [12]  739 	mov	@r1,a
                                    740 ;	./src/main.c:181: states[a * 3 + 3].currINPUT = INPUT3;
      0001F3 E5 2D            [12]  741 	mov	a,_a
      0001F5 75 F0 03         [24]  742 	mov	b,#0x03
      0001F8 A4               [48]  743 	mul	ab
      0001F9 24 03            [12]  744 	add	a,#0x03
      0001FB 24 08            [12]  745 	add	a,#_states
      0001FD F9               [12]  746 	mov	r1,a
      0001FE A2 82            [12]  747 	mov	c,_P0_2
      000200 E4               [12]  748 	clr	a
      000201 33               [12]  749 	rlc	a
      000202 FF               [12]  750 	mov	r7,a
      000203 13               [12]  751 	rrc	a
      000204 E7               [12]  752 	mov	a,@r1
      000205 92 E0            [24]  753 	mov	acc.0,c
      000207 F7               [12]  754 	mov	@r1,a
      000208                        755 00106$:
                                    756 ;	./src/main.c:173: for (a = 0; a < 4; a++)
      000208 05 2D            [12]  757 	inc	_a
      00020A E4               [12]  758 	clr	a
      00020B B5 2D 02         [24]  759 	cjne	a,_a,00123$
      00020E 05 2E            [12]  760 	inc	(_a + 1)
      000210                        761 00123$:
      000210 C3               [12]  762 	clr	c
      000211 E5 2D            [12]  763 	mov	a,_a
      000213 94 04            [12]  764 	subb	a,#0x04
      000215 E5 2E            [12]  765 	mov	a,(_a + 1)
      000217 94 00            [12]  766 	subb	a,#0x00
      000219 40 8D            [24]  767 	jc	00105$
                                    768 ;	./src/main.c:184: states[10].currINPUT = but1;
      00021B A2 B2            [12]  769 	mov	c,_INT0
      00021D E4               [12]  770 	clr	a
      00021E 33               [12]  771 	rlc	a
      00021F 78 12            [12]  772 	mov	r0,#(_states + 0x000a)
      000221 13               [12]  773 	rrc	a
      000222 E6               [12]  774 	mov	a,@r0
      000223 92 E0            [24]  775 	mov	acc.0,c
      000225 F6               [12]  776 	mov	@r0,a
                                    777 ;	./src/main.c:185: states[11].currINPUT = but2;
      000226 A2 B3            [12]  778 	mov	c,_INT1
      000228 E4               [12]  779 	clr	a
      000229 33               [12]  780 	rlc	a
      00022A 78 13            [12]  781 	mov	r0,#(_states + 0x000b)
      00022C 13               [12]  782 	rrc	a
      00022D E6               [12]  783 	mov	a,@r0
      00022E 92 E0            [24]  784 	mov	acc.0,c
      000230 F6               [12]  785 	mov	@r0,a
                                    786 ;	./src/main.c:186: states[12].currINPUT = but3;
      000231 A2 A0            [12]  787 	mov	c,_P2_0
      000233 E4               [12]  788 	clr	a
      000234 33               [12]  789 	rlc	a
      000235 78 14            [12]  790 	mov	r0,#(_states + 0x000c)
      000237 13               [12]  791 	rrc	a
      000238 E6               [12]  792 	mov	a,@r0
      000239 92 E0            [24]  793 	mov	acc.0,c
      00023B F6               [12]  794 	mov	@r0,a
                                    795 ;	./src/main.c:187: states[13].currINPUT = but4;
      00023C A2 A1            [12]  796 	mov	c,_P2_1
      00023E E4               [12]  797 	clr	a
      00023F 33               [12]  798 	rlc	a
      000240 78 15            [12]  799 	mov	r0,#(_states + 0x000d)
      000242 13               [12]  800 	rrc	a
      000243 E6               [12]  801 	mov	a,@r0
      000244 92 E0            [24]  802 	mov	acc.0,c
      000246 F6               [12]  803 	mov	@r0,a
                                    804 ;	./src/main.c:188: }
      000247 22               [24]  805 	ret
                                    806 ;------------------------------------------------------------
                                    807 ;Allocation info for local variables in function 'sequence'
                                    808 ;------------------------------------------------------------
                                    809 ;op                        Allocated to registers r6 r7 
                                    810 ;------------------------------------------------------------
                                    811 ;	./src/main.c:191: void sequence(unsigned int op){
                                    812 ;	-----------------------------------------
                                    813 ;	 function sequence
                                    814 ;	-----------------------------------------
      000248                        815 _sequence:
      000248 AE 82            [24]  816 	mov	r6,dpl
      00024A AF 83            [24]  817 	mov	r7,dph
                                    818 ;	./src/main.c:192: if(op){
      00024C EE               [12]  819 	mov	a,r6
      00024D 4F               [12]  820 	orl	a,r7
      00024E 60 36            [24]  821 	jz	00104$
                                    822 ;	./src/main.c:193: for(a = 7; a > 0; a--){
      000250 75 2D 07         [24]  823 	mov	_a,#0x07
      000253 75 2E 00         [24]  824 	mov	(_a + 1),#0x00
      000256                        825 00106$:
                                    826 ;	./src/main.c:194: input[a] = input[a-1];
      000256 E5 2D            [12]  827 	mov	a,_a
      000258 25 2D            [12]  828 	add	a,_a
      00025A FE               [12]  829 	mov	r6,a
      00025B E5 2E            [12]  830 	mov	a,(_a + 1)
      00025D 33               [12]  831 	rlc	a
      00025E EE               [12]  832 	mov	a,r6
      00025F 24 16            [12]  833 	add	a,#_input
      000261 F9               [12]  834 	mov	r1,a
      000262 AF 2D            [24]  835 	mov	r7,_a
      000264 1F               [12]  836 	dec	r7
      000265 EF               [12]  837 	mov	a,r7
      000266 2F               [12]  838 	add	a,r7
      000267 24 16            [12]  839 	add	a,#_input
      000269 F8               [12]  840 	mov	r0,a
      00026A 86 06            [24]  841 	mov	ar6,@r0
      00026C 08               [12]  842 	inc	r0
      00026D 86 07            [24]  843 	mov	ar7,@r0
      00026F 18               [12]  844 	dec	r0
      000270 A7 06            [24]  845 	mov	@r1,ar6
      000272 09               [12]  846 	inc	r1
      000273 A7 07            [24]  847 	mov	@r1,ar7
      000275 19               [12]  848 	dec	r1
                                    849 ;	./src/main.c:193: for(a = 7; a > 0; a--){
      000276 15 2D            [12]  850 	dec	_a
      000278 74 FF            [12]  851 	mov	a,#0xff
      00027A B5 2D 02         [24]  852 	cjne	a,_a,00131$
      00027D 15 2E            [12]  853 	dec	(_a + 1)
      00027F                        854 00131$:
      00027F E5 2D            [12]  855 	mov	a,_a
      000281 45 2E            [12]  856 	orl	a,(_a + 1)
      000283 70 D1            [24]  857 	jnz	00106$
      000285 22               [24]  858 	ret
      000286                        859 00104$:
                                    860 ;	./src/main.c:197: for(a = 0; a < 7; a++){
      000286 E4               [12]  861 	clr	a
      000287 F5 2D            [12]  862 	mov	_a,a
      000289 F5 2E            [12]  863 	mov	(_a + 1),a
      00028B                        864 00108$:
                                    865 ;	./src/main.c:198: input[a] = input[a+1];
      00028B E5 2D            [12]  866 	mov	a,_a
      00028D 25 2D            [12]  867 	add	a,_a
      00028F FE               [12]  868 	mov	r6,a
      000290 E5 2E            [12]  869 	mov	a,(_a + 1)
      000292 33               [12]  870 	rlc	a
      000293 EE               [12]  871 	mov	a,r6
      000294 24 16            [12]  872 	add	a,#_input
      000296 F9               [12]  873 	mov	r1,a
      000297 AF 2D            [24]  874 	mov	r7,_a
      000299 0F               [12]  875 	inc	r7
      00029A EF               [12]  876 	mov	a,r7
      00029B 2F               [12]  877 	add	a,r7
      00029C 24 16            [12]  878 	add	a,#_input
      00029E F8               [12]  879 	mov	r0,a
      00029F 86 06            [24]  880 	mov	ar6,@r0
      0002A1 08               [12]  881 	inc	r0
      0002A2 86 07            [24]  882 	mov	ar7,@r0
      0002A4 18               [12]  883 	dec	r0
      0002A5 A7 06            [24]  884 	mov	@r1,ar6
      0002A7 09               [12]  885 	inc	r1
      0002A8 A7 07            [24]  886 	mov	@r1,ar7
      0002AA 19               [12]  887 	dec	r1
                                    888 ;	./src/main.c:199: input[a+1] = 11;
      0002AB AF 2D            [24]  889 	mov	r7,_a
      0002AD 0F               [12]  890 	inc	r7
      0002AE EF               [12]  891 	mov	a,r7
      0002AF 2F               [12]  892 	add	a,r7
      0002B0 24 16            [12]  893 	add	a,#_input
      0002B2 F8               [12]  894 	mov	r0,a
      0002B3 76 0B            [12]  895 	mov	@r0,#0x0b
      0002B5 08               [12]  896 	inc	r0
      0002B6 76 00            [12]  897 	mov	@r0,#0x00
                                    898 ;	./src/main.c:197: for(a = 0; a < 7; a++){
      0002B8 05 2D            [12]  899 	inc	_a
      0002BA E4               [12]  900 	clr	a
      0002BB B5 2D 02         [24]  901 	cjne	a,_a,00133$
      0002BE 05 2E            [12]  902 	inc	(_a + 1)
      0002C0                        903 00133$:
      0002C0 C3               [12]  904 	clr	c
      0002C1 E5 2D            [12]  905 	mov	a,_a
      0002C3 94 07            [12]  906 	subb	a,#0x07
      0002C5 E5 2E            [12]  907 	mov	a,(_a + 1)
      0002C7 94 00            [12]  908 	subb	a,#0x00
      0002C9 40 C0            [24]  909 	jc	00108$
                                    910 ;	./src/main.c:202: }
      0002CB 22               [24]  911 	ret
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'turn_to_NUM'
                                    914 ;------------------------------------------------------------
                                    915 ;num                       Allocated to registers r6 r7 
                                    916 ;deg                       Allocated to registers r4 r5 
                                    917 ;------------------------------------------------------------
                                    918 ;	./src/main.c:205: unsigned int turn_to_NUM(void){
                                    919 ;	-----------------------------------------
                                    920 ;	 function turn_to_NUM
                                    921 ;	-----------------------------------------
      0002CC                        922 _turn_to_NUM:
                                    923 ;	./src/main.c:206: unsigned int num = 0,deg = 1;
      0002CC 7E 00            [12]  924 	mov	r6,#0x00
      0002CE 7F 00            [12]  925 	mov	r7,#0x00
      0002D0 7C 01            [12]  926 	mov	r4,#0x01
                                    927 ;	./src/main.c:207: for(a=0;a<8;a++){
      0002D2 E4               [12]  928 	clr	a
      0002D3 FD               [12]  929 	mov	r5,a
      0002D4 F5 2D            [12]  930 	mov	_a,a
      0002D6 F5 2E            [12]  931 	mov	(_a + 1),a
      0002D8                        932 00102$:
                                    933 ;	./src/main.c:208: num = num + input[a]*deg;
      0002D8 E5 2D            [12]  934 	mov	a,_a
      0002DA 25 2D            [12]  935 	add	a,_a
      0002DC FA               [12]  936 	mov	r2,a
      0002DD E5 2E            [12]  937 	mov	a,(_a + 1)
      0002DF 33               [12]  938 	rlc	a
      0002E0 EA               [12]  939 	mov	a,r2
      0002E1 24 16            [12]  940 	add	a,#_input
      0002E3 F9               [12]  941 	mov	r1,a
      0002E4 87 82            [24]  942 	mov	dpl,@r1
      0002E6 09               [12]  943 	inc	r1
      0002E7 87 83            [24]  944 	mov	dph,@r1
      0002E9 19               [12]  945 	dec	r1
      0002EA 8C 3E            [24]  946 	mov	__mulint_PARM_2,r4
      0002EC 8D 3F            [24]  947 	mov	(__mulint_PARM_2 + 1),r5
      0002EE C0 07            [24]  948 	push	ar7
      0002F0 C0 06            [24]  949 	push	ar6
      0002F2 C0 05            [24]  950 	push	ar5
      0002F4 C0 04            [24]  951 	push	ar4
      0002F6 12 06 30         [24]  952 	lcall	__mulint
      0002F9 AA 82            [24]  953 	mov	r2,dpl
      0002FB AB 83            [24]  954 	mov	r3,dph
      0002FD D0 04            [24]  955 	pop	ar4
      0002FF D0 05            [24]  956 	pop	ar5
      000301 D0 06            [24]  957 	pop	ar6
      000303 D0 07            [24]  958 	pop	ar7
      000305 EA               [12]  959 	mov	a,r2
      000306 2E               [12]  960 	add	a,r6
      000307 FE               [12]  961 	mov	r6,a
      000308 EB               [12]  962 	mov	a,r3
      000309 3F               [12]  963 	addc	a,r7
      00030A FF               [12]  964 	mov	r7,a
                                    965 ;	./src/main.c:209: deg = deg *10;
      00030B 8C 3E            [24]  966 	mov	__mulint_PARM_2,r4
      00030D 8D 3F            [24]  967 	mov	(__mulint_PARM_2 + 1),r5
      00030F 90 00 0A         [24]  968 	mov	dptr,#0x000a
      000312 C0 07            [24]  969 	push	ar7
      000314 C0 06            [24]  970 	push	ar6
      000316 12 06 30         [24]  971 	lcall	__mulint
      000319 AC 82            [24]  972 	mov	r4,dpl
      00031B AD 83            [24]  973 	mov	r5,dph
      00031D D0 06            [24]  974 	pop	ar6
      00031F D0 07            [24]  975 	pop	ar7
                                    976 ;	./src/main.c:207: for(a=0;a<8;a++){
      000321 05 2D            [12]  977 	inc	_a
      000323 E4               [12]  978 	clr	a
      000324 B5 2D 02         [24]  979 	cjne	a,_a,00114$
      000327 05 2E            [12]  980 	inc	(_a + 1)
      000329                        981 00114$:
      000329 C3               [12]  982 	clr	c
      00032A E5 2D            [12]  983 	mov	a,_a
      00032C 94 08            [12]  984 	subb	a,#0x08
      00032E E5 2E            [12]  985 	mov	a,(_a + 1)
      000330 94 00            [12]  986 	subb	a,#0x00
      000332 40 A4            [24]  987 	jc	00102$
                                    988 ;	./src/main.c:211: return num;
      000334 8E 82            [24]  989 	mov	dpl,r6
      000336 8F 83            [24]  990 	mov	dph,r7
                                    991 ;	./src/main.c:212: }
      000338 22               [24]  992 	ret
                                    993 ;------------------------------------------------------------
                                    994 ;Allocation info for local variables in function 'calculate_OP'
                                    995 ;------------------------------------------------------------
                                    996 ;op                        Allocated to registers r7 
                                    997 ;------------------------------------------------------------
                                    998 ;	./src/main.c:215: void calculate_OP(unsigned char op){
                                    999 ;	-----------------------------------------
                                   1000 ;	 function calculate_OP
                                   1001 ;	-----------------------------------------
      000339                       1002 _calculate_OP:
      000339 AF 82            [24] 1003 	mov	r7,dpl
                                   1004 ;	./src/main.c:216: switch (op)
      00033B BF 08 02         [24] 1005 	cjne	r7,#0x08,00125$
      00033E 80 0F            [24] 1006 	sjmp	00101$
      000340                       1007 00125$:
      000340 BF 10 02         [24] 1008 	cjne	r7,#0x10,00126$
      000343 80 17            [24] 1009 	sjmp	00102$
      000345                       1010 00126$:
      000345 BF 20 02         [24] 1011 	cjne	r7,#0x20,00127$
      000348 80 20            [24] 1012 	sjmp	00103$
      00034A                       1013 00127$:
                                   1014 ;	./src/main.c:218: case 0x08:
      00034A BF 40 48         [24] 1015 	cjne	r7,#0x40,00107$
      00034D 80 31            [24] 1016 	sjmp	00104$
      00034F                       1017 00101$:
                                   1018 ;	./src/main.c:219: num1 = num1 + num2;
      00034F E5 29            [12] 1019 	mov	a,_num2
      000351 25 27            [12] 1020 	add	a,_num1
      000353 F5 27            [12] 1021 	mov	_num1,a
      000355 E5 2A            [12] 1022 	mov	a,(_num2 + 1)
      000357 35 28            [12] 1023 	addc	a,(_num1 + 1)
      000359 F5 28            [12] 1024 	mov	(_num1 + 1),a
                                   1025 ;	./src/main.c:220: break;
                                   1026 ;	./src/main.c:221: case 0x10:
      00035B 22               [24] 1027 	ret
      00035C                       1028 00102$:
                                   1029 ;	./src/main.c:222: num1 = num1 - num2;
      00035C E5 27            [12] 1030 	mov	a,_num1
      00035E C3               [12] 1031 	clr	c
      00035F 95 29            [12] 1032 	subb	a,_num2
      000361 F5 27            [12] 1033 	mov	_num1,a
      000363 E5 28            [12] 1034 	mov	a,(_num1 + 1)
      000365 95 2A            [12] 1035 	subb	a,(_num2 + 1)
      000367 F5 28            [12] 1036 	mov	(_num1 + 1),a
                                   1037 ;	./src/main.c:223: break;
                                   1038 ;	./src/main.c:224: case 0x20:
      000369 22               [24] 1039 	ret
      00036A                       1040 00103$:
                                   1041 ;	./src/main.c:225: num1 = num1 * num2;
      00036A 85 29 3E         [24] 1042 	mov	__mulint_PARM_2,_num2
      00036D 85 2A 3F         [24] 1043 	mov	(__mulint_PARM_2 + 1),(_num2 + 1)
      000370 85 27 82         [24] 1044 	mov	dpl,_num1
      000373 85 28 83         [24] 1045 	mov	dph,(_num1 + 1)
      000376 12 06 30         [24] 1046 	lcall	__mulint
      000379 85 82 27         [24] 1047 	mov	_num1,dpl
      00037C 85 83 28         [24] 1048 	mov	(_num1 + 1),dph
                                   1049 ;	./src/main.c:226: break;
                                   1050 ;	./src/main.c:227: case 0x40:
      00037F 22               [24] 1051 	ret
      000380                       1052 00104$:
                                   1053 ;	./src/main.c:228: num1 = num1 / num2;
      000380 85 29 3E         [24] 1054 	mov	__divuint_PARM_2,_num2
      000383 85 2A 3F         [24] 1055 	mov	(__divuint_PARM_2 + 1),(_num2 + 1)
      000386 85 27 82         [24] 1056 	mov	dpl,_num1
      000389 85 28 83         [24] 1057 	mov	dph,(_num1 + 1)
      00038C 12 06 07         [24] 1058 	lcall	__divuint
      00038F 85 82 27         [24] 1059 	mov	_num1,dpl
      000392 85 83 28         [24] 1060 	mov	(_num1 + 1),dph
                                   1061 ;	./src/main.c:232: }
      000395                       1062 00107$:
                                   1063 ;	./src/main.c:233: }
      000395 22               [24] 1064 	ret
                                   1065 ;------------------------------------------------------------
                                   1066 ;Allocation info for local variables in function 'turn_to_CHAR'
                                   1067 ;------------------------------------------------------------
                                   1068 ;n                         Allocated to registers r6 r7 
                                   1069 ;------------------------------------------------------------
                                   1070 ;	./src/main.c:236: void turn_to_CHAR(int n){
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function turn_to_CHAR
                                   1073 ;	-----------------------------------------
      000396                       1074 _turn_to_CHAR:
      000396 AE 82            [24] 1075 	mov	r6,dpl
      000398 AF 83            [24] 1076 	mov	r7,dph
                                   1077 ;	./src/main.c:237: for(a=0;a<8;a++){
      00039A E4               [12] 1078 	clr	a
      00039B F5 2D            [12] 1079 	mov	_a,a
      00039D F5 2E            [12] 1080 	mov	(_a + 1),a
      00039F                       1081 00104$:
                                   1082 ;	./src/main.c:238: input[a] = n%10;
      00039F E5 2D            [12] 1083 	mov	a,_a
      0003A1 25 2D            [12] 1084 	add	a,_a
      0003A3 FC               [12] 1085 	mov	r4,a
      0003A4 E5 2E            [12] 1086 	mov	a,(_a + 1)
      0003A6 33               [12] 1087 	rlc	a
      0003A7 EC               [12] 1088 	mov	a,r4
      0003A8 24 16            [12] 1089 	add	a,#_input
      0003AA F9               [12] 1090 	mov	r1,a
      0003AB 75 3E 0A         [24] 1091 	mov	__modsint_PARM_2,#0x0a
      0003AE 75 3F 00         [24] 1092 	mov	(__modsint_PARM_2 + 1),#0x00
      0003B1 8E 82            [24] 1093 	mov	dpl,r6
      0003B3 8F 83            [24] 1094 	mov	dph,r7
      0003B5 C0 07            [24] 1095 	push	ar7
      0003B7 C0 06            [24] 1096 	push	ar6
      0003B9 C0 01            [24] 1097 	push	ar1
      0003BB 12 06 9A         [24] 1098 	lcall	__modsint
      0003BE E5 82            [12] 1099 	mov	a,dpl
      0003C0 85 83 F0         [24] 1100 	mov	b,dph
      0003C3 D0 01            [24] 1101 	pop	ar1
      0003C5 D0 06            [24] 1102 	pop	ar6
      0003C7 D0 07            [24] 1103 	pop	ar7
      0003C9 F7               [12] 1104 	mov	@r1,a
      0003CA 09               [12] 1105 	inc	r1
      0003CB A7 F0            [24] 1106 	mov	@r1,b
      0003CD 19               [12] 1107 	dec	r1
                                   1108 ;	./src/main.c:239: n = n/10;
      0003CE 75 3E 0A         [24] 1109 	mov	__divsint_PARM_2,#0x0a
      0003D1 75 3F 00         [24] 1110 	mov	(__divsint_PARM_2 + 1),#0x00
      0003D4 8E 82            [24] 1111 	mov	dpl,r6
      0003D6 8F 83            [24] 1112 	mov	dph,r7
      0003D8 12 06 D0         [24] 1113 	lcall	__divsint
      0003DB AE 82            [24] 1114 	mov	r6,dpl
      0003DD AF 83            [24] 1115 	mov	r7,dph
                                   1116 ;	./src/main.c:240: if(n == 0)
      0003DF EE               [12] 1117 	mov	a,r6
      0003E0 4F               [12] 1118 	orl	a,r7
      0003E1 60 13            [24] 1119 	jz	00106$
                                   1120 ;	./src/main.c:237: for(a=0;a<8;a++){
      0003E3 05 2D            [12] 1121 	inc	_a
      0003E5 E4               [12] 1122 	clr	a
      0003E6 B5 2D 02         [24] 1123 	cjne	a,_a,00117$
      0003E9 05 2E            [12] 1124 	inc	(_a + 1)
      0003EB                       1125 00117$:
      0003EB C3               [12] 1126 	clr	c
      0003EC E5 2D            [12] 1127 	mov	a,_a
      0003EE 94 08            [12] 1128 	subb	a,#0x08
      0003F0 E5 2E            [12] 1129 	mov	a,(_a + 1)
      0003F2 94 00            [12] 1130 	subb	a,#0x00
      0003F4 40 A9            [24] 1131 	jc	00104$
      0003F6                       1132 00106$:
                                   1133 ;	./src/main.c:243: }
      0003F6 22               [24] 1134 	ret
                                   1135 ;------------------------------------------------------------
                                   1136 ;Allocation info for local variables in function 'func_call'
                                   1137 ;------------------------------------------------------------
                                   1138 ;cmd                       Allocated to registers r6 r7 
                                   1139 ;op                        Allocated to registers r7 
                                   1140 ;------------------------------------------------------------
                                   1141 ;	./src/main.c:246: void func_call(unsigned int cmd){
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function func_call
                                   1144 ;	-----------------------------------------
      0003F7                       1145 _func_call:
      0003F7 AE 82            [24] 1146 	mov	r6,dpl
      0003F9 AF 83            [24] 1147 	mov	r7,dph
                                   1148 ;	./src/main.c:247: switch (cmd)
      0003FB BE 0A 05         [24] 1149 	cjne	r6,#0x0a,00151$
      0003FE BF 00 02         [24] 1150 	cjne	r7,#0x00,00151$
      000401 80 1C            [24] 1151 	sjmp	00101$
      000403                       1152 00151$:
      000403 BE 0B 06         [24] 1153 	cjne	r6,#0x0b,00152$
      000406 BF 00 03         [24] 1154 	cjne	r7,#0x00,00152$
      000409 02 04 78         [24] 1155 	ljmp	00112$
      00040C                       1156 00152$:
      00040C BE 0C 06         [24] 1157 	cjne	r6,#0x0c,00153$
      00040F BF 00 03         [24] 1158 	cjne	r7,#0x00,00153$
      000412 02 04 81         [24] 1159 	ljmp	00113$
      000415                       1160 00153$:
      000415 BE 0D 06         [24] 1161 	cjne	r6,#0x0d,00154$
      000418 BF 00 03         [24] 1162 	cjne	r7,#0x00,00154$
      00041B 02 04 84         [24] 1163 	ljmp	00114$
      00041E                       1164 00154$:
      00041E 22               [24] 1165 	ret
                                   1166 ;	./src/main.c:249: case 10:	//op
      00041F                       1167 00101$:
                                   1168 ;	./src/main.c:252: if(patt == 0x80)
      00041F 74 80            [12] 1169 	mov	a,#0x80
      000421 B5 26 05         [24] 1170 	cjne	a,_patt,00105$
                                   1171 ;	./src/main.c:253: patt = 0x08;
      000424 75 26 08         [24] 1172 	mov	_patt,#0x08
      000427 80 07            [24] 1173 	sjmp	00106$
      000429                       1174 00105$:
                                   1175 ;	./src/main.c:254: else if (patt == 0x00)
      000429 E5 26            [12] 1176 	mov	a,_patt
      00042B 70 03            [24] 1177 	jnz	00106$
                                   1178 ;	./src/main.c:255: patt = 0x08;
      00042D 75 26 08         [24] 1179 	mov	_patt,#0x08
      000430                       1180 00106$:
                                   1181 ;	./src/main.c:256: patt = patt << 1;
      000430 E5 26            [12] 1182 	mov	a,_patt
      000432 25 E0            [12] 1183 	add	a,acc
                                   1184 ;	./src/main.c:257: led = ~patt;
      000434 F5 26            [12] 1185 	mov	_patt,a
      000436 F4               [12] 1186 	cpl	a
      000437 F5 90            [12] 1187 	mov	_P1,a
                                   1188 ;	./src/main.c:258: delay_ms(20);
      000439 90 00 14         [24] 1189 	mov	dptr,#0x0014
      00043C 12 05 FA         [24] 1190 	lcall	_delay_ms
                                   1191 ;	./src/main.c:261: if(flag){
      00043F E5 2B            [12] 1192 	mov	a,_flag
      000441 45 2C            [12] 1193 	orl	a,(_flag + 1)
      000443 60 0F            [24] 1194 	jz	00110$
                                   1195 ;	./src/main.c:262: num1 = turn_to_NUM();
      000445 12 02 CC         [24] 1196 	lcall	_turn_to_NUM
      000448 85 82 27         [24] 1197 	mov	_num1,dpl
      00044B 85 83 28         [24] 1198 	mov	(_num1 + 1),dph
                                   1199 ;	./src/main.c:263: flag = 0;
      00044E E4               [12] 1200 	clr	a
      00044F F5 2B            [12] 1201 	mov	_flag,a
      000451 F5 2C            [12] 1202 	mov	(_flag + 1),a
      000453 22               [24] 1203 	ret
      000454                       1204 00110$:
                                   1205 ;	./src/main.c:265: num2 = turn_to_NUM();
      000454 12 02 CC         [24] 1206 	lcall	_turn_to_NUM
      000457 85 82 29         [24] 1207 	mov	_num2,dpl
      00045A 85 83 2A         [24] 1208 	mov	(_num2 + 1),dph
                                   1209 ;	./src/main.c:266: op = patt >> 1;
      00045D E5 26            [12] 1210 	mov	a,_patt
      00045F C3               [12] 1211 	clr	c
      000460 13               [12] 1212 	rrc	a
      000461 FF               [12] 1213 	mov	r7,a
                                   1214 ;	./src/main.c:267: if(op == 0x04)
      000462 BF 04 02         [24] 1215 	cjne	r7,#0x04,00108$
                                   1216 ;	./src/main.c:268: op = 0x40;
      000465 7F 40            [12] 1217 	mov	r7,#0x40
      000467                       1218 00108$:
                                   1219 ;	./src/main.c:269: calculate_OP(op);
      000467 8F 82            [24] 1220 	mov	dpl,r7
      000469 12 03 39         [24] 1221 	lcall	_calculate_OP
                                   1222 ;	./src/main.c:270: turn_to_CHAR(num1);
      00046C 85 27 82         [24] 1223 	mov	dpl,_num1
      00046F 85 28 83         [24] 1224 	mov	dph,(_num1 + 1)
      000472 12 03 96         [24] 1225 	lcall	_turn_to_CHAR
                                   1226 ;	./src/main.c:271: draw();
                                   1227 ;	./src/main.c:273: break;
                                   1228 ;	./src/main.c:274: case 11:	//back <-
      000475 02 01 41         [24] 1229 	ljmp	_draw
      000478                       1230 00112$:
                                   1231 ;	./src/main.c:275: sequence(0);
      000478 90 00 00         [24] 1232 	mov	dptr,#0x0000
      00047B 12 02 48         [24] 1233 	lcall	_sequence
                                   1234 ;	./src/main.c:276: draw();
                                   1235 ;	./src/main.c:277: break;
                                   1236 ;	./src/main.c:278: case 12:	//AC
      00047E 02 01 41         [24] 1237 	ljmp	_draw
      000481                       1238 00113$:
                                   1239 ;	./src/main.c:279: Clean();
                                   1240 ;	./src/main.c:280: break;
                                   1241 ;	./src/main.c:281: case 13:	//equal=
      000481 02 04 9F         [24] 1242 	ljmp	_Clean
      000484                       1243 00114$:
                                   1244 ;	./src/main.c:282: num2 = turn_to_NUM();
      000484 12 02 CC         [24] 1245 	lcall	_turn_to_NUM
      000487 85 82 29         [24] 1246 	mov	_num2,dpl
      00048A 85 83 2A         [24] 1247 	mov	(_num2 + 1),dph
                                   1248 ;	./src/main.c:283: calculate_OP(patt);
      00048D 85 26 82         [24] 1249 	mov	dpl,_patt
      000490 12 03 39         [24] 1250 	lcall	_calculate_OP
                                   1251 ;	./src/main.c:284: turn_to_CHAR(num1);
      000493 85 27 82         [24] 1252 	mov	dpl,_num1
      000496 85 28 83         [24] 1253 	mov	dph,(_num1 + 1)
      000499 12 03 96         [24] 1254 	lcall	_turn_to_CHAR
                                   1255 ;	./src/main.c:285: draw();
                                   1256 ;	./src/main.c:289: }
                                   1257 ;	./src/main.c:290: }
      00049C 02 01 41         [24] 1258 	ljmp	_draw
                                   1259 ;------------------------------------------------------------
                                   1260 ;Allocation info for local variables in function 'Clean'
                                   1261 ;------------------------------------------------------------
                                   1262 ;i                         Allocated to registers r7 
                                   1263 ;------------------------------------------------------------
                                   1264 ;	./src/main.c:293: void Clean(void){
                                   1265 ;	-----------------------------------------
                                   1266 ;	 function Clean
                                   1267 ;	-----------------------------------------
      00049F                       1268 _Clean:
                                   1269 ;	./src/main.c:295: for(i = 1; i < 9; i++){
      00049F 7F 01            [12] 1270 	mov	r7,#0x01
      0004A1                       1271 00102$:
                                   1272 ;	./src/main.c:296: input[i-1] = 11;
      0004A1 8F 06            [24] 1273 	mov	ar6,r7
      0004A3 1E               [12] 1274 	dec	r6
      0004A4 EE               [12] 1275 	mov	a,r6
      0004A5 2E               [12] 1276 	add	a,r6
      0004A6 24 16            [12] 1277 	add	a,#_input
      0004A8 F8               [12] 1278 	mov	r0,a
      0004A9 76 0B            [12] 1279 	mov	@r0,#0x0b
      0004AB 08               [12] 1280 	inc	r0
      0004AC 76 00            [12] 1281 	mov	@r0,#0x00
                                   1282 ;	./src/main.c:297: Write7219(i,0x00);
      0004AE 75 3D 00         [24] 1283 	mov	_Write7219_PARM_2,#0x00
      0004B1 8F 82            [24] 1284 	mov	dpl,r7
      0004B3 C0 07            [24] 1285 	push	ar7
      0004B5 12 00 E0         [24] 1286 	lcall	_Write7219
      0004B8 D0 07            [24] 1287 	pop	ar7
                                   1288 ;	./src/main.c:295: for(i = 1; i < 9; i++){
      0004BA 0F               [12] 1289 	inc	r7
      0004BB BF 09 00         [24] 1290 	cjne	r7,#0x09,00115$
      0004BE                       1291 00115$:
      0004BE 40 E1            [24] 1292 	jc	00102$
                                   1293 ;	./src/main.c:299: Write7219(0x01,0x08);
      0004C0 75 3D 08         [24] 1294 	mov	_Write7219_PARM_2,#0x08
      0004C3 75 82 01         [24] 1295 	mov	dpl,#0x01
      0004C6 12 00 E0         [24] 1296 	lcall	_Write7219
                                   1297 ;	./src/main.c:300: flag = 1;
      0004C9 75 2B 01         [24] 1298 	mov	_flag,#0x01
      0004CC 75 2C 00         [24] 1299 	mov	(_flag + 1),#0x00
                                   1300 ;	./src/main.c:301: }
      0004CF 22               [24] 1301 	ret
                                   1302 ;------------------------------------------------------------
                                   1303 ;Allocation info for local variables in function 'main'
                                   1304 ;------------------------------------------------------------
                                   1305 ;i                         Allocated to registers r6 r7 
                                   1306 ;------------------------------------------------------------
                                   1307 ;	./src/main.c:304: void main(void)
                                   1308 ;	-----------------------------------------
                                   1309 ;	 function main
                                   1310 ;	-----------------------------------------
      0004D0                       1311 _main:
                                   1312 ;	./src/main.c:307: Initial();
      0004D0 12 00 FF         [24] 1313 	lcall	_Initial
                                   1314 ;	./src/main.c:308: for (a = 0; a < 14; a++)
      0004D3 E4               [12] 1315 	clr	a
      0004D4 F5 2D            [12] 1316 	mov	_a,a
      0004D6 F5 2E            [12] 1317 	mov	(_a + 1),a
      0004D8                       1318 00126$:
                                   1319 ;	./src/main.c:310: states[a].currINPUT = LEVEL_HIGH;
      0004D8 E5 2D            [12] 1320 	mov	a,_a
      0004DA 24 08            [12] 1321 	add	a,#_states
      0004DC F8               [12] 1322 	mov	r0,a
      0004DD E6               [12] 1323 	mov	a,@r0
      0004DE 44 01            [12] 1324 	orl	a,#0x01
      0004E0 F6               [12] 1325 	mov	@r0,a
                                   1326 ;	./src/main.c:311: states[a].currState = BTN_RELEASED;
      0004E1 E5 2D            [12] 1327 	mov	a,_a
      0004E3 24 08            [12] 1328 	add	a,#_states
      0004E5 F8               [12] 1329 	mov	r0,a
      0004E6 E6               [12] 1330 	mov	a,@r0
      0004E7 54 F9            [12] 1331 	anl	a,#0xf9
      0004E9 F6               [12] 1332 	mov	@r0,a
                                   1333 ;	./src/main.c:312: states[a].prevState = BTN_RELEASED;
      0004EA E5 2D            [12] 1334 	mov	a,_a
      0004EC 24 08            [12] 1335 	add	a,#_states
      0004EE F8               [12] 1336 	mov	r0,a
      0004EF E6               [12] 1337 	mov	a,@r0
      0004F0 54 E7            [12] 1338 	anl	a,#0xe7
      0004F2 F6               [12] 1339 	mov	@r0,a
                                   1340 ;	./src/main.c:308: for (a = 0; a < 14; a++)
      0004F3 05 2D            [12] 1341 	inc	_a
      0004F5 E4               [12] 1342 	clr	a
      0004F6 B5 2D 02         [24] 1343 	cjne	a,_a,00189$
      0004F9 05 2E            [12] 1344 	inc	(_a + 1)
      0004FB                       1345 00189$:
      0004FB C3               [12] 1346 	clr	c
      0004FC E5 2D            [12] 1347 	mov	a,_a
      0004FE 94 0E            [12] 1348 	subb	a,#0x0e
      000500 E5 2E            [12] 1349 	mov	a,(_a + 1)
      000502 94 00            [12] 1350 	subb	a,#0x00
      000504 40 D2            [24] 1351 	jc	00126$
                                   1352 ;	./src/main.c:314: Clean();
      000506 12 04 9F         [24] 1353 	lcall	_Clean
                                   1354 ;	./src/main.c:316: while(1)
      000509                       1355 00124$:
                                   1356 ;	./src/main.c:318: delay_ms(20);
      000509 90 00 14         [24] 1357 	mov	dptr,#0x0014
      00050C 12 05 FA         [24] 1358 	lcall	_delay_ms
                                   1359 ;	./src/main.c:320: read_currINPUT();
      00050F 12 01 A3         [24] 1360 	lcall	_read_currINPUT
                                   1361 ;	./src/main.c:321: for (unsigned int i = 0; i < 14; i++)
      000512 7E 00            [12] 1362 	mov	r6,#0x00
      000514 7F 00            [12] 1363 	mov	r7,#0x00
      000516                       1364 00129$:
      000516 C3               [12] 1365 	clr	c
      000517 EE               [12] 1366 	mov	a,r6
      000518 94 0E            [12] 1367 	subb	a,#0x0e
      00051A EF               [12] 1368 	mov	a,r7
      00051B 94 00            [12] 1369 	subb	a,#0x00
      00051D 50 EA            [24] 1370 	jnc	00124$
                                   1371 ;	./src/main.c:324: switch (states[i].currState)
      00051F EE               [12] 1372 	mov	a,r6
      000520 24 08            [12] 1373 	add	a,#_states
      000522 F9               [12] 1374 	mov	r1,a
      000523 E7               [12] 1375 	mov	a,@r1
      000524 03               [12] 1376 	rr	a
      000525 54 03            [12] 1377 	anl	a,#0x03
      000527 FD               [12] 1378 	mov	r5,a
      000528 60 0A            [24] 1379 	jz	00102$
      00052A BD 01 02         [24] 1380 	cjne	r5,#0x01,00193$
      00052D 80 23            [24] 1381 	sjmp	00106$
      00052F                       1382 00193$:
                                   1383 ;	./src/main.c:326: case BTN_RELEASED:
      00052F BD 02 5A         [24] 1384 	cjne	r5,#0x02,00115$
      000532 80 3C            [24] 1385 	sjmp	00110$
      000534                       1386 00102$:
                                   1387 ;	./src/main.c:327: if (states[i].currINPUT == LEVEL_LOW)
      000534 EE               [12] 1388 	mov	a,r6
      000535 24 08            [12] 1389 	add	a,#_states
      000537 F9               [12] 1390 	mov	r1,a
      000538 E7               [12] 1391 	mov	a,@r1
      000539 20 E0 0C         [24] 1392 	jb	acc.0,00104$
                                   1393 ;	./src/main.c:328: states[i].currState = BTN_DEBOUNCED;
      00053C EE               [12] 1394 	mov	a,r6
      00053D 24 08            [12] 1395 	add	a,#_states
      00053F F8               [12] 1396 	mov	r0,a
      000540 E6               [12] 1397 	mov	a,@r0
      000541 54 F9            [12] 1398 	anl	a,#0xf9
      000543 44 02            [12] 1399 	orl	a,#0x02
      000545 F6               [12] 1400 	mov	@r0,a
      000546 80 44            [24] 1401 	sjmp	00115$
      000548                       1402 00104$:
                                   1403 ;	./src/main.c:330: states[i].currState = BTN_RELEASED;
      000548 EE               [12] 1404 	mov	a,r6
      000549 24 08            [12] 1405 	add	a,#_states
      00054B F8               [12] 1406 	mov	r0,a
      00054C E6               [12] 1407 	mov	a,@r0
      00054D 54 F9            [12] 1408 	anl	a,#0xf9
      00054F F6               [12] 1409 	mov	@r0,a
                                   1410 ;	./src/main.c:331: break;
                                   1411 ;	./src/main.c:332: case BTN_DEBOUNCED:
      000550 80 3A            [24] 1412 	sjmp	00115$
      000552                       1413 00106$:
                                   1414 ;	./src/main.c:333: if (states[i].currINPUT == LEVEL_LOW)
      000552 EE               [12] 1415 	mov	a,r6
      000553 24 08            [12] 1416 	add	a,#_states
      000555 F9               [12] 1417 	mov	r1,a
      000556 E7               [12] 1418 	mov	a,@r1
      000557 20 E0 0C         [24] 1419 	jb	acc.0,00108$
                                   1420 ;	./src/main.c:334: states[i].currState = BTN_PRESSED;
      00055A EE               [12] 1421 	mov	a,r6
      00055B 24 08            [12] 1422 	add	a,#_states
      00055D F8               [12] 1423 	mov	r0,a
      00055E E6               [12] 1424 	mov	a,@r0
      00055F 54 F9            [12] 1425 	anl	a,#0xf9
      000561 44 04            [12] 1426 	orl	a,#0x04
      000563 F6               [12] 1427 	mov	@r0,a
      000564 80 26            [24] 1428 	sjmp	00115$
      000566                       1429 00108$:
                                   1430 ;	./src/main.c:336: states[i].currState = BTN_RELEASED;
      000566 EE               [12] 1431 	mov	a,r6
      000567 24 08            [12] 1432 	add	a,#_states
      000569 F8               [12] 1433 	mov	r0,a
      00056A E6               [12] 1434 	mov	a,@r0
      00056B 54 F9            [12] 1435 	anl	a,#0xf9
      00056D F6               [12] 1436 	mov	@r0,a
                                   1437 ;	./src/main.c:337: break;
                                   1438 ;	./src/main.c:338: case BTN_PRESSED:
      00056E 80 1C            [24] 1439 	sjmp	00115$
      000570                       1440 00110$:
                                   1441 ;	./src/main.c:339: if (states[i].currINPUT == LEVEL_LOW)
      000570 EE               [12] 1442 	mov	a,r6
      000571 24 08            [12] 1443 	add	a,#_states
      000573 F9               [12] 1444 	mov	r1,a
      000574 E7               [12] 1445 	mov	a,@r1
      000575 20 E0 0C         [24] 1446 	jb	acc.0,00112$
                                   1447 ;	./src/main.c:340: states[i].currState = BTN_PRESSED;
      000578 EE               [12] 1448 	mov	a,r6
      000579 24 08            [12] 1449 	add	a,#_states
      00057B F8               [12] 1450 	mov	r0,a
      00057C E6               [12] 1451 	mov	a,@r0
      00057D 54 F9            [12] 1452 	anl	a,#0xf9
      00057F 44 04            [12] 1453 	orl	a,#0x04
      000581 F6               [12] 1454 	mov	@r0,a
      000582 80 08            [24] 1455 	sjmp	00115$
      000584                       1456 00112$:
                                   1457 ;	./src/main.c:342: states[i].currState = BTN_RELEASED;
      000584 EE               [12] 1458 	mov	a,r6
      000585 24 08            [12] 1459 	add	a,#_states
      000587 F8               [12] 1460 	mov	r0,a
      000588 E6               [12] 1461 	mov	a,@r0
      000589 54 F9            [12] 1462 	anl	a,#0xf9
      00058B F6               [12] 1463 	mov	@r0,a
                                   1464 ;	./src/main.c:346: }
      00058C                       1465 00115$:
                                   1466 ;	./src/main.c:348: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED)){
      00058C EE               [12] 1467 	mov	a,r6
      00058D 24 08            [12] 1468 	add	a,#_states
      00058F F9               [12] 1469 	mov	r1,a
      000590 E7               [12] 1470 	mov	a,@r1
      000591 54 06            [12] 1471 	anl	a,#0x06
      000593 70 44            [24] 1472 	jnz	00120$
      000595 EE               [12] 1473 	mov	a,r6
      000596 24 08            [12] 1474 	add	a,#_states
      000598 F9               [12] 1475 	mov	r1,a
      000599 E7               [12] 1476 	mov	a,@r1
      00059A C4               [12] 1477 	swap	a
      00059B 23               [12] 1478 	rl	a
      00059C 54 03            [12] 1479 	anl	a,#0x03
      00059E FD               [12] 1480 	mov	r5,a
      00059F BD 02 37         [24] 1481 	cjne	r5,#0x02,00120$
                                   1482 ;	./src/main.c:349: if (i < 10){
      0005A2 C3               [12] 1483 	clr	c
      0005A3 EE               [12] 1484 	mov	a,r6
      0005A4 94 0A            [12] 1485 	subb	a,#0x0a
      0005A6 EF               [12] 1486 	mov	a,r7
      0005A7 94 00            [12] 1487 	subb	a,#0x00
      0005A9 50 1F            [24] 1488 	jnc	00117$
                                   1489 ;	./src/main.c:350: sequence(1);
      0005AB 90 00 01         [24] 1490 	mov	dptr,#0x0001
      0005AE C0 07            [24] 1491 	push	ar7
      0005B0 C0 06            [24] 1492 	push	ar6
      0005B2 12 02 48         [24] 1493 	lcall	_sequence
      0005B5 D0 06            [24] 1494 	pop	ar6
      0005B7 D0 07            [24] 1495 	pop	ar7
                                   1496 ;	./src/main.c:351: input[0] = i;
      0005B9 8E 16            [24] 1497 	mov	(_input + 0),r6
      0005BB 8F 17            [24] 1498 	mov	(_input + 1),r7
                                   1499 ;	./src/main.c:354: draw();
      0005BD C0 07            [24] 1500 	push	ar7
      0005BF C0 06            [24] 1501 	push	ar6
      0005C1 12 01 41         [24] 1502 	lcall	_draw
      0005C4 D0 06            [24] 1503 	pop	ar6
      0005C6 D0 07            [24] 1504 	pop	ar7
      0005C8 80 0F            [24] 1505 	sjmp	00120$
      0005CA                       1506 00117$:
                                   1507 ;	./src/main.c:356: func_call(i);
      0005CA 8E 82            [24] 1508 	mov	dpl,r6
      0005CC 8F 83            [24] 1509 	mov	dph,r7
      0005CE C0 07            [24] 1510 	push	ar7
      0005D0 C0 06            [24] 1511 	push	ar6
      0005D2 12 03 F7         [24] 1512 	lcall	_func_call
      0005D5 D0 06            [24] 1513 	pop	ar6
      0005D7 D0 07            [24] 1514 	pop	ar7
      0005D9                       1515 00120$:
                                   1516 ;	./src/main.c:359: states[i].prevState = states[i].currState;
      0005D9 EE               [12] 1517 	mov	a,r6
      0005DA 24 08            [12] 1518 	add	a,#_states
      0005DC F9               [12] 1519 	mov	r1,a
      0005DD EE               [12] 1520 	mov	a,r6
      0005DE 24 08            [12] 1521 	add	a,#_states
      0005E0 F8               [12] 1522 	mov	r0,a
      0005E1 E6               [12] 1523 	mov	a,@r0
      0005E2 03               [12] 1524 	rr	a
      0005E3 54 03            [12] 1525 	anl	a,#0x03
      0005E5 FD               [12] 1526 	mov	r5,a
      0005E6 C4               [12] 1527 	swap	a
      0005E7 03               [12] 1528 	rr	a
      0005E8 54 18            [12] 1529 	anl	a,#(0xf8&0x18)
      0005EA F5 F0            [12] 1530 	mov	b,a
      0005EC E7               [12] 1531 	mov	a,@r1
      0005ED 54 E7            [12] 1532 	anl	a,#0xe7
      0005EF 45 F0            [12] 1533 	orl	a,b
      0005F1 F7               [12] 1534 	mov	@r1,a
                                   1535 ;	./src/main.c:321: for (unsigned int i = 0; i < 14; i++)
      0005F2 0E               [12] 1536 	inc	r6
      0005F3 BE 00 01         [24] 1537 	cjne	r6,#0x00,00202$
      0005F6 0F               [12] 1538 	inc	r7
      0005F7                       1539 00202$:
                                   1540 ;	./src/main.c:362: }
      0005F7 02 05 16         [24] 1541 	ljmp	00129$
                                   1542 	.area CSEG    (CODE)
                                   1543 	.area CONST   (CODE)
                                   1544 	.area XINIT   (CODE)
                                   1545 	.area CABS    (ABS,CODE)
