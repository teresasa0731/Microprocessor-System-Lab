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
                                    119 	.globl _patt1
                                    120 	.globl _patt
                                    121 	.globl _input
                                    122 	.globl _states
                                    123 	.globl _sendbyte
                                    124 	.globl _Write7219
                                    125 	.globl _Initial
                                    126 	.globl _draw
                                    127 	.globl _scan_row
                                    128 	.globl _sequence
                                    129 	.globl _turn_to_NUM
                                    130 	.globl _func_call
                                    131 	.globl _Clean
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 _P0	=	0x0080
                           000081   138 _SP	=	0x0081
                           000082   139 _DPL	=	0x0082
                           000083   140 _DPH	=	0x0083
                           000087   141 _PCON	=	0x0087
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008A   144 _TL0	=	0x008a
                           00008B   145 _TL1	=	0x008b
                           00008C   146 _TH0	=	0x008c
                           00008D   147 _TH1	=	0x008d
                           000090   148 _P1	=	0x0090
                           000098   149 _SCON	=	0x0098
                           000099   150 _SBUF	=	0x0099
                           0000A0   151 _P2	=	0x00a0
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 _PSW	=	0x00d0
                           0000E0   156 _ACC	=	0x00e0
                           0000F0   157 _B	=	0x00f0
                                    158 ;--------------------------------------------------------
                                    159 ; special function bits
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           000080   163 _P0_0	=	0x0080
                           000081   164 _P0_1	=	0x0081
                           000082   165 _P0_2	=	0x0082
                           000083   166 _P0_3	=	0x0083
                           000084   167 _P0_4	=	0x0084
                           000085   168 _P0_5	=	0x0085
                           000086   169 _P0_6	=	0x0086
                           000087   170 _P0_7	=	0x0087
                           000088   171 _IT0	=	0x0088
                           000089   172 _IE0	=	0x0089
                           00008A   173 _IT1	=	0x008a
                           00008B   174 _IE1	=	0x008b
                           00008C   175 _TR0	=	0x008c
                           00008D   176 _TF0	=	0x008d
                           00008E   177 _TR1	=	0x008e
                           00008F   178 _TF1	=	0x008f
                           000090   179 _P1_0	=	0x0090
                           000091   180 _P1_1	=	0x0091
                           000092   181 _P1_2	=	0x0092
                           000093   182 _P1_3	=	0x0093
                           000094   183 _P1_4	=	0x0094
                           000095   184 _P1_5	=	0x0095
                           000096   185 _P1_6	=	0x0096
                           000097   186 _P1_7	=	0x0097
                           000098   187 _RI	=	0x0098
                           000099   188 _TI	=	0x0099
                           00009A   189 _RB8	=	0x009a
                           00009B   190 _TB8	=	0x009b
                           00009C   191 _REN	=	0x009c
                           00009D   192 _SM2	=	0x009d
                           00009E   193 _SM1	=	0x009e
                           00009F   194 _SM0	=	0x009f
                           0000A0   195 _P2_0	=	0x00a0
                           0000A1   196 _P2_1	=	0x00a1
                           0000A2   197 _P2_2	=	0x00a2
                           0000A3   198 _P2_3	=	0x00a3
                           0000A4   199 _P2_4	=	0x00a4
                           0000A5   200 _P2_5	=	0x00a5
                           0000A6   201 _P2_6	=	0x00a6
                           0000A7   202 _P2_7	=	0x00a7
                           0000A8   203 _EX0	=	0x00a8
                           0000A9   204 _ET0	=	0x00a9
                           0000AA   205 _EX1	=	0x00aa
                           0000AB   206 _ET1	=	0x00ab
                           0000AC   207 _ES	=	0x00ac
                           0000AF   208 _EA	=	0x00af
                           0000B0   209 _P3_0	=	0x00b0
                           0000B1   210 _P3_1	=	0x00b1
                           0000B2   211 _P3_2	=	0x00b2
                           0000B3   212 _P3_3	=	0x00b3
                           0000B4   213 _P3_4	=	0x00b4
                           0000B5   214 _P3_5	=	0x00b5
                           0000B6   215 _P3_6	=	0x00b6
                           0000B7   216 _P3_7	=	0x00b7
                           0000B0   217 _RXD	=	0x00b0
                           0000B1   218 _TXD	=	0x00b1
                           0000B2   219 _INT0	=	0x00b2
                           0000B3   220 _INT1	=	0x00b3
                           0000B4   221 _T0	=	0x00b4
                           0000B5   222 _T1	=	0x00b5
                           0000B6   223 _WR	=	0x00b6
                           0000B7   224 _RD	=	0x00b7
                           0000B8   225 _PX0	=	0x00b8
                           0000B9   226 _PT0	=	0x00b9
                           0000BA   227 _PX1	=	0x00ba
                           0000BB   228 _PT1	=	0x00bb
                           0000BC   229 _PS	=	0x00bc
                           0000D0   230 _P	=	0x00d0
                           0000D1   231 _F1	=	0x00d1
                           0000D2   232 _OV	=	0x00d2
                           0000D3   233 _RS0	=	0x00d3
                           0000D4   234 _RS1	=	0x00d4
                           0000D5   235 _F0	=	0x00d5
                           0000D6   236 _AC	=	0x00d6
                           0000D7   237 _CY	=	0x00d7
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable register banks
                                    240 ;--------------------------------------------------------
                                    241 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        242 	.ds 8
                                    243 ;--------------------------------------------------------
                                    244 ; internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area DSEG    (DATA)
      000008                        247 _states::
      000008                        248 	.ds 14
      000016                        249 _input::
      000016                        250 	.ds 16
      000026                        251 _patt::
      000026                        252 	.ds 1
      000027                        253 _patt1::
      000027                        254 	.ds 1
      000028                        255 _num1::
      000028                        256 	.ds 2
      00002A                        257 _num2::
      00002A                        258 	.ds 2
      00002C                        259 _flag::
      00002C                        260 	.ds 2
      00002E                        261 _a::
      00002E                        262 	.ds 2
      000030                        263 _c::
      000030                        264 	.ds 2
      000032                        265 _display_seg:
      000032                        266 	.ds 13
      00003F                        267 _Write7219_PARM_2:
      00003F                        268 	.ds 1
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable items in internal ram
                                    271 ;--------------------------------------------------------
                                    272 	.area	OSEG    (OVR,DATA)
      000040                        273 _sendbyte_PARM_2:
      000040                        274 	.ds 1
                                    275 	.area	OSEG    (OVR,DATA)
                                    276 	.area	OSEG    (OVR,DATA)
                                    277 	.area	OSEG    (OVR,DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; Stack segment in internal ram
                                    280 ;--------------------------------------------------------
                                    281 	.area SSEG
      000042                        282 __start__stack:
      000042                        283 	.ds	1
                                    284 
                                    285 ;--------------------------------------------------------
                                    286 ; indirectly addressable internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area ISEG    (DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; absolute internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area IABS    (ABS,DATA)
                                    293 	.area IABS    (ABS,DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; bit data
                                    296 ;--------------------------------------------------------
                                    297 	.area BSEG    (BIT)
                                    298 ;--------------------------------------------------------
                                    299 ; paged external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area PSEG    (PAG,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; uninitialized external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XSEG    (XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; absolute external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XABS    (ABS,XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; initialized external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XISEG   (XDATA)
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT0 (CODE)
                                    316 	.area GSINIT1 (CODE)
                                    317 	.area GSINIT2 (CODE)
                                    318 	.area GSINIT3 (CODE)
                                    319 	.area GSINIT4 (CODE)
                                    320 	.area GSINIT5 (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area CSEG    (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; interrupt vector
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
      000000                        328 __interrupt_vect:
      000000 02 00 06         [24]  329 	ljmp	__sdcc_gsinit_startup
                                    330 ;--------------------------------------------------------
                                    331 ; global & static initialisations
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.globl __sdcc_gsinit_startup
                                    338 	.globl __sdcc_program_startup
                                    339 	.globl __start__stack
                                    340 	.globl __mcs51_genXINIT
                                    341 	.globl __mcs51_genXRAMCLEAR
                                    342 	.globl __mcs51_genRAMCLEAR
                                    343 ;	./src/main.c:63: unsigned char patt = 0x00,patt1 = 0x01; // led value
      00005F 75 26 00         [24]  344 	mov	_patt,#0x00
                                    345 ;	./src/main.c:63: unsigned int num1,num2,flag = 0;
      000062 75 27 01         [24]  346 	mov	_patt1,#0x01
                                    347 ;	./src/main.c:64: unsigned int a,c;
      000065 E4               [12]  348 	clr	a
      000066 F5 2C            [12]  349 	mov	_flag,a
      000068 F5 2D            [12]  350 	mov	(_flag + 1),a
                                    351 ;	./src/main.c:66: static unsigned char display_seg[] = {
      00006A 75 32 7E         [24]  352 	mov	_display_seg,#0x7e
      00006D 75 33 30         [24]  353 	mov	(_display_seg + 0x0001),#0x30
      000070 75 34 6D         [24]  354 	mov	(_display_seg + 0x0002),#0x6d
      000073 75 35 79         [24]  355 	mov	(_display_seg + 0x0003),#0x79
      000076 75 36 33         [24]  356 	mov	(_display_seg + 0x0004),#0x33
      000079 75 37 5B         [24]  357 	mov	(_display_seg + 0x0005),#0x5b
      00007C 75 38 5F         [24]  358 	mov	(_display_seg + 0x0006),#0x5f
      00007F 75 39 70         [24]  359 	mov	(_display_seg + 0x0007),#0x70
      000082 75 3A 7F         [24]  360 	mov	(_display_seg + 0x0008),#0x7f
      000085 75 3B 7B         [24]  361 	mov	(_display_seg + 0x0009),#0x7b
      000088 75 3C 4F         [24]  362 	mov	(_display_seg + 0x000a),#0x4f
                                    363 ;	1-genFromRTrack replaced	mov	(_display_seg + 0x000b),#0x00
      00008B F5 3D            [12]  364 	mov	(_display_seg + 0x000b),a
      00008D 75 3E 01         [24]  365 	mov	(_display_seg + 0x000c),#0x01
                                    366 	.area GSFINAL (CODE)
      000090 02 00 03         [24]  367 	ljmp	__sdcc_program_startup
                                    368 ;--------------------------------------------------------
                                    369 ; Home
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area HOME    (CODE)
      000003                        373 __sdcc_program_startup:
      000003 02 05 51         [24]  374 	ljmp	_main
                                    375 ;	return from main will return to caller
                                    376 ;--------------------------------------------------------
                                    377 ; code
                                    378 ;--------------------------------------------------------
                                    379 	.area CSEG    (CODE)
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'sendbyte'
                                    382 ;------------------------------------------------------------
                                    383 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    384 ;address                   Allocated to registers r7 
                                    385 ;------------------------------------------------------------
                                    386 ;	./src/main.c:84: void sendbyte(unsigned char address,unsigned char dat){
                                    387 ;	-----------------------------------------
                                    388 ;	 function sendbyte
                                    389 ;	-----------------------------------------
      000093                        390 _sendbyte:
                           000007   391 	ar7 = 0x07
                           000006   392 	ar6 = 0x06
                           000005   393 	ar5 = 0x05
                           000004   394 	ar4 = 0x04
                           000003   395 	ar3 = 0x03
                           000002   396 	ar2 = 0x02
                           000001   397 	ar1 = 0x01
                           000000   398 	ar0 = 0x00
      000093 AF 82            [24]  399 	mov	r7,dpl
                                    400 ;	./src/main.c:85: for (a=0;a<8;a++)        //get last 8 bits(address)
      000095 E4               [12]  401 	clr	a
      000096 F5 2E            [12]  402 	mov	_a,a
      000098 F5 2F            [12]  403 	mov	(_a + 1),a
      00009A                        404 00103$:
                                    405 ;	./src/main.c:87: CLK = 0;
                                    406 ;	assignBit
      00009A C2 A0            [12]  407 	clr	_P2_0
                                    408 ;	./src/main.c:88: DOUT = ( address & 0x80);   //get msb and shift left
      00009C EF               [12]  409 	mov	a,r7
      00009D 23               [12]  410 	rl	a
      00009E 54 01            [12]  411 	anl	a,#0x01
                                    412 ;	assignBit
      0000A0 24 FF            [12]  413 	add	a,#0xff
      0000A2 92 A2            [24]  414 	mov	_P2_2,c
                                    415 ;	./src/main.c:89: address <<= 1;
      0000A4 8F 06            [24]  416 	mov	ar6,r7
      0000A6 EE               [12]  417 	mov	a,r6
      0000A7 2E               [12]  418 	add	a,r6
      0000A8 FF               [12]  419 	mov	r7,a
                                    420 ;	./src/main.c:90: CLK = 1;
                                    421 ;	assignBit
      0000A9 D2 A0            [12]  422 	setb	_P2_0
                                    423 ;	./src/main.c:85: for (a=0;a<8;a++)        //get last 8 bits(address)
      0000AB 05 2E            [12]  424 	inc	_a
      0000AD E4               [12]  425 	clr	a
      0000AE B5 2E 02         [24]  426 	cjne	a,_a,00121$
      0000B1 05 2F            [12]  427 	inc	(_a + 1)
      0000B3                        428 00121$:
      0000B3 C3               [12]  429 	clr	c
      0000B4 E5 2E            [12]  430 	mov	a,_a
      0000B6 94 08            [12]  431 	subb	a,#0x08
      0000B8 E5 2F            [12]  432 	mov	a,(_a + 1)
      0000BA 94 00            [12]  433 	subb	a,#0x00
      0000BC 40 DC            [24]  434 	jc	00103$
                                    435 ;	./src/main.c:92: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000BE E4               [12]  436 	clr	a
      0000BF F5 2E            [12]  437 	mov	_a,a
      0000C1 F5 2F            [12]  438 	mov	(_a + 1),a
      0000C3                        439 00105$:
                                    440 ;	./src/main.c:94: CLK = 0;
                                    441 ;	assignBit
      0000C3 C2 A0            [12]  442 	clr	_P2_0
                                    443 ;	./src/main.c:95: DOUT=( dat & 0x80);    //get msb and shit left
      0000C5 E5 40            [12]  444 	mov	a,_sendbyte_PARM_2
      0000C7 23               [12]  445 	rl	a
      0000C8 54 01            [12]  446 	anl	a,#0x01
                                    447 ;	assignBit
      0000CA 24 FF            [12]  448 	add	a,#0xff
      0000CC 92 A2            [24]  449 	mov	_P2_2,c
                                    450 ;	./src/main.c:96: dat <<= 1;
      0000CE E5 40            [12]  451 	mov	a,_sendbyte_PARM_2
      0000D0 25 E0            [12]  452 	add	a,acc
      0000D2 F5 40            [12]  453 	mov	_sendbyte_PARM_2,a
                                    454 ;	./src/main.c:97: CLK = 1;
                                    455 ;	assignBit
      0000D4 D2 A0            [12]  456 	setb	_P2_0
                                    457 ;	./src/main.c:92: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000D6 05 2E            [12]  458 	inc	_a
      0000D8 E4               [12]  459 	clr	a
      0000D9 B5 2E 02         [24]  460 	cjne	a,_a,00123$
      0000DC 05 2F            [12]  461 	inc	(_a + 1)
      0000DE                        462 00123$:
      0000DE C3               [12]  463 	clr	c
      0000DF E5 2E            [12]  464 	mov	a,_a
      0000E1 94 08            [12]  465 	subb	a,#0x08
      0000E3 E5 2F            [12]  466 	mov	a,(_a + 1)
      0000E5 94 00            [12]  467 	subb	a,#0x00
      0000E7 40 DA            [24]  468 	jc	00105$
                                    469 ;	./src/main.c:99: }
      0000E9 22               [24]  470 	ret
                                    471 ;------------------------------------------------------------
                                    472 ;Allocation info for local variables in function 'Write7219'
                                    473 ;------------------------------------------------------------
                                    474 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    475 ;address                   Allocated to registers r7 
                                    476 ;cnt                       Allocated to registers r6 
                                    477 ;------------------------------------------------------------
                                    478 ;	./src/main.c:102: void Write7219(unsigned char address, unsigned char dat)
                                    479 ;	-----------------------------------------
                                    480 ;	 function Write7219
                                    481 ;	-----------------------------------------
      0000EA                        482 _Write7219:
      0000EA AF 82            [24]  483 	mov	r7,dpl
                                    484 ;	./src/main.c:105: LOAD = 0;
                                    485 ;	assignBit
      0000EC C2 A1            [12]  486 	clr	_P2_1
                                    487 ;	./src/main.c:107: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000EE 7E 01            [12]  488 	mov	r6,#0x01
      0000F0                        489 00102$:
                                    490 ;	./src/main.c:109: sendbyte(address, dat);
      0000F0 85 3F 40         [24]  491 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000F3 8F 82            [24]  492 	mov	dpl,r7
      0000F5 C0 07            [24]  493 	push	ar7
      0000F7 C0 06            [24]  494 	push	ar6
      0000F9 12 00 93         [24]  495 	lcall	_sendbyte
      0000FC D0 06            [24]  496 	pop	ar6
      0000FE D0 07            [24]  497 	pop	ar7
                                    498 ;	./src/main.c:107: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      000100 0E               [12]  499 	inc	r6
      000101 EE               [12]  500 	mov	a,r6
      000102 24 FE            [12]  501 	add	a,#0xff - 0x01
      000104 50 EA            [24]  502 	jnc	00102$
                                    503 ;	./src/main.c:112: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    504 ;	assignBit
      000106 D2 A1            [12]  505 	setb	_P2_1
                                    506 ;	./src/main.c:113: }
      000108 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'Initial'
                                    510 ;------------------------------------------------------------
                                    511 ;i                         Allocated to registers r7 
                                    512 ;------------------------------------------------------------
                                    513 ;	./src/main.c:116: void Initial(void)
                                    514 ;	-----------------------------------------
                                    515 ;	 function Initial
                                    516 ;	-----------------------------------------
      000109                        517 _Initial:
                                    518 ;	./src/main.c:119: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      000109 75 3F 01         [24]  519 	mov	_Write7219_PARM_2,#0x01
      00010C 75 82 0C         [24]  520 	mov	dpl,#0x0c
      00010F 12 00 EA         [24]  521 	lcall	_Write7219
                                    522 ;	./src/main.c:120: Write7219(DISPLAY_TEST,0x00);
      000112 75 3F 00         [24]  523 	mov	_Write7219_PARM_2,#0x00
      000115 75 82 0F         [24]  524 	mov	dpl,#0x0f
      000118 12 00 EA         [24]  525 	lcall	_Write7219
                                    526 ;	./src/main.c:121: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      00011B 75 3F 00         [24]  527 	mov	_Write7219_PARM_2,#0x00
      00011E 75 82 09         [24]  528 	mov	dpl,#0x09
      000121 12 00 EA         [24]  529 	lcall	_Write7219
                                    530 ;	./src/main.c:122: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      000124 75 3F 07         [24]  531 	mov	_Write7219_PARM_2,#0x07
      000127 75 82 0B         [24]  532 	mov	dpl,#0x0b
      00012A 12 00 EA         [24]  533 	lcall	_Write7219
                                    534 ;	./src/main.c:123: Write7219(INTENSITY,0x00);         //set up intensity
      00012D 75 3F 00         [24]  535 	mov	_Write7219_PARM_2,#0x00
      000130 75 82 0A         [24]  536 	mov	dpl,#0x0a
      000133 12 00 EA         [24]  537 	lcall	_Write7219
                                    538 ;	./src/main.c:124: for(i=1;i<=8;i++){
      000136 7F 01            [12]  539 	mov	r7,#0x01
      000138                        540 00102$:
                                    541 ;	./src/main.c:125: Write7219(i,0x00);   //turn off all LED
      000138 75 3F 00         [24]  542 	mov	_Write7219_PARM_2,#0x00
      00013B 8F 82            [24]  543 	mov	dpl,r7
      00013D C0 07            [24]  544 	push	ar7
      00013F 12 00 EA         [24]  545 	lcall	_Write7219
      000142 D0 07            [24]  546 	pop	ar7
                                    547 ;	./src/main.c:124: for(i=1;i<=8;i++){
      000144 0F               [12]  548 	inc	r7
      000145 EF               [12]  549 	mov	a,r7
      000146 24 F7            [12]  550 	add	a,#0xff - 0x08
      000148 50 EE            [24]  551 	jnc	00102$
                                    552 ;	./src/main.c:127: }
      00014A 22               [24]  553 	ret
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'draw'
                                    556 ;------------------------------------------------------------
                                    557 ;i                         Allocated to registers r7 
                                    558 ;------------------------------------------------------------
                                    559 ;	./src/main.c:130: void draw(void){
                                    560 ;	-----------------------------------------
                                    561 ;	 function draw
                                    562 ;	-----------------------------------------
      00014B                        563 _draw:
                                    564 ;	./src/main.c:132: for(i = 1;i < 9;i++){
      00014B 7F 01            [12]  565 	mov	r7,#0x01
      00014D                        566 00102$:
                                    567 ;	./src/main.c:133: Write7219(i, display_seg[input[i-1]]);
      00014D 8F 06            [24]  568 	mov	ar6,r7
      00014F 1E               [12]  569 	dec	r6
      000150 EE               [12]  570 	mov	a,r6
      000151 2E               [12]  571 	add	a,r6
      000152 24 16            [12]  572 	add	a,#_input
      000154 F9               [12]  573 	mov	r1,a
      000155 87 05            [24]  574 	mov	ar5,@r1
      000157 09               [12]  575 	inc	r1
      000158 19               [12]  576 	dec	r1
      000159 ED               [12]  577 	mov	a,r5
      00015A 24 32            [12]  578 	add	a,#_display_seg
      00015C F9               [12]  579 	mov	r1,a
      00015D 87 3F            [24]  580 	mov	_Write7219_PARM_2,@r1
      00015F 8F 82            [24]  581 	mov	dpl,r7
      000161 C0 07            [24]  582 	push	ar7
      000163 12 00 EA         [24]  583 	lcall	_Write7219
      000166 D0 07            [24]  584 	pop	ar7
                                    585 ;	./src/main.c:132: for(i = 1;i < 9;i++){
      000168 0F               [12]  586 	inc	r7
      000169 BF 09 00         [24]  587 	cjne	r7,#0x09,00111$
      00016C                        588 00111$:
      00016C 40 DF            [24]  589 	jc	00102$
                                    590 ;	./src/main.c:135: }
      00016E 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'scan_row'
                                    594 ;------------------------------------------------------------
                                    595 ;row                       Allocated to registers r6 r7 
                                    596 ;------------------------------------------------------------
                                    597 ;	./src/main.c:138: void scan_row(unsigned int row)
                                    598 ;	-----------------------------------------
                                    599 ;	 function scan_row
                                    600 ;	-----------------------------------------
      00016F                        601 _scan_row:
      00016F AE 82            [24]  602 	mov	r6,dpl
      000171 AF 83            [24]  603 	mov	r7,dph
                                    604 ;	./src/main.c:140: switch (row)
      000173 C3               [12]  605 	clr	c
      000174 74 03            [12]  606 	mov	a,#0x03
      000176 9E               [12]  607 	subb	a,r6
      000177 E4               [12]  608 	clr	a
      000178 9F               [12]  609 	subb	a,r7
      000179 40 31            [24]  610 	jc	00107$
      00017B EE               [12]  611 	mov	a,r6
      00017C 2E               [12]  612 	add	a,r6
                                    613 ;	./src/main.c:142: case 0:
      00017D 90 01 81         [24]  614 	mov	dptr,#00114$
      000180 73               [24]  615 	jmp	@a+dptr
      000181                        616 00114$:
      000181 80 06            [24]  617 	sjmp	00101$
      000183 80 0D            [24]  618 	sjmp	00102$
      000185 80 14            [24]  619 	sjmp	00103$
      000187 80 1B            [24]  620 	sjmp	00104$
      000189                        621 00101$:
                                    622 ;	./src/main.c:143: OUTPUT1 = 0; // row1 output 0
                                    623 ;	assignBit
      000189 C2 86            [12]  624 	clr	_P0_6
                                    625 ;	./src/main.c:144: OUTPUT2 = 1; // row2 output 1
                                    626 ;	assignBit
      00018B D2 85            [12]  627 	setb	_P0_5
                                    628 ;	./src/main.c:145: OUTPUT3 = 1; // row3 output 1
                                    629 ;	assignBit
      00018D D2 84            [12]  630 	setb	_P0_4
                                    631 ;	./src/main.c:146: OUTPUT0 = 1; // row0 output 1
                                    632 ;	assignBit
      00018F D2 83            [12]  633 	setb	_P0_3
                                    634 ;	./src/main.c:147: break;
                                    635 ;	./src/main.c:148: case 1:
      000191 22               [24]  636 	ret
      000192                        637 00102$:
                                    638 ;	./src/main.c:149: OUTPUT1 = 1; // row1 output 1
                                    639 ;	assignBit
      000192 D2 86            [12]  640 	setb	_P0_6
                                    641 ;	./src/main.c:150: OUTPUT2 = 0; // row2 output 0
                                    642 ;	assignBit
      000194 C2 85            [12]  643 	clr	_P0_5
                                    644 ;	./src/main.c:151: OUTPUT3 = 1; // row3 output 1
                                    645 ;	assignBit
      000196 D2 84            [12]  646 	setb	_P0_4
                                    647 ;	./src/main.c:152: OUTPUT0 = 1; // row0 output 1
                                    648 ;	assignBit
      000198 D2 83            [12]  649 	setb	_P0_3
                                    650 ;	./src/main.c:153: break;
                                    651 ;	./src/main.c:154: case 2:
      00019A 22               [24]  652 	ret
      00019B                        653 00103$:
                                    654 ;	./src/main.c:155: OUTPUT1 = 1; // row1 output 1
                                    655 ;	assignBit
      00019B D2 86            [12]  656 	setb	_P0_6
                                    657 ;	./src/main.c:156: OUTPUT2 = 1; // row2 output 1
                                    658 ;	assignBit
      00019D D2 85            [12]  659 	setb	_P0_5
                                    660 ;	./src/main.c:157: OUTPUT3 = 0; // row3 output 0
                                    661 ;	assignBit
      00019F C2 84            [12]  662 	clr	_P0_4
                                    663 ;	./src/main.c:158: OUTPUT0 = 1; // row0 output 1
                                    664 ;	assignBit
      0001A1 D2 83            [12]  665 	setb	_P0_3
                                    666 ;	./src/main.c:159: break;
                                    667 ;	./src/main.c:160: case 3:
      0001A3 22               [24]  668 	ret
      0001A4                        669 00104$:
                                    670 ;	./src/main.c:161: OUTPUT1 = 1; // row1 output 1
                                    671 ;	assignBit
      0001A4 D2 86            [12]  672 	setb	_P0_6
                                    673 ;	./src/main.c:162: OUTPUT2 = 1; // row2 output 1
                                    674 ;	assignBit
      0001A6 D2 85            [12]  675 	setb	_P0_5
                                    676 ;	./src/main.c:163: OUTPUT3 = 1; // row3 output 1
                                    677 ;	assignBit
      0001A8 D2 84            [12]  678 	setb	_P0_4
                                    679 ;	./src/main.c:164: OUTPUT0 = 0; // row0 output 0
                                    680 ;	assignBit
      0001AA C2 83            [12]  681 	clr	_P0_3
                                    682 ;	./src/main.c:168: }
      0001AC                        683 00107$:
                                    684 ;	./src/main.c:169: }
      0001AC 22               [24]  685 	ret
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'read_currINPUT'
                                    688 ;------------------------------------------------------------
                                    689 ;	./src/main.c:172: void read_currINPUT(void)
                                    690 ;	-----------------------------------------
                                    691 ;	 function read_currINPUT
                                    692 ;	-----------------------------------------
      0001AD                        693 _read_currINPUT:
                                    694 ;	./src/main.c:174: for (a = 0; a < 4; a++)
      0001AD E4               [12]  695 	clr	a
      0001AE F5 2E            [12]  696 	mov	_a,a
      0001B0 F5 2F            [12]  697 	mov	(_a + 1),a
      0001B2                        698 00105$:
                                    699 ;	./src/main.c:176: scan_row(a);
      0001B2 85 2E 82         [24]  700 	mov	dpl,_a
      0001B5 85 2F 83         [24]  701 	mov	dph,(_a + 1)
      0001B8 12 01 6F         [24]  702 	lcall	_scan_row
                                    703 ;	./src/main.c:177: if(a==3)
      0001BB 74 03            [12]  704 	mov	a,#0x03
      0001BD B5 2E 06         [24]  705 	cjne	a,_a,00121$
      0001C0 E4               [12]  706 	clr	a
      0001C1 B5 2F 02         [24]  707 	cjne	a,(_a + 1),00121$
      0001C4 80 02            [24]  708 	sjmp	00122$
      0001C6                        709 00121$:
      0001C6 80 0E            [24]  710 	sjmp	00102$
      0001C8                        711 00122$:
                                    712 ;	./src/main.c:178: states[0].currINPUT= INPUT2;
      0001C8 A2 81            [12]  713 	mov	c,_P0_1
      0001CA E4               [12]  714 	clr	a
      0001CB 33               [12]  715 	rlc	a
      0001CC FF               [12]  716 	mov	r7,a
      0001CD 78 08            [12]  717 	mov	r0,#_states
      0001CF 13               [12]  718 	rrc	a
      0001D0 E6               [12]  719 	mov	a,@r0
      0001D1 92 E0            [24]  720 	mov	acc.0,c
      0001D3 F6               [12]  721 	mov	@r0,a
      0001D4 80 3C            [24]  722 	sjmp	00106$
      0001D6                        723 00102$:
                                    724 ;	./src/main.c:180: states[a * 3 + 1].currINPUT = INPUT1;
      0001D6 E5 2E            [12]  725 	mov	a,_a
      0001D8 75 F0 03         [24]  726 	mov	b,#0x03
      0001DB A4               [48]  727 	mul	ab
      0001DC 04               [12]  728 	inc	a
      0001DD 24 08            [12]  729 	add	a,#_states
      0001DF F9               [12]  730 	mov	r1,a
      0001E0 A2 80            [12]  731 	mov	c,_P0_0
      0001E2 E4               [12]  732 	clr	a
      0001E3 33               [12]  733 	rlc	a
      0001E4 13               [12]  734 	rrc	a
      0001E5 E7               [12]  735 	mov	a,@r1
      0001E6 92 E0            [24]  736 	mov	acc.0,c
      0001E8 F7               [12]  737 	mov	@r1,a
                                    738 ;	./src/main.c:181: states[a * 3 + 2].currINPUT = INPUT2;
      0001E9 E5 2E            [12]  739 	mov	a,_a
      0001EB 75 F0 03         [24]  740 	mov	b,#0x03
      0001EE A4               [48]  741 	mul	ab
      0001EF 24 02            [12]  742 	add	a,#0x02
      0001F1 24 08            [12]  743 	add	a,#_states
      0001F3 F9               [12]  744 	mov	r1,a
      0001F4 A2 81            [12]  745 	mov	c,_P0_1
      0001F6 E4               [12]  746 	clr	a
      0001F7 33               [12]  747 	rlc	a
      0001F8 13               [12]  748 	rrc	a
      0001F9 E7               [12]  749 	mov	a,@r1
      0001FA 92 E0            [24]  750 	mov	acc.0,c
      0001FC F7               [12]  751 	mov	@r1,a
                                    752 ;	./src/main.c:182: states[a * 3 + 3].currINPUT = INPUT3;
      0001FD E5 2E            [12]  753 	mov	a,_a
      0001FF 75 F0 03         [24]  754 	mov	b,#0x03
      000202 A4               [48]  755 	mul	ab
      000203 24 03            [12]  756 	add	a,#0x03
      000205 24 08            [12]  757 	add	a,#_states
      000207 F9               [12]  758 	mov	r1,a
      000208 A2 82            [12]  759 	mov	c,_P0_2
      00020A E4               [12]  760 	clr	a
      00020B 33               [12]  761 	rlc	a
      00020C FF               [12]  762 	mov	r7,a
      00020D 13               [12]  763 	rrc	a
      00020E E7               [12]  764 	mov	a,@r1
      00020F 92 E0            [24]  765 	mov	acc.0,c
      000211 F7               [12]  766 	mov	@r1,a
      000212                        767 00106$:
                                    768 ;	./src/main.c:174: for (a = 0; a < 4; a++)
      000212 05 2E            [12]  769 	inc	_a
      000214 E4               [12]  770 	clr	a
      000215 B5 2E 02         [24]  771 	cjne	a,_a,00123$
      000218 05 2F            [12]  772 	inc	(_a + 1)
      00021A                        773 00123$:
      00021A C3               [12]  774 	clr	c
      00021B E5 2E            [12]  775 	mov	a,_a
      00021D 94 04            [12]  776 	subb	a,#0x04
      00021F E5 2F            [12]  777 	mov	a,(_a + 1)
      000221 94 00            [12]  778 	subb	a,#0x00
      000223 40 8D            [24]  779 	jc	00105$
                                    780 ;	./src/main.c:185: states[10].currINPUT = but1;
      000225 A2 B2            [12]  781 	mov	c,_INT0
      000227 E4               [12]  782 	clr	a
      000228 33               [12]  783 	rlc	a
      000229 78 12            [12]  784 	mov	r0,#(_states + 0x000a)
      00022B 13               [12]  785 	rrc	a
      00022C E6               [12]  786 	mov	a,@r0
      00022D 92 E0            [24]  787 	mov	acc.0,c
      00022F F6               [12]  788 	mov	@r0,a
                                    789 ;	./src/main.c:186: states[11].currINPUT = but2;
      000230 A2 B3            [12]  790 	mov	c,_INT1
      000232 E4               [12]  791 	clr	a
      000233 33               [12]  792 	rlc	a
      000234 78 13            [12]  793 	mov	r0,#(_states + 0x000b)
      000236 13               [12]  794 	rrc	a
      000237 E6               [12]  795 	mov	a,@r0
      000238 92 E0            [24]  796 	mov	acc.0,c
      00023A F6               [12]  797 	mov	@r0,a
                                    798 ;	./src/main.c:187: states[12].currINPUT = but3;
      00023B A2 A0            [12]  799 	mov	c,_P2_0
      00023D E4               [12]  800 	clr	a
      00023E 33               [12]  801 	rlc	a
      00023F 78 14            [12]  802 	mov	r0,#(_states + 0x000c)
      000241 13               [12]  803 	rrc	a
      000242 E6               [12]  804 	mov	a,@r0
      000243 92 E0            [24]  805 	mov	acc.0,c
      000245 F6               [12]  806 	mov	@r0,a
                                    807 ;	./src/main.c:188: states[13].currINPUT = but4;
      000246 A2 A1            [12]  808 	mov	c,_P2_1
      000248 E4               [12]  809 	clr	a
      000249 33               [12]  810 	rlc	a
      00024A 78 15            [12]  811 	mov	r0,#(_states + 0x000d)
      00024C 13               [12]  812 	rrc	a
      00024D E6               [12]  813 	mov	a,@r0
      00024E 92 E0            [24]  814 	mov	acc.0,c
      000250 F6               [12]  815 	mov	@r0,a
                                    816 ;	./src/main.c:189: }
      000251 22               [24]  817 	ret
                                    818 ;------------------------------------------------------------
                                    819 ;Allocation info for local variables in function 'sequence'
                                    820 ;------------------------------------------------------------
                                    821 ;op                        Allocated to registers r6 r7 
                                    822 ;------------------------------------------------------------
                                    823 ;	./src/main.c:192: void sequence(unsigned int op){
                                    824 ;	-----------------------------------------
                                    825 ;	 function sequence
                                    826 ;	-----------------------------------------
      000252                        827 _sequence:
      000252 AE 82            [24]  828 	mov	r6,dpl
      000254 AF 83            [24]  829 	mov	r7,dph
                                    830 ;	./src/main.c:193: if(op){
      000256 EE               [12]  831 	mov	a,r6
      000257 4F               [12]  832 	orl	a,r7
      000258 60 36            [24]  833 	jz	00104$
                                    834 ;	./src/main.c:194: for(a = 7; a > 0; a--){
      00025A 75 2E 07         [24]  835 	mov	_a,#0x07
      00025D 75 2F 00         [24]  836 	mov	(_a + 1),#0x00
      000260                        837 00106$:
                                    838 ;	./src/main.c:195: input[a] = input[a-1];
      000260 E5 2E            [12]  839 	mov	a,_a
      000262 25 2E            [12]  840 	add	a,_a
      000264 FE               [12]  841 	mov	r6,a
      000265 E5 2F            [12]  842 	mov	a,(_a + 1)
      000267 33               [12]  843 	rlc	a
      000268 EE               [12]  844 	mov	a,r6
      000269 24 16            [12]  845 	add	a,#_input
      00026B F9               [12]  846 	mov	r1,a
      00026C AF 2E            [24]  847 	mov	r7,_a
      00026E 1F               [12]  848 	dec	r7
      00026F EF               [12]  849 	mov	a,r7
      000270 2F               [12]  850 	add	a,r7
      000271 24 16            [12]  851 	add	a,#_input
      000273 F8               [12]  852 	mov	r0,a
      000274 86 06            [24]  853 	mov	ar6,@r0
      000276 08               [12]  854 	inc	r0
      000277 86 07            [24]  855 	mov	ar7,@r0
      000279 18               [12]  856 	dec	r0
      00027A A7 06            [24]  857 	mov	@r1,ar6
      00027C 09               [12]  858 	inc	r1
      00027D A7 07            [24]  859 	mov	@r1,ar7
      00027F 19               [12]  860 	dec	r1
                                    861 ;	./src/main.c:194: for(a = 7; a > 0; a--){
      000280 15 2E            [12]  862 	dec	_a
      000282 74 FF            [12]  863 	mov	a,#0xff
      000284 B5 2E 02         [24]  864 	cjne	a,_a,00131$
      000287 15 2F            [12]  865 	dec	(_a + 1)
      000289                        866 00131$:
      000289 E5 2E            [12]  867 	mov	a,_a
      00028B 45 2F            [12]  868 	orl	a,(_a + 1)
      00028D 70 D1            [24]  869 	jnz	00106$
      00028F 22               [24]  870 	ret
      000290                        871 00104$:
                                    872 ;	./src/main.c:198: for(a = 0; a < 7; a++){
      000290 E4               [12]  873 	clr	a
      000291 F5 2E            [12]  874 	mov	_a,a
      000293 F5 2F            [12]  875 	mov	(_a + 1),a
      000295                        876 00108$:
                                    877 ;	./src/main.c:199: input[a] = input[a+1];
      000295 E5 2E            [12]  878 	mov	a,_a
      000297 25 2E            [12]  879 	add	a,_a
      000299 FE               [12]  880 	mov	r6,a
      00029A E5 2F            [12]  881 	mov	a,(_a + 1)
      00029C 33               [12]  882 	rlc	a
      00029D EE               [12]  883 	mov	a,r6
      00029E 24 16            [12]  884 	add	a,#_input
      0002A0 F9               [12]  885 	mov	r1,a
      0002A1 AF 2E            [24]  886 	mov	r7,_a
      0002A3 0F               [12]  887 	inc	r7
      0002A4 EF               [12]  888 	mov	a,r7
      0002A5 2F               [12]  889 	add	a,r7
      0002A6 24 16            [12]  890 	add	a,#_input
      0002A8 F8               [12]  891 	mov	r0,a
      0002A9 86 06            [24]  892 	mov	ar6,@r0
      0002AB 08               [12]  893 	inc	r0
      0002AC 86 07            [24]  894 	mov	ar7,@r0
      0002AE 18               [12]  895 	dec	r0
      0002AF A7 06            [24]  896 	mov	@r1,ar6
      0002B1 09               [12]  897 	inc	r1
      0002B2 A7 07            [24]  898 	mov	@r1,ar7
      0002B4 19               [12]  899 	dec	r1
                                    900 ;	./src/main.c:200: input[a+1] = 11;
      0002B5 AF 2E            [24]  901 	mov	r7,_a
      0002B7 0F               [12]  902 	inc	r7
      0002B8 EF               [12]  903 	mov	a,r7
      0002B9 2F               [12]  904 	add	a,r7
      0002BA 24 16            [12]  905 	add	a,#_input
      0002BC F8               [12]  906 	mov	r0,a
      0002BD 76 0B            [12]  907 	mov	@r0,#0x0b
      0002BF 08               [12]  908 	inc	r0
      0002C0 76 00            [12]  909 	mov	@r0,#0x00
                                    910 ;	./src/main.c:198: for(a = 0; a < 7; a++){
      0002C2 05 2E            [12]  911 	inc	_a
      0002C4 E4               [12]  912 	clr	a
      0002C5 B5 2E 02         [24]  913 	cjne	a,_a,00133$
      0002C8 05 2F            [12]  914 	inc	(_a + 1)
      0002CA                        915 00133$:
      0002CA C3               [12]  916 	clr	c
      0002CB E5 2E            [12]  917 	mov	a,_a
      0002CD 94 07            [12]  918 	subb	a,#0x07
      0002CF E5 2F            [12]  919 	mov	a,(_a + 1)
      0002D1 94 00            [12]  920 	subb	a,#0x00
      0002D3 40 C0            [24]  921 	jc	00108$
                                    922 ;	./src/main.c:203: }
      0002D5 22               [24]  923 	ret
                                    924 ;------------------------------------------------------------
                                    925 ;Allocation info for local variables in function 'turn_to_NUM'
                                    926 ;------------------------------------------------------------
                                    927 ;num                       Allocated to registers r6 r7 
                                    928 ;deg                       Allocated to registers r4 r5 
                                    929 ;------------------------------------------------------------
                                    930 ;	./src/main.c:206: unsigned int turn_to_NUM(void){
                                    931 ;	-----------------------------------------
                                    932 ;	 function turn_to_NUM
                                    933 ;	-----------------------------------------
      0002D6                        934 _turn_to_NUM:
                                    935 ;	./src/main.c:208: unsigned int num = 0,deg = 1;
      0002D6 7E 00            [12]  936 	mov	r6,#0x00
      0002D8 7F 00            [12]  937 	mov	r7,#0x00
      0002DA 7C 01            [12]  938 	mov	r4,#0x01
                                    939 ;	./src/main.c:209: for(a=0;a<8;a++){
      0002DC E4               [12]  940 	clr	a
      0002DD FD               [12]  941 	mov	r5,a
      0002DE F5 2E            [12]  942 	mov	_a,a
      0002E0 F5 2F            [12]  943 	mov	(_a + 1),a
      0002E2                        944 00104$:
                                    945 ;	./src/main.c:210: if(input[a]<10){
      0002E2 E5 2E            [12]  946 	mov	a,_a
      0002E4 25 2E            [12]  947 	add	a,_a
      0002E6 FA               [12]  948 	mov	r2,a
      0002E7 E5 2F            [12]  949 	mov	a,(_a + 1)
      0002E9 33               [12]  950 	rlc	a
      0002EA EA               [12]  951 	mov	a,r2
      0002EB 24 16            [12]  952 	add	a,#_input
      0002ED F9               [12]  953 	mov	r1,a
      0002EE 87 02            [24]  954 	mov	ar2,@r1
      0002F0 09               [12]  955 	inc	r1
      0002F1 87 03            [24]  956 	mov	ar3,@r1
      0002F3 19               [12]  957 	dec	r1
      0002F4 C3               [12]  958 	clr	c
      0002F5 EA               [12]  959 	mov	a,r2
      0002F6 94 0A            [12]  960 	subb	a,#0x0a
      0002F8 EB               [12]  961 	mov	a,r3
      0002F9 94 00            [12]  962 	subb	a,#0x00
      0002FB 50 3B            [24]  963 	jnc	00105$
                                    964 ;	./src/main.c:211: num = num + input[a]*deg;
      0002FD 8C 40            [24]  965 	mov	__mulint_PARM_2,r4
      0002FF 8D 41            [24]  966 	mov	(__mulint_PARM_2 + 1),r5
      000301 8A 82            [24]  967 	mov	dpl,r2
      000303 8B 83            [24]  968 	mov	dph,r3
      000305 C0 07            [24]  969 	push	ar7
      000307 C0 06            [24]  970 	push	ar6
      000309 C0 05            [24]  971 	push	ar5
      00030B C0 04            [24]  972 	push	ar4
      00030D 12 06 BA         [24]  973 	lcall	__mulint
      000310 AA 82            [24]  974 	mov	r2,dpl
      000312 AB 83            [24]  975 	mov	r3,dph
      000314 D0 04            [24]  976 	pop	ar4
      000316 D0 05            [24]  977 	pop	ar5
      000318 D0 06            [24]  978 	pop	ar6
      00031A D0 07            [24]  979 	pop	ar7
      00031C EA               [12]  980 	mov	a,r2
      00031D 2E               [12]  981 	add	a,r6
      00031E FE               [12]  982 	mov	r6,a
      00031F EB               [12]  983 	mov	a,r3
      000320 3F               [12]  984 	addc	a,r7
      000321 FF               [12]  985 	mov	r7,a
                                    986 ;	./src/main.c:212: deg = deg *10;
      000322 8C 40            [24]  987 	mov	__mulint_PARM_2,r4
      000324 8D 41            [24]  988 	mov	(__mulint_PARM_2 + 1),r5
      000326 90 00 0A         [24]  989 	mov	dptr,#0x000a
      000329 C0 07            [24]  990 	push	ar7
      00032B C0 06            [24]  991 	push	ar6
      00032D 12 06 BA         [24]  992 	lcall	__mulint
      000330 AC 82            [24]  993 	mov	r4,dpl
      000332 AD 83            [24]  994 	mov	r5,dph
      000334 D0 06            [24]  995 	pop	ar6
      000336 D0 07            [24]  996 	pop	ar7
      000338                        997 00105$:
                                    998 ;	./src/main.c:209: for(a=0;a<8;a++){
      000338 05 2E            [12]  999 	inc	_a
      00033A E4               [12] 1000 	clr	a
      00033B B5 2E 02         [24] 1001 	cjne	a,_a,00121$
      00033E 05 2F            [12] 1002 	inc	(_a + 1)
      000340                       1003 00121$:
      000340 C3               [12] 1004 	clr	c
      000341 E5 2E            [12] 1005 	mov	a,_a
      000343 94 08            [12] 1006 	subb	a,#0x08
      000345 E5 2F            [12] 1007 	mov	a,(_a + 1)
      000347 94 00            [12] 1008 	subb	a,#0x00
      000349 40 97            [24] 1009 	jc	00104$
                                   1010 ;	./src/main.c:215: return num;
      00034B 8E 82            [24] 1011 	mov	dpl,r6
      00034D 8F 83            [24] 1012 	mov	dph,r7
                                   1013 ;	./src/main.c:216: }
      00034F 22               [24] 1014 	ret
                                   1015 ;------------------------------------------------------------
                                   1016 ;Allocation info for local variables in function 'calculate_OP'
                                   1017 ;------------------------------------------------------------
                                   1018 ;op                        Allocated to registers r7 
                                   1019 ;------------------------------------------------------------
                                   1020 ;	./src/main.c:219: void calculate_OP(unsigned char op){
                                   1021 ;	-----------------------------------------
                                   1022 ;	 function calculate_OP
                                   1023 ;	-----------------------------------------
      000350                       1024 _calculate_OP:
      000350 AF 82            [24] 1025 	mov	r7,dpl
                                   1026 ;	./src/main.c:220: switch (op)
      000352 BF 10 02         [24] 1027 	cjne	r7,#0x10,00125$
      000355 80 0F            [24] 1028 	sjmp	00101$
      000357                       1029 00125$:
      000357 BF 20 02         [24] 1030 	cjne	r7,#0x20,00126$
      00035A 80 17            [24] 1031 	sjmp	00102$
      00035C                       1032 00126$:
      00035C BF 40 02         [24] 1033 	cjne	r7,#0x40,00127$
      00035F 80 20            [24] 1034 	sjmp	00103$
      000361                       1035 00127$:
                                   1036 ;	./src/main.c:222: case 0x10:
      000361 BF 80 48         [24] 1037 	cjne	r7,#0x80,00107$
      000364 80 31            [24] 1038 	sjmp	00104$
      000366                       1039 00101$:
                                   1040 ;	./src/main.c:223: num1 = num1 + num2;
      000366 E5 2A            [12] 1041 	mov	a,_num2
      000368 25 28            [12] 1042 	add	a,_num1
      00036A F5 28            [12] 1043 	mov	_num1,a
      00036C E5 2B            [12] 1044 	mov	a,(_num2 + 1)
      00036E 35 29            [12] 1045 	addc	a,(_num1 + 1)
      000370 F5 29            [12] 1046 	mov	(_num1 + 1),a
                                   1047 ;	./src/main.c:224: break;
                                   1048 ;	./src/main.c:225: case 0x20:
      000372 22               [24] 1049 	ret
      000373                       1050 00102$:
                                   1051 ;	./src/main.c:226: num1 = num1 - num2;
      000373 E5 28            [12] 1052 	mov	a,_num1
      000375 C3               [12] 1053 	clr	c
      000376 95 2A            [12] 1054 	subb	a,_num2
      000378 F5 28            [12] 1055 	mov	_num1,a
      00037A E5 29            [12] 1056 	mov	a,(_num1 + 1)
      00037C 95 2B            [12] 1057 	subb	a,(_num2 + 1)
      00037E F5 29            [12] 1058 	mov	(_num1 + 1),a
                                   1059 ;	./src/main.c:227: break;
                                   1060 ;	./src/main.c:228: case 0x40:
      000380 22               [24] 1061 	ret
      000381                       1062 00103$:
                                   1063 ;	./src/main.c:229: num1 = num1 * num2;
      000381 85 2A 40         [24] 1064 	mov	__mulint_PARM_2,_num2
      000384 85 2B 41         [24] 1065 	mov	(__mulint_PARM_2 + 1),(_num2 + 1)
      000387 85 28 82         [24] 1066 	mov	dpl,_num1
      00038A 85 29 83         [24] 1067 	mov	dph,(_num1 + 1)
      00038D 12 06 BA         [24] 1068 	lcall	__mulint
      000390 85 82 28         [24] 1069 	mov	_num1,dpl
      000393 85 83 29         [24] 1070 	mov	(_num1 + 1),dph
                                   1071 ;	./src/main.c:230: break;
                                   1072 ;	./src/main.c:231: case 0x80:
      000396 22               [24] 1073 	ret
      000397                       1074 00104$:
                                   1075 ;	./src/main.c:232: num1 = num1 / num2;
      000397 85 2A 40         [24] 1076 	mov	__divuint_PARM_2,_num2
      00039A 85 2B 41         [24] 1077 	mov	(__divuint_PARM_2 + 1),(_num2 + 1)
      00039D 85 28 82         [24] 1078 	mov	dpl,_num1
      0003A0 85 29 83         [24] 1079 	mov	dph,(_num1 + 1)
      0003A3 12 06 91         [24] 1080 	lcall	__divuint
      0003A6 85 82 28         [24] 1081 	mov	_num1,dpl
      0003A9 85 83 29         [24] 1082 	mov	(_num1 + 1),dph
                                   1083 ;	./src/main.c:236: }
      0003AC                       1084 00107$:
                                   1085 ;	./src/main.c:237: }
      0003AC 22               [24] 1086 	ret
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'turn_to_CHAR'
                                   1089 ;------------------------------------------------------------
                                   1090 ;n                         Allocated to registers r6 r7 
                                   1091 ;------------------------------------------------------------
                                   1092 ;	./src/main.c:240: void turn_to_CHAR(int n){
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function turn_to_CHAR
                                   1095 ;	-----------------------------------------
      0003AD                       1096 _turn_to_CHAR:
      0003AD AE 82            [24] 1097 	mov	r6,dpl
                                   1098 ;	./src/main.c:241: if(n<0){
      0003AF E5 83            [12] 1099 	mov	a,dph
      0003B1 FF               [12] 1100 	mov	r7,a
      0003B2 30 E7 0F         [24] 1101 	jnb	acc.7,00102$
                                   1102 ;	./src/main.c:242: c = 1;
      0003B5 75 30 01         [24] 1103 	mov	_c,#0x01
      0003B8 75 31 00         [24] 1104 	mov	(_c + 1),#0x00
                                   1105 ;	./src/main.c:243: n = n*(-1);
      0003BB C3               [12] 1106 	clr	c
      0003BC E4               [12] 1107 	clr	a
      0003BD 9E               [12] 1108 	subb	a,r6
      0003BE FE               [12] 1109 	mov	r6,a
      0003BF E4               [12] 1110 	clr	a
      0003C0 9F               [12] 1111 	subb	a,r7
      0003C1 FF               [12] 1112 	mov	r7,a
      0003C2 80 05            [24] 1113 	sjmp	00103$
      0003C4                       1114 00102$:
                                   1115 ;	./src/main.c:245: c = 0;
      0003C4 E4               [12] 1116 	clr	a
      0003C5 F5 30            [12] 1117 	mov	_c,a
      0003C7 F5 31            [12] 1118 	mov	(_c + 1),a
      0003C9                       1119 00103$:
                                   1120 ;	./src/main.c:247: for(a = 0;a < 8; a++){
      0003C9 E4               [12] 1121 	clr	a
      0003CA F5 2E            [12] 1122 	mov	_a,a
      0003CC F5 2F            [12] 1123 	mov	(_a + 1),a
      0003CE                       1124 00109$:
                                   1125 ;	./src/main.c:248: input[a] = n % 10;
      0003CE E5 2E            [12] 1126 	mov	a,_a
      0003D0 25 2E            [12] 1127 	add	a,_a
      0003D2 FC               [12] 1128 	mov	r4,a
      0003D3 E5 2F            [12] 1129 	mov	a,(_a + 1)
      0003D5 33               [12] 1130 	rlc	a
      0003D6 EC               [12] 1131 	mov	a,r4
      0003D7 24 16            [12] 1132 	add	a,#_input
      0003D9 F9               [12] 1133 	mov	r1,a
      0003DA 75 40 0A         [24] 1134 	mov	__modsint_PARM_2,#0x0a
      0003DD 75 41 00         [24] 1135 	mov	(__modsint_PARM_2 + 1),#0x00
      0003E0 8E 82            [24] 1136 	mov	dpl,r6
      0003E2 8F 83            [24] 1137 	mov	dph,r7
      0003E4 C0 07            [24] 1138 	push	ar7
      0003E6 C0 06            [24] 1139 	push	ar6
      0003E8 C0 01            [24] 1140 	push	ar1
      0003EA 12 07 24         [24] 1141 	lcall	__modsint
      0003ED E5 82            [12] 1142 	mov	a,dpl
      0003EF 85 83 F0         [24] 1143 	mov	b,dph
      0003F2 D0 01            [24] 1144 	pop	ar1
      0003F4 D0 06            [24] 1145 	pop	ar6
      0003F6 D0 07            [24] 1146 	pop	ar7
      0003F8 F7               [12] 1147 	mov	@r1,a
      0003F9 09               [12] 1148 	inc	r1
      0003FA A7 F0            [24] 1149 	mov	@r1,b
      0003FC 19               [12] 1150 	dec	r1
                                   1151 ;	./src/main.c:249: n = n/10;
      0003FD 75 40 0A         [24] 1152 	mov	__divsint_PARM_2,#0x0a
      000400 75 41 00         [24] 1153 	mov	(__divsint_PARM_2 + 1),#0x00
      000403 8E 82            [24] 1154 	mov	dpl,r6
      000405 8F 83            [24] 1155 	mov	dph,r7
      000407 12 07 5A         [24] 1156 	lcall	__divsint
      00040A AE 82            [24] 1157 	mov	r6,dpl
      00040C AF 83            [24] 1158 	mov	r7,dph
                                   1159 ;	./src/main.c:250: if(n == 0){
      00040E EE               [12] 1160 	mov	a,r6
      00040F 4F               [12] 1161 	orl	a,r7
      000410 70 14            [24] 1162 	jnz	00110$
                                   1163 ;	./src/main.c:251: if(c)
      000412 E5 30            [12] 1164 	mov	a,_c
      000414 45 31            [12] 1165 	orl	a,(_c + 1)
      000416 60 21            [24] 1166 	jz	00111$
                                   1167 ;	./src/main.c:252: input[a+1] = 12;
      000418 AD 2E            [24] 1168 	mov	r5,_a
      00041A 0D               [12] 1169 	inc	r5
      00041B ED               [12] 1170 	mov	a,r5
      00041C 2D               [12] 1171 	add	a,r5
      00041D 24 16            [12] 1172 	add	a,#_input
      00041F F8               [12] 1173 	mov	r0,a
      000420 76 0C            [12] 1174 	mov	@r0,#0x0c
      000422 08               [12] 1175 	inc	r0
      000423 76 00            [12] 1176 	mov	@r0,#0x00
                                   1177 ;	./src/main.c:253: break;
      000425 22               [24] 1178 	ret
      000426                       1179 00110$:
                                   1180 ;	./src/main.c:247: for(a = 0;a < 8; a++){
      000426 05 2E            [12] 1181 	inc	_a
      000428 E4               [12] 1182 	clr	a
      000429 B5 2E 02         [24] 1183 	cjne	a,_a,00132$
      00042C 05 2F            [12] 1184 	inc	(_a + 1)
      00042E                       1185 00132$:
      00042E C3               [12] 1186 	clr	c
      00042F E5 2E            [12] 1187 	mov	a,_a
      000431 94 08            [12] 1188 	subb	a,#0x08
      000433 E5 2F            [12] 1189 	mov	a,(_a + 1)
      000435 94 00            [12] 1190 	subb	a,#0x00
      000437 40 95            [24] 1191 	jc	00109$
      000439                       1192 00111$:
                                   1193 ;	./src/main.c:257: }
      000439 22               [24] 1194 	ret
                                   1195 ;------------------------------------------------------------
                                   1196 ;Allocation info for local variables in function 'func_call'
                                   1197 ;------------------------------------------------------------
                                   1198 ;cmd                       Allocated to registers r6 r7 
                                   1199 ;op                        Allocated to registers r7 
                                   1200 ;------------------------------------------------------------
                                   1201 ;	./src/main.c:260: void func_call(unsigned int cmd){
                                   1202 ;	-----------------------------------------
                                   1203 ;	 function func_call
                                   1204 ;	-----------------------------------------
      00043A                       1205 _func_call:
      00043A AE 82            [24] 1206 	mov	r6,dpl
      00043C AF 83            [24] 1207 	mov	r7,dph
                                   1208 ;	./src/main.c:261: switch (cmd)
      00043E BE 0A 05         [24] 1209 	cjne	r6,#0x0a,00172$
      000441 BF 00 02         [24] 1210 	cjne	r7,#0x00,00172$
      000444 80 1C            [24] 1211 	sjmp	00101$
      000446                       1212 00172$:
      000446 BE 0B 06         [24] 1213 	cjne	r6,#0x0b,00173$
      000449 BF 00 03         [24] 1214 	cjne	r7,#0x00,00173$
      00044C 02 04 DD         [24] 1215 	ljmp	00115$
      00044F                       1216 00173$:
      00044F BE 0C 06         [24] 1217 	cjne	r6,#0x0c,00174$
      000452 BF 00 03         [24] 1218 	cjne	r7,#0x00,00174$
      000455 02 04 E6         [24] 1219 	ljmp	00116$
      000458                       1220 00174$:
      000458 BE 0D 06         [24] 1221 	cjne	r6,#0x0d,00175$
      00045B BF 00 03         [24] 1222 	cjne	r7,#0x00,00175$
      00045E 02 05 11         [24] 1223 	ljmp	00117$
      000461                       1224 00175$:
      000461 22               [24] 1225 	ret
                                   1226 ;	./src/main.c:263: case 10:	//op
      000462                       1227 00101$:
                                   1228 ;	./src/main.c:266: if(patt == 0x80)
      000462 74 80            [12] 1229 	mov	a,#0x80
      000464 B5 26 05         [24] 1230 	cjne	a,_patt,00105$
                                   1231 ;	./src/main.c:267: patt = 0x08;
      000467 75 26 08         [24] 1232 	mov	_patt,#0x08
      00046A 80 07            [24] 1233 	sjmp	00106$
      00046C                       1234 00105$:
                                   1235 ;	./src/main.c:268: else if (patt == 0x00)
      00046C E5 26            [12] 1236 	mov	a,_patt
      00046E 70 03            [24] 1237 	jnz	00106$
                                   1238 ;	./src/main.c:269: patt = 0x08;
      000470 75 26 08         [24] 1239 	mov	_patt,#0x08
      000473                       1240 00106$:
                                   1241 ;	./src/main.c:270: patt = patt << 1;
      000473 E5 26            [12] 1242 	mov	a,_patt
      000475 25 E0            [12] 1243 	add	a,acc
                                   1244 ;	./src/main.c:271: led = ~patt;
      000477 F5 26            [12] 1245 	mov	_patt,a
      000479 F4               [12] 1246 	cpl	a
      00047A F5 90            [12] 1247 	mov	_P1,a
                                   1248 ;	./src/main.c:272: delay_ms(20);
      00047C 90 00 14         [24] 1249 	mov	dptr,#0x0014
      00047F 12 06 84         [24] 1250 	lcall	_delay_ms
                                   1251 ;	./src/main.c:275: if(flag && num1 == 0){
      000482 E5 2C            [12] 1252 	mov	a,_flag
      000484 45 2D            [12] 1253 	orl	a,(_flag + 1)
      000486 60 17            [24] 1254 	jz	00108$
      000488 E5 28            [12] 1255 	mov	a,_num1
      00048A 45 29            [12] 1256 	orl	a,(_num1 + 1)
      00048C 70 11            [24] 1257 	jnz	00108$
                                   1258 ;	./src/main.c:276: num1 = turn_to_NUM();
      00048E 12 02 D6         [24] 1259 	lcall	_turn_to_NUM
      000491 85 82 28         [24] 1260 	mov	_num1,dpl
      000494 85 83 29         [24] 1261 	mov	(_num1 + 1),dph
                                   1262 ;	./src/main.c:277: flag = 0;
      000497 E4               [12] 1263 	clr	a
      000498 F5 2C            [12] 1264 	mov	_flag,a
      00049A F5 2D            [12] 1265 	mov	(_flag + 1),a
                                   1266 ;	./src/main.c:278: Clean();
      00049C 12 05 3B         [24] 1267 	lcall	_Clean
      00049F                       1268 00108$:
                                   1269 ;	./src/main.c:280: if(flag && num1 != 0){
      00049F E5 2C            [12] 1270 	mov	a,_flag
      0004A1 45 2D            [12] 1271 	orl	a,(_flag + 1)
      0004A3 70 01            [24] 1272 	jnz	00181$
      0004A5 22               [24] 1273 	ret
      0004A6                       1274 00181$:
      0004A6 E5 28            [12] 1275 	mov	a,_num1
      0004A8 45 29            [12] 1276 	orl	a,(_num1 + 1)
      0004AA 70 01            [24] 1277 	jnz	00182$
      0004AC 22               [24] 1278 	ret
      0004AD                       1279 00182$:
                                   1280 ;	./src/main.c:281: num2 = turn_to_NUM();
      0004AD 12 02 D6         [24] 1281 	lcall	_turn_to_NUM
      0004B0 85 82 2A         [24] 1282 	mov	_num2,dpl
      0004B3 85 83 2B         [24] 1283 	mov	(_num2 + 1),dph
                                   1284 ;	./src/main.c:282: Clean();
      0004B6 12 05 3B         [24] 1285 	lcall	_Clean
                                   1286 ;	./src/main.c:283: op = patt >> 1;
      0004B9 E5 26            [12] 1287 	mov	a,_patt
      0004BB C3               [12] 1288 	clr	c
      0004BC 13               [12] 1289 	rrc	a
      0004BD FF               [12] 1290 	mov	r7,a
                                   1291 ;	./src/main.c:284: if(op == 0x08)
      0004BE BF 08 02         [24] 1292 	cjne	r7,#0x08,00111$
                                   1293 ;	./src/main.c:285: op = 0x80;
      0004C1 7F 80            [12] 1294 	mov	r7,#0x80
      0004C3                       1295 00111$:
                                   1296 ;	./src/main.c:287: calculate_OP(op);
      0004C3 8F 82            [24] 1297 	mov	dpl,r7
      0004C5 12 03 50         [24] 1298 	lcall	_calculate_OP
                                   1299 ;	./src/main.c:288: turn_to_CHAR(num1);
      0004C8 85 28 82         [24] 1300 	mov	dpl,_num1
      0004CB 85 29 83         [24] 1301 	mov	dph,(_num1 + 1)
      0004CE 12 03 AD         [24] 1302 	lcall	_turn_to_CHAR
                                   1303 ;	./src/main.c:289: draw();
      0004D1 12 01 4B         [24] 1304 	lcall	_draw
                                   1305 ;	./src/main.c:290: Clean();
      0004D4 12 05 3B         [24] 1306 	lcall	_Clean
                                   1307 ;	./src/main.c:291: flag = 0;
      0004D7 E4               [12] 1308 	clr	a
      0004D8 F5 2C            [12] 1309 	mov	_flag,a
      0004DA F5 2D            [12] 1310 	mov	(_flag + 1),a
                                   1311 ;	./src/main.c:293: break;
                                   1312 ;	./src/main.c:294: case 11:	//back <-
      0004DC 22               [24] 1313 	ret
      0004DD                       1314 00115$:
                                   1315 ;	./src/main.c:295: sequence(0);
      0004DD 90 00 00         [24] 1316 	mov	dptr,#0x0000
      0004E0 12 02 52         [24] 1317 	lcall	_sequence
                                   1318 ;	./src/main.c:296: draw();
                                   1319 ;	./src/main.c:297: break;
                                   1320 ;	./src/main.c:298: case 12:	//AC
      0004E3 02 01 4B         [24] 1321 	ljmp	_draw
      0004E6                       1322 00116$:
                                   1323 ;	./src/main.c:299: Clean();
      0004E6 12 05 3B         [24] 1324 	lcall	_Clean
                                   1325 ;	./src/main.c:300: draw();
      0004E9 12 01 4B         [24] 1326 	lcall	_draw
                                   1327 ;	./src/main.c:301: Write7219(0x01,0x08);
      0004EC 75 3F 08         [24] 1328 	mov	_Write7219_PARM_2,#0x08
      0004EF 75 82 01         [24] 1329 	mov	dpl,#0x01
      0004F2 12 00 EA         [24] 1330 	lcall	_Write7219
                                   1331 ;	./src/main.c:302: num1 = 0;
      0004F5 E4               [12] 1332 	clr	a
      0004F6 F5 28            [12] 1333 	mov	_num1,a
      0004F8 F5 29            [12] 1334 	mov	(_num1 + 1),a
                                   1335 ;	./src/main.c:303: num2 = 0;
      0004FA F5 2A            [12] 1336 	mov	_num2,a
      0004FC F5 2B            [12] 1337 	mov	(_num2 + 1),a
                                   1338 ;	./src/main.c:304: patt = 0x00;
                                   1339 ;	1-genFromRTrack replaced	mov	_patt,#0x00
      0004FE F5 26            [12] 1340 	mov	_patt,a
                                   1341 ;	./src/main.c:305: led = ~patt1;
      000500 E5 27            [12] 1342 	mov	a,_patt1
      000502 F4               [12] 1343 	cpl	a
      000503 F5 90            [12] 1344 	mov	_P1,a
                                   1345 ;	./src/main.c:306: delay_ms(20);
      000505 90 00 14         [24] 1346 	mov	dptr,#0x0014
      000508 12 06 84         [24] 1347 	lcall	_delay_ms
                                   1348 ;	./src/main.c:307: flag = 0;
      00050B E4               [12] 1349 	clr	a
      00050C F5 2C            [12] 1350 	mov	_flag,a
      00050E F5 2D            [12] 1351 	mov	(_flag + 1),a
                                   1352 ;	./src/main.c:308: break;
                                   1353 ;	./src/main.c:309: case 13:	//equal=
      000510 22               [24] 1354 	ret
      000511                       1355 00117$:
                                   1356 ;	./src/main.c:310: if(flag){
      000511 E5 2C            [12] 1357 	mov	a,_flag
      000513 45 2D            [12] 1358 	orl	a,(_flag + 1)
      000515 60 23            [24] 1359 	jz	00122$
                                   1360 ;	./src/main.c:311: num2 = turn_to_NUM();
      000517 12 02 D6         [24] 1361 	lcall	_turn_to_NUM
      00051A 85 82 2A         [24] 1362 	mov	_num2,dpl
      00051D 85 83 2B         [24] 1363 	mov	(_num2 + 1),dph
                                   1364 ;	./src/main.c:312: Clean();
      000520 12 05 3B         [24] 1365 	lcall	_Clean
                                   1366 ;	./src/main.c:313: calculate_OP(patt);
      000523 85 26 82         [24] 1367 	mov	dpl,_patt
      000526 12 03 50         [24] 1368 	lcall	_calculate_OP
                                   1369 ;	./src/main.c:314: turn_to_CHAR(num1);
      000529 85 28 82         [24] 1370 	mov	dpl,_num1
      00052C 85 29 83         [24] 1371 	mov	dph,(_num1 + 1)
      00052F 12 03 AD         [24] 1372 	lcall	_turn_to_CHAR
                                   1373 ;	./src/main.c:315: draw();
      000532 12 01 4B         [24] 1374 	lcall	_draw
                                   1375 ;	./src/main.c:316: flag = 0;
      000535 E4               [12] 1376 	clr	a
      000536 F5 2C            [12] 1377 	mov	_flag,a
      000538 F5 2D            [12] 1378 	mov	(_flag + 1),a
                                   1379 ;	./src/main.c:321: }
      00053A                       1380 00122$:
                                   1381 ;	./src/main.c:322: }
      00053A 22               [24] 1382 	ret
                                   1383 ;------------------------------------------------------------
                                   1384 ;Allocation info for local variables in function 'Clean'
                                   1385 ;------------------------------------------------------------
                                   1386 ;i                         Allocated to registers r7 
                                   1387 ;------------------------------------------------------------
                                   1388 ;	./src/main.c:325: void Clean(void){
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function Clean
                                   1391 ;	-----------------------------------------
      00053B                       1392 _Clean:
                                   1393 ;	./src/main.c:327: for(i = 1; i < 9; i++){
      00053B 7F 01            [12] 1394 	mov	r7,#0x01
      00053D                       1395 00102$:
                                   1396 ;	./src/main.c:328: input[i-1] = 11;
      00053D 8F 06            [24] 1397 	mov	ar6,r7
      00053F 1E               [12] 1398 	dec	r6
      000540 EE               [12] 1399 	mov	a,r6
      000541 2E               [12] 1400 	add	a,r6
      000542 24 16            [12] 1401 	add	a,#_input
      000544 F8               [12] 1402 	mov	r0,a
      000545 76 0B            [12] 1403 	mov	@r0,#0x0b
      000547 08               [12] 1404 	inc	r0
      000548 76 00            [12] 1405 	mov	@r0,#0x00
                                   1406 ;	./src/main.c:327: for(i = 1; i < 9; i++){
      00054A 0F               [12] 1407 	inc	r7
      00054B BF 09 00         [24] 1408 	cjne	r7,#0x09,00111$
      00054E                       1409 00111$:
      00054E 40 ED            [24] 1410 	jc	00102$
                                   1411 ;	./src/main.c:330: }
      000550 22               [24] 1412 	ret
                                   1413 ;------------------------------------------------------------
                                   1414 ;Allocation info for local variables in function 'main'
                                   1415 ;------------------------------------------------------------
                                   1416 ;i                         Allocated to registers r6 r7 
                                   1417 ;------------------------------------------------------------
                                   1418 ;	./src/main.c:333: void main(void)
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function main
                                   1421 ;	-----------------------------------------
      000551                       1422 _main:
                                   1423 ;	./src/main.c:336: Initial();
      000551 12 01 09         [24] 1424 	lcall	_Initial
                                   1425 ;	./src/main.c:337: for (a = 0; a < 14; a++)
      000554 E4               [12] 1426 	clr	a
      000555 F5 2E            [12] 1427 	mov	_a,a
      000557 F5 2F            [12] 1428 	mov	(_a + 1),a
      000559                       1429 00126$:
                                   1430 ;	./src/main.c:339: states[a].currINPUT = LEVEL_HIGH;
      000559 E5 2E            [12] 1431 	mov	a,_a
      00055B 24 08            [12] 1432 	add	a,#_states
      00055D F8               [12] 1433 	mov	r0,a
      00055E E6               [12] 1434 	mov	a,@r0
      00055F 44 01            [12] 1435 	orl	a,#0x01
      000561 F6               [12] 1436 	mov	@r0,a
                                   1437 ;	./src/main.c:340: states[a].currState = BTN_RELEASED;
      000562 E5 2E            [12] 1438 	mov	a,_a
      000564 24 08            [12] 1439 	add	a,#_states
      000566 F8               [12] 1440 	mov	r0,a
      000567 E6               [12] 1441 	mov	a,@r0
      000568 54 F9            [12] 1442 	anl	a,#0xf9
      00056A F6               [12] 1443 	mov	@r0,a
                                   1444 ;	./src/main.c:341: states[a].prevState = BTN_RELEASED;
      00056B E5 2E            [12] 1445 	mov	a,_a
      00056D 24 08            [12] 1446 	add	a,#_states
      00056F F8               [12] 1447 	mov	r0,a
      000570 E6               [12] 1448 	mov	a,@r0
      000571 54 E7            [12] 1449 	anl	a,#0xe7
      000573 F6               [12] 1450 	mov	@r0,a
                                   1451 ;	./src/main.c:337: for (a = 0; a < 14; a++)
      000574 05 2E            [12] 1452 	inc	_a
      000576 E4               [12] 1453 	clr	a
      000577 B5 2E 02         [24] 1454 	cjne	a,_a,00189$
      00057A 05 2F            [12] 1455 	inc	(_a + 1)
      00057C                       1456 00189$:
      00057C C3               [12] 1457 	clr	c
      00057D E5 2E            [12] 1458 	mov	a,_a
      00057F 94 0E            [12] 1459 	subb	a,#0x0e
      000581 E5 2F            [12] 1460 	mov	a,(_a + 1)
      000583 94 00            [12] 1461 	subb	a,#0x00
      000585 40 D2            [24] 1462 	jc	00126$
                                   1463 ;	./src/main.c:343: func_call(12);
      000587 90 00 0C         [24] 1464 	mov	dptr,#0x000c
      00058A 12 04 3A         [24] 1465 	lcall	_func_call
                                   1466 ;	./src/main.c:345: while(1)
      00058D                       1467 00124$:
                                   1468 ;	./src/main.c:347: delay_ms(20);
      00058D 90 00 14         [24] 1469 	mov	dptr,#0x0014
      000590 12 06 84         [24] 1470 	lcall	_delay_ms
                                   1471 ;	./src/main.c:349: read_currINPUT();
      000593 12 01 AD         [24] 1472 	lcall	_read_currINPUT
                                   1473 ;	./src/main.c:350: for (unsigned int i = 0; i < 14; i++)
      000596 7E 00            [12] 1474 	mov	r6,#0x00
      000598 7F 00            [12] 1475 	mov	r7,#0x00
      00059A                       1476 00129$:
      00059A C3               [12] 1477 	clr	c
      00059B EE               [12] 1478 	mov	a,r6
      00059C 94 0E            [12] 1479 	subb	a,#0x0e
      00059E EF               [12] 1480 	mov	a,r7
      00059F 94 00            [12] 1481 	subb	a,#0x00
      0005A1 50 EA            [24] 1482 	jnc	00124$
                                   1483 ;	./src/main.c:353: switch (states[i].currState)
      0005A3 EE               [12] 1484 	mov	a,r6
      0005A4 24 08            [12] 1485 	add	a,#_states
      0005A6 F9               [12] 1486 	mov	r1,a
      0005A7 E7               [12] 1487 	mov	a,@r1
      0005A8 03               [12] 1488 	rr	a
      0005A9 54 03            [12] 1489 	anl	a,#0x03
      0005AB FD               [12] 1490 	mov	r5,a
      0005AC 60 0A            [24] 1491 	jz	00102$
      0005AE BD 01 02         [24] 1492 	cjne	r5,#0x01,00193$
      0005B1 80 23            [24] 1493 	sjmp	00106$
      0005B3                       1494 00193$:
                                   1495 ;	./src/main.c:355: case BTN_RELEASED:
      0005B3 BD 02 5A         [24] 1496 	cjne	r5,#0x02,00115$
      0005B6 80 3C            [24] 1497 	sjmp	00110$
      0005B8                       1498 00102$:
                                   1499 ;	./src/main.c:356: if (states[i].currINPUT == LEVEL_LOW)
      0005B8 EE               [12] 1500 	mov	a,r6
      0005B9 24 08            [12] 1501 	add	a,#_states
      0005BB F9               [12] 1502 	mov	r1,a
      0005BC E7               [12] 1503 	mov	a,@r1
      0005BD 20 E0 0C         [24] 1504 	jb	acc.0,00104$
                                   1505 ;	./src/main.c:357: states[i].currState = BTN_DEBOUNCED;
      0005C0 EE               [12] 1506 	mov	a,r6
      0005C1 24 08            [12] 1507 	add	a,#_states
      0005C3 F8               [12] 1508 	mov	r0,a
      0005C4 E6               [12] 1509 	mov	a,@r0
      0005C5 54 F9            [12] 1510 	anl	a,#0xf9
      0005C7 44 02            [12] 1511 	orl	a,#0x02
      0005C9 F6               [12] 1512 	mov	@r0,a
      0005CA 80 44            [24] 1513 	sjmp	00115$
      0005CC                       1514 00104$:
                                   1515 ;	./src/main.c:359: states[i].currState = BTN_RELEASED;
      0005CC EE               [12] 1516 	mov	a,r6
      0005CD 24 08            [12] 1517 	add	a,#_states
      0005CF F8               [12] 1518 	mov	r0,a
      0005D0 E6               [12] 1519 	mov	a,@r0
      0005D1 54 F9            [12] 1520 	anl	a,#0xf9
      0005D3 F6               [12] 1521 	mov	@r0,a
                                   1522 ;	./src/main.c:360: break;
                                   1523 ;	./src/main.c:361: case BTN_DEBOUNCED:
      0005D4 80 3A            [24] 1524 	sjmp	00115$
      0005D6                       1525 00106$:
                                   1526 ;	./src/main.c:362: if (states[i].currINPUT == LEVEL_LOW)
      0005D6 EE               [12] 1527 	mov	a,r6
      0005D7 24 08            [12] 1528 	add	a,#_states
      0005D9 F9               [12] 1529 	mov	r1,a
      0005DA E7               [12] 1530 	mov	a,@r1
      0005DB 20 E0 0C         [24] 1531 	jb	acc.0,00108$
                                   1532 ;	./src/main.c:363: states[i].currState = BTN_PRESSED;
      0005DE EE               [12] 1533 	mov	a,r6
      0005DF 24 08            [12] 1534 	add	a,#_states
      0005E1 F8               [12] 1535 	mov	r0,a
      0005E2 E6               [12] 1536 	mov	a,@r0
      0005E3 54 F9            [12] 1537 	anl	a,#0xf9
      0005E5 44 04            [12] 1538 	orl	a,#0x04
      0005E7 F6               [12] 1539 	mov	@r0,a
      0005E8 80 26            [24] 1540 	sjmp	00115$
      0005EA                       1541 00108$:
                                   1542 ;	./src/main.c:365: states[i].currState = BTN_RELEASED;
      0005EA EE               [12] 1543 	mov	a,r6
      0005EB 24 08            [12] 1544 	add	a,#_states
      0005ED F8               [12] 1545 	mov	r0,a
      0005EE E6               [12] 1546 	mov	a,@r0
      0005EF 54 F9            [12] 1547 	anl	a,#0xf9
      0005F1 F6               [12] 1548 	mov	@r0,a
                                   1549 ;	./src/main.c:366: break;
                                   1550 ;	./src/main.c:367: case BTN_PRESSED:
      0005F2 80 1C            [24] 1551 	sjmp	00115$
      0005F4                       1552 00110$:
                                   1553 ;	./src/main.c:368: if (states[i].currINPUT == LEVEL_LOW)
      0005F4 EE               [12] 1554 	mov	a,r6
      0005F5 24 08            [12] 1555 	add	a,#_states
      0005F7 F9               [12] 1556 	mov	r1,a
      0005F8 E7               [12] 1557 	mov	a,@r1
      0005F9 20 E0 0C         [24] 1558 	jb	acc.0,00112$
                                   1559 ;	./src/main.c:369: states[i].currState = BTN_PRESSED;
      0005FC EE               [12] 1560 	mov	a,r6
      0005FD 24 08            [12] 1561 	add	a,#_states
      0005FF F8               [12] 1562 	mov	r0,a
      000600 E6               [12] 1563 	mov	a,@r0
      000601 54 F9            [12] 1564 	anl	a,#0xf9
      000603 44 04            [12] 1565 	orl	a,#0x04
      000605 F6               [12] 1566 	mov	@r0,a
      000606 80 08            [24] 1567 	sjmp	00115$
      000608                       1568 00112$:
                                   1569 ;	./src/main.c:371: states[i].currState = BTN_RELEASED;
      000608 EE               [12] 1570 	mov	a,r6
      000609 24 08            [12] 1571 	add	a,#_states
      00060B F8               [12] 1572 	mov	r0,a
      00060C E6               [12] 1573 	mov	a,@r0
      00060D 54 F9            [12] 1574 	anl	a,#0xf9
      00060F F6               [12] 1575 	mov	@r0,a
                                   1576 ;	./src/main.c:375: }
      000610                       1577 00115$:
                                   1578 ;	./src/main.c:377: if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED)){
      000610 EE               [12] 1579 	mov	a,r6
      000611 24 08            [12] 1580 	add	a,#_states
      000613 F9               [12] 1581 	mov	r1,a
      000614 E7               [12] 1582 	mov	a,@r1
      000615 54 06            [12] 1583 	anl	a,#0x06
      000617 70 4A            [24] 1584 	jnz	00120$
      000619 EE               [12] 1585 	mov	a,r6
      00061A 24 08            [12] 1586 	add	a,#_states
      00061C F9               [12] 1587 	mov	r1,a
      00061D E7               [12] 1588 	mov	a,@r1
      00061E C4               [12] 1589 	swap	a
      00061F 23               [12] 1590 	rl	a
      000620 54 03            [12] 1591 	anl	a,#0x03
      000622 FD               [12] 1592 	mov	r5,a
      000623 BD 02 3D         [24] 1593 	cjne	r5,#0x02,00120$
                                   1594 ;	./src/main.c:378: if (i < 10){
      000626 C3               [12] 1595 	clr	c
      000627 EE               [12] 1596 	mov	a,r6
      000628 94 0A            [12] 1597 	subb	a,#0x0a
      00062A EF               [12] 1598 	mov	a,r7
      00062B 94 00            [12] 1599 	subb	a,#0x00
      00062D 50 25            [24] 1600 	jnc	00117$
                                   1601 ;	./src/main.c:379: sequence(1);
      00062F 90 00 01         [24] 1602 	mov	dptr,#0x0001
      000632 C0 07            [24] 1603 	push	ar7
      000634 C0 06            [24] 1604 	push	ar6
      000636 12 02 52         [24] 1605 	lcall	_sequence
      000639 D0 06            [24] 1606 	pop	ar6
      00063B D0 07            [24] 1607 	pop	ar7
                                   1608 ;	./src/main.c:380: input[0] = i;
      00063D 8E 16            [24] 1609 	mov	(_input + 0),r6
      00063F 8F 17            [24] 1610 	mov	(_input + 1),r7
                                   1611 ;	./src/main.c:381: draw();
      000641 C0 07            [24] 1612 	push	ar7
      000643 C0 06            [24] 1613 	push	ar6
      000645 12 01 4B         [24] 1614 	lcall	_draw
      000648 D0 06            [24] 1615 	pop	ar6
      00064A D0 07            [24] 1616 	pop	ar7
                                   1617 ;	./src/main.c:382: flag = 1;
      00064C 75 2C 01         [24] 1618 	mov	_flag,#0x01
      00064F 75 2D 00         [24] 1619 	mov	(_flag + 1),#0x00
      000652 80 0F            [24] 1620 	sjmp	00120$
      000654                       1621 00117$:
                                   1622 ;	./src/main.c:384: func_call(i);
      000654 8E 82            [24] 1623 	mov	dpl,r6
      000656 8F 83            [24] 1624 	mov	dph,r7
      000658 C0 07            [24] 1625 	push	ar7
      00065A C0 06            [24] 1626 	push	ar6
      00065C 12 04 3A         [24] 1627 	lcall	_func_call
      00065F D0 06            [24] 1628 	pop	ar6
      000661 D0 07            [24] 1629 	pop	ar7
      000663                       1630 00120$:
                                   1631 ;	./src/main.c:387: states[i].prevState = states[i].currState;
      000663 EE               [12] 1632 	mov	a,r6
      000664 24 08            [12] 1633 	add	a,#_states
      000666 F9               [12] 1634 	mov	r1,a
      000667 EE               [12] 1635 	mov	a,r6
      000668 24 08            [12] 1636 	add	a,#_states
      00066A F8               [12] 1637 	mov	r0,a
      00066B E6               [12] 1638 	mov	a,@r0
      00066C 03               [12] 1639 	rr	a
      00066D 54 03            [12] 1640 	anl	a,#0x03
      00066F FD               [12] 1641 	mov	r5,a
      000670 C4               [12] 1642 	swap	a
      000671 03               [12] 1643 	rr	a
      000672 54 18            [12] 1644 	anl	a,#(0xf8&0x18)
      000674 F5 F0            [12] 1645 	mov	b,a
      000676 E7               [12] 1646 	mov	a,@r1
      000677 54 E7            [12] 1647 	anl	a,#0xe7
      000679 45 F0            [12] 1648 	orl	a,b
      00067B F7               [12] 1649 	mov	@r1,a
                                   1650 ;	./src/main.c:350: for (unsigned int i = 0; i < 14; i++)
      00067C 0E               [12] 1651 	inc	r6
      00067D BE 00 01         [24] 1652 	cjne	r6,#0x00,00202$
      000680 0F               [12] 1653 	inc	r7
      000681                       1654 00202$:
                                   1655 ;	./src/main.c:390: }
      000681 02 05 9A         [24] 1656 	ljmp	00129$
                                   1657 	.area CSEG    (CODE)
                                   1658 	.area CONST   (CODE)
                                   1659 	.area XINIT   (CODE)
                                   1660 	.area CABS    (ABS,CODE)
