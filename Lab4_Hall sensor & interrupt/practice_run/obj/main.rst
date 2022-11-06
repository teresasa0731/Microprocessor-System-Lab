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
                                     13 	.globl _T0_isr
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _Write7219_PARM_2
                                    111 	.globl _a
                                    112 	.globl _time
                                    113 	.globl _hall_last_state
                                    114 	.globl _hall_cnt
                                    115 	.globl _deg
                                    116 	.globl _count
                                    117 	.globl _print
                                    118 	.globl _sendbyte
                                    119 	.globl _Write7219
                                    120 	.globl _Initial
                                    121 	.globl _draw
                                    122 	.globl _countTime
                                    123 	.globl _Clean
                                    124 ;--------------------------------------------------------
                                    125 ; special function registers
                                    126 ;--------------------------------------------------------
                                    127 	.area RSEG    (ABS,DATA)
      000000                        128 	.org 0x0000
                           000080   129 _P0	=	0x0080
                           000081   130 _SP	=	0x0081
                           000082   131 _DPL	=	0x0082
                           000083   132 _DPH	=	0x0083
                           000087   133 _PCON	=	0x0087
                           000088   134 _TCON	=	0x0088
                           000089   135 _TMOD	=	0x0089
                           00008A   136 _TL0	=	0x008a
                           00008B   137 _TL1	=	0x008b
                           00008C   138 _TH0	=	0x008c
                           00008D   139 _TH1	=	0x008d
                           000090   140 _P1	=	0x0090
                           000098   141 _SCON	=	0x0098
                           000099   142 _SBUF	=	0x0099
                           0000A0   143 _P2	=	0x00a0
                           0000A8   144 _IE	=	0x00a8
                           0000B0   145 _P3	=	0x00b0
                           0000B8   146 _IP	=	0x00b8
                           0000D0   147 _PSW	=	0x00d0
                           0000E0   148 _ACC	=	0x00e0
                           0000F0   149 _B	=	0x00f0
                                    150 ;--------------------------------------------------------
                                    151 ; special function bits
                                    152 ;--------------------------------------------------------
                                    153 	.area RSEG    (ABS,DATA)
      000000                        154 	.org 0x0000
                           000080   155 _P0_0	=	0x0080
                           000081   156 _P0_1	=	0x0081
                           000082   157 _P0_2	=	0x0082
                           000083   158 _P0_3	=	0x0083
                           000084   159 _P0_4	=	0x0084
                           000085   160 _P0_5	=	0x0085
                           000086   161 _P0_6	=	0x0086
                           000087   162 _P0_7	=	0x0087
                           000088   163 _IT0	=	0x0088
                           000089   164 _IE0	=	0x0089
                           00008A   165 _IT1	=	0x008a
                           00008B   166 _IE1	=	0x008b
                           00008C   167 _TR0	=	0x008c
                           00008D   168 _TF0	=	0x008d
                           00008E   169 _TR1	=	0x008e
                           00008F   170 _TF1	=	0x008f
                           000090   171 _P1_0	=	0x0090
                           000091   172 _P1_1	=	0x0091
                           000092   173 _P1_2	=	0x0092
                           000093   174 _P1_3	=	0x0093
                           000094   175 _P1_4	=	0x0094
                           000095   176 _P1_5	=	0x0095
                           000096   177 _P1_6	=	0x0096
                           000097   178 _P1_7	=	0x0097
                           000098   179 _RI	=	0x0098
                           000099   180 _TI	=	0x0099
                           00009A   181 _RB8	=	0x009a
                           00009B   182 _TB8	=	0x009b
                           00009C   183 _REN	=	0x009c
                           00009D   184 _SM2	=	0x009d
                           00009E   185 _SM1	=	0x009e
                           00009F   186 _SM0	=	0x009f
                           0000A0   187 _P2_0	=	0x00a0
                           0000A1   188 _P2_1	=	0x00a1
                           0000A2   189 _P2_2	=	0x00a2
                           0000A3   190 _P2_3	=	0x00a3
                           0000A4   191 _P2_4	=	0x00a4
                           0000A5   192 _P2_5	=	0x00a5
                           0000A6   193 _P2_6	=	0x00a6
                           0000A7   194 _P2_7	=	0x00a7
                           0000A8   195 _EX0	=	0x00a8
                           0000A9   196 _ET0	=	0x00a9
                           0000AA   197 _EX1	=	0x00aa
                           0000AB   198 _ET1	=	0x00ab
                           0000AC   199 _ES	=	0x00ac
                           0000AF   200 _EA	=	0x00af
                           0000B0   201 _P3_0	=	0x00b0
                           0000B1   202 _P3_1	=	0x00b1
                           0000B2   203 _P3_2	=	0x00b2
                           0000B3   204 _P3_3	=	0x00b3
                           0000B4   205 _P3_4	=	0x00b4
                           0000B5   206 _P3_5	=	0x00b5
                           0000B6   207 _P3_6	=	0x00b6
                           0000B7   208 _P3_7	=	0x00b7
                           0000B0   209 _RXD	=	0x00b0
                           0000B1   210 _TXD	=	0x00b1
                           0000B2   211 _INT0	=	0x00b2
                           0000B3   212 _INT1	=	0x00b3
                           0000B4   213 _T0	=	0x00b4
                           0000B5   214 _T1	=	0x00b5
                           0000B6   215 _WR	=	0x00b6
                           0000B7   216 _RD	=	0x00b7
                           0000B8   217 _PX0	=	0x00b8
                           0000B9   218 _PT0	=	0x00b9
                           0000BA   219 _PX1	=	0x00ba
                           0000BB   220 _PT1	=	0x00bb
                           0000BC   221 _PS	=	0x00bc
                           0000D0   222 _P	=	0x00d0
                           0000D1   223 _F1	=	0x00d1
                           0000D2   224 _OV	=	0x00d2
                           0000D3   225 _RS0	=	0x00d3
                           0000D4   226 _RS1	=	0x00d4
                           0000D5   227 _F0	=	0x00d5
                           0000D6   228 _AC	=	0x00d6
                           0000D7   229 _CY	=	0x00d7
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable register banks
                                    232 ;--------------------------------------------------------
                                    233 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        234 	.ds 8
                                    235 ;--------------------------------------------------------
                                    236 ; internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area DSEG    (DATA)
      000008                        239 _print::
      000008                        240 	.ds 8
      000010                        241 _count::
      000010                        242 	.ds 2
      000012                        243 _deg::
      000012                        244 	.ds 2
      000014                        245 _hall_cnt::
      000014                        246 	.ds 1
      000015                        247 _hall_last_state::
      000015                        248 	.ds 1
      000016                        249 _time::
      000016                        250 	.ds 4
      00001A                        251 _a::
      00001A                        252 	.ds 2
      00001C                        253 _Write7219_PARM_2:
      00001C                        254 	.ds 1
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram
                                    257 ;--------------------------------------------------------
                                    258 	.area	OSEG    (OVR,DATA)
      00001D                        259 _sendbyte_PARM_2:
      00001D                        260 	.ds 1
                                    261 	.area	OSEG    (OVR,DATA)
                                    262 	.area	OSEG    (OVR,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; Stack segment in internal ram
                                    265 ;--------------------------------------------------------
                                    266 	.area SSEG
      00001E                        267 __start__stack:
      00001E                        268 	.ds	1
                                    269 
                                    270 ;--------------------------------------------------------
                                    271 ; indirectly addressable internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area ISEG    (DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; absolute internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area IABS    (ABS,DATA)
                                    278 	.area IABS    (ABS,DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; bit data
                                    281 ;--------------------------------------------------------
                                    282 	.area BSEG    (BIT)
                                    283 ;--------------------------------------------------------
                                    284 ; paged external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area PSEG    (PAG,XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; uninitialized external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XSEG    (XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; absolute external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XABS    (ABS,XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; initialized external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XISEG   (XDATA)
                                    299 	.area HOME    (CODE)
                                    300 	.area GSINIT0 (CODE)
                                    301 	.area GSINIT1 (CODE)
                                    302 	.area GSINIT2 (CODE)
                                    303 	.area GSINIT3 (CODE)
                                    304 	.area GSINIT4 (CODE)
                                    305 	.area GSINIT5 (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.area GSFINAL (CODE)
                                    308 	.area CSEG    (CODE)
                                    309 ;--------------------------------------------------------
                                    310 ; interrupt vector
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
      000000                        313 __interrupt_vect:
      000000 02 00 11         [24]  314 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  315 	reti
      000004                        316 	.ds	7
      00000B 02 01 68         [24]  317 	ljmp	_T0_isr
                                    318 ;--------------------------------------------------------
                                    319 ; global & static initialisations
                                    320 ;--------------------------------------------------------
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.area GSFINAL (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.globl __sdcc_gsinit_startup
                                    326 	.globl __sdcc_program_startup
                                    327 	.globl __start__stack
                                    328 	.globl __mcs51_genXINIT
                                    329 	.globl __mcs51_genXRAMCLEAR
                                    330 	.globl __mcs51_genRAMCLEAR
                                    331 ;	./src/main.c:32: int count = 0;
      00006A E4               [12]  332 	clr	a
      00006B F5 10            [12]  333 	mov	_count,a
      00006D F5 11            [12]  334 	mov	(_count + 1),a
                                    335 ;	./src/main.c:33: int deg = 0;
      00006F F5 12            [12]  336 	mov	_deg,a
      000071 F5 13            [12]  337 	mov	(_deg + 1),a
                                    338 ;	./src/main.c:34: char hall_cnt = 0x00;	// Count the # of Hall sensor activations
                                    339 ;	1-genFromRTrack replaced	mov	_hall_cnt,#0x00
      000073 F5 14            [12]  340 	mov	_hall_cnt,a
                                    341 ;	./src/main.c:35: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor	
                                    342 ;	1-genFromRTrack replaced	mov	_hall_last_state,#0x00
      000075 F5 15            [12]  343 	mov	_hall_last_state,a
                                    344 ;	./src/main.c:36: unsigned long int time = 0;
      000077 F5 16            [12]  345 	mov	_time,a
      000079 F5 17            [12]  346 	mov	(_time + 1),a
      00007B F5 18            [12]  347 	mov	(_time + 2),a
      00007D F5 19            [12]  348 	mov	(_time + 3),a
                                    349 	.area GSFINAL (CODE)
      00007F 02 00 0E         [24]  350 	ljmp	__sdcc_program_startup
                                    351 ;--------------------------------------------------------
                                    352 ; Home
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area HOME    (CODE)
      00000E                        356 __sdcc_program_startup:
      00000E 02 01 A7         [24]  357 	ljmp	_main
                                    358 ;	return from main will return to caller
                                    359 ;--------------------------------------------------------
                                    360 ; code
                                    361 ;--------------------------------------------------------
                                    362 	.area CSEG    (CODE)
                                    363 ;------------------------------------------------------------
                                    364 ;Allocation info for local variables in function 'sendbyte'
                                    365 ;------------------------------------------------------------
                                    366 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    367 ;address                   Allocated to registers r7 
                                    368 ;------------------------------------------------------------
                                    369 ;	./src/main.c:41: void sendbyte(unsigned char address,unsigned char dat){
                                    370 ;	-----------------------------------------
                                    371 ;	 function sendbyte
                                    372 ;	-----------------------------------------
      000082                        373 _sendbyte:
                           000007   374 	ar7 = 0x07
                           000006   375 	ar6 = 0x06
                           000005   376 	ar5 = 0x05
                           000004   377 	ar4 = 0x04
                           000003   378 	ar3 = 0x03
                           000002   379 	ar2 = 0x02
                           000001   380 	ar1 = 0x01
                           000000   381 	ar0 = 0x00
      000082 AF 82            [24]  382 	mov	r7,dpl
                                    383 ;	./src/main.c:42: for (a=0;a<8;a++)        //get last 8 bits(address)
      000084 E4               [12]  384 	clr	a
      000085 F5 1A            [12]  385 	mov	_a,a
      000087 F5 1B            [12]  386 	mov	(_a + 1),a
      000089                        387 00103$:
                                    388 ;	./src/main.c:44: CLK = 0;
                                    389 ;	assignBit
      000089 C2 A0            [12]  390 	clr	_P2_0
                                    391 ;	./src/main.c:45: DOUT = ( address & 0x80);   //get msb and shift left
      00008B EF               [12]  392 	mov	a,r7
      00008C 23               [12]  393 	rl	a
      00008D 54 01            [12]  394 	anl	a,#0x01
                                    395 ;	assignBit
      00008F 24 FF            [12]  396 	add	a,#0xff
      000091 92 A2            [24]  397 	mov	_P2_2,c
                                    398 ;	./src/main.c:46: address <<= 1;
      000093 8F 06            [24]  399 	mov	ar6,r7
      000095 EE               [12]  400 	mov	a,r6
      000096 2E               [12]  401 	add	a,r6
      000097 FF               [12]  402 	mov	r7,a
                                    403 ;	./src/main.c:47: CLK = 1;
                                    404 ;	assignBit
      000098 D2 A0            [12]  405 	setb	_P2_0
                                    406 ;	./src/main.c:42: for (a=0;a<8;a++)        //get last 8 bits(address)
      00009A 05 1A            [12]  407 	inc	_a
      00009C E4               [12]  408 	clr	a
      00009D B5 1A 02         [24]  409 	cjne	a,_a,00121$
      0000A0 05 1B            [12]  410 	inc	(_a + 1)
      0000A2                        411 00121$:
      0000A2 C3               [12]  412 	clr	c
      0000A3 E5 1A            [12]  413 	mov	a,_a
      0000A5 94 08            [12]  414 	subb	a,#0x08
      0000A7 E5 1B            [12]  415 	mov	a,(_a + 1)
      0000A9 94 00            [12]  416 	subb	a,#0x00
      0000AB 40 DC            [24]  417 	jc	00103$
                                    418 ;	./src/main.c:49: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000AD E4               [12]  419 	clr	a
      0000AE F5 1A            [12]  420 	mov	_a,a
      0000B0 F5 1B            [12]  421 	mov	(_a + 1),a
      0000B2                        422 00105$:
                                    423 ;	./src/main.c:51: CLK = 0;
                                    424 ;	assignBit
      0000B2 C2 A0            [12]  425 	clr	_P2_0
                                    426 ;	./src/main.c:52: DOUT=( dat & 0x80);    //get msb and shit left
      0000B4 E5 1D            [12]  427 	mov	a,_sendbyte_PARM_2
      0000B6 23               [12]  428 	rl	a
      0000B7 54 01            [12]  429 	anl	a,#0x01
                                    430 ;	assignBit
      0000B9 24 FF            [12]  431 	add	a,#0xff
      0000BB 92 A2            [24]  432 	mov	_P2_2,c
                                    433 ;	./src/main.c:53: dat <<= 1;
      0000BD E5 1D            [12]  434 	mov	a,_sendbyte_PARM_2
      0000BF 25 E0            [12]  435 	add	a,acc
      0000C1 F5 1D            [12]  436 	mov	_sendbyte_PARM_2,a
                                    437 ;	./src/main.c:54: CLK = 1;
                                    438 ;	assignBit
      0000C3 D2 A0            [12]  439 	setb	_P2_0
                                    440 ;	./src/main.c:49: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000C5 05 1A            [12]  441 	inc	_a
      0000C7 E4               [12]  442 	clr	a
      0000C8 B5 1A 02         [24]  443 	cjne	a,_a,00123$
      0000CB 05 1B            [12]  444 	inc	(_a + 1)
      0000CD                        445 00123$:
      0000CD C3               [12]  446 	clr	c
      0000CE E5 1A            [12]  447 	mov	a,_a
      0000D0 94 08            [12]  448 	subb	a,#0x08
      0000D2 E5 1B            [12]  449 	mov	a,(_a + 1)
      0000D4 94 00            [12]  450 	subb	a,#0x00
      0000D6 40 DA            [24]  451 	jc	00105$
                                    452 ;	./src/main.c:56: }
      0000D8 22               [24]  453 	ret
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'Write7219'
                                    456 ;------------------------------------------------------------
                                    457 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    458 ;address                   Allocated to registers r7 
                                    459 ;cnt                       Allocated to registers r6 
                                    460 ;------------------------------------------------------------
                                    461 ;	./src/main.c:59: void Write7219(unsigned char address, unsigned char dat)
                                    462 ;	-----------------------------------------
                                    463 ;	 function Write7219
                                    464 ;	-----------------------------------------
      0000D9                        465 _Write7219:
      0000D9 AF 82            [24]  466 	mov	r7,dpl
                                    467 ;	./src/main.c:62: LOAD = 0;
                                    468 ;	assignBit
      0000DB C2 A1            [12]  469 	clr	_P2_1
                                    470 ;	./src/main.c:64: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000DD 7E 01            [12]  471 	mov	r6,#0x01
      0000DF                        472 00102$:
                                    473 ;	./src/main.c:66: sendbyte(address, dat);
      0000DF 85 1C 1D         [24]  474 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000E2 8F 82            [24]  475 	mov	dpl,r7
      0000E4 C0 07            [24]  476 	push	ar7
      0000E6 C0 06            [24]  477 	push	ar6
      0000E8 12 00 82         [24]  478 	lcall	_sendbyte
      0000EB D0 06            [24]  479 	pop	ar6
      0000ED D0 07            [24]  480 	pop	ar7
                                    481 ;	./src/main.c:64: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000EF 0E               [12]  482 	inc	r6
      0000F0 EE               [12]  483 	mov	a,r6
      0000F1 24 FE            [12]  484 	add	a,#0xff - 0x01
      0000F3 50 EA            [24]  485 	jnc	00102$
                                    486 ;	./src/main.c:69: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    487 ;	assignBit
      0000F5 D2 A1            [12]  488 	setb	_P2_1
                                    489 ;	./src/main.c:70: }
      0000F7 22               [24]  490 	ret
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'Initial'
                                    493 ;------------------------------------------------------------
                                    494 ;i                         Allocated to registers r7 
                                    495 ;------------------------------------------------------------
                                    496 ;	./src/main.c:73: void Initial(void)
                                    497 ;	-----------------------------------------
                                    498 ;	 function Initial
                                    499 ;	-----------------------------------------
      0000F8                        500 _Initial:
                                    501 ;	./src/main.c:76: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      0000F8 75 1C 01         [24]  502 	mov	_Write7219_PARM_2,#0x01
      0000FB 75 82 0C         [24]  503 	mov	dpl,#0x0c
      0000FE 12 00 D9         [24]  504 	lcall	_Write7219
                                    505 ;	./src/main.c:77: Write7219(DISPLAY_TEST,0x00);
      000101 75 1C 00         [24]  506 	mov	_Write7219_PARM_2,#0x00
      000104 75 82 0F         [24]  507 	mov	dpl,#0x0f
      000107 12 00 D9         [24]  508 	lcall	_Write7219
                                    509 ;	./src/main.c:78: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      00010A 75 1C 00         [24]  510 	mov	_Write7219_PARM_2,#0x00
      00010D 75 82 09         [24]  511 	mov	dpl,#0x09
      000110 12 00 D9         [24]  512 	lcall	_Write7219
                                    513 ;	./src/main.c:79: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      000113 75 1C 07         [24]  514 	mov	_Write7219_PARM_2,#0x07
      000116 75 82 0B         [24]  515 	mov	dpl,#0x0b
      000119 12 00 D9         [24]  516 	lcall	_Write7219
                                    517 ;	./src/main.c:80: Write7219(INTENSITY,0x00);         //set up intensity
      00011C 75 1C 00         [24]  518 	mov	_Write7219_PARM_2,#0x00
      00011F 75 82 0A         [24]  519 	mov	dpl,#0x0a
      000122 12 00 D9         [24]  520 	lcall	_Write7219
                                    521 ;	./src/main.c:81: for(i=1;i<=8;i++){
      000125 7F 01            [12]  522 	mov	r7,#0x01
      000127                        523 00102$:
                                    524 ;	./src/main.c:82: Write7219(i,0x00);   //turn off all LED
      000127 75 1C 00         [24]  525 	mov	_Write7219_PARM_2,#0x00
      00012A 8F 82            [24]  526 	mov	dpl,r7
      00012C C0 07            [24]  527 	push	ar7
      00012E 12 00 D9         [24]  528 	lcall	_Write7219
      000131 D0 07            [24]  529 	pop	ar7
                                    530 ;	./src/main.c:81: for(i=1;i<=8;i++){
      000133 0F               [12]  531 	inc	r7
      000134 EF               [12]  532 	mov	a,r7
      000135 24 F7            [12]  533 	add	a,#0xff - 0x08
      000137 50 EE            [24]  534 	jnc	00102$
                                    535 ;	./src/main.c:84: }
      000139 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'draw'
                                    539 ;------------------------------------------------------------
                                    540 ;i                         Allocated to registers r6 r7 
                                    541 ;------------------------------------------------------------
                                    542 ;	./src/main.c:87: void draw(void){
                                    543 ;	-----------------------------------------
                                    544 ;	 function draw
                                    545 ;	-----------------------------------------
      00013A                        546 _draw:
                                    547 ;	./src/main.c:88: for(unsigned int i = 1;i < 9;i++){
      00013A 7E 01            [12]  548 	mov	r6,#0x01
      00013C 7F 00            [12]  549 	mov	r7,#0x00
      00013E                        550 00103$:
      00013E C3               [12]  551 	clr	c
      00013F EE               [12]  552 	mov	a,r6
      000140 94 09            [12]  553 	subb	a,#0x09
      000142 EF               [12]  554 	mov	a,r7
      000143 94 00            [12]  555 	subb	a,#0x00
      000145 50 1F            [24]  556 	jnc	00105$
                                    557 ;	./src/main.c:89: Write7219(i, print[i-1]);
      000147 8E 05            [24]  558 	mov	ar5,r6
      000149 8D 04            [24]  559 	mov	ar4,r5
      00014B EC               [12]  560 	mov	a,r4
      00014C 14               [12]  561 	dec	a
      00014D 24 08            [12]  562 	add	a,#_print
      00014F F9               [12]  563 	mov	r1,a
      000150 87 1C            [24]  564 	mov	_Write7219_PARM_2,@r1
      000152 8D 82            [24]  565 	mov	dpl,r5
      000154 C0 07            [24]  566 	push	ar7
      000156 C0 06            [24]  567 	push	ar6
      000158 12 00 D9         [24]  568 	lcall	_Write7219
      00015B D0 06            [24]  569 	pop	ar6
      00015D D0 07            [24]  570 	pop	ar7
                                    571 ;	./src/main.c:88: for(unsigned int i = 1;i < 9;i++){
      00015F 0E               [12]  572 	inc	r6
      000160 BE 00 DB         [24]  573 	cjne	r6,#0x00,00103$
      000163 0F               [12]  574 	inc	r7
      000164 80 D8            [24]  575 	sjmp	00103$
      000166                        576 00105$:
                                    577 ;	./src/main.c:92: }
      000166 22               [24]  578 	ret
                                    579 ;------------------------------------------------------------
                                    580 ;Allocation info for local variables in function 'countTime'
                                    581 ;------------------------------------------------------------
                                    582 ;i                         Allocated to registers 
                                    583 ;------------------------------------------------------------
                                    584 ;	./src/main.c:94: void countTime(void){
                                    585 ;	-----------------------------------------
                                    586 ;	 function countTime
                                    587 ;	-----------------------------------------
      000167                        588 _countTime:
                                    589 ;	./src/main.c:104: draw();
                                    590 ;	./src/main.c:108: }
      000167 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'T0_isr'
                                    594 ;------------------------------------------------------------
                                    595 ;	./src/main.c:111: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
                                    596 ;	-----------------------------------------
                                    597 ;	 function T0_isr
                                    598 ;	-----------------------------------------
      000168                        599 _T0_isr:
      000168 C0 E0            [24]  600 	push	acc
      00016A C0 07            [24]  601 	push	ar7
      00016C C0 D0            [24]  602 	push	psw
      00016E 75 D0 00         [24]  603 	mov	psw,#0x00
                                    604 ;	./src/main.c:114: TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
      000171 75 8C FC         [24]  605 	mov	_TH0,#0xfc
                                    606 ;	./src/main.c:115: TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
      000174 75 8A 18         [24]  607 	mov	_TL0,#0x18
                                    608 ;	./src/main.c:116: hall_cnt = hall_cnt + 1;
      000177 E5 14            [12]  609 	mov	a,_hall_cnt
      000179 04               [12]  610 	inc	a
      00017A F5 14            [12]  611 	mov	_hall_cnt,a
                                    612 ;	./src/main.c:123: }
      00017C D0 D0            [24]  613 	pop	psw
      00017E D0 07            [24]  614 	pop	ar7
      000180 D0 E0            [24]  615 	pop	acc
      000182 32               [24]  616 	reti
                                    617 ;	eliminated unneeded push/pop dpl
                                    618 ;	eliminated unneeded push/pop dph
                                    619 ;	eliminated unneeded push/pop b
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'Clean'
                                    622 ;------------------------------------------------------------
                                    623 ;i                         Allocated to registers r6 r7 
                                    624 ;------------------------------------------------------------
                                    625 ;	./src/main.c:126: void Clean(void){
                                    626 ;	-----------------------------------------
                                    627 ;	 function Clean
                                    628 ;	-----------------------------------------
      000183                        629 _Clean:
                                    630 ;	./src/main.c:127: for(unsigned int i = 0; i < 8; i++){
      000183 7E 00            [12]  631 	mov	r6,#0x00
      000185 7F 00            [12]  632 	mov	r7,#0x00
      000187                        633 00103$:
      000187 C3               [12]  634 	clr	c
      000188 EE               [12]  635 	mov	a,r6
      000189 94 08            [12]  636 	subb	a,#0x08
      00018B EF               [12]  637 	mov	a,r7
      00018C 94 00            [12]  638 	subb	a,#0x00
      00018E 50 0D            [24]  639 	jnc	00101$
                                    640 ;	./src/main.c:128: print[i] = 0x00;
      000190 EE               [12]  641 	mov	a,r6
      000191 24 08            [12]  642 	add	a,#_print
      000193 F8               [12]  643 	mov	r0,a
      000194 76 00            [12]  644 	mov	@r0,#0x00
                                    645 ;	./src/main.c:127: for(unsigned int i = 0; i < 8; i++){
      000196 0E               [12]  646 	inc	r6
      000197 BE 00 ED         [24]  647 	cjne	r6,#0x00,00103$
      00019A 0F               [12]  648 	inc	r7
      00019B 80 EA            [24]  649 	sjmp	00103$
      00019D                        650 00101$:
                                    651 ;	./src/main.c:130: time = 0;
      00019D E4               [12]  652 	clr	a
      00019E F5 16            [12]  653 	mov	_time,a
      0001A0 F5 17            [12]  654 	mov	(_time + 1),a
      0001A2 F5 18            [12]  655 	mov	(_time + 2),a
      0001A4 F5 19            [12]  656 	mov	(_time + 3),a
                                    657 ;	./src/main.c:131: }
      0001A6 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'main'
                                    661 ;------------------------------------------------------------
                                    662 ;	./src/main.c:134: void main(void)
                                    663 ;	-----------------------------------------
                                    664 ;	 function main
                                    665 ;	-----------------------------------------
      0001A7                        666 _main:
                                    667 ;	./src/main.c:137: Initial();
      0001A7 12 00 F8         [24]  668 	lcall	_Initial
                                    669 ;	./src/main.c:139: TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
      0001AA 75 89 01         [24]  670 	mov	_TMOD,#0x01
                                    671 ;	./src/main.c:140: TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
      0001AD 75 8C FC         [24]  672 	mov	_TH0,#0xfc
                                    673 ;	./src/main.c:141: TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
      0001B0 75 8A 18         [24]  674 	mov	_TL0,#0x18
                                    675 ;	./src/main.c:142: ET0 = 1;										// Enable Timer 0 interrupt
                                    676 ;	assignBit
      0001B3 D2 A9            [12]  677 	setb	_ET0
                                    678 ;	./src/main.c:143: EA = 1;											// Enable all interrupt
                                    679 ;	assignBit
      0001B5 D2 AF            [12]  680 	setb	_EA
                                    681 ;	./src/main.c:144: TR0 = 1;										// Start Timer 0
                                    682 ;	assignBit
      0001B7 D2 8C            [12]  683 	setb	_TR0
                                    684 ;	./src/main.c:146: Hall_In = 1;
                                    685 ;	assignBit
      0001B9 D2 A4            [12]  686 	setb	_P2_4
                                    687 ;	./src/main.c:148: while(1)
      0001BB                        688 00104$:
                                    689 ;	./src/main.c:150: if(Hall_In == 0){
      0001BB 20 A4 FD         [24]  690 	jb	_P2_4,00104$
                                    691 ;	./src/main.c:151: countTime();
      0001BE 12 01 67         [24]  692 	lcall	_countTime
                                    693 ;	./src/main.c:155: }
      0001C1 80 F8            [24]  694 	sjmp	00104$
                                    695 	.area CSEG    (CODE)
                                    696 	.area CONST   (CODE)
                                    697 	.area XINIT   (CODE)
                                    698 	.area CABS    (ABS,CODE)
