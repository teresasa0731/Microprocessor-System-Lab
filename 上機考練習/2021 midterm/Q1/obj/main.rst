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
                                    111 	.globl _input
                                    112 	.globl _a
                                    113 	.globl _time
                                    114 	.globl _hall_last_state
                                    115 	.globl _hall_cnt
                                    116 	.globl _print
                                    117 	.globl _sendbyte
                                    118 	.globl _Write7219
                                    119 	.globl _Initial
                                    120 	.globl _draw
                                    121 	.globl _Clean
                                    122 	.globl _delay_ms
                                    123 ;--------------------------------------------------------
                                    124 ; special function registers
                                    125 ;--------------------------------------------------------
                                    126 	.area RSEG    (ABS,DATA)
      000000                        127 	.org 0x0000
                           000080   128 _P0	=	0x0080
                           000081   129 _SP	=	0x0081
                           000082   130 _DPL	=	0x0082
                           000083   131 _DPH	=	0x0083
                           000087   132 _PCON	=	0x0087
                           000088   133 _TCON	=	0x0088
                           000089   134 _TMOD	=	0x0089
                           00008A   135 _TL0	=	0x008a
                           00008B   136 _TL1	=	0x008b
                           00008C   137 _TH0	=	0x008c
                           00008D   138 _TH1	=	0x008d
                           000090   139 _P1	=	0x0090
                           000098   140 _SCON	=	0x0098
                           000099   141 _SBUF	=	0x0099
                           0000A0   142 _P2	=	0x00a0
                           0000A8   143 _IE	=	0x00a8
                           0000B0   144 _P3	=	0x00b0
                           0000B8   145 _IP	=	0x00b8
                           0000D0   146 _PSW	=	0x00d0
                           0000E0   147 _ACC	=	0x00e0
                           0000F0   148 _B	=	0x00f0
                                    149 ;--------------------------------------------------------
                                    150 ; special function bits
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0_0	=	0x0080
                           000081   155 _P0_1	=	0x0081
                           000082   156 _P0_2	=	0x0082
                           000083   157 _P0_3	=	0x0083
                           000084   158 _P0_4	=	0x0084
                           000085   159 _P0_5	=	0x0085
                           000086   160 _P0_6	=	0x0086
                           000087   161 _P0_7	=	0x0087
                           000088   162 _IT0	=	0x0088
                           000089   163 _IE0	=	0x0089
                           00008A   164 _IT1	=	0x008a
                           00008B   165 _IE1	=	0x008b
                           00008C   166 _TR0	=	0x008c
                           00008D   167 _TF0	=	0x008d
                           00008E   168 _TR1	=	0x008e
                           00008F   169 _TF1	=	0x008f
                           000090   170 _P1_0	=	0x0090
                           000091   171 _P1_1	=	0x0091
                           000092   172 _P1_2	=	0x0092
                           000093   173 _P1_3	=	0x0093
                           000094   174 _P1_4	=	0x0094
                           000095   175 _P1_5	=	0x0095
                           000096   176 _P1_6	=	0x0096
                           000097   177 _P1_7	=	0x0097
                           000098   178 _RI	=	0x0098
                           000099   179 _TI	=	0x0099
                           00009A   180 _RB8	=	0x009a
                           00009B   181 _TB8	=	0x009b
                           00009C   182 _REN	=	0x009c
                           00009D   183 _SM2	=	0x009d
                           00009E   184 _SM1	=	0x009e
                           00009F   185 _SM0	=	0x009f
                           0000A0   186 _P2_0	=	0x00a0
                           0000A1   187 _P2_1	=	0x00a1
                           0000A2   188 _P2_2	=	0x00a2
                           0000A3   189 _P2_3	=	0x00a3
                           0000A4   190 _P2_4	=	0x00a4
                           0000A5   191 _P2_5	=	0x00a5
                           0000A6   192 _P2_6	=	0x00a6
                           0000A7   193 _P2_7	=	0x00a7
                           0000A8   194 _EX0	=	0x00a8
                           0000A9   195 _ET0	=	0x00a9
                           0000AA   196 _EX1	=	0x00aa
                           0000AB   197 _ET1	=	0x00ab
                           0000AC   198 _ES	=	0x00ac
                           0000AF   199 _EA	=	0x00af
                           0000B0   200 _P3_0	=	0x00b0
                           0000B1   201 _P3_1	=	0x00b1
                           0000B2   202 _P3_2	=	0x00b2
                           0000B3   203 _P3_3	=	0x00b3
                           0000B4   204 _P3_4	=	0x00b4
                           0000B5   205 _P3_5	=	0x00b5
                           0000B6   206 _P3_6	=	0x00b6
                           0000B7   207 _P3_7	=	0x00b7
                           0000B0   208 _RXD	=	0x00b0
                           0000B1   209 _TXD	=	0x00b1
                           0000B2   210 _INT0	=	0x00b2
                           0000B3   211 _INT1	=	0x00b3
                           0000B4   212 _T0	=	0x00b4
                           0000B5   213 _T1	=	0x00b5
                           0000B6   214 _WR	=	0x00b6
                           0000B7   215 _RD	=	0x00b7
                           0000B8   216 _PX0	=	0x00b8
                           0000B9   217 _PT0	=	0x00b9
                           0000BA   218 _PX1	=	0x00ba
                           0000BB   219 _PT1	=	0x00bb
                           0000BC   220 _PS	=	0x00bc
                           0000D0   221 _P	=	0x00d0
                           0000D1   222 _F1	=	0x00d1
                           0000D2   223 _OV	=	0x00d2
                           0000D3   224 _RS0	=	0x00d3
                           0000D4   225 _RS1	=	0x00d4
                           0000D5   226 _F0	=	0x00d5
                           0000D6   227 _AC	=	0x00d6
                           0000D7   228 _CY	=	0x00d7
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable register banks
                                    231 ;--------------------------------------------------------
                                    232 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        233 	.ds 8
                                    234 ;--------------------------------------------------------
                                    235 ; internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area DSEG    (DATA)
      000008                        238 _display_seg:
      000008                        239 	.ds 11
      000013                        240 _print::
      000013                        241 	.ds 8
      00001B                        242 _hall_cnt::
      00001B                        243 	.ds 2
      00001D                        244 _hall_last_state::
      00001D                        245 	.ds 1
      00001E                        246 _time::
      00001E                        247 	.ds 4
      000022                        248 _a::
      000022                        249 	.ds 2
      000024                        250 _input::
      000024                        251 	.ds 50
      000056                        252 _Write7219_PARM_2:
      000056                        253 	.ds 1
      000057                        254 _main_data_65536_31:
      000057                        255 	.ds 2
      000059                        256 _main_START_65536_31:
      000059                        257 	.ds 2
      00005B                        258 _main_FINISH_65536_31:
      00005B                        259 	.ds 2
      00005D                        260 _main_idx_262145_43:
      00005D                        261 	.ds 2
      00005F                        262 _main_sloc0_1_0:
      00005F                        263 	.ds 2
      000061                        264 _main_sloc1_1_0:
      000061                        265 	.ds 2
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable items in internal ram
                                    268 ;--------------------------------------------------------
                                    269 	.area	OSEG    (OVR,DATA)
      000063                        270 _sendbyte_PARM_2:
      000063                        271 	.ds 1
                                    272 	.area	OSEG    (OVR,DATA)
                                    273 	.area	OSEG    (OVR,DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; Stack segment in internal ram
                                    276 ;--------------------------------------------------------
                                    277 	.area SSEG
      000065                        278 __start__stack:
      000065                        279 	.ds	1
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
      000000 02 00 11         [24]  325 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  326 	reti
      000004                        327 	.ds	7
      00000B 02 01 6E         [24]  328 	ljmp	_T0_isr
                                    329 ;--------------------------------------------------------
                                    330 ; global & static initialisations
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.globl __sdcc_gsinit_startup
                                    337 	.globl __sdcc_program_startup
                                    338 	.globl __start__stack
                                    339 	.globl __mcs51_genXINIT
                                    340 	.globl __mcs51_genXRAMCLEAR
                                    341 	.globl __mcs51_genRAMCLEAR
                                    342 ;	./src/main.c:28: static unsigned char display_seg[] = {
      00006A 75 08 7E         [24]  343 	mov	_display_seg,#0x7e
      00006D 75 09 30         [24]  344 	mov	(_display_seg + 0x0001),#0x30
      000070 75 0A 6D         [24]  345 	mov	(_display_seg + 0x0002),#0x6d
      000073 75 0B 79         [24]  346 	mov	(_display_seg + 0x0003),#0x79
      000076 75 0C 33         [24]  347 	mov	(_display_seg + 0x0004),#0x33
      000079 75 0D 5B         [24]  348 	mov	(_display_seg + 0x0005),#0x5b
      00007C 75 0E 5F         [24]  349 	mov	(_display_seg + 0x0006),#0x5f
      00007F 75 0F 70         [24]  350 	mov	(_display_seg + 0x0007),#0x70
      000082 75 10 7F         [24]  351 	mov	(_display_seg + 0x0008),#0x7f
      000085 75 11 7B         [24]  352 	mov	(_display_seg + 0x0009),#0x7b
      000088 75 12 00         [24]  353 	mov	(_display_seg + 0x000a),#0x00
                                    354 ;	./src/main.c:43: int hall_cnt = 0;	// Count the # of Hall sensor activations
      00008B E4               [12]  355 	clr	a
      00008C F5 1B            [12]  356 	mov	_hall_cnt,a
      00008E F5 1C            [12]  357 	mov	(_hall_cnt + 1),a
                                    358 ;	./src/main.c:44: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor	
                                    359 ;	1-genFromRTrack replaced	mov	_hall_last_state,#0x00
      000090 F5 1D            [12]  360 	mov	_hall_last_state,a
                                    361 ;	./src/main.c:45: unsigned long int time = 0;
      000092 F5 1E            [12]  362 	mov	_time,a
      000094 F5 1F            [12]  363 	mov	(_time + 1),a
      000096 F5 20            [12]  364 	mov	(_time + 2),a
      000098 F5 21            [12]  365 	mov	(_time + 3),a
                                    366 	.area GSFINAL (CODE)
      00009A 02 00 0E         [24]  367 	ljmp	__sdcc_program_startup
                                    368 ;--------------------------------------------------------
                                    369 ; Home
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area HOME    (CODE)
      00000E                        373 __sdcc_program_startup:
      00000E 02 01 B2         [24]  374 	ljmp	_main
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
                                    386 ;	./src/main.c:51: void sendbyte(unsigned char address,unsigned char dat){
                                    387 ;	-----------------------------------------
                                    388 ;	 function sendbyte
                                    389 ;	-----------------------------------------
      00009D                        390 _sendbyte:
                           000007   391 	ar7 = 0x07
                           000006   392 	ar6 = 0x06
                           000005   393 	ar5 = 0x05
                           000004   394 	ar4 = 0x04
                           000003   395 	ar3 = 0x03
                           000002   396 	ar2 = 0x02
                           000001   397 	ar1 = 0x01
                           000000   398 	ar0 = 0x00
      00009D AF 82            [24]  399 	mov	r7,dpl
                                    400 ;	./src/main.c:52: for (a=0;a<8;a++)        //get last 8 bits(address)
      00009F E4               [12]  401 	clr	a
      0000A0 F5 22            [12]  402 	mov	_a,a
      0000A2 F5 23            [12]  403 	mov	(_a + 1),a
      0000A4                        404 00103$:
                                    405 ;	./src/main.c:54: CLK = 0;
                                    406 ;	assignBit
      0000A4 C2 A0            [12]  407 	clr	_P2_0
                                    408 ;	./src/main.c:55: DOUT = ( address & 0x80);   //get msb and shift left
      0000A6 EF               [12]  409 	mov	a,r7
      0000A7 23               [12]  410 	rl	a
      0000A8 54 01            [12]  411 	anl	a,#0x01
                                    412 ;	assignBit
      0000AA 24 FF            [12]  413 	add	a,#0xff
      0000AC 92 A2            [24]  414 	mov	_P2_2,c
                                    415 ;	./src/main.c:56: address <<= 1;
      0000AE 8F 06            [24]  416 	mov	ar6,r7
      0000B0 EE               [12]  417 	mov	a,r6
      0000B1 2E               [12]  418 	add	a,r6
      0000B2 FF               [12]  419 	mov	r7,a
                                    420 ;	./src/main.c:57: CLK = 1;
                                    421 ;	assignBit
      0000B3 D2 A0            [12]  422 	setb	_P2_0
                                    423 ;	./src/main.c:52: for (a=0;a<8;a++)        //get last 8 bits(address)
      0000B5 05 22            [12]  424 	inc	_a
      0000B7 E4               [12]  425 	clr	a
      0000B8 B5 22 02         [24]  426 	cjne	a,_a,00121$
      0000BB 05 23            [12]  427 	inc	(_a + 1)
      0000BD                        428 00121$:
      0000BD C3               [12]  429 	clr	c
      0000BE E5 22            [12]  430 	mov	a,_a
      0000C0 94 08            [12]  431 	subb	a,#0x08
      0000C2 E5 23            [12]  432 	mov	a,(_a + 1)
      0000C4 94 00            [12]  433 	subb	a,#0x00
      0000C6 40 DC            [24]  434 	jc	00103$
                                    435 ;	./src/main.c:59: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000C8 E4               [12]  436 	clr	a
      0000C9 F5 22            [12]  437 	mov	_a,a
      0000CB F5 23            [12]  438 	mov	(_a + 1),a
      0000CD                        439 00105$:
                                    440 ;	./src/main.c:61: CLK = 0;
                                    441 ;	assignBit
      0000CD C2 A0            [12]  442 	clr	_P2_0
                                    443 ;	./src/main.c:62: DOUT=( dat & 0x80);    //get msb and shit left
      0000CF E5 63            [12]  444 	mov	a,_sendbyte_PARM_2
      0000D1 23               [12]  445 	rl	a
      0000D2 54 01            [12]  446 	anl	a,#0x01
                                    447 ;	assignBit
      0000D4 24 FF            [12]  448 	add	a,#0xff
      0000D6 92 A2            [24]  449 	mov	_P2_2,c
                                    450 ;	./src/main.c:63: dat <<= 1;
      0000D8 E5 63            [12]  451 	mov	a,_sendbyte_PARM_2
      0000DA 25 E0            [12]  452 	add	a,acc
      0000DC F5 63            [12]  453 	mov	_sendbyte_PARM_2,a
                                    454 ;	./src/main.c:64: CLK = 1;
                                    455 ;	assignBit
      0000DE D2 A0            [12]  456 	setb	_P2_0
                                    457 ;	./src/main.c:59: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000E0 05 22            [12]  458 	inc	_a
      0000E2 E4               [12]  459 	clr	a
      0000E3 B5 22 02         [24]  460 	cjne	a,_a,00123$
      0000E6 05 23            [12]  461 	inc	(_a + 1)
      0000E8                        462 00123$:
      0000E8 C3               [12]  463 	clr	c
      0000E9 E5 22            [12]  464 	mov	a,_a
      0000EB 94 08            [12]  465 	subb	a,#0x08
      0000ED E5 23            [12]  466 	mov	a,(_a + 1)
      0000EF 94 00            [12]  467 	subb	a,#0x00
      0000F1 40 DA            [24]  468 	jc	00105$
                                    469 ;	./src/main.c:66: }
      0000F3 22               [24]  470 	ret
                                    471 ;------------------------------------------------------------
                                    472 ;Allocation info for local variables in function 'Write7219'
                                    473 ;------------------------------------------------------------
                                    474 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    475 ;address                   Allocated to registers 
                                    476 ;------------------------------------------------------------
                                    477 ;	./src/main.c:69: void Write7219(unsigned char address, unsigned char dat)
                                    478 ;	-----------------------------------------
                                    479 ;	 function Write7219
                                    480 ;	-----------------------------------------
      0000F4                        481 _Write7219:
                                    482 ;	./src/main.c:71: LOAD = 0;
                                    483 ;	assignBit
      0000F4 C2 A1            [12]  484 	clr	_P2_1
                                    485 ;	./src/main.c:72: sendbyte(address, dat);
      0000F6 85 56 63         [24]  486 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000F9 12 00 9D         [24]  487 	lcall	_sendbyte
                                    488 ;	./src/main.c:73: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    489 ;	assignBit
      0000FC D2 A1            [12]  490 	setb	_P2_1
                                    491 ;	./src/main.c:74: }
      0000FE 22               [24]  492 	ret
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'Initial'
                                    495 ;------------------------------------------------------------
                                    496 ;i                         Allocated to registers r7 
                                    497 ;------------------------------------------------------------
                                    498 ;	./src/main.c:77: void Initial(void)
                                    499 ;	-----------------------------------------
                                    500 ;	 function Initial
                                    501 ;	-----------------------------------------
      0000FF                        502 _Initial:
                                    503 ;	./src/main.c:80: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      0000FF 75 56 01         [24]  504 	mov	_Write7219_PARM_2,#0x01
      000102 75 82 0C         [24]  505 	mov	dpl,#0x0c
      000105 12 00 F4         [24]  506 	lcall	_Write7219
                                    507 ;	./src/main.c:81: Write7219(DISPLAY_TEST,0x00);
      000108 75 56 00         [24]  508 	mov	_Write7219_PARM_2,#0x00
      00010B 75 82 0F         [24]  509 	mov	dpl,#0x0f
      00010E 12 00 F4         [24]  510 	lcall	_Write7219
                                    511 ;	./src/main.c:82: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      000111 75 56 00         [24]  512 	mov	_Write7219_PARM_2,#0x00
      000114 75 82 09         [24]  513 	mov	dpl,#0x09
      000117 12 00 F4         [24]  514 	lcall	_Write7219
                                    515 ;	./src/main.c:83: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      00011A 75 56 07         [24]  516 	mov	_Write7219_PARM_2,#0x07
      00011D 75 82 0B         [24]  517 	mov	dpl,#0x0b
      000120 12 00 F4         [24]  518 	lcall	_Write7219
                                    519 ;	./src/main.c:84: Write7219(INTENSITY,0x00);         //set up intensity
      000123 75 56 00         [24]  520 	mov	_Write7219_PARM_2,#0x00
      000126 75 82 0A         [24]  521 	mov	dpl,#0x0a
      000129 12 00 F4         [24]  522 	lcall	_Write7219
                                    523 ;	./src/main.c:85: for(i=1;i<=8;i++){
      00012C 7F 01            [12]  524 	mov	r7,#0x01
      00012E                        525 00102$:
                                    526 ;	./src/main.c:86: Write7219(i,0x00);   //turn off all LED
      00012E 75 56 00         [24]  527 	mov	_Write7219_PARM_2,#0x00
      000131 8F 82            [24]  528 	mov	dpl,r7
      000133 C0 07            [24]  529 	push	ar7
      000135 12 00 F4         [24]  530 	lcall	_Write7219
      000138 D0 07            [24]  531 	pop	ar7
                                    532 ;	./src/main.c:85: for(i=1;i<=8;i++){
      00013A 0F               [12]  533 	inc	r7
      00013B EF               [12]  534 	mov	a,r7
      00013C 24 F7            [12]  535 	add	a,#0xff - 0x08
      00013E 50 EE            [24]  536 	jnc	00102$
                                    537 ;	./src/main.c:88: }
      000140 22               [24]  538 	ret
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'draw'
                                    541 ;------------------------------------------------------------
                                    542 ;i                         Allocated to registers r6 r7 
                                    543 ;------------------------------------------------------------
                                    544 ;	./src/main.c:91: void draw(void){
                                    545 ;	-----------------------------------------
                                    546 ;	 function draw
                                    547 ;	-----------------------------------------
      000141                        548 _draw:
                                    549 ;	./src/main.c:92: for(unsigned int i = 1;i < 9;i++){
      000141 7E 01            [12]  550 	mov	r6,#0x01
      000143 7F 00            [12]  551 	mov	r7,#0x00
      000145                        552 00103$:
      000145 C3               [12]  553 	clr	c
      000146 EE               [12]  554 	mov	a,r6
      000147 94 09            [12]  555 	subb	a,#0x09
      000149 EF               [12]  556 	mov	a,r7
      00014A 94 00            [12]  557 	subb	a,#0x00
      00014C 50 1F            [24]  558 	jnc	00105$
                                    559 ;	./src/main.c:93: Write7219(i, print[i-1]);
      00014E 8E 05            [24]  560 	mov	ar5,r6
      000150 8D 04            [24]  561 	mov	ar4,r5
      000152 EC               [12]  562 	mov	a,r4
      000153 14               [12]  563 	dec	a
      000154 24 13            [12]  564 	add	a,#_print
      000156 F9               [12]  565 	mov	r1,a
      000157 87 56            [24]  566 	mov	_Write7219_PARM_2,@r1
      000159 8D 82            [24]  567 	mov	dpl,r5
      00015B C0 07            [24]  568 	push	ar7
      00015D C0 06            [24]  569 	push	ar6
      00015F 12 00 F4         [24]  570 	lcall	_Write7219
      000162 D0 06            [24]  571 	pop	ar6
      000164 D0 07            [24]  572 	pop	ar7
                                    573 ;	./src/main.c:92: for(unsigned int i = 1;i < 9;i++){
      000166 0E               [12]  574 	inc	r6
      000167 BE 00 DB         [24]  575 	cjne	r6,#0x00,00103$
      00016A 0F               [12]  576 	inc	r7
      00016B 80 D8            [24]  577 	sjmp	00103$
      00016D                        578 00105$:
                                    579 ;	./src/main.c:96: }
      00016D 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'T0_isr'
                                    583 ;------------------------------------------------------------
                                    584 ;	./src/main.c:99: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
                                    585 ;	-----------------------------------------
                                    586 ;	 function T0_isr
                                    587 ;	-----------------------------------------
      00016E                        588 _T0_isr:
      00016E C0 E0            [24]  589 	push	acc
      000170 C0 D0            [24]  590 	push	psw
                                    591 ;	./src/main.c:102: TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
      000172 75 8C FC         [24]  592 	mov	_TH0,#0xfc
                                    593 ;	./src/main.c:103: TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
      000175 75 8A 18         [24]  594 	mov	_TL0,#0x18
                                    595 ;	./src/main.c:105: if((Hall_In == 0) && (hall_last_state == 0))	// Falling edge of hall sensor signal (activated)
      000178 20 A4 0C         [24]  596 	jb	_P2_4,00102$
      00017B E5 1D            [12]  597 	mov	a,_hall_last_state
      00017D 70 08            [24]  598 	jnz	00102$
                                    599 ;	./src/main.c:107: hall_cnt = hall_cnt + 1;					// Count 1 activation
      00017F 05 1B            [12]  600 	inc	_hall_cnt
      000181 E4               [12]  601 	clr	a
      000182 B5 1B 02         [24]  602 	cjne	a,_hall_cnt,00116$
      000185 05 1C            [12]  603 	inc	(_hall_cnt + 1)
      000187                        604 00116$:
      000187                        605 00102$:
                                    606 ;	./src/main.c:110: hall_last_state = Hall_In;						// Update last Hall sensor state
      000187 A2 A4            [12]  607 	mov	c,_P2_4
      000189 E4               [12]  608 	clr	a
      00018A 33               [12]  609 	rlc	a
      00018B F5 1D            [12]  610 	mov	_hall_last_state,a
                                    611 ;	./src/main.c:111: }
      00018D D0 D0            [24]  612 	pop	psw
      00018F D0 E0            [24]  613 	pop	acc
      000191 32               [24]  614 	reti
                                    615 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    616 ;	eliminated unneeded push/pop dpl
                                    617 ;	eliminated unneeded push/pop dph
                                    618 ;	eliminated unneeded push/pop b
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'Clean'
                                    621 ;------------------------------------------------------------
                                    622 ;i                         Allocated to registers r6 r7 
                                    623 ;------------------------------------------------------------
                                    624 ;	./src/main.c:114: void Clean(void){
                                    625 ;	-----------------------------------------
                                    626 ;	 function Clean
                                    627 ;	-----------------------------------------
      000192                        628 _Clean:
                                    629 ;	./src/main.c:115: for(unsigned int i = 0; i < 8; i++){
      000192 7E 00            [12]  630 	mov	r6,#0x00
      000194 7F 00            [12]  631 	mov	r7,#0x00
      000196                        632 00103$:
      000196 C3               [12]  633 	clr	c
      000197 EE               [12]  634 	mov	a,r6
      000198 94 08            [12]  635 	subb	a,#0x08
      00019A EF               [12]  636 	mov	a,r7
      00019B 94 00            [12]  637 	subb	a,#0x00
      00019D 50 0D            [24]  638 	jnc	00101$
                                    639 ;	./src/main.c:116: print[i] = 0x00;
      00019F EE               [12]  640 	mov	a,r6
      0001A0 24 13            [12]  641 	add	a,#_print
      0001A2 F8               [12]  642 	mov	r0,a
      0001A3 76 00            [12]  643 	mov	@r0,#0x00
                                    644 ;	./src/main.c:115: for(unsigned int i = 0; i < 8; i++){
      0001A5 0E               [12]  645 	inc	r6
      0001A6 BE 00 ED         [24]  646 	cjne	r6,#0x00,00103$
      0001A9 0F               [12]  647 	inc	r7
      0001AA 80 EA            [24]  648 	sjmp	00103$
      0001AC                        649 00101$:
                                    650 ;	./src/main.c:118: hall_cnt = 0;
      0001AC E4               [12]  651 	clr	a
      0001AD F5 1B            [12]  652 	mov	_hall_cnt,a
      0001AF F5 1C            [12]  653 	mov	(_hall_cnt + 1),a
                                    654 ;	./src/main.c:119: }
      0001B1 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'main'
                                    658 ;------------------------------------------------------------
                                    659 ;data                      Allocated with name '_main_data_65536_31'
                                    660 ;pre_PB1                   Allocated to registers 
                                    661 ;START                     Allocated with name '_main_START_65536_31'
                                    662 ;FINISH                    Allocated with name '_main_FINISH_65536_31'
                                    663 ;patt1                     Allocated to registers 
                                    664 ;buf                       Allocated to registers r7 r6 
                                    665 ;idx                       Allocated with name '_main_idx_262145_43'
                                    666 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    667 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    668 ;------------------------------------------------------------
                                    669 ;	./src/main.c:122: void main(void)
                                    670 ;	-----------------------------------------
                                    671 ;	 function main
                                    672 ;	-----------------------------------------
      0001B2                        673 _main:
                                    674 ;	./src/main.c:124: unsigned int data = 0;
      0001B2 E4               [12]  675 	clr	a
      0001B3 F5 57            [12]  676 	mov	_main_data_65536_31,a
      0001B5 F5 58            [12]  677 	mov	(_main_data_65536_31 + 1),a
                                    678 ;	./src/main.c:125: unsigned int pre_PB1 = 1,START = 0,FINISH = 0;
      0001B7 F5 59            [12]  679 	mov	_main_START_65536_31,a
      0001B9 F5 5A            [12]  680 	mov	(_main_START_65536_31 + 1),a
      0001BB F5 5B            [12]  681 	mov	_main_FINISH_65536_31,a
      0001BD F5 5C            [12]  682 	mov	(_main_FINISH_65536_31 + 1),a
                                    683 ;	./src/main.c:128: Initial();
      0001BF 12 00 FF         [24]  684 	lcall	_Initial
                                    685 ;	./src/main.c:129: Clean();
      0001C2 12 01 92         [24]  686 	lcall	_Clean
                                    687 ;	./src/main.c:130: TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
      0001C5 75 89 01         [24]  688 	mov	_TMOD,#0x01
                                    689 ;	./src/main.c:131: TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
      0001C8 75 8C FC         [24]  690 	mov	_TH0,#0xfc
                                    691 ;	./src/main.c:132: TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
      0001CB 75 8A 18         [24]  692 	mov	_TL0,#0x18
                                    693 ;	./src/main.c:133: ET0 = 1;										// Enable Timer 0 interrupt
                                    694 ;	assignBit
      0001CE D2 A9            [12]  695 	setb	_ET0
                                    696 ;	./src/main.c:134: EA = 1;											// Enable all interrupt
                                    697 ;	assignBit
      0001D0 D2 AF            [12]  698 	setb	_EA
                                    699 ;	./src/main.c:135: TR0 = 1;										// Start Timer 0
                                    700 ;	assignBit
      0001D2 D2 8C            [12]  701 	setb	_TR0
                                    702 ;	./src/main.c:139: while (START == 0)
      0001D4                        703 00106$:
      0001D4 E5 59            [12]  704 	mov	a,_main_START_65536_31
      0001D6 45 5A            [12]  705 	orl	a,(_main_START_65536_31 + 1)
      0001D8 70 20            [24]  706 	jnz	00108$
                                    707 ;	./src/main.c:141: if((PB1 == 0) && (pre_PB1 == 1))
      0001DA 20 B2 F7         [24]  708 	jb	_INT0,00106$
                                    709 ;	./src/main.c:143: delay_ms(20);
      0001DD 90 00 14         [24]  710 	mov	dptr,#0x0014
      0001E0 12 03 D1         [24]  711 	lcall	_delay_ms
                                    712 ;	./src/main.c:144: if(PB1 == 0){
      0001E3 20 B2 EE         [24]  713 	jb	_INT0,00106$
                                    714 ;	./src/main.c:145: START = 1;
      0001E6 75 59 01         [24]  715 	mov	_main_START_65536_31,#0x01
                                    716 ;	./src/main.c:146: FINISH = 0;
      0001E9 E4               [12]  717 	clr	a
      0001EA F5 5A            [12]  718 	mov	(_main_START_65536_31 + 1),a
      0001EC F5 5B            [12]  719 	mov	_main_FINISH_65536_31,a
      0001EE F5 5C            [12]  720 	mov	(_main_FINISH_65536_31 + 1),a
                                    721 ;	./src/main.c:147: hall_cnt = 0;
      0001F0 F5 1B            [12]  722 	mov	_hall_cnt,a
      0001F2 F5 1C            [12]  723 	mov	(_hall_cnt + 1),a
                                    724 ;	./src/main.c:148: data = 0;
      0001F4 F5 57            [12]  725 	mov	_main_data_65536_31,a
      0001F6 F5 58            [12]  726 	mov	(_main_data_65536_31 + 1),a
      0001F8 80 DA            [24]  727 	sjmp	00106$
      0001FA                        728 00108$:
                                    729 ;	./src/main.c:153: led = ~0xFF;
      0001FA 75 90 00         [24]  730 	mov	_P1,#0x00
                                    731 ;	./src/main.c:154: delay_ms(1000);
      0001FD 90 03 E8         [24]  732 	mov	dptr,#0x03e8
      000200 12 03 D1         [24]  733 	lcall	_delay_ms
                                    734 ;	./src/main.c:155: led = ~0x00;
      000203 75 90 FF         [24]  735 	mov	_P1,#0xff
                                    736 ;	./src/main.c:156: while ((FINISH == 0) && (START == 1))
      000206 74 01            [12]  737 	mov	a,#0x01
      000208 B5 59 08         [24]  738 	cjne	a,_main_START_65536_31,00200$
      00020B 14               [12]  739 	dec	a
      00020C B5 5A 04         [24]  740 	cjne	a,(_main_START_65536_31 + 1),00200$
      00020F 74 01            [12]  741 	mov	a,#0x01
      000211 80 01            [24]  742 	sjmp	00201$
      000213                        743 00200$:
      000213 E4               [12]  744 	clr	a
      000214                        745 00201$:
      000214 FF               [12]  746 	mov	r7,a
      000215 85 57 5F         [24]  747 	mov	_main_sloc0_1_0,_main_data_65536_31
      000218 85 58 60         [24]  748 	mov	(_main_sloc0_1_0 + 1),(_main_data_65536_31 + 1)
      00021B                        749 00118$:
      00021B E5 5B            [12]  750 	mov	a,_main_FINISH_65536_31
      00021D 45 5C            [12]  751 	orl	a,(_main_FINISH_65536_31 + 1)
      00021F 60 03            [24]  752 	jz	00202$
      000221 02 02 F2         [24]  753 	ljmp	00151$
      000224                        754 00202$:
      000224 EF               [12]  755 	mov	a,r7
      000225 70 03            [24]  756 	jnz	00203$
      000227 02 02 F2         [24]  757 	ljmp	00151$
      00022A                        758 00203$:
                                    759 ;	./src/main.c:158: if((Hall_In == 1) && (hall_last_state == 0))
      00022A 30 A4 EE         [24]  760 	jnb	_P2_4,00118$
      00022D E5 1D            [12]  761 	mov	a,_hall_last_state
      00022F 70 EA            [24]  762 	jnz	00118$
                                    763 ;	./src/main.c:160: if(hall_cnt > 2000){
      000231 C3               [12]  764 	clr	c
      000232 74 D0            [12]  765 	mov	a,#0xd0
      000234 95 1B            [12]  766 	subb	a,_hall_cnt
      000236 74 87            [12]  767 	mov	a,#(0x07 ^ 0x80)
      000238 85 1C F0         [24]  768 	mov	b,(_hall_cnt + 1)
      00023B 63 F0 80         [24]  769 	xrl	b,#0x80
      00023E 95 F0            [12]  770 	subb	a,b
      000240 50 47            [24]  771 	jnc	00110$
                                    772 ;	./src/main.c:161: input[data] = 1;
      000242 E5 5F            [12]  773 	mov	a,_main_sloc0_1_0
      000244 25 5F            [12]  774 	add	a,_main_sloc0_1_0
      000246 FD               [12]  775 	mov	r5,a
      000247 E5 60            [12]  776 	mov	a,(_main_sloc0_1_0 + 1)
      000249 33               [12]  777 	rlc	a
      00024A ED               [12]  778 	mov	a,r5
      00024B 24 24            [12]  779 	add	a,#_input
      00024D F8               [12]  780 	mov	r0,a
      00024E 76 01            [12]  781 	mov	@r0,#0x01
      000250 08               [12]  782 	inc	r0
      000251 76 00            [12]  783 	mov	@r0,#0x00
                                    784 ;	./src/main.c:162: led = ~0x00;
      000253 75 90 FF         [24]  785 	mov	_P1,#0xff
                                    786 ;	./src/main.c:163: led = ~((patt1 << (data%5)) | 0xE0);
      000256 75 63 05         [24]  787 	mov	__moduint_PARM_2,#0x05
      000259 75 64 00         [24]  788 	mov	(__moduint_PARM_2 + 1),#0x00
      00025C 85 5F 82         [24]  789 	mov	dpl,_main_sloc0_1_0
      00025F 85 60 83         [24]  790 	mov	dph,(_main_sloc0_1_0 + 1)
      000262 C0 07            [24]  791 	push	ar7
      000264 12 03 EC         [24]  792 	lcall	__moduint
      000267 AD 82            [24]  793 	mov	r5,dpl
      000269 D0 07            [24]  794 	pop	ar7
      00026B 8D F0            [24]  795 	mov	b,r5
      00026D 05 F0            [12]  796 	inc	b
      00026F 74 01            [12]  797 	mov	a,#0x01
      000271 80 02            [24]  798 	sjmp	00209$
      000273                        799 00207$:
      000273 25 E0            [12]  800 	add	a,acc
      000275                        801 00209$:
      000275 D5 F0 FB         [24]  802 	djnz	b,00207$
      000278 44 E0            [12]  803 	orl	a,#0xe0
      00027A F4               [12]  804 	cpl	a
      00027B F5 90            [12]  805 	mov	_P1,a
                                    806 ;	./src/main.c:164: delay_ms(20);
      00027D 90 00 14         [24]  807 	mov	dptr,#0x0014
      000280 C0 07            [24]  808 	push	ar7
      000282 12 03 D1         [24]  809 	lcall	_delay_ms
      000285 D0 07            [24]  810 	pop	ar7
      000287 80 45            [24]  811 	sjmp	00111$
      000289                        812 00110$:
                                    813 ;	./src/main.c:166: input[data] = 1;
      000289 E5 5F            [12]  814 	mov	a,_main_sloc0_1_0
      00028B 25 5F            [12]  815 	add	a,_main_sloc0_1_0
      00028D FD               [12]  816 	mov	r5,a
      00028E E5 60            [12]  817 	mov	a,(_main_sloc0_1_0 + 1)
      000290 33               [12]  818 	rlc	a
      000291 ED               [12]  819 	mov	a,r5
      000292 24 24            [12]  820 	add	a,#_input
      000294 F8               [12]  821 	mov	r0,a
      000295 76 01            [12]  822 	mov	@r0,#0x01
      000297 08               [12]  823 	inc	r0
      000298 76 00            [12]  824 	mov	@r0,#0x00
                                    825 ;	./src/main.c:167: led = ~0x00;
      00029A 75 90 FF         [24]  826 	mov	_P1,#0xff
                                    827 ;	./src/main.c:168: led = ~((patt1 << (data%5)) | 0x80);
      00029D 75 63 05         [24]  828 	mov	__moduint_PARM_2,#0x05
      0002A0 75 64 00         [24]  829 	mov	(__moduint_PARM_2 + 1),#0x00
      0002A3 85 5F 82         [24]  830 	mov	dpl,_main_sloc0_1_0
      0002A6 85 60 83         [24]  831 	mov	dph,(_main_sloc0_1_0 + 1)
      0002A9 C0 07            [24]  832 	push	ar7
      0002AB 12 03 EC         [24]  833 	lcall	__moduint
      0002AE AD 82            [24]  834 	mov	r5,dpl
      0002B0 D0 07            [24]  835 	pop	ar7
      0002B2 8D F0            [24]  836 	mov	b,r5
      0002B4 05 F0            [12]  837 	inc	b
      0002B6 74 01            [12]  838 	mov	a,#0x01
      0002B8 80 02            [24]  839 	sjmp	00212$
      0002BA                        840 00210$:
      0002BA 25 E0            [12]  841 	add	a,acc
      0002BC                        842 00212$:
      0002BC D5 F0 FB         [24]  843 	djnz	b,00210$
      0002BF 44 80            [12]  844 	orl	a,#0x80
      0002C1 F4               [12]  845 	cpl	a
      0002C2 F5 90            [12]  846 	mov	_P1,a
                                    847 ;	./src/main.c:169: delay_ms(20);
      0002C4 90 00 14         [24]  848 	mov	dptr,#0x0014
      0002C7 C0 07            [24]  849 	push	ar7
      0002C9 12 03 D1         [24]  850 	lcall	_delay_ms
      0002CC D0 07            [24]  851 	pop	ar7
      0002CE                        852 00111$:
                                    853 ;	./src/main.c:171: data ++ ;
      0002CE 05 5F            [12]  854 	inc	_main_sloc0_1_0
      0002D0 E4               [12]  855 	clr	a
      0002D1 B5 5F 02         [24]  856 	cjne	a,_main_sloc0_1_0,00213$
      0002D4 05 60            [12]  857 	inc	(_main_sloc0_1_0 + 1)
      0002D6                        858 00213$:
                                    859 ;	./src/main.c:172: hall_cnt = 0;
      0002D6 E4               [12]  860 	clr	a
      0002D7 F5 1B            [12]  861 	mov	_hall_cnt,a
      0002D9 F5 1C            [12]  862 	mov	(_hall_cnt + 1),a
                                    863 ;	./src/main.c:173: if(data == 25){
      0002DB 74 19            [12]  864 	mov	a,#0x19
      0002DD B5 5F 06         [24]  865 	cjne	a,_main_sloc0_1_0,00214$
      0002E0 E4               [12]  866 	clr	a
      0002E1 B5 60 02         [24]  867 	cjne	a,(_main_sloc0_1_0 + 1),00214$
      0002E4 80 03            [24]  868 	sjmp	00215$
      0002E6                        869 00214$:
      0002E6 02 02 1B         [24]  870 	ljmp	00118$
      0002E9                        871 00215$:
                                    872 ;	./src/main.c:174: FINISH = 1;
      0002E9 75 5B 01         [24]  873 	mov	_main_FINISH_65536_31,#0x01
      0002EC 75 5C 00         [24]  874 	mov	(_main_FINISH_65536_31 + 1),#0x00
      0002EF 02 02 1B         [24]  875 	ljmp	00118$
      0002F2                        876 00151$:
      0002F2 85 5F 57         [24]  877 	mov	_main_data_65536_31,_main_sloc0_1_0
      0002F5 85 60 58         [24]  878 	mov	(_main_data_65536_31 + 1),(_main_sloc0_1_0 + 1)
                                    879 ;	./src/main.c:182: if(FINISH == 1){
      0002F8 74 01            [12]  880 	mov	a,#0x01
      0002FA B5 5B 06         [24]  881 	cjne	a,_main_FINISH_65536_31,00216$
      0002FD 14               [12]  882 	dec	a
      0002FE B5 5C 02         [24]  883 	cjne	a,(_main_FINISH_65536_31 + 1),00216$
      000301 80 03            [24]  884 	sjmp	00217$
      000303                        885 00216$:
      000303 02 01 D4         [24]  886 	ljmp	00106$
      000306                        887 00217$:
                                    888 ;	./src/main.c:183: led = ~0x80;
      000306 75 90 7F         [24]  889 	mov	_P1,#0x7f
                                    890 ;	./src/main.c:184: delay_ms(1000);
      000309 90 03 E8         [24]  891 	mov	dptr,#0x03e8
      00030C 12 03 D1         [24]  892 	lcall	_delay_ms
                                    893 ;	./src/main.c:186: for(unsigned int idx = 0; idx < 5; idx++){
      00030F E4               [12]  894 	clr	a
      000310 F5 5D            [12]  895 	mov	_main_idx_262145_43,a
      000312 F5 5E            [12]  896 	mov	(_main_idx_262145_43 + 1),a
      000314                        897 00131$:
      000314 C3               [12]  898 	clr	c
      000315 E5 5D            [12]  899 	mov	a,_main_idx_262145_43
      000317 94 05            [12]  900 	subb	a,#0x05
      000319 E5 5E            [12]  901 	mov	a,(_main_idx_262145_43 + 1)
      00031B 94 00            [12]  902 	subb	a,#0x00
      00031D 40 03            [24]  903 	jc	00218$
      00031F 02 01 D4         [24]  904 	ljmp	00106$
      000322                        905 00218$:
                                    906 ;	./src/main.c:187: buf = input[idx*5] + input[idx*5+1] + input[idx*5+2] + input[idx*5+2] +input[idx*5+4];
      000322 E5 5D            [12]  907 	mov	a,_main_idx_262145_43
      000324 75 F0 05         [24]  908 	mov	b,#0x05
      000327 A4               [48]  909 	mul	ab
      000328 FD               [12]  910 	mov	r5,a
      000329 25 E0            [12]  911 	add	a,acc
      00032B 24 24            [12]  912 	add	a,#_input
      00032D F9               [12]  913 	mov	r1,a
      00032E 87 03            [24]  914 	mov	ar3,@r1
      000330 09               [12]  915 	inc	r1
      000331 87 04            [24]  916 	mov	ar4,@r1
      000333 19               [12]  917 	dec	r1
      000334 ED               [12]  918 	mov	a,r5
      000335 04               [12]  919 	inc	a
      000336 25 E0            [12]  920 	add	a,acc
      000338 24 24            [12]  921 	add	a,#_input
      00033A F9               [12]  922 	mov	r1,a
      00033B 87 02            [24]  923 	mov	ar2,@r1
      00033D 09               [12]  924 	inc	r1
      00033E 87 07            [24]  925 	mov	ar7,@r1
      000340 19               [12]  926 	dec	r1
      000341 EA               [12]  927 	mov	a,r2
      000342 2B               [12]  928 	add	a,r3
      000343 F5 5F            [12]  929 	mov	_main_sloc0_1_0,a
      000345 EF               [12]  930 	mov	a,r7
      000346 3C               [12]  931 	addc	a,r4
      000347 F5 60            [12]  932 	mov	(_main_sloc0_1_0 + 1),a
      000349 74 02            [12]  933 	mov	a,#0x02
      00034B 2D               [12]  934 	add	a,r5
      00034C 25 E0            [12]  935 	add	a,acc
      00034E 24 24            [12]  936 	add	a,#_input
      000350 F9               [12]  937 	mov	r1,a
      000351 87 61            [24]  938 	mov	_main_sloc1_1_0,@r1
      000353 09               [12]  939 	inc	r1
      000354 87 62            [24]  940 	mov	(_main_sloc1_1_0 + 1),@r1
      000356 19               [12]  941 	dec	r1
      000357 E5 61            [12]  942 	mov	a,_main_sloc1_1_0
      000359 25 5F            [12]  943 	add	a,_main_sloc0_1_0
      00035B FF               [12]  944 	mov	r7,a
      00035C E5 62            [12]  945 	mov	a,(_main_sloc1_1_0 + 1)
      00035E 35 60            [12]  946 	addc	a,(_main_sloc0_1_0 + 1)
      000360 FA               [12]  947 	mov	r2,a
      000361 E5 61            [12]  948 	mov	a,_main_sloc1_1_0
      000363 2F               [12]  949 	add	a,r7
      000364 FF               [12]  950 	mov	r7,a
      000365 E5 62            [12]  951 	mov	a,(_main_sloc1_1_0 + 1)
      000367 3A               [12]  952 	addc	a,r2
      000368 FA               [12]  953 	mov	r2,a
      000369 ED               [12]  954 	mov	a,r5
      00036A 24 04            [12]  955 	add	a,#0x04
      00036C 25 E0            [12]  956 	add	a,acc
      00036E 24 24            [12]  957 	add	a,#_input
      000370 F9               [12]  958 	mov	r1,a
      000371 87 05            [24]  959 	mov	ar5,@r1
      000373 09               [12]  960 	inc	r1
      000374 87 06            [24]  961 	mov	ar6,@r1
      000376 19               [12]  962 	dec	r1
      000377 ED               [12]  963 	mov	a,r5
      000378 2F               [12]  964 	add	a,r7
      000379 FF               [12]  965 	mov	r7,a
      00037A EE               [12]  966 	mov	a,r6
      00037B 3A               [12]  967 	addc	a,r2
      00037C FE               [12]  968 	mov	r6,a
                                    969 ;	./src/main.c:188: if(input[idx*5] == 0)
      00037D EB               [12]  970 	mov	a,r3
      00037E 4C               [12]  971 	orl	a,r4
      00037F 70 24            [24]  972 	jnz	00122$
                                    973 ;	./src/main.c:189: print[idx] = (5-buf)%10;
      000381 E5 5D            [12]  974 	mov	a,_main_idx_262145_43
      000383 24 13            [12]  975 	add	a,#_print
      000385 F9               [12]  976 	mov	r1,a
      000386 74 05            [12]  977 	mov	a,#0x05
      000388 C3               [12]  978 	clr	c
      000389 9F               [12]  979 	subb	a,r7
      00038A F5 82            [12]  980 	mov	dpl,a
      00038C E4               [12]  981 	clr	a
      00038D 9E               [12]  982 	subb	a,r6
      00038E F5 83            [12]  983 	mov	dph,a
      000390 75 63 0A         [24]  984 	mov	__moduint_PARM_2,#0x0a
      000393 75 64 00         [24]  985 	mov	(__moduint_PARM_2 + 1),#0x00
      000396 C0 01            [24]  986 	push	ar1
      000398 12 03 EC         [24]  987 	lcall	__moduint
      00039B AC 82            [24]  988 	mov	r4,dpl
      00039D AD 83            [24]  989 	mov	r5,dph
      00039F D0 01            [24]  990 	pop	ar1
      0003A1 A7 04            [24]  991 	mov	@r1,ar4
      0003A3 80 21            [24]  992 	sjmp	00132$
      0003A5                        993 00122$:
                                    994 ;	./src/main.c:191: print[idx] = (5+buf)%10;
      0003A5 E5 5D            [12]  995 	mov	a,_main_idx_262145_43
      0003A7 24 13            [12]  996 	add	a,#_print
      0003A9 F9               [12]  997 	mov	r1,a
      0003AA 8F 82            [24]  998 	mov	dpl,r7
      0003AC 8E 83            [24]  999 	mov	dph,r6
      0003AE A3               [24] 1000 	inc	dptr
      0003AF A3               [24] 1001 	inc	dptr
      0003B0 A3               [24] 1002 	inc	dptr
      0003B1 A3               [24] 1003 	inc	dptr
      0003B2 A3               [24] 1004 	inc	dptr
      0003B3 75 63 0A         [24] 1005 	mov	__moduint_PARM_2,#0x0a
      0003B6 75 64 00         [24] 1006 	mov	(__moduint_PARM_2 + 1),#0x00
      0003B9 C0 01            [24] 1007 	push	ar1
      0003BB 12 03 EC         [24] 1008 	lcall	__moduint
      0003BE AE 82            [24] 1009 	mov	r6,dpl
      0003C0 AF 83            [24] 1010 	mov	r7,dph
      0003C2 D0 01            [24] 1011 	pop	ar1
      0003C4 A7 06            [24] 1012 	mov	@r1,ar6
      0003C6                       1013 00132$:
                                   1014 ;	./src/main.c:186: for(unsigned int idx = 0; idx < 5; idx++){
      0003C6 05 5D            [12] 1015 	inc	_main_idx_262145_43
      0003C8 E4               [12] 1016 	clr	a
      0003C9 B5 5D 02         [24] 1017 	cjne	a,_main_idx_262145_43,00220$
      0003CC 05 5E            [12] 1018 	inc	(_main_idx_262145_43 + 1)
      0003CE                       1019 00220$:
                                   1020 ;	./src/main.c:196: }
      0003CE 02 03 14         [24] 1021 	ljmp	00131$
                                   1022 ;------------------------------------------------------------
                                   1023 ;Allocation info for local variables in function 'delay_ms'
                                   1024 ;------------------------------------------------------------
                                   1025 ;input_ms                  Allocated to registers r6 r7 
                                   1026 ;cnt1                      Allocated to registers r4 r5 
                                   1027 ;cnt2                      Allocated to registers r3 
                                   1028 ;------------------------------------------------------------
                                   1029 ;	./src/main.c:198: void delay_ms(unsigned int input_ms)
                                   1030 ;	-----------------------------------------
                                   1031 ;	 function delay_ms
                                   1032 ;	-----------------------------------------
      0003D1                       1033 _delay_ms:
      0003D1 AE 82            [24] 1034 	mov	r6,dpl
      0003D3 AF 83            [24] 1035 	mov	r7,dph
                                   1036 ;	./src/main.c:203: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      0003D5 7C 00            [12] 1037 	mov	r4,#0x00
      0003D7 7D 00            [12] 1038 	mov	r5,#0x00
      0003D9                       1039 00107$:
      0003D9 C3               [12] 1040 	clr	c
      0003DA EC               [12] 1041 	mov	a,r4
      0003DB 9E               [12] 1042 	subb	a,r6
      0003DC ED               [12] 1043 	mov	a,r5
      0003DD 9F               [12] 1044 	subb	a,r7
      0003DE 50 0B            [24] 1045 	jnc	00109$
                                   1046 ;	./src/main.c:205: for(cnt2 = 0; cnt2 < 90; cnt2 ++);
      0003E0 7B 5A            [12] 1047 	mov	r3,#0x5a
      0003E2                       1048 00105$:
      0003E2 DB FE            [24] 1049 	djnz	r3,00105$
                                   1050 ;	./src/main.c:203: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      0003E4 0C               [12] 1051 	inc	r4
      0003E5 BC 00 F1         [24] 1052 	cjne	r4,#0x00,00107$
      0003E8 0D               [12] 1053 	inc	r5
      0003E9 80 EE            [24] 1054 	sjmp	00107$
      0003EB                       1055 00109$:
                                   1056 ;	./src/main.c:207: }
      0003EB 22               [24] 1057 	ret
                                   1058 	.area CSEG    (CODE)
                                   1059 	.area CONST   (CODE)
                                   1060 	.area XINIT   (CODE)
                                   1061 	.area CABS    (ABS,CODE)
