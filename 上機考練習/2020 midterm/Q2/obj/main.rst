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
                                     13 	.globl _draw
                                     14 	.globl _Initial
                                     15 	.globl _Write7219
                                     16 	.globl _sendbyte
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
                                    114 	.globl _num
                                    115 	.globl _input
                                    116 	.globl _delay_ms
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000008                        232 _display_seg:
      000008                        233 	.ds 11
      000013                        234 _input::
      000013                        235 	.ds 16
      000023                        236 _num::
      000023                        237 	.ds 18
      000035                        238 _Write7219_PARM_2:
      000035                        239 	.ds 1
      000036                        240 _main_i_196608_27:
      000036                        241 	.ds 2
      000038                        242 _main_i_196608_29:
      000038                        243 	.ds 2
      00003A                        244 _main_j_327680_31:
      00003A                        245 	.ds 2
                                    246 ;--------------------------------------------------------
                                    247 ; overlayable items in internal ram
                                    248 ;--------------------------------------------------------
                                    249 	.area	OSEG    (OVR,DATA)
      00003C                        250 _sendbyte_PARM_2:
      00003C                        251 	.ds 1
                                    252 	.area	OSEG    (OVR,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram
                                    255 ;--------------------------------------------------------
                                    256 	.area SSEG
      00003D                        257 __start__stack:
      00003D                        258 	.ds	1
                                    259 
                                    260 ;--------------------------------------------------------
                                    261 ; indirectly addressable internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area ISEG    (DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area IABS    (ABS,DATA)
                                    268 	.area IABS    (ABS,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; bit data
                                    271 ;--------------------------------------------------------
                                    272 	.area BSEG    (BIT)
                                    273 ;--------------------------------------------------------
                                    274 ; paged external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area PSEG    (PAG,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; uninitialized external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XSEG    (XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XABS    (ABS,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; initialized external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XISEG   (XDATA)
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT0 (CODE)
                                    291 	.area GSINIT1 (CODE)
                                    292 	.area GSINIT2 (CODE)
                                    293 	.area GSINIT3 (CODE)
                                    294 	.area GSINIT4 (CODE)
                                    295 	.area GSINIT5 (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area CSEG    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; interrupt vector
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
      000000                        303 __interrupt_vect:
      000000 02 00 06         [24]  304 	ljmp	__sdcc_gsinit_startup
                                    305 ;--------------------------------------------------------
                                    306 ; global & static initialisations
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.globl __sdcc_gsinit_startup
                                    313 	.globl __sdcc_program_startup
                                    314 	.globl __start__stack
                                    315 	.globl __mcs51_genXINIT
                                    316 	.globl __mcs51_genXRAMCLEAR
                                    317 	.globl __mcs51_genRAMCLEAR
                                    318 ;	./src/main.c:16: static unsigned char display_seg[] = {
      00005F 75 08 7E         [24]  319 	mov	_display_seg,#0x7e
      000062 75 09 30         [24]  320 	mov	(_display_seg + 0x0001),#0x30
      000065 75 0A 6D         [24]  321 	mov	(_display_seg + 0x0002),#0x6d
      000068 75 0B 79         [24]  322 	mov	(_display_seg + 0x0003),#0x79
      00006B 75 0C 33         [24]  323 	mov	(_display_seg + 0x0004),#0x33
      00006E 75 0D 5B         [24]  324 	mov	(_display_seg + 0x0005),#0x5b
      000071 75 0E 5F         [24]  325 	mov	(_display_seg + 0x0006),#0x5f
      000074 75 0F 70         [24]  326 	mov	(_display_seg + 0x0007),#0x70
      000077 75 10 7F         [24]  327 	mov	(_display_seg + 0x0008),#0x7f
      00007A 75 11 7B         [24]  328 	mov	(_display_seg + 0x0009),#0x7b
      00007D 75 12 08         [24]  329 	mov	(_display_seg + 0x000a),#0x08
                                    330 ;	./src/main.c:30: unsigned int input[8] = {7,1,1,1,0,2,0,2};
      000080 75 13 07         [24]  331 	mov	(_input + 0),#0x07
      000083 75 14 00         [24]  332 	mov	(_input + 1),#0x00
      000086 75 15 01         [24]  333 	mov	((_input + 0x0002) + 0),#0x01
      000089 75 16 00         [24]  334 	mov	((_input + 0x0002) + 1),#0x00
      00008C 75 17 01         [24]  335 	mov	((_input + 0x0004) + 0),#0x01
      00008F 75 18 00         [24]  336 	mov	((_input + 0x0004) + 1),#0x00
      000092 75 19 01         [24]  337 	mov	((_input + 0x0006) + 0),#0x01
      000095 E4               [12]  338 	clr	a
      000096 F5 1A            [12]  339 	mov	((_input + 0x0006) + 1),a
      000098 F5 1B            [12]  340 	mov	((_input + 0x0008) + 0),a
      00009A F5 1C            [12]  341 	mov	((_input + 0x0008) + 1),a
      00009C 75 1D 02         [24]  342 	mov	((_input + 0x000a) + 0),#0x02
                                    343 ;	1-genFromRTrack replaced	mov	((_input + 0x000a) + 1),#0x00
      00009F F5 1E            [12]  344 	mov	((_input + 0x000a) + 1),a
      0000A1 F5 1F            [12]  345 	mov	((_input + 0x000c) + 0),a
      0000A3 F5 20            [12]  346 	mov	((_input + 0x000c) + 1),a
      0000A5 75 21 02         [24]  347 	mov	((_input + 0x000e) + 0),#0x02
                                    348 ;	1-genFromRTrack replaced	mov	((_input + 0x000e) + 1),#0x00
      0000A8 F5 22            [12]  349 	mov	((_input + 0x000e) + 1),a
                                    350 ;	./src/main.c:31: unsigned int num[9] = {1,0,9,0,3,3,1,3,2};
      0000AA 75 23 01         [24]  351 	mov	(_num + 0),#0x01
                                    352 ;	1-genFromRTrack replaced	mov	(_num + 1),#0x00
      0000AD F5 24            [12]  353 	mov	(_num + 1),a
      0000AF F5 25            [12]  354 	mov	((_num + 0x0002) + 0),a
      0000B1 F5 26            [12]  355 	mov	((_num + 0x0002) + 1),a
      0000B3 75 27 09         [24]  356 	mov	((_num + 0x0004) + 0),#0x09
                                    357 ;	1-genFromRTrack replaced	mov	((_num + 0x0004) + 1),#0x00
      0000B6 F5 28            [12]  358 	mov	((_num + 0x0004) + 1),a
      0000B8 F5 29            [12]  359 	mov	((_num + 0x0006) + 0),a
      0000BA F5 2A            [12]  360 	mov	((_num + 0x0006) + 1),a
      0000BC 75 2B 03         [24]  361 	mov	((_num + 0x0008) + 0),#0x03
                                    362 ;	1-genFromRTrack replaced	mov	((_num + 0x0008) + 1),#0x00
      0000BF F5 2C            [12]  363 	mov	((_num + 0x0008) + 1),a
      0000C1 75 2D 03         [24]  364 	mov	((_num + 0x000a) + 0),#0x03
                                    365 ;	1-genFromRTrack replaced	mov	((_num + 0x000a) + 1),#0x00
      0000C4 F5 2E            [12]  366 	mov	((_num + 0x000a) + 1),a
      0000C6 75 2F 01         [24]  367 	mov	((_num + 0x000c) + 0),#0x01
                                    368 ;	1-genFromRTrack replaced	mov	((_num + 0x000c) + 1),#0x00
      0000C9 F5 30            [12]  369 	mov	((_num + 0x000c) + 1),a
      0000CB 75 31 03         [24]  370 	mov	((_num + 0x000e) + 0),#0x03
                                    371 ;	1-genFromRTrack replaced	mov	((_num + 0x000e) + 1),#0x00
      0000CE F5 32            [12]  372 	mov	((_num + 0x000e) + 1),a
      0000D0 75 33 02         [24]  373 	mov	((_num + 0x0010) + 0),#0x02
                                    374 ;	1-genFromRTrack replaced	mov	((_num + 0x0010) + 1),#0x00
      0000D3 F5 34            [12]  375 	mov	((_num + 0x0010) + 1),a
                                    376 	.area GSFINAL (CODE)
      0000D5 02 00 03         [24]  377 	ljmp	__sdcc_program_startup
                                    378 ;--------------------------------------------------------
                                    379 ; Home
                                    380 ;--------------------------------------------------------
                                    381 	.area HOME    (CODE)
                                    382 	.area HOME    (CODE)
      000003                        383 __sdcc_program_startup:
      000003 02 01 B5         [24]  384 	ljmp	_main
                                    385 ;	return from main will return to caller
                                    386 ;--------------------------------------------------------
                                    387 ; code
                                    388 ;--------------------------------------------------------
                                    389 	.area CSEG    (CODE)
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'sendbyte'
                                    392 ;------------------------------------------------------------
                                    393 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    394 ;address                   Allocated to registers r7 
                                    395 ;a                         Allocated to registers r5 r6 
                                    396 ;------------------------------------------------------------
                                    397 ;	./src/main.c:36: void sendbyte(unsigned char address,unsigned char dat){
                                    398 ;	-----------------------------------------
                                    399 ;	 function sendbyte
                                    400 ;	-----------------------------------------
      0000D8                        401 _sendbyte:
                           000007   402 	ar7 = 0x07
                           000006   403 	ar6 = 0x06
                           000005   404 	ar5 = 0x05
                           000004   405 	ar4 = 0x04
                           000003   406 	ar3 = 0x03
                           000002   407 	ar2 = 0x02
                           000001   408 	ar1 = 0x01
                           000000   409 	ar0 = 0x00
      0000D8 AF 82            [24]  410 	mov	r7,dpl
                                    411 ;	./src/main.c:38: for (a=0;a<8;a++)        //get last 8 bits(address)
      0000DA 7D 00            [12]  412 	mov	r5,#0x00
      0000DC 7E 00            [12]  413 	mov	r6,#0x00
      0000DE                        414 00103$:
                                    415 ;	./src/main.c:40: CLK = 0;
                                    416 ;	assignBit
      0000DE C2 A0            [12]  417 	clr	_P2_0
                                    418 ;	./src/main.c:41: DOUT = ( address & 0x80);   //get msb and shift left
      0000E0 EF               [12]  419 	mov	a,r7
      0000E1 23               [12]  420 	rl	a
      0000E2 54 01            [12]  421 	anl	a,#0x01
                                    422 ;	assignBit
      0000E4 24 FF            [12]  423 	add	a,#0xff
      0000E6 92 A2            [24]  424 	mov	_P2_2,c
                                    425 ;	./src/main.c:42: address <<= 1;
      0000E8 8F 04            [24]  426 	mov	ar4,r7
      0000EA EC               [12]  427 	mov	a,r4
      0000EB 2C               [12]  428 	add	a,r4
      0000EC FF               [12]  429 	mov	r7,a
                                    430 ;	./src/main.c:43: CLK = 1;
                                    431 ;	assignBit
      0000ED D2 A0            [12]  432 	setb	_P2_0
                                    433 ;	./src/main.c:38: for (a=0;a<8;a++)        //get last 8 bits(address)
      0000EF 0D               [12]  434 	inc	r5
      0000F0 BD 00 01         [24]  435 	cjne	r5,#0x00,00123$
      0000F3 0E               [12]  436 	inc	r6
      0000F4                        437 00123$:
      0000F4 C3               [12]  438 	clr	c
      0000F5 ED               [12]  439 	mov	a,r5
      0000F6 94 08            [12]  440 	subb	a,#0x08
      0000F8 EE               [12]  441 	mov	a,r6
      0000F9 94 00            [12]  442 	subb	a,#0x00
      0000FB 40 E1            [24]  443 	jc	00103$
                                    444 ;	./src/main.c:45: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000FD 7E 00            [12]  445 	mov	r6,#0x00
      0000FF 7F 00            [12]  446 	mov	r7,#0x00
      000101                        447 00105$:
                                    448 ;	./src/main.c:47: CLK = 0;
                                    449 ;	assignBit
      000101 C2 A0            [12]  450 	clr	_P2_0
                                    451 ;	./src/main.c:48: DOUT=( dat & 0x80);    //get msb and shit left
      000103 E5 3C            [12]  452 	mov	a,_sendbyte_PARM_2
      000105 23               [12]  453 	rl	a
      000106 54 01            [12]  454 	anl	a,#0x01
                                    455 ;	assignBit
      000108 24 FF            [12]  456 	add	a,#0xff
      00010A 92 A2            [24]  457 	mov	_P2_2,c
                                    458 ;	./src/main.c:49: dat <<= 1;
      00010C E5 3C            [12]  459 	mov	a,_sendbyte_PARM_2
      00010E 25 E0            [12]  460 	add	a,acc
      000110 F5 3C            [12]  461 	mov	_sendbyte_PARM_2,a
                                    462 ;	./src/main.c:50: CLK = 1;
                                    463 ;	assignBit
      000112 D2 A0            [12]  464 	setb	_P2_0
                                    465 ;	./src/main.c:45: for (a=0;a<8;a++)      //get first 8 bits(data)
      000114 0E               [12]  466 	inc	r6
      000115 BE 00 01         [24]  467 	cjne	r6,#0x00,00125$
      000118 0F               [12]  468 	inc	r7
      000119                        469 00125$:
      000119 C3               [12]  470 	clr	c
      00011A EE               [12]  471 	mov	a,r6
      00011B 94 08            [12]  472 	subb	a,#0x08
      00011D EF               [12]  473 	mov	a,r7
      00011E 94 00            [12]  474 	subb	a,#0x00
      000120 40 DF            [24]  475 	jc	00105$
                                    476 ;	./src/main.c:52: }
      000122 22               [24]  477 	ret
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'Write7219'
                                    480 ;------------------------------------------------------------
                                    481 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    482 ;address                   Allocated to registers r7 
                                    483 ;------------------------------------------------------------
                                    484 ;	./src/main.c:55: void Write7219(unsigned char address, unsigned char dat)
                                    485 ;	-----------------------------------------
                                    486 ;	 function Write7219
                                    487 ;	-----------------------------------------
      000123                        488 _Write7219:
      000123 AF 82            [24]  489 	mov	r7,dpl
                                    490 ;	./src/main.c:57: LOAD = 0;
                                    491 ;	assignBit
      000125 C2 A1            [12]  492 	clr	_P2_1
                                    493 ;	./src/main.c:58: sendbyte(address, dat);
      000127 85 35 3C         [24]  494 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      00012A 8F 82            [24]  495 	mov	dpl,r7
      00012C 12 00 D8         [24]  496 	lcall	_sendbyte
                                    497 ;	./src/main.c:59: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    498 ;	assignBit
      00012F D2 A1            [12]  499 	setb	_P2_1
                                    500 ;	./src/main.c:60: }
      000131 22               [24]  501 	ret
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'Initial'
                                    504 ;------------------------------------------------------------
                                    505 ;i                         Allocated to registers r7 
                                    506 ;------------------------------------------------------------
                                    507 ;	./src/main.c:65: void Initial(void)
                                    508 ;	-----------------------------------------
                                    509 ;	 function Initial
                                    510 ;	-----------------------------------------
      000132                        511 _Initial:
                                    512 ;	./src/main.c:68: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      000132 75 35 01         [24]  513 	mov	_Write7219_PARM_2,#0x01
      000135 75 82 0C         [24]  514 	mov	dpl,#0x0c
      000138 12 01 23         [24]  515 	lcall	_Write7219
                                    516 ;	./src/main.c:69: Write7219(DISPLAY_TEST,0x00);
      00013B 75 35 00         [24]  517 	mov	_Write7219_PARM_2,#0x00
      00013E 75 82 0F         [24]  518 	mov	dpl,#0x0f
      000141 12 01 23         [24]  519 	lcall	_Write7219
                                    520 ;	./src/main.c:70: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      000144 75 35 00         [24]  521 	mov	_Write7219_PARM_2,#0x00
      000147 75 82 09         [24]  522 	mov	dpl,#0x09
      00014A 12 01 23         [24]  523 	lcall	_Write7219
                                    524 ;	./src/main.c:71: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      00014D 75 35 07         [24]  525 	mov	_Write7219_PARM_2,#0x07
      000150 75 82 0B         [24]  526 	mov	dpl,#0x0b
      000153 12 01 23         [24]  527 	lcall	_Write7219
                                    528 ;	./src/main.c:72: Write7219(INTENSITY,0x00);         //set up intensity
      000156 75 35 00         [24]  529 	mov	_Write7219_PARM_2,#0x00
      000159 75 82 0A         [24]  530 	mov	dpl,#0x0a
      00015C 12 01 23         [24]  531 	lcall	_Write7219
                                    532 ;	./src/main.c:73: for(i=1;i<=8;i++){
      00015F 7F 01            [12]  533 	mov	r7,#0x01
      000161                        534 00102$:
                                    535 ;	./src/main.c:74: Write7219(i,0x00);   //turn off all LED
      000161 75 35 00         [24]  536 	mov	_Write7219_PARM_2,#0x00
      000164 8F 82            [24]  537 	mov	dpl,r7
      000166 C0 07            [24]  538 	push	ar7
      000168 12 01 23         [24]  539 	lcall	_Write7219
      00016B D0 07            [24]  540 	pop	ar7
                                    541 ;	./src/main.c:73: for(i=1;i<=8;i++){
      00016D 0F               [12]  542 	inc	r7
      00016E EF               [12]  543 	mov	a,r7
      00016F 24 F7            [12]  544 	add	a,#0xff - 0x08
      000171 50 EE            [24]  545 	jnc	00102$
                                    546 ;	./src/main.c:76: }
      000173 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'draw'
                                    550 ;------------------------------------------------------------
                                    551 ;mode                      Allocated to registers r6 r7 
                                    552 ;i                         Allocated to registers r7 
                                    553 ;------------------------------------------------------------
                                    554 ;	./src/main.c:79: void draw(int mode){
                                    555 ;	-----------------------------------------
                                    556 ;	 function draw
                                    557 ;	-----------------------------------------
      000174                        558 _draw:
      000174 AE 82            [24]  559 	mov	r6,dpl
      000176 AF 83            [24]  560 	mov	r7,dph
                                    561 ;	./src/main.c:81: if(mode){
      000178 EE               [12]  562 	mov	a,r6
      000179 4F               [12]  563 	orl	a,r7
      00017A 60 24            [24]  564 	jz	00115$
                                    565 ;	./src/main.c:82: for(i = 1;i < 9;i++){
      00017C 7F 01            [12]  566 	mov	r7,#0x01
      00017E                        567 00106$:
                                    568 ;	./src/main.c:83: Write7219(i, display_seg[input[i-1]]);
      00017E 8F 06            [24]  569 	mov	ar6,r7
      000180 1E               [12]  570 	dec	r6
      000181 EE               [12]  571 	mov	a,r6
      000182 2E               [12]  572 	add	a,r6
      000183 24 13            [12]  573 	add	a,#_input
      000185 F9               [12]  574 	mov	r1,a
      000186 87 05            [24]  575 	mov	ar5,@r1
      000188 09               [12]  576 	inc	r1
      000189 19               [12]  577 	dec	r1
      00018A ED               [12]  578 	mov	a,r5
      00018B 24 08            [12]  579 	add	a,#_display_seg
      00018D F9               [12]  580 	mov	r1,a
      00018E 87 35            [24]  581 	mov	_Write7219_PARM_2,@r1
      000190 8F 82            [24]  582 	mov	dpl,r7
      000192 C0 07            [24]  583 	push	ar7
      000194 12 01 23         [24]  584 	lcall	_Write7219
      000197 D0 07            [24]  585 	pop	ar7
                                    586 ;	./src/main.c:82: for(i = 1;i < 9;i++){
      000199 0F               [12]  587 	inc	r7
      00019A BF 09 00         [24]  588 	cjne	r7,#0x09,00131$
      00019D                        589 00131$:
      00019D 40 DF            [24]  590 	jc	00106$
                                    591 ;	./src/main.c:86: for(i = 1;i < 9;i++){
      00019F 22               [24]  592 	ret
      0001A0                        593 00115$:
      0001A0 7F 01            [12]  594 	mov	r7,#0x01
      0001A2                        595 00108$:
                                    596 ;	./src/main.c:87: Write7219(i, display_seg[10]);
      0001A2 85 12 35         [24]  597 	mov	_Write7219_PARM_2,(_display_seg + 0x000a)
      0001A5 8F 82            [24]  598 	mov	dpl,r7
      0001A7 C0 07            [24]  599 	push	ar7
      0001A9 12 01 23         [24]  600 	lcall	_Write7219
      0001AC D0 07            [24]  601 	pop	ar7
                                    602 ;	./src/main.c:86: for(i = 1;i < 9;i++){
      0001AE 0F               [12]  603 	inc	r7
      0001AF BF 09 00         [24]  604 	cjne	r7,#0x09,00133$
      0001B2                        605 00133$:
      0001B2 40 EE            [24]  606 	jc	00108$
                                    607 ;	./src/main.c:90: }
      0001B4 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'main'
                                    611 ;------------------------------------------------------------
                                    612 ;cnt                       Allocated to registers r6 r7 
                                    613 ;i                         Allocated to registers r4 r5 
                                    614 ;i                         Allocated with name '_main_i_196608_27'
                                    615 ;i                         Allocated with name '_main_i_196608_29'
                                    616 ;j                         Allocated with name '_main_j_327680_31'
                                    617 ;j                         Allocated to registers r6 r7 
                                    618 ;------------------------------------------------------------
                                    619 ;	./src/main.c:95: int main(void)
                                    620 ;	-----------------------------------------
                                    621 ;	 function main
                                    622 ;	-----------------------------------------
      0001B5                        623 _main:
                                    624 ;	./src/main.c:98: Initial();
      0001B5 12 01 32         [24]  625 	lcall	_Initial
                                    626 ;	./src/main.c:99: draw(1);
      0001B8 90 00 01         [24]  627 	mov	dptr,#0x0001
      0001BB 12 01 74         [24]  628 	lcall	_draw
                                    629 ;	./src/main.c:100: delay_ms(3000);
      0001BE 90 0B B8         [24]  630 	mov	dptr,#0x0bb8
      0001C1 12 02 ED         [24]  631 	lcall	_delay_ms
                                    632 ;	./src/main.c:102: while (1)
      0001C4                        633 00107$:
                                    634 ;	./src/main.c:104: cnt = 2;
      0001C4 7E 02            [12]  635 	mov	r6,#0x02
      0001C6 7F 00            [12]  636 	mov	r7,#0x00
                                    637 ;	./src/main.c:105: for(unsigned int i=0; i<8; i++){
      0001C8 7C 00            [12]  638 	mov	r4,#0x00
      0001CA 7D 00            [12]  639 	mov	r5,#0x00
      0001CC                        640 00110$:
      0001CC C3               [12]  641 	clr	c
      0001CD EC               [12]  642 	mov	a,r4
      0001CE 94 08            [12]  643 	subb	a,#0x08
      0001D0 ED               [12]  644 	mov	a,r5
      0001D1 94 00            [12]  645 	subb	a,#0x00
      0001D3 50 16            [24]  646 	jnc	00101$
                                    647 ;	./src/main.c:106: input[i] = 10;
      0001D5 EC               [12]  648 	mov	a,r4
      0001D6 2C               [12]  649 	add	a,r4
      0001D7 FA               [12]  650 	mov	r2,a
      0001D8 ED               [12]  651 	mov	a,r5
      0001D9 33               [12]  652 	rlc	a
      0001DA FB               [12]  653 	mov	r3,a
      0001DB EA               [12]  654 	mov	a,r2
      0001DC 24 13            [12]  655 	add	a,#_input
      0001DE F8               [12]  656 	mov	r0,a
      0001DF 76 0A            [12]  657 	mov	@r0,#0x0a
      0001E1 08               [12]  658 	inc	r0
      0001E2 76 00            [12]  659 	mov	@r0,#0x00
                                    660 ;	./src/main.c:105: for(unsigned int i=0; i<8; i++){
      0001E4 0C               [12]  661 	inc	r4
      0001E5 BC 00 E4         [24]  662 	cjne	r4,#0x00,00110$
      0001E8 0D               [12]  663 	inc	r5
      0001E9 80 E1            [24]  664 	sjmp	00110$
      0001EB                        665 00101$:
                                    666 ;	./src/main.c:109: for(unsigned int i=0; i<cnt+1; i++){
      0001EB 74 01            [12]  667 	mov	a,#0x01
      0001ED 2E               [12]  668 	add	a,r6
      0001EE FC               [12]  669 	mov	r4,a
      0001EF E4               [12]  670 	clr	a
      0001F0 3F               [12]  671 	addc	a,r7
      0001F1 FD               [12]  672 	mov	r5,a
      0001F2 E4               [12]  673 	clr	a
      0001F3 F5 36            [12]  674 	mov	_main_i_196608_27,a
      0001F5 F5 37            [12]  675 	mov	(_main_i_196608_27 + 1),a
      0001F7                        676 00113$:
      0001F7 C3               [12]  677 	clr	c
      0001F8 E5 36            [12]  678 	mov	a,_main_i_196608_27
      0001FA 9C               [12]  679 	subb	a,r4
      0001FB E5 37            [12]  680 	mov	a,(_main_i_196608_27 + 1)
      0001FD 9D               [12]  681 	subb	a,r5
      0001FE 50 2E            [24]  682 	jnc	00102$
                                    683 ;	./src/main.c:110: input[cnt-i] = num[i];
      000200 8E 03            [24]  684 	mov	ar3,r6
      000202 AA 36            [24]  685 	mov	r2,_main_i_196608_27
      000204 EB               [12]  686 	mov	a,r3
      000205 C3               [12]  687 	clr	c
      000206 9A               [12]  688 	subb	a,r2
      000207 25 E0            [12]  689 	add	a,acc
      000209 24 13            [12]  690 	add	a,#_input
      00020B F9               [12]  691 	mov	r1,a
      00020C E5 36            [12]  692 	mov	a,_main_i_196608_27
      00020E 25 36            [12]  693 	add	a,_main_i_196608_27
      000210 FA               [12]  694 	mov	r2,a
      000211 E5 37            [12]  695 	mov	a,(_main_i_196608_27 + 1)
      000213 33               [12]  696 	rlc	a
      000214 EA               [12]  697 	mov	a,r2
      000215 24 23            [12]  698 	add	a,#_num
      000217 F8               [12]  699 	mov	r0,a
      000218 86 02            [24]  700 	mov	ar2,@r0
      00021A 08               [12]  701 	inc	r0
      00021B 86 03            [24]  702 	mov	ar3,@r0
      00021D 18               [12]  703 	dec	r0
      00021E A7 02            [24]  704 	mov	@r1,ar2
      000220 09               [12]  705 	inc	r1
      000221 A7 03            [24]  706 	mov	@r1,ar3
      000223 19               [12]  707 	dec	r1
                                    708 ;	./src/main.c:109: for(unsigned int i=0; i<cnt+1; i++){
      000224 05 36            [12]  709 	inc	_main_i_196608_27
      000226 E4               [12]  710 	clr	a
      000227 B5 36 CD         [24]  711 	cjne	a,_main_i_196608_27,00113$
      00022A 05 37            [12]  712 	inc	(_main_i_196608_27 + 1)
      00022C 80 C9            [24]  713 	sjmp	00113$
      00022E                        714 00102$:
                                    715 ;	./src/main.c:112: cnt++;
      00022E 0E               [12]  716 	inc	r6
      00022F BE 00 01         [24]  717 	cjne	r6,#0x00,00189$
      000232 0F               [12]  718 	inc	r7
      000233                        719 00189$:
                                    720 ;	./src/main.c:113: draw(1);
      000233 90 00 01         [24]  721 	mov	dptr,#0x0001
      000236 C0 07            [24]  722 	push	ar7
      000238 C0 06            [24]  723 	push	ar6
      00023A 12 01 74         [24]  724 	lcall	_draw
                                    725 ;	./src/main.c:114: delay_ms(3000);
      00023D 90 0B B8         [24]  726 	mov	dptr,#0x0bb8
      000240 12 02 ED         [24]  727 	lcall	_delay_ms
      000243 D0 06            [24]  728 	pop	ar6
      000245 D0 07            [24]  729 	pop	ar7
                                    730 ;	./src/main.c:115: for (unsigned int i = 0; i < 6; i++)
      000247 E4               [12]  731 	clr	a
      000248 F5 38            [12]  732 	mov	_main_i_196608_29,a
      00024A F5 39            [12]  733 	mov	(_main_i_196608_29 + 1),a
      00024C                        734 00119$:
      00024C C3               [12]  735 	clr	c
      00024D E5 38            [12]  736 	mov	a,_main_i_196608_29
      00024F 94 06            [12]  737 	subb	a,#0x06
      000251 E5 39            [12]  738 	mov	a,(_main_i_196608_29 + 1)
      000253 94 00            [12]  739 	subb	a,#0x00
      000255 50 66            [24]  740 	jnc	00104$
                                    741 ;	./src/main.c:118: for(unsigned int j=0; j<cnt+1; j++){
      000257 74 01            [12]  742 	mov	a,#0x01
      000259 2E               [12]  743 	add	a,r6
      00025A FA               [12]  744 	mov	r2,a
      00025B E4               [12]  745 	clr	a
      00025C 3F               [12]  746 	addc	a,r7
      00025D FB               [12]  747 	mov	r3,a
      00025E E4               [12]  748 	clr	a
      00025F F5 3A            [12]  749 	mov	_main_j_327680_31,a
      000261 F5 3B            [12]  750 	mov	(_main_j_327680_31 + 1),a
      000263                        751 00116$:
      000263 C3               [12]  752 	clr	c
      000264 E5 3A            [12]  753 	mov	a,_main_j_327680_31
      000266 9A               [12]  754 	subb	a,r2
      000267 E5 3B            [12]  755 	mov	a,(_main_j_327680_31 + 1)
      000269 9B               [12]  756 	subb	a,r3
      00026A 50 2E            [24]  757 	jnc	00103$
                                    758 ;	./src/main.c:119: input[cnt-j] = num[j];
      00026C 8E 05            [24]  759 	mov	ar5,r6
      00026E AC 3A            [24]  760 	mov	r4,_main_j_327680_31
      000270 ED               [12]  761 	mov	a,r5
      000271 C3               [12]  762 	clr	c
      000272 9C               [12]  763 	subb	a,r4
      000273 25 E0            [12]  764 	add	a,acc
      000275 24 13            [12]  765 	add	a,#_input
      000277 F9               [12]  766 	mov	r1,a
      000278 E5 3A            [12]  767 	mov	a,_main_j_327680_31
      00027A 25 3A            [12]  768 	add	a,_main_j_327680_31
      00027C FC               [12]  769 	mov	r4,a
      00027D E5 3B            [12]  770 	mov	a,(_main_j_327680_31 + 1)
      00027F 33               [12]  771 	rlc	a
      000280 EC               [12]  772 	mov	a,r4
      000281 24 23            [12]  773 	add	a,#_num
      000283 F8               [12]  774 	mov	r0,a
      000284 86 04            [24]  775 	mov	ar4,@r0
      000286 08               [12]  776 	inc	r0
      000287 86 05            [24]  777 	mov	ar5,@r0
      000289 18               [12]  778 	dec	r0
      00028A A7 04            [24]  779 	mov	@r1,ar4
      00028C 09               [12]  780 	inc	r1
      00028D A7 05            [24]  781 	mov	@r1,ar5
      00028F 19               [12]  782 	dec	r1
                                    783 ;	./src/main.c:118: for(unsigned int j=0; j<cnt+1; j++){
      000290 05 3A            [12]  784 	inc	_main_j_327680_31
      000292 E4               [12]  785 	clr	a
      000293 B5 3A CD         [24]  786 	cjne	a,_main_j_327680_31,00116$
      000296 05 3B            [12]  787 	inc	(_main_j_327680_31 + 1)
      000298 80 C9            [24]  788 	sjmp	00116$
      00029A                        789 00103$:
                                    790 ;	./src/main.c:121: draw(1);
      00029A 90 00 01         [24]  791 	mov	dptr,#0x0001
      00029D C0 07            [24]  792 	push	ar7
      00029F C0 06            [24]  793 	push	ar6
      0002A1 12 01 74         [24]  794 	lcall	_draw
                                    795 ;	./src/main.c:122: delay_ms(3000);
      0002A4 90 0B B8         [24]  796 	mov	dptr,#0x0bb8
      0002A7 12 02 ED         [24]  797 	lcall	_delay_ms
      0002AA D0 06            [24]  798 	pop	ar6
      0002AC D0 07            [24]  799 	pop	ar7
                                    800 ;	./src/main.c:123: cnt++;
      0002AE 0E               [12]  801 	inc	r6
      0002AF BE 00 01         [24]  802 	cjne	r6,#0x00,00193$
      0002B2 0F               [12]  803 	inc	r7
      0002B3                        804 00193$:
                                    805 ;	./src/main.c:115: for (unsigned int i = 0; i < 6; i++)
      0002B3 05 38            [12]  806 	inc	_main_i_196608_29
      0002B5 E4               [12]  807 	clr	a
      0002B6 B5 38 93         [24]  808 	cjne	a,_main_i_196608_29,00119$
      0002B9 05 39            [12]  809 	inc	(_main_i_196608_29 + 1)
      0002BB 80 8F            [24]  810 	sjmp	00119$
      0002BD                        811 00104$:
                                    812 ;	./src/main.c:126: for (unsigned int j=1; j<7; j++)
      0002BD 7E 01            [12]  813 	mov	r6,#0x01
      0002BF 7F 00            [12]  814 	mov	r7,#0x00
      0002C1                        815 00122$:
      0002C1 C3               [12]  816 	clr	c
      0002C2 EE               [12]  817 	mov	a,r6
      0002C3 94 07            [12]  818 	subb	a,#0x07
      0002C5 EF               [12]  819 	mov	a,r7
      0002C6 94 00            [12]  820 	subb	a,#0x00
      0002C8 40 03            [24]  821 	jc	00195$
      0002CA 02 01 C4         [24]  822 	ljmp	00107$
      0002CD                        823 00195$:
                                    824 ;	./src/main.c:128: draw(j%2);
      0002CD 74 01            [12]  825 	mov	a,#0x01
      0002CF 5E               [12]  826 	anl	a,r6
      0002D0 F5 82            [12]  827 	mov	dpl,a
      0002D2 75 83 00         [24]  828 	mov	dph,#0x00
      0002D5 C0 07            [24]  829 	push	ar7
      0002D7 C0 06            [24]  830 	push	ar6
      0002D9 12 01 74         [24]  831 	lcall	_draw
                                    832 ;	./src/main.c:129: delay_ms(3000);
      0002DC 90 0B B8         [24]  833 	mov	dptr,#0x0bb8
      0002DF 12 02 ED         [24]  834 	lcall	_delay_ms
      0002E2 D0 06            [24]  835 	pop	ar6
      0002E4 D0 07            [24]  836 	pop	ar7
                                    837 ;	./src/main.c:126: for (unsigned int j=1; j<7; j++)
      0002E6 0E               [12]  838 	inc	r6
      0002E7 BE 00 D7         [24]  839 	cjne	r6,#0x00,00122$
      0002EA 0F               [12]  840 	inc	r7
                                    841 ;	./src/main.c:132: }
      0002EB 80 D4            [24]  842 	sjmp	00122$
                                    843 ;------------------------------------------------------------
                                    844 ;Allocation info for local variables in function 'delay_ms'
                                    845 ;------------------------------------------------------------
                                    846 ;input_ms                  Allocated to registers r6 r7 
                                    847 ;cnt1                      Allocated to registers r4 r5 
                                    848 ;cnt2                      Allocated to registers r3 
                                    849 ;------------------------------------------------------------
                                    850 ;	./src/main.c:134: void delay_ms(unsigned int input_ms)
                                    851 ;	-----------------------------------------
                                    852 ;	 function delay_ms
                                    853 ;	-----------------------------------------
      0002ED                        854 _delay_ms:
      0002ED AE 82            [24]  855 	mov	r6,dpl
      0002EF AF 83            [24]  856 	mov	r7,dph
                                    857 ;	./src/main.c:139: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      0002F1 7C 00            [12]  858 	mov	r4,#0x00
      0002F3 7D 00            [12]  859 	mov	r5,#0x00
      0002F5                        860 00107$:
      0002F5 C3               [12]  861 	clr	c
      0002F6 EC               [12]  862 	mov	a,r4
      0002F7 9E               [12]  863 	subb	a,r6
      0002F8 ED               [12]  864 	mov	a,r5
      0002F9 9F               [12]  865 	subb	a,r7
      0002FA 50 0B            [24]  866 	jnc	00109$
                                    867 ;	./src/main.c:141: for(cnt2 = 0; cnt2 < 90; cnt2 ++);
      0002FC 7B 5A            [12]  868 	mov	r3,#0x5a
      0002FE                        869 00105$:
      0002FE DB FE            [24]  870 	djnz	r3,00105$
                                    871 ;	./src/main.c:139: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      000300 0C               [12]  872 	inc	r4
      000301 BC 00 F1         [24]  873 	cjne	r4,#0x00,00107$
      000304 0D               [12]  874 	inc	r5
      000305 80 EE            [24]  875 	sjmp	00107$
      000307                        876 00109$:
                                    877 ;	./src/main.c:143: }
      000307 22               [24]  878 	ret
                                    879 	.area CSEG    (CODE)
                                    880 	.area CONST   (CODE)
                                    881 	.area XINIT   (CODE)
                                    882 	.area CABS    (ABS,CODE)
