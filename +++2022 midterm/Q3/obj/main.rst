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
                                     13 	.globl _move
                                     14 	.globl _getPositionPattern
                                     15 	.globl _delay_ms
                                     16 	.globl _readMPU6050_AccelData
                                     17 	.globl _MPU6050_INIT
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _Write7219_PARM_2
                                    115 	.globl _accel_data
                                    116 	.globl _i
                                    117 	.globl _data_buf
                                    118 	.globl _m
                                    119 	.globl _p
                                    120 	.globl _patt
                                    121 	.globl _state
                                    122 	.globl _picture
                                    123 	.globl _draw
                                    124 	.globl _sendbyte
                                    125 	.globl _Write7219
                                    126 	.globl _Initial
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
      000021                        242 _MAP:
      000021                        243 	.ds 8
      000029                        244 _picture::
      000029                        245 	.ds 8
      000031                        246 _state::
      000031                        247 	.ds 4
      000035                        248 _patt::
      000035                        249 	.ds 4
      000039                        250 _p::
      000039                        251 	.ds 1
      00003A                        252 _m::
      00003A                        253 	.ds 2
      00003C                        254 _data_buf::
      00003C                        255 	.ds 2
      00003E                        256 _i::
      00003E                        257 	.ds 1
      00003F                        258 _accel_data::
      00003F                        259 	.ds 6
      000045                        260 _Write7219_PARM_2:
      000045                        261 	.ds 1
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable items in internal ram
                                    264 ;--------------------------------------------------------
                                    265 	.area	OSEG    (OVR,DATA)
      00000B                        266 _sendbyte_PARM_2:
      00000B                        267 	.ds 1
                                    268 	.area	OSEG    (OVR,DATA)
                                    269 	.area	OSEG    (OVR,DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; Stack segment in internal ram
                                    272 ;--------------------------------------------------------
                                    273 	.area SSEG
      00005C                        274 __start__stack:
      00005C                        275 	.ds	1
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
                                    335 ;	./src/main.c:25: static unsigned char MAP[8] = {0x07,0xF7,0xF7,0xF7,0xF7,0xF7,0xF7,0xF0};
      00005F 75 21 07         [24]  336 	mov	_MAP,#0x07
      000062 75 22 F7         [24]  337 	mov	(_MAP + 0x0001),#0xf7
      000065 75 23 F7         [24]  338 	mov	(_MAP + 0x0002),#0xf7
      000068 75 24 F7         [24]  339 	mov	(_MAP + 0x0003),#0xf7
      00006B 75 25 F7         [24]  340 	mov	(_MAP + 0x0004),#0xf7
      00006E 75 26 F7         [24]  341 	mov	(_MAP + 0x0005),#0xf7
      000071 75 27 F7         [24]  342 	mov	(_MAP + 0x0006),#0xf7
      000074 75 28 F0         [24]  343 	mov	(_MAP + 0x0007),#0xf0
                                    344 ;	./src/main.c:26: unsigned char picture[8] = {0x07,0xF7,0xF7,0xF7,0xF7,0xF7,0xF7,0xF0};
      000077 75 29 07         [24]  345 	mov	_picture,#0x07
      00007A 75 2A F7         [24]  346 	mov	(_picture + 0x0001),#0xf7
      00007D 75 2B F7         [24]  347 	mov	(_picture + 0x0002),#0xf7
      000080 75 2C F7         [24]  348 	mov	(_picture + 0x0003),#0xf7
      000083 75 2D F7         [24]  349 	mov	(_picture + 0x0004),#0xf7
      000086 75 2E F7         [24]  350 	mov	(_picture + 0x0005),#0xf7
      000089 75 2F F7         [24]  351 	mov	(_picture + 0x0006),#0xf7
      00008C 75 30 F0         [24]  352 	mov	(_picture + 0x0007),#0xf0
                                    353 ;	./src/main.c:27: int state[2] = {7,0},patt[2];
      00008F 75 31 07         [24]  354 	mov	(_state + 0),#0x07
      000092 E4               [12]  355 	clr	a
      000093 F5 32            [12]  356 	mov	(_state + 1),a
      000095 F5 33            [12]  357 	mov	((_state + 0x0002) + 0),a
      000097 F5 34            [12]  358 	mov	((_state + 0x0002) + 1),a
                                    359 ;	./src/main.c:28: unsigned char p = 0x01;
      000099 75 39 01         [24]  360 	mov	_p,#0x01
                                    361 ;	./src/main.c:29: unsigned int m = 0;
      00009C F5 3A            [12]  362 	mov	_m,a
      00009E F5 3B            [12]  363 	mov	(_m + 1),a
                                    364 ;	./src/main.c:32: char i = 0;
                                    365 ;	1-genFromRTrack replaced	mov	_i,#0x00
      0000A0 F5 3E            [12]  366 	mov	_i,a
                                    367 ;	./src/main.c:34: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
      0000A2 F5 3F            [12]  368 	mov	(_accel_data + 0),a
      0000A4 F5 40            [12]  369 	mov	(_accel_data + 1),a
      0000A6 F5 41            [12]  370 	mov	((_accel_data + 0x0002) + 0),a
      0000A8 F5 42            [12]  371 	mov	((_accel_data + 0x0002) + 1),a
      0000AA F5 43            [12]  372 	mov	((_accel_data + 0x0004) + 0),a
      0000AC F5 44            [12]  373 	mov	((_accel_data + 0x0004) + 1),a
                                    374 	.area GSFINAL (CODE)
      0000BA 02 00 03         [24]  375 	ljmp	__sdcc_program_startup
                                    376 ;--------------------------------------------------------
                                    377 ; Home
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area HOME    (CODE)
      000003                        381 __sdcc_program_startup:
      000003 02 02 52         [24]  382 	ljmp	_main
                                    383 ;	return from main will return to caller
                                    384 ;--------------------------------------------------------
                                    385 ; code
                                    386 ;--------------------------------------------------------
                                    387 	.area CSEG    (CODE)
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'draw'
                                    390 ;------------------------------------------------------------
                                    391 ;i                         Allocated to registers r7 
                                    392 ;------------------------------------------------------------
                                    393 ;	./src/main.c:38: void draw(void)
                                    394 ;	-----------------------------------------
                                    395 ;	 function draw
                                    396 ;	-----------------------------------------
      0000BD                        397 _draw:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
                                    406 ;	./src/main.c:42: for(i=1; i<=8; i++) {
      0000BD 7F 01            [12]  407 	mov	r7,#0x01
      0000BF                        408 00102$:
                                    409 ;	./src/main.c:43: Write7219(i, picture[i-1]);
      0000BF 8F 06            [24]  410 	mov	ar6,r7
      0000C1 EE               [12]  411 	mov	a,r6
      0000C2 14               [12]  412 	dec	a
      0000C3 24 29            [12]  413 	add	a,#_picture
      0000C5 F9               [12]  414 	mov	r1,a
      0000C6 87 45            [24]  415 	mov	_Write7219_PARM_2,@r1
      0000C8 8F 82            [24]  416 	mov	dpl,r7
      0000CA C0 07            [24]  417 	push	ar7
      0000CC 12 01 0F         [24]  418 	lcall	_Write7219
      0000CF D0 07            [24]  419 	pop	ar7
                                    420 ;	./src/main.c:42: for(i=1; i<=8; i++) {
      0000D1 0F               [12]  421 	inc	r7
      0000D2 EF               [12]  422 	mov	a,r7
      0000D3 24 F7            [12]  423 	add	a,#0xff - 0x08
      0000D5 50 E8            [24]  424 	jnc	00102$
                                    425 ;	./src/main.c:45: }
      0000D7 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'sendbyte'
                                    429 ;------------------------------------------------------------
                                    430 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    431 ;address                   Allocated to registers r7 
                                    432 ;i                         Allocated to registers r6 
                                    433 ;------------------------------------------------------------
                                    434 ;	./src/main.c:48: void sendbyte(unsigned char address, unsigned char dat) {
                                    435 ;	-----------------------------------------
                                    436 ;	 function sendbyte
                                    437 ;	-----------------------------------------
      0000D8                        438 _sendbyte:
      0000D8 AF 82            [24]  439 	mov	r7,dpl
                                    440 ;	./src/main.c:51: for (i=0; i<8; i++) {       // get last 8 bits(address)
      0000DA 7E 00            [12]  441 	mov	r6,#0x00
      0000DC                        442 00103$:
                                    443 ;	./src/main.c:52: CLK = 0;
                                    444 ;	assignBit
      0000DC C2 A0            [12]  445 	clr	_P2_0
                                    446 ;	./src/main.c:53: DIN = (address & 0x80); // get msb and shift left
      0000DE EF               [12]  447 	mov	a,r7
      0000DF 23               [12]  448 	rl	a
      0000E0 54 01            [12]  449 	anl	a,#0x01
                                    450 ;	assignBit
      0000E2 24 FF            [12]  451 	add	a,#0xff
      0000E4 92 A2            [24]  452 	mov	_P2_2,c
                                    453 ;	./src/main.c:54: address <<= 1;
      0000E6 8F 05            [24]  454 	mov	ar5,r7
      0000E8 ED               [12]  455 	mov	a,r5
      0000E9 2D               [12]  456 	add	a,r5
      0000EA FF               [12]  457 	mov	r7,a
                                    458 ;	./src/main.c:55: CLK = 1;
                                    459 ;	assignBit
      0000EB D2 A0            [12]  460 	setb	_P2_0
                                    461 ;	./src/main.c:51: for (i=0; i<8; i++) {       // get last 8 bits(address)
      0000ED 0E               [12]  462 	inc	r6
      0000EE BE 08 00         [24]  463 	cjne	r6,#0x08,00123$
      0000F1                        464 00123$:
      0000F1 40 E9            [24]  465 	jc	00103$
                                    466 ;	./src/main.c:58: for (i=0; i<8; i++) {     	// get first 8 bits(data)
      0000F3 7F 00            [12]  467 	mov	r7,#0x00
      0000F5                        468 00105$:
                                    469 ;	./src/main.c:59: CLK = 0;
                                    470 ;	assignBit
      0000F5 C2 A0            [12]  471 	clr	_P2_0
                                    472 ;	./src/main.c:60: DIN = (dat & 0x80);    	// get msb and shit left
      0000F7 E5 0B            [12]  473 	mov	a,_sendbyte_PARM_2
      0000F9 23               [12]  474 	rl	a
      0000FA 54 01            [12]  475 	anl	a,#0x01
                                    476 ;	assignBit
      0000FC 24 FF            [12]  477 	add	a,#0xff
      0000FE 92 A2            [24]  478 	mov	_P2_2,c
                                    479 ;	./src/main.c:61: dat <<= 1;
      000100 E5 0B            [12]  480 	mov	a,_sendbyte_PARM_2
      000102 25 E0            [12]  481 	add	a,acc
      000104 F5 0B            [12]  482 	mov	_sendbyte_PARM_2,a
                                    483 ;	./src/main.c:62: CLK = 1;
                                    484 ;	assignBit
      000106 D2 A0            [12]  485 	setb	_P2_0
                                    486 ;	./src/main.c:58: for (i=0; i<8; i++) {     	// get first 8 bits(data)
      000108 0F               [12]  487 	inc	r7
      000109 BF 08 00         [24]  488 	cjne	r7,#0x08,00125$
      00010C                        489 00125$:
      00010C 40 E7            [24]  490 	jc	00105$
                                    491 ;	./src/main.c:64: }
      00010E 22               [24]  492 	ret
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'Write7219'
                                    495 ;------------------------------------------------------------
                                    496 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    497 ;address                   Allocated to registers 
                                    498 ;------------------------------------------------------------
                                    499 ;	./src/main.c:67: void Write7219(unsigned char address, unsigned char dat)
                                    500 ;	-----------------------------------------
                                    501 ;	 function Write7219
                                    502 ;	-----------------------------------------
      00010F                        503 _Write7219:
                                    504 ;	./src/main.c:69: LOAD = 0;
                                    505 ;	assignBit
      00010F C2 A1            [12]  506 	clr	_P2_1
                                    507 ;	./src/main.c:70: sendbyte(address, dat);
      000111 85 45 0B         [24]  508 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      000114 12 00 D8         [24]  509 	lcall	_sendbyte
                                    510 ;	./src/main.c:71: LOAD=1;
                                    511 ;	assignBit
      000117 D2 A1            [12]  512 	setb	_P2_1
                                    513 ;	./src/main.c:72: }
      000119 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'getPositionPattern'
                                    517 ;------------------------------------------------------------
                                    518 ;i                         Allocated to registers r6 r7 
                                    519 ;------------------------------------------------------------
                                    520 ;	./src/main.c:74: void getPositionPattern(void){
                                    521 ;	-----------------------------------------
                                    522 ;	 function getPositionPattern
                                    523 ;	-----------------------------------------
      00011A                        524 _getPositionPattern:
                                    525 ;	./src/main.c:75: for(unsigned int i=0; i<8; i++){
      00011A 7E 00            [12]  526 	mov	r6,#0x00
      00011C 7F 00            [12]  527 	mov	r7,#0x00
      00011E                        528 00103$:
      00011E C3               [12]  529 	clr	c
      00011F EE               [12]  530 	mov	a,r6
      000120 94 08            [12]  531 	subb	a,#0x08
      000122 EF               [12]  532 	mov	a,r7
      000123 94 00            [12]  533 	subb	a,#0x00
      000125 50 13            [24]  534 	jnc	00101$
                                    535 ;	./src/main.c:76: picture[i] = MAP[i];
      000127 EE               [12]  536 	mov	a,r6
      000128 24 29            [12]  537 	add	a,#_picture
      00012A F9               [12]  538 	mov	r1,a
      00012B EE               [12]  539 	mov	a,r6
      00012C 24 21            [12]  540 	add	a,#_MAP
      00012E F8               [12]  541 	mov	r0,a
      00012F 86 05            [24]  542 	mov	ar5,@r0
      000131 A7 05            [24]  543 	mov	@r1,ar5
                                    544 ;	./src/main.c:75: for(unsigned int i=0; i<8; i++){
      000133 0E               [12]  545 	inc	r6
      000134 BE 00 E7         [24]  546 	cjne	r6,#0x00,00103$
      000137 0F               [12]  547 	inc	r7
      000138 80 E4            [24]  548 	sjmp	00103$
      00013A                        549 00101$:
                                    550 ;	./src/main.c:78: picture[state[0]] = picture[state[0]] | (0x01 << state[1]);
      00013A E5 31            [12]  551 	mov	a,_state
      00013C 24 29            [12]  552 	add	a,#_picture
      00013E F9               [12]  553 	mov	r1,a
      00013F 87 07            [24]  554 	mov	ar7,@r1
      000141 85 33 F0         [24]  555 	mov	b,(_state + 0x0002)
      000144 05 F0            [12]  556 	inc	b
      000146 74 01            [12]  557 	mov	a,#0x01
      000148 80 02            [24]  558 	sjmp	00120$
      00014A                        559 00118$:
      00014A 25 E0            [12]  560 	add	a,acc
      00014C                        561 00120$:
      00014C D5 F0 FB         [24]  562 	djnz	b,00118$
      00014F 4F               [12]  563 	orl	a,r7
      000150 F7               [12]  564 	mov	@r1,a
                                    565 ;	./src/main.c:80: led = ~p;
      000151 E5 39            [12]  566 	mov	a,_p
      000153 F4               [12]  567 	cpl	a
      000154 F5 90            [12]  568 	mov	_P1,a
                                    569 ;	./src/main.c:81: }
      000156 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'move'
                                    573 ;------------------------------------------------------------
                                    574 ;mode                      Allocated to registers r6 r7 
                                    575 ;------------------------------------------------------------
                                    576 ;	./src/main.c:83: void move(unsigned int mode){
                                    577 ;	-----------------------------------------
                                    578 ;	 function move
                                    579 ;	-----------------------------------------
      000157                        580 _move:
      000157 AE 82            [24]  581 	mov	r6,dpl
      000159 AF 83            [24]  582 	mov	r7,dph
                                    583 ;	./src/main.c:84: switch (mode)
      00015B BE 00 05         [24]  584 	cjne	r6,#0x00,00157$
      00015E BF 00 02         [24]  585 	cjne	r7,#0x00,00157$
      000161 80 0A            [24]  586 	sjmp	00101$
      000163                        587 00157$:
      000163 BE 01 06         [24]  588 	cjne	r6,#0x01,00158$
      000166 BF 00 03         [24]  589 	cjne	r7,#0x00,00158$
      000169 02 01 E0         [24]  590 	ljmp	00111$
      00016C                        591 00158$:
      00016C 22               [24]  592 	ret
                                    593 ;	./src/main.c:86: case 0:  //go down
      00016D                        594 00101$:
                                    595 ;	./src/main.c:87: if(m<3){
      00016D C3               [12]  596 	clr	c
      00016E E5 3A            [12]  597 	mov	a,_m
      000170 94 03            [12]  598 	subb	a,#0x03
      000172 E5 3B            [12]  599 	mov	a,(_m + 1)
      000174 94 00            [12]  600 	subb	a,#0x00
      000176 50 15            [24]  601 	jnc	00109$
                                    602 ;	./src/main.c:88: state[0] = 7;
      000178 75 31 07         [24]  603 	mov	(_state + 0),#0x07
      00017B 75 32 00         [24]  604 	mov	(_state + 1),#0x00
                                    605 ;	./src/main.c:89: state[1]--;
      00017E AE 33            [24]  606 	mov	r6,((_state + 0x0002) + 0)
      000180 AF 34            [24]  607 	mov	r7,((_state + 0x0002) + 1)
      000182 1E               [12]  608 	dec	r6
      000183 BE FF 01         [24]  609 	cjne	r6,#0xff,00160$
      000186 1F               [12]  610 	dec	r7
      000187                        611 00160$:
      000187 8E 33            [24]  612 	mov	((_state + 0x0002) + 0),r6
      000189 8F 34            [24]  613 	mov	((_state + 0x0002) + 1),r7
      00018B 80 49            [24]  614 	sjmp	00110$
      00018D                        615 00109$:
                                    616 ;	./src/main.c:90: }else if(m<10){
      00018D C3               [12]  617 	clr	c
      00018E E5 3A            [12]  618 	mov	a,_m
      000190 94 0A            [12]  619 	subb	a,#0x0a
      000192 E5 3B            [12]  620 	mov	a,(_m + 1)
      000194 94 00            [12]  621 	subb	a,#0x00
      000196 50 15            [24]  622 	jnc	00106$
                                    623 ;	./src/main.c:91: state[0]--;
      000198 AE 31            [24]  624 	mov	r6,(_state + 0)
      00019A AF 32            [24]  625 	mov	r7,(_state + 1)
      00019C 1E               [12]  626 	dec	r6
      00019D BE FF 01         [24]  627 	cjne	r6,#0xff,00162$
      0001A0 1F               [12]  628 	dec	r7
      0001A1                        629 00162$:
      0001A1 8E 31            [24]  630 	mov	(_state + 0),r6
      0001A3 8F 32            [24]  631 	mov	(_state + 1),r7
                                    632 ;	./src/main.c:92: state[1] = 3;
      0001A5 75 33 03         [24]  633 	mov	((_state + 0x0002) + 0),#0x03
      0001A8 75 34 00         [24]  634 	mov	((_state + 0x0002) + 1),#0x00
      0001AB 80 29            [24]  635 	sjmp	00110$
      0001AD                        636 00106$:
                                    637 ;	./src/main.c:93: }else if(m<14){
      0001AD C3               [12]  638 	clr	c
      0001AE E5 3A            [12]  639 	mov	a,_m
      0001B0 94 0E            [12]  640 	subb	a,#0x0e
      0001B2 E5 3B            [12]  641 	mov	a,(_m + 1)
      0001B4 94 00            [12]  642 	subb	a,#0x00
      0001B6 50 14            [24]  643 	jnc	00103$
                                    644 ;	./src/main.c:94: state[0] = 0;
      0001B8 E4               [12]  645 	clr	a
      0001B9 F5 31            [12]  646 	mov	(_state + 0),a
      0001BB F5 32            [12]  647 	mov	(_state + 1),a
                                    648 ;	./src/main.c:95: state[1]--;
      0001BD AE 33            [24]  649 	mov	r6,((_state + 0x0002) + 0)
      0001BF AF 34            [24]  650 	mov	r7,((_state + 0x0002) + 1)
      0001C1 1E               [12]  651 	dec	r6
      0001C2 BE FF 01         [24]  652 	cjne	r6,#0xff,00164$
      0001C5 1F               [12]  653 	dec	r7
      0001C6                        654 00164$:
      0001C6 8E 33            [24]  655 	mov	((_state + 0x0002) + 0),r6
      0001C8 8F 34            [24]  656 	mov	((_state + 0x0002) + 1),r7
      0001CA 80 0A            [24]  657 	sjmp	00110$
      0001CC                        658 00103$:
                                    659 ;	./src/main.c:97: state[0] = 0;
      0001CC E4               [12]  660 	clr	a
      0001CD F5 31            [12]  661 	mov	(_state + 0),a
      0001CF F5 32            [12]  662 	mov	(_state + 1),a
                                    663 ;	./src/main.c:98: state[1] = 7;
      0001D1 75 33 07         [24]  664 	mov	((_state + 0x0002) + 0),#0x07
                                    665 ;	1-genFromRTrack replaced	mov	((_state + 0x0002) + 1),#0x00
      0001D4 F5 34            [12]  666 	mov	((_state + 0x0002) + 1),a
      0001D6                        667 00110$:
                                    668 ;	./src/main.c:100: m--;
      0001D6 15 3A            [12]  669 	dec	_m
      0001D8 74 FF            [12]  670 	mov	a,#0xff
      0001DA B5 3A 02         [24]  671 	cjne	a,_m,00165$
      0001DD 15 3B            [12]  672 	dec	(_m + 1)
      0001DF                        673 00165$:
                                    674 ;	./src/main.c:101: break;
                                    675 ;	./src/main.c:102: case 1:
      0001DF 22               [24]  676 	ret
      0001E0                        677 00111$:
                                    678 ;	./src/main.c:103: if(m<3){
      0001E0 C3               [12]  679 	clr	c
      0001E1 E5 3A            [12]  680 	mov	a,_m
      0001E3 94 03            [12]  681 	subb	a,#0x03
      0001E5 E5 3B            [12]  682 	mov	a,(_m + 1)
      0001E7 94 00            [12]  683 	subb	a,#0x00
      0001E9 50 15            [24]  684 	jnc	00119$
                                    685 ;	./src/main.c:104: state[0] = 7;
      0001EB 75 31 07         [24]  686 	mov	(_state + 0),#0x07
      0001EE 75 32 00         [24]  687 	mov	(_state + 1),#0x00
                                    688 ;	./src/main.c:105: state[1] ++;
      0001F1 AE 33            [24]  689 	mov	r6,((_state + 0x0002) + 0)
      0001F3 AF 34            [24]  690 	mov	r7,((_state + 0x0002) + 1)
      0001F5 0E               [12]  691 	inc	r6
      0001F6 BE 00 01         [24]  692 	cjne	r6,#0x00,00167$
      0001F9 0F               [12]  693 	inc	r7
      0001FA                        694 00167$:
      0001FA 8E 33            [24]  695 	mov	((_state + 0x0002) + 0),r6
      0001FC 8F 34            [24]  696 	mov	((_state + 0x0002) + 1),r7
      0001FE 80 49            [24]  697 	sjmp	00120$
      000200                        698 00119$:
                                    699 ;	./src/main.c:106: }else if(m<10){
      000200 C3               [12]  700 	clr	c
      000201 E5 3A            [12]  701 	mov	a,_m
      000203 94 0A            [12]  702 	subb	a,#0x0a
      000205 E5 3B            [12]  703 	mov	a,(_m + 1)
      000207 94 00            [12]  704 	subb	a,#0x00
      000209 50 15            [24]  705 	jnc	00116$
                                    706 ;	./src/main.c:107: state[0] --;
      00020B AE 31            [24]  707 	mov	r6,(_state + 0)
      00020D AF 32            [24]  708 	mov	r7,(_state + 1)
      00020F 1E               [12]  709 	dec	r6
      000210 BE FF 01         [24]  710 	cjne	r6,#0xff,00169$
      000213 1F               [12]  711 	dec	r7
      000214                        712 00169$:
      000214 8E 31            [24]  713 	mov	(_state + 0),r6
      000216 8F 32            [24]  714 	mov	(_state + 1),r7
                                    715 ;	./src/main.c:108: state[1] = 3;
      000218 75 33 03         [24]  716 	mov	((_state + 0x0002) + 0),#0x03
      00021B 75 34 00         [24]  717 	mov	((_state + 0x0002) + 1),#0x00
      00021E 80 29            [24]  718 	sjmp	00120$
      000220                        719 00116$:
                                    720 ;	./src/main.c:109: }else if(m<14){
      000220 C3               [12]  721 	clr	c
      000221 E5 3A            [12]  722 	mov	a,_m
      000223 94 0E            [12]  723 	subb	a,#0x0e
      000225 E5 3B            [12]  724 	mov	a,(_m + 1)
      000227 94 00            [12]  725 	subb	a,#0x00
      000229 50 14            [24]  726 	jnc	00113$
                                    727 ;	./src/main.c:110: state[0] = 0;
      00022B E4               [12]  728 	clr	a
      00022C F5 31            [12]  729 	mov	(_state + 0),a
      00022E F5 32            [12]  730 	mov	(_state + 1),a
                                    731 ;	./src/main.c:111: state[1] ++;;
      000230 AE 33            [24]  732 	mov	r6,((_state + 0x0002) + 0)
      000232 AF 34            [24]  733 	mov	r7,((_state + 0x0002) + 1)
      000234 0E               [12]  734 	inc	r6
      000235 BE 00 01         [24]  735 	cjne	r6,#0x00,00171$
      000238 0F               [12]  736 	inc	r7
      000239                        737 00171$:
      000239 8E 33            [24]  738 	mov	((_state + 0x0002) + 0),r6
      00023B 8F 34            [24]  739 	mov	((_state + 0x0002) + 1),r7
      00023D 80 0A            [24]  740 	sjmp	00120$
      00023F                        741 00113$:
                                    742 ;	./src/main.c:113: state[0] = 7;
      00023F 75 31 07         [24]  743 	mov	(_state + 0),#0x07
                                    744 ;	./src/main.c:114: state[1] = 0;
      000242 E4               [12]  745 	clr	a
      000243 F5 32            [12]  746 	mov	(_state + 1),a
      000245 F5 33            [12]  747 	mov	((_state + 0x0002) + 0),a
      000247 F5 34            [12]  748 	mov	((_state + 0x0002) + 1),a
      000249                        749 00120$:
                                    750 ;	./src/main.c:116: m++;
      000249 05 3A            [12]  751 	inc	_m
      00024B E4               [12]  752 	clr	a
      00024C B5 3A 02         [24]  753 	cjne	a,_m,00172$
      00024F 05 3B            [12]  754 	inc	(_m + 1)
      000251                        755 00172$:
                                    756 ;	./src/main.c:120: }
                                    757 ;	./src/main.c:121: }
      000251 22               [24]  758 	ret
                                    759 ;------------------------------------------------------------
                                    760 ;Allocation info for local variables in function 'main'
                                    761 ;------------------------------------------------------------
                                    762 ;delta_x                   Allocated to registers r6 r7 
                                    763 ;delta_y                   Allocated to registers r4 r5 
                                    764 ;------------------------------------------------------------
                                    765 ;	./src/main.c:124: int main(void)
                                    766 ;	-----------------------------------------
                                    767 ;	 function main
                                    768 ;	-----------------------------------------
      000252                        769 _main:
                                    770 ;	./src/main.c:126: Initial();
      000252 12 02 F4         [24]  771 	lcall	_Initial
                                    772 ;	./src/main.c:127: draw();
      000255 12 00 BD         [24]  773 	lcall	_draw
                                    774 ;	./src/main.c:128: getPositionPattern();	
      000258 12 01 1A         [24]  775 	lcall	_getPositionPattern
                                    776 ;	./src/main.c:129: draw();
      00025B 12 00 BD         [24]  777 	lcall	_draw
                                    778 ;	./src/main.c:130: SDA = 1;
                                    779 ;	assignBit
      00025E D2 81            [12]  780 	setb	_P0_1
                                    781 ;	./src/main.c:131: SCL = 1;
                                    782 ;	assignBit
      000260 D2 80            [12]  783 	setb	_P0_0
                                    784 ;	./src/main.c:132: MPU6050_INIT();
      000262 12 04 3A         [24]  785 	lcall	_MPU6050_INIT
                                    786 ;	./src/main.c:134: while(1) {
      000265                        787 00115$:
                                    788 ;	./src/main.c:136: delay_ms(500);
      000265 90 01 F4         [24]  789 	mov	dptr,#0x01f4
      000268 12 04 28         [24]  790 	lcall	_delay_ms
                                    791 ;	./src/main.c:137: readMPU6050_AccelData(&accel_data[0]);
      00026B 90 00 3F         [24]  792 	mov	dptr,#_accel_data
      00026E 75 F0 40         [24]  793 	mov	b,#0x40
      000271 12 04 D7         [24]  794 	lcall	_readMPU6050_AccelData
                                    795 ;	./src/main.c:138: delta_x = accel_data[0];
      000274 AE 3F            [24]  796 	mov	r6,(_accel_data + 0)
      000276 AF 40            [24]  797 	mov	r7,(_accel_data + 1)
                                    798 ;	./src/main.c:139: delta_y = accel_data[1];
      000278 AC 41            [24]  799 	mov	r4,((_accel_data + 0x0002) + 0)
      00027A AD 42            [24]  800 	mov	r5,((_accel_data + 0x0002) + 1)
                                    801 ;	./src/main.c:141: if((delta_x>1000) || (delta_y<-1000)){
      00027C C3               [12]  802 	clr	c
      00027D 74 E8            [12]  803 	mov	a,#0xe8
      00027F 9E               [12]  804 	subb	a,r6
      000280 74 83            [12]  805 	mov	a,#(0x03 ^ 0x80)
      000282 8F F0            [24]  806 	mov	b,r7
      000284 63 F0 80         [24]  807 	xrl	b,#0x80
      000287 95 F0            [12]  808 	subb	a,b
      000289 40 0A            [24]  809 	jc	00105$
      00028B EC               [12]  810 	mov	a,r4
      00028C 94 18            [12]  811 	subb	a,#0x18
      00028E ED               [12]  812 	mov	a,r5
      00028F 64 80            [12]  813 	xrl	a,#0x80
      000291 94 7C            [12]  814 	subb	a,#0x7c
      000293 50 0E            [24]  815 	jnc	00106$
      000295                        816 00105$:
                                    817 ;	./src/main.c:142: move(1);
      000295 90 00 01         [24]  818 	mov	dptr,#0x0001
      000298 12 01 57         [24]  819 	lcall	_move
                                    820 ;	./src/main.c:143: getPositionPattern();	
      00029B 12 01 1A         [24]  821 	lcall	_getPositionPattern
                                    822 ;	./src/main.c:144: draw();
      00029E 12 00 BD         [24]  823 	lcall	_draw
      0002A1 80 2D            [24]  824 	sjmp	00107$
      0002A3                        825 00106$:
                                    826 ;	./src/main.c:145: }else if((delta_x<-1000) || (delta_y>1000)){
      0002A3 C3               [12]  827 	clr	c
      0002A4 EE               [12]  828 	mov	a,r6
      0002A5 94 18            [12]  829 	subb	a,#0x18
      0002A7 EF               [12]  830 	mov	a,r7
      0002A8 64 80            [12]  831 	xrl	a,#0x80
      0002AA 94 7C            [12]  832 	subb	a,#0x7c
      0002AC 40 0E            [24]  833 	jc	00101$
      0002AE 74 E8            [12]  834 	mov	a,#0xe8
      0002B0 9C               [12]  835 	subb	a,r4
      0002B1 74 83            [12]  836 	mov	a,#(0x03 ^ 0x80)
      0002B3 8D F0            [24]  837 	mov	b,r5
      0002B5 63 F0 80         [24]  838 	xrl	b,#0x80
      0002B8 95 F0            [12]  839 	subb	a,b
      0002BA 50 0E            [24]  840 	jnc	00102$
      0002BC                        841 00101$:
                                    842 ;	./src/main.c:146: move(0);
      0002BC 90 00 00         [24]  843 	mov	dptr,#0x0000
      0002BF 12 01 57         [24]  844 	lcall	_move
                                    845 ;	./src/main.c:147: getPositionPattern();	
      0002C2 12 01 1A         [24]  846 	lcall	_getPositionPattern
                                    847 ;	./src/main.c:148: draw();
      0002C5 12 00 BD         [24]  848 	lcall	_draw
      0002C8 80 06            [24]  849 	sjmp	00107$
      0002CA                        850 00102$:
                                    851 ;	./src/main.c:150: getPositionPattern();	
      0002CA 12 01 1A         [24]  852 	lcall	_getPositionPattern
                                    853 ;	./src/main.c:151: draw();
      0002CD 12 00 BD         [24]  854 	lcall	_draw
      0002D0                        855 00107$:
                                    856 ;	./src/main.c:153: if(m == 0)
      0002D0 E5 3A            [12]  857 	mov	a,_m
      0002D2 45 3B            [12]  858 	orl	a,(_m + 1)
                                    859 ;	./src/main.c:154: m = 14;
      0002D4 70 08            [24]  860 	jnz	00112$
      0002D6 75 3A 0E         [24]  861 	mov	_m,#0x0e
      0002D9 F5 3B            [12]  862 	mov	(_m + 1),a
      0002DB 02 02 65         [24]  863 	ljmp	00115$
      0002DE                        864 00112$:
                                    865 ;	./src/main.c:155: else if(m == 14)
      0002DE 74 0E            [12]  866 	mov	a,#0x0e
      0002E0 B5 3A 06         [24]  867 	cjne	a,_m,00144$
      0002E3 E4               [12]  868 	clr	a
      0002E4 B5 3B 02         [24]  869 	cjne	a,(_m + 1),00144$
      0002E7 80 03            [24]  870 	sjmp	00145$
      0002E9                        871 00144$:
      0002E9 02 02 65         [24]  872 	ljmp	00115$
      0002EC                        873 00145$:
                                    874 ;	./src/main.c:156: m = 0;
      0002EC E4               [12]  875 	clr	a
      0002ED F5 3A            [12]  876 	mov	_m,a
      0002EF F5 3B            [12]  877 	mov	(_m + 1),a
                                    878 ;	./src/main.c:159: }
      0002F1 02 02 65         [24]  879 	ljmp	00115$
                                    880 ;------------------------------------------------------------
                                    881 ;Allocation info for local variables in function 'Initial'
                                    882 ;------------------------------------------------------------
                                    883 ;i                         Allocated to registers r7 
                                    884 ;------------------------------------------------------------
                                    885 ;	./src/main.c:162: void Initial(void)
                                    886 ;	-----------------------------------------
                                    887 ;	 function Initial
                                    888 ;	-----------------------------------------
      0002F4                        889 _Initial:
                                    890 ;	./src/main.c:165: Write7219(SHUT_DOWN, 0x01);          // normal mode(0xX1)
      0002F4 75 45 01         [24]  891 	mov	_Write7219_PARM_2,#0x01
      0002F7 75 82 0C         [24]  892 	mov	dpl,#0x0c
      0002FA 12 01 0F         [24]  893 	lcall	_Write7219
                                    894 ;	./src/main.c:166: Write7219(DISPLAY_TEST, 0x00); 
      0002FD 75 45 00         [24]  895 	mov	_Write7219_PARM_2,#0x00
      000300 75 82 0F         [24]  896 	mov	dpl,#0x0f
      000303 12 01 0F         [24]  897 	lcall	_Write7219
                                    898 ;	./src/main.c:167: Write7219(DECODE_MODE, 0x00);        // select non-decode mode
      000306 75 45 00         [24]  899 	mov	_Write7219_PARM_2,#0x00
      000309 75 82 09         [24]  900 	mov	dpl,#0x09
      00030C 12 01 0F         [24]  901 	lcall	_Write7219
                                    902 ;	./src/main.c:168: Write7219(SCAN_LIMIT, 0x07);         // use all 8 LED
      00030F 75 45 07         [24]  903 	mov	_Write7219_PARM_2,#0x07
      000312 75 82 0B         [24]  904 	mov	dpl,#0x0b
      000315 12 01 0F         [24]  905 	lcall	_Write7219
                                    906 ;	./src/main.c:169: Write7219(INTENSITY, 0x00);          // set up intensity
      000318 75 45 00         [24]  907 	mov	_Write7219_PARM_2,#0x00
      00031B 75 82 0A         [24]  908 	mov	dpl,#0x0a
      00031E 12 01 0F         [24]  909 	lcall	_Write7219
                                    910 ;	./src/main.c:171: for(i=1; i<=8; i++) { 
      000321 7F 01            [12]  911 	mov	r7,#0x01
      000323                        912 00102$:
                                    913 ;	./src/main.c:172: Write7219(i, 0x00);              // turn off all LED
      000323 75 45 00         [24]  914 	mov	_Write7219_PARM_2,#0x00
      000326 8F 82            [24]  915 	mov	dpl,r7
      000328 C0 07            [24]  916 	push	ar7
      00032A 12 01 0F         [24]  917 	lcall	_Write7219
      00032D D0 07            [24]  918 	pop	ar7
                                    919 ;	./src/main.c:171: for(i=1; i<=8; i++) { 
      00032F 0F               [12]  920 	inc	r7
      000330 EF               [12]  921 	mov	a,r7
      000331 24 F7            [12]  922 	add	a,#0xff - 0x08
      000333 50 EE            [24]  923 	jnc	00102$
                                    924 ;	./src/main.c:174: }
      000335 22               [24]  925 	ret
                                    926 	.area CSEG    (CODE)
                                    927 	.area CONST   (CODE)
                                    928 	.area XINIT   (CODE)
                                    929 	.area CABS    (ABS,CODE)
