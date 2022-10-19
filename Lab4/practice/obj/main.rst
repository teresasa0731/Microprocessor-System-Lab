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
      000008                        239 _display_seg:
      000008                        240 	.ds 11
      000013                        241 _print::
      000013                        242 	.ds 8
      00001B                        243 _count::
      00001B                        244 	.ds 2
      00001D                        245 _deg::
      00001D                        246 	.ds 2
      00001F                        247 _hall_cnt::
      00001F                        248 	.ds 1
      000020                        249 _hall_last_state::
      000020                        250 	.ds 1
      000021                        251 _time::
      000021                        252 	.ds 4
      000025                        253 _a::
      000025                        254 	.ds 2
      000027                        255 _Write7219_PARM_2:
      000027                        256 	.ds 1
                                    257 ;--------------------------------------------------------
                                    258 ; overlayable items in internal ram
                                    259 ;--------------------------------------------------------
                                    260 	.area	OSEG    (OVR,DATA)
      000028                        261 _sendbyte_PARM_2:
      000028                        262 	.ds 1
                                    263 	.area	OSEG    (OVR,DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; Stack segment in internal ram
                                    266 ;--------------------------------------------------------
                                    267 	.area SSEG
      00002C                        268 __start__stack:
      00002C                        269 	.ds	1
                                    270 
                                    271 ;--------------------------------------------------------
                                    272 ; indirectly addressable internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area ISEG    (DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area IABS    (ABS,DATA)
                                    279 	.area IABS    (ABS,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; bit data
                                    282 ;--------------------------------------------------------
                                    283 	.area BSEG    (BIT)
                                    284 ;--------------------------------------------------------
                                    285 ; paged external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area PSEG    (PAG,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; uninitialized external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XSEG    (XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; absolute external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XABS    (ABS,XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; initialized external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XISEG   (XDATA)
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT0 (CODE)
                                    302 	.area GSINIT1 (CODE)
                                    303 	.area GSINIT2 (CODE)
                                    304 	.area GSINIT3 (CODE)
                                    305 	.area GSINIT4 (CODE)
                                    306 	.area GSINIT5 (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area CSEG    (CODE)
                                    310 ;--------------------------------------------------------
                                    311 ; interrupt vector
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
      000000                        314 __interrupt_vect:
      000000 02 00 11         [24]  315 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  316 	reti
      000004                        317 	.ds	7
      00000B 02 02 62         [24]  318 	ljmp	_T0_isr
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
                                    332 ;	./src/main.c:30: static unsigned char display_seg[] = {
      00006A 75 08 7E         [24]  333 	mov	_display_seg,#0x7e
      00006D 75 09 30         [24]  334 	mov	(_display_seg + 0x0001),#0x30
      000070 75 0A 6D         [24]  335 	mov	(_display_seg + 0x0002),#0x6d
      000073 75 0B 79         [24]  336 	mov	(_display_seg + 0x0003),#0x79
      000076 75 0C 33         [24]  337 	mov	(_display_seg + 0x0004),#0x33
      000079 75 0D 5B         [24]  338 	mov	(_display_seg + 0x0005),#0x5b
      00007C 75 0E 5F         [24]  339 	mov	(_display_seg + 0x0006),#0x5f
      00007F 75 0F 70         [24]  340 	mov	(_display_seg + 0x0007),#0x70
      000082 75 10 7F         [24]  341 	mov	(_display_seg + 0x0008),#0x7f
      000085 75 11 7B         [24]  342 	mov	(_display_seg + 0x0009),#0x7b
      000088 75 12 00         [24]  343 	mov	(_display_seg + 0x000a),#0x00
                                    344 ;	./src/main.c:45: int count = 0;
      00008B E4               [12]  345 	clr	a
      00008C F5 1B            [12]  346 	mov	_count,a
      00008E F5 1C            [12]  347 	mov	(_count + 1),a
                                    348 ;	./src/main.c:46: int deg = 0;
      000090 F5 1D            [12]  349 	mov	_deg,a
      000092 F5 1E            [12]  350 	mov	(_deg + 1),a
                                    351 ;	./src/main.c:47: char hall_cnt = 0x00;	// Count the # of Hall sensor activations
                                    352 ;	1-genFromRTrack replaced	mov	_hall_cnt,#0x00
      000094 F5 1F            [12]  353 	mov	_hall_cnt,a
                                    354 ;	./src/main.c:48: char hall_last_state = 0;							// Record activation and deactivation of Hall sensor	
                                    355 ;	1-genFromRTrack replaced	mov	_hall_last_state,#0x00
      000096 F5 20            [12]  356 	mov	_hall_last_state,a
                                    357 ;	./src/main.c:49: unsigned long int time = 0;
      000098 F5 21            [12]  358 	mov	_time,a
      00009A F5 22            [12]  359 	mov	(_time + 1),a
      00009C F5 23            [12]  360 	mov	(_time + 2),a
      00009E F5 24            [12]  361 	mov	(_time + 3),a
                                    362 	.area GSFINAL (CODE)
      0000A0 02 00 0E         [24]  363 	ljmp	__sdcc_program_startup
                                    364 ;--------------------------------------------------------
                                    365 ; Home
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME    (CODE)
                                    368 	.area HOME    (CODE)
      00000E                        369 __sdcc_program_startup:
      00000E 02 02 C2         [24]  370 	ljmp	_main
                                    371 ;	return from main will return to caller
                                    372 ;--------------------------------------------------------
                                    373 ; code
                                    374 ;--------------------------------------------------------
                                    375 	.area CSEG    (CODE)
                                    376 ;------------------------------------------------------------
                                    377 ;Allocation info for local variables in function 'sendbyte'
                                    378 ;------------------------------------------------------------
                                    379 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    380 ;address                   Allocated to registers r7 
                                    381 ;------------------------------------------------------------
                                    382 ;	./src/main.c:54: void sendbyte(unsigned char address,unsigned char dat){
                                    383 ;	-----------------------------------------
                                    384 ;	 function sendbyte
                                    385 ;	-----------------------------------------
      0000A3                        386 _sendbyte:
                           000007   387 	ar7 = 0x07
                           000006   388 	ar6 = 0x06
                           000005   389 	ar5 = 0x05
                           000004   390 	ar4 = 0x04
                           000003   391 	ar3 = 0x03
                           000002   392 	ar2 = 0x02
                           000001   393 	ar1 = 0x01
                           000000   394 	ar0 = 0x00
      0000A3 AF 82            [24]  395 	mov	r7,dpl
                                    396 ;	./src/main.c:55: for (a=0;a<8;a++)        //get last 8 bits(address)
      0000A5 E4               [12]  397 	clr	a
      0000A6 F5 25            [12]  398 	mov	_a,a
      0000A8 F5 26            [12]  399 	mov	(_a + 1),a
      0000AA                        400 00103$:
                                    401 ;	./src/main.c:57: CLK = 0;
                                    402 ;	assignBit
      0000AA C2 A0            [12]  403 	clr	_P2_0
                                    404 ;	./src/main.c:58: DOUT = ( address & 0x80);   //get msb and shift left
      0000AC EF               [12]  405 	mov	a,r7
      0000AD 23               [12]  406 	rl	a
      0000AE 54 01            [12]  407 	anl	a,#0x01
                                    408 ;	assignBit
      0000B0 24 FF            [12]  409 	add	a,#0xff
      0000B2 92 A2            [24]  410 	mov	_P2_2,c
                                    411 ;	./src/main.c:59: address <<= 1;
      0000B4 8F 06            [24]  412 	mov	ar6,r7
      0000B6 EE               [12]  413 	mov	a,r6
      0000B7 2E               [12]  414 	add	a,r6
      0000B8 FF               [12]  415 	mov	r7,a
                                    416 ;	./src/main.c:60: CLK = 1;
                                    417 ;	assignBit
      0000B9 D2 A0            [12]  418 	setb	_P2_0
                                    419 ;	./src/main.c:55: for (a=0;a<8;a++)        //get last 8 bits(address)
      0000BB 05 25            [12]  420 	inc	_a
      0000BD E4               [12]  421 	clr	a
      0000BE B5 25 02         [24]  422 	cjne	a,_a,00121$
      0000C1 05 26            [12]  423 	inc	(_a + 1)
      0000C3                        424 00121$:
      0000C3 C3               [12]  425 	clr	c
      0000C4 E5 25            [12]  426 	mov	a,_a
      0000C6 94 08            [12]  427 	subb	a,#0x08
      0000C8 E5 26            [12]  428 	mov	a,(_a + 1)
      0000CA 94 00            [12]  429 	subb	a,#0x00
      0000CC 40 DC            [24]  430 	jc	00103$
                                    431 ;	./src/main.c:62: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000CE E4               [12]  432 	clr	a
      0000CF F5 25            [12]  433 	mov	_a,a
      0000D1 F5 26            [12]  434 	mov	(_a + 1),a
      0000D3                        435 00105$:
                                    436 ;	./src/main.c:64: CLK = 0;
                                    437 ;	assignBit
      0000D3 C2 A0            [12]  438 	clr	_P2_0
                                    439 ;	./src/main.c:65: DOUT=( dat & 0x80);    //get msb and shit left
      0000D5 E5 28            [12]  440 	mov	a,_sendbyte_PARM_2
      0000D7 23               [12]  441 	rl	a
      0000D8 54 01            [12]  442 	anl	a,#0x01
                                    443 ;	assignBit
      0000DA 24 FF            [12]  444 	add	a,#0xff
      0000DC 92 A2            [24]  445 	mov	_P2_2,c
                                    446 ;	./src/main.c:66: dat <<= 1;
      0000DE E5 28            [12]  447 	mov	a,_sendbyte_PARM_2
      0000E0 25 E0            [12]  448 	add	a,acc
      0000E2 F5 28            [12]  449 	mov	_sendbyte_PARM_2,a
                                    450 ;	./src/main.c:67: CLK = 1;
                                    451 ;	assignBit
      0000E4 D2 A0            [12]  452 	setb	_P2_0
                                    453 ;	./src/main.c:62: for (a=0;a<8;a++)      //get first 8 bits(data)
      0000E6 05 25            [12]  454 	inc	_a
      0000E8 E4               [12]  455 	clr	a
      0000E9 B5 25 02         [24]  456 	cjne	a,_a,00123$
      0000EC 05 26            [12]  457 	inc	(_a + 1)
      0000EE                        458 00123$:
      0000EE C3               [12]  459 	clr	c
      0000EF E5 25            [12]  460 	mov	a,_a
      0000F1 94 08            [12]  461 	subb	a,#0x08
      0000F3 E5 26            [12]  462 	mov	a,(_a + 1)
      0000F5 94 00            [12]  463 	subb	a,#0x00
      0000F7 40 DA            [24]  464 	jc	00105$
                                    465 ;	./src/main.c:69: }
      0000F9 22               [24]  466 	ret
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'Write7219'
                                    469 ;------------------------------------------------------------
                                    470 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    471 ;address                   Allocated to registers r7 
                                    472 ;cnt                       Allocated to registers r6 
                                    473 ;------------------------------------------------------------
                                    474 ;	./src/main.c:72: void Write7219(unsigned char address, unsigned char dat)
                                    475 ;	-----------------------------------------
                                    476 ;	 function Write7219
                                    477 ;	-----------------------------------------
      0000FA                        478 _Write7219:
      0000FA AF 82            [24]  479 	mov	r7,dpl
                                    480 ;	./src/main.c:75: LOAD = 0;
                                    481 ;	assignBit
      0000FC C2 A1            [12]  482 	clr	_P2_1
                                    483 ;	./src/main.c:77: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000FE 7E 01            [12]  484 	mov	r6,#0x01
      000100                        485 00102$:
                                    486 ;	./src/main.c:79: sendbyte(address, dat);
      000100 85 27 28         [24]  487 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      000103 8F 82            [24]  488 	mov	dpl,r7
      000105 C0 07            [24]  489 	push	ar7
      000107 C0 06            [24]  490 	push	ar6
      000109 12 00 A3         [24]  491 	lcall	_sendbyte
      00010C D0 06            [24]  492 	pop	ar6
      00010E D0 07            [24]  493 	pop	ar7
                                    494 ;	./src/main.c:77: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      000110 0E               [12]  495 	inc	r6
      000111 EE               [12]  496 	mov	a,r6
      000112 24 FE            [12]  497 	add	a,#0xff - 0x01
      000114 50 EA            [24]  498 	jnc	00102$
                                    499 ;	./src/main.c:82: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    500 ;	assignBit
      000116 D2 A1            [12]  501 	setb	_P2_1
                                    502 ;	./src/main.c:83: }
      000118 22               [24]  503 	ret
                                    504 ;------------------------------------------------------------
                                    505 ;Allocation info for local variables in function 'Initial'
                                    506 ;------------------------------------------------------------
                                    507 ;i                         Allocated to registers r7 
                                    508 ;------------------------------------------------------------
                                    509 ;	./src/main.c:86: void Initial(void)
                                    510 ;	-----------------------------------------
                                    511 ;	 function Initial
                                    512 ;	-----------------------------------------
      000119                        513 _Initial:
                                    514 ;	./src/main.c:89: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
      000119 75 27 01         [24]  515 	mov	_Write7219_PARM_2,#0x01
      00011C 75 82 0C         [24]  516 	mov	dpl,#0x0c
      00011F 12 00 FA         [24]  517 	lcall	_Write7219
                                    518 ;	./src/main.c:90: Write7219(DISPLAY_TEST,0x00);
      000122 75 27 00         [24]  519 	mov	_Write7219_PARM_2,#0x00
      000125 75 82 0F         [24]  520 	mov	dpl,#0x0f
      000128 12 00 FA         [24]  521 	lcall	_Write7219
                                    522 ;	./src/main.c:91: Write7219(DECODE_MODE,0x00);       //select non-decode mode
      00012B 75 27 00         [24]  523 	mov	_Write7219_PARM_2,#0x00
      00012E 75 82 09         [24]  524 	mov	dpl,#0x09
      000131 12 00 FA         [24]  525 	lcall	_Write7219
                                    526 ;	./src/main.c:92: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
      000134 75 27 07         [24]  527 	mov	_Write7219_PARM_2,#0x07
      000137 75 82 0B         [24]  528 	mov	dpl,#0x0b
      00013A 12 00 FA         [24]  529 	lcall	_Write7219
                                    530 ;	./src/main.c:93: Write7219(INTENSITY,0x00);         //set up intensity
      00013D 75 27 00         [24]  531 	mov	_Write7219_PARM_2,#0x00
      000140 75 82 0A         [24]  532 	mov	dpl,#0x0a
      000143 12 00 FA         [24]  533 	lcall	_Write7219
                                    534 ;	./src/main.c:94: for(i=1;i<=8;i++){
      000146 7F 01            [12]  535 	mov	r7,#0x01
      000148                        536 00102$:
                                    537 ;	./src/main.c:95: Write7219(i,0x00);   //turn off all LED
      000148 75 27 00         [24]  538 	mov	_Write7219_PARM_2,#0x00
      00014B 8F 82            [24]  539 	mov	dpl,r7
      00014D C0 07            [24]  540 	push	ar7
      00014F 12 00 FA         [24]  541 	lcall	_Write7219
      000152 D0 07            [24]  542 	pop	ar7
                                    543 ;	./src/main.c:94: for(i=1;i<=8;i++){
      000154 0F               [12]  544 	inc	r7
      000155 EF               [12]  545 	mov	a,r7
      000156 24 F7            [12]  546 	add	a,#0xff - 0x08
      000158 50 EE            [24]  547 	jnc	00102$
                                    548 ;	./src/main.c:97: }
      00015A 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'draw'
                                    552 ;------------------------------------------------------------
                                    553 ;i                         Allocated to registers r6 r7 
                                    554 ;------------------------------------------------------------
                                    555 ;	./src/main.c:100: void draw(void){
                                    556 ;	-----------------------------------------
                                    557 ;	 function draw
                                    558 ;	-----------------------------------------
      00015B                        559 _draw:
                                    560 ;	./src/main.c:101: for(unsigned int i = 1;i < 9;i++){
      00015B 7E 01            [12]  561 	mov	r6,#0x01
      00015D 7F 00            [12]  562 	mov	r7,#0x00
      00015F                        563 00103$:
      00015F C3               [12]  564 	clr	c
      000160 EE               [12]  565 	mov	a,r6
      000161 94 09            [12]  566 	subb	a,#0x09
      000163 EF               [12]  567 	mov	a,r7
      000164 94 00            [12]  568 	subb	a,#0x00
      000166 50 1F            [24]  569 	jnc	00105$
                                    570 ;	./src/main.c:102: Write7219(i, print[i-1]);
      000168 8E 05            [24]  571 	mov	ar5,r6
      00016A 8D 04            [24]  572 	mov	ar4,r5
      00016C EC               [12]  573 	mov	a,r4
      00016D 14               [12]  574 	dec	a
      00016E 24 13            [12]  575 	add	a,#_print
      000170 F9               [12]  576 	mov	r1,a
      000171 87 27            [24]  577 	mov	_Write7219_PARM_2,@r1
      000173 8D 82            [24]  578 	mov	dpl,r5
      000175 C0 07            [24]  579 	push	ar7
      000177 C0 06            [24]  580 	push	ar6
      000179 12 00 FA         [24]  581 	lcall	_Write7219
      00017C D0 06            [24]  582 	pop	ar6
      00017E D0 07            [24]  583 	pop	ar7
                                    584 ;	./src/main.c:101: for(unsigned int i = 1;i < 9;i++){
      000180 0E               [12]  585 	inc	r6
      000181 BE 00 DB         [24]  586 	cjne	r6,#0x00,00103$
      000184 0F               [12]  587 	inc	r7
      000185 80 D8            [24]  588 	sjmp	00103$
      000187                        589 00105$:
                                    590 ;	./src/main.c:105: }
      000187 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'countTime'
                                    594 ;------------------------------------------------------------
                                    595 ;num                       Allocated to registers r2 r3 
                                    596 ;i                         Allocated to registers r6 r7 
                                    597 ;------------------------------------------------------------
                                    598 ;	./src/main.c:107: void countTime(void){
                                    599 ;	-----------------------------------------
                                    600 ;	 function countTime
                                    601 ;	-----------------------------------------
      000188                        602 _countTime:
                                    603 ;	./src/main.c:109: if(time < 10000)
      000188 C3               [12]  604 	clr	c
      000189 E5 21            [12]  605 	mov	a,_time
      00018B 94 10            [12]  606 	subb	a,#0x10
      00018D E5 22            [12]  607 	mov	a,(_time + 1)
      00018F 94 27            [12]  608 	subb	a,#0x27
      000191 E5 23            [12]  609 	mov	a,(_time + 2)
      000193 94 00            [12]  610 	subb	a,#0x00
      000195 E5 24            [12]  611 	mov	a,(_time + 3)
      000197 94 00            [12]  612 	subb	a,#0x00
      000199 50 08            [24]  613 	jnc	00110$
                                    614 ;	./src/main.c:110: deg = 4;
      00019B 75 1D 04         [24]  615 	mov	_deg,#0x04
      00019E 75 1E 00         [24]  616 	mov	(_deg + 1),#0x00
      0001A1 80 4F            [24]  617 	sjmp	00123$
      0001A3                        618 00110$:
                                    619 ;	./src/main.c:111: else if(time < 100000)
      0001A3 C3               [12]  620 	clr	c
      0001A4 E5 21            [12]  621 	mov	a,_time
      0001A6 94 A0            [12]  622 	subb	a,#0xa0
      0001A8 E5 22            [12]  623 	mov	a,(_time + 1)
      0001AA 94 86            [12]  624 	subb	a,#0x86
      0001AC E5 23            [12]  625 	mov	a,(_time + 2)
      0001AE 94 01            [12]  626 	subb	a,#0x01
      0001B0 E5 24            [12]  627 	mov	a,(_time + 3)
      0001B2 94 00            [12]  628 	subb	a,#0x00
      0001B4 50 08            [24]  629 	jnc	00107$
                                    630 ;	./src/main.c:112: deg = 5;
      0001B6 75 1D 05         [24]  631 	mov	_deg,#0x05
      0001B9 75 1E 00         [24]  632 	mov	(_deg + 1),#0x00
      0001BC 80 34            [24]  633 	sjmp	00123$
      0001BE                        634 00107$:
                                    635 ;	./src/main.c:113: else if(time < 1000000)
      0001BE C3               [12]  636 	clr	c
      0001BF E5 21            [12]  637 	mov	a,_time
      0001C1 94 40            [12]  638 	subb	a,#0x40
      0001C3 E5 22            [12]  639 	mov	a,(_time + 1)
      0001C5 94 42            [12]  640 	subb	a,#0x42
      0001C7 E5 23            [12]  641 	mov	a,(_time + 2)
      0001C9 94 0F            [12]  642 	subb	a,#0x0f
      0001CB E5 24            [12]  643 	mov	a,(_time + 3)
      0001CD 94 00            [12]  644 	subb	a,#0x00
      0001CF 50 08            [24]  645 	jnc	00104$
                                    646 ;	./src/main.c:114: deg = 6;
      0001D1 75 1D 06         [24]  647 	mov	_deg,#0x06
      0001D4 75 1E 00         [24]  648 	mov	(_deg + 1),#0x00
      0001D7 80 19            [24]  649 	sjmp	00123$
      0001D9                        650 00104$:
                                    651 ;	./src/main.c:115: else if(time < 10000000)
      0001D9 C3               [12]  652 	clr	c
      0001DA E5 21            [12]  653 	mov	a,_time
      0001DC 94 80            [12]  654 	subb	a,#0x80
      0001DE E5 22            [12]  655 	mov	a,(_time + 1)
      0001E0 94 96            [12]  656 	subb	a,#0x96
      0001E2 E5 23            [12]  657 	mov	a,(_time + 2)
      0001E4 94 98            [12]  658 	subb	a,#0x98
      0001E6 E5 24            [12]  659 	mov	a,(_time + 3)
      0001E8 94 00            [12]  660 	subb	a,#0x00
      0001EA 50 06            [24]  661 	jnc	00123$
                                    662 ;	./src/main.c:116: deg = 7;
      0001EC 75 1D 07         [24]  663 	mov	_deg,#0x07
      0001EF 75 1E 00         [24]  664 	mov	(_deg + 1),#0x00
                                    665 ;	./src/main.c:118: for(unsigned int i = 0; i < deg; i++){
      0001F2                        666 00123$:
      0001F2 7E 00            [12]  667 	mov	r6,#0x00
      0001F4 7F 00            [12]  668 	mov	r7,#0x00
      0001F6                        669 00114$:
      0001F6 AC 1D            [24]  670 	mov	r4,_deg
      0001F8 AD 1E            [24]  671 	mov	r5,(_deg + 1)
      0001FA C3               [12]  672 	clr	c
      0001FB EE               [12]  673 	mov	a,r6
      0001FC 9C               [12]  674 	subb	a,r4
      0001FD EF               [12]  675 	mov	a,r7
      0001FE 9D               [12]  676 	subb	a,r5
      0001FF 50 60            [24]  677 	jnc	00116$
                                    678 ;	./src/main.c:119: num = time % 10;
      000201 75 28 0A         [24]  679 	mov	__modulong_PARM_2,#0x0a
      000204 E4               [12]  680 	clr	a
      000205 F5 29            [12]  681 	mov	(__modulong_PARM_2 + 1),a
      000207 F5 2A            [12]  682 	mov	(__modulong_PARM_2 + 2),a
      000209 F5 2B            [12]  683 	mov	(__modulong_PARM_2 + 3),a
      00020B 85 21 82         [24]  684 	mov	dpl,_time
      00020E 85 22 83         [24]  685 	mov	dph,(_time + 1)
      000211 85 23 F0         [24]  686 	mov	b,(_time + 2)
      000214 E5 24            [12]  687 	mov	a,(_time + 3)
      000216 C0 07            [24]  688 	push	ar7
      000218 C0 06            [24]  689 	push	ar6
      00021A 12 02 FD         [24]  690 	lcall	__modulong
      00021D AA 82            [24]  691 	mov	r2,dpl
      00021F D0 06            [24]  692 	pop	ar6
      000221 D0 07            [24]  693 	pop	ar7
                                    694 ;	./src/main.c:120: print[i] = display_seg[num];
      000223 EE               [12]  695 	mov	a,r6
      000224 24 13            [12]  696 	add	a,#_print
      000226 F9               [12]  697 	mov	r1,a
      000227 EA               [12]  698 	mov	a,r2
      000228 24 08            [12]  699 	add	a,#_display_seg
      00022A F8               [12]  700 	mov	r0,a
      00022B 86 05            [24]  701 	mov	ar5,@r0
      00022D A7 05            [24]  702 	mov	@r1,ar5
                                    703 ;	./src/main.c:121: time = time / 10;
      00022F 75 28 0A         [24]  704 	mov	__divulong_PARM_2,#0x0a
      000232 E4               [12]  705 	clr	a
      000233 F5 29            [12]  706 	mov	(__divulong_PARM_2 + 1),a
      000235 F5 2A            [12]  707 	mov	(__divulong_PARM_2 + 2),a
      000237 F5 2B            [12]  708 	mov	(__divulong_PARM_2 + 3),a
      000239 85 21 82         [24]  709 	mov	dpl,_time
      00023C 85 22 83         [24]  710 	mov	dph,(_time + 1)
      00023F 85 23 F0         [24]  711 	mov	b,(_time + 2)
      000242 E5 24            [12]  712 	mov	a,(_time + 3)
      000244 C0 07            [24]  713 	push	ar7
      000246 C0 06            [24]  714 	push	ar6
      000248 12 03 80         [24]  715 	lcall	__divulong
      00024B 85 82 21         [24]  716 	mov	_time,dpl
      00024E 85 83 22         [24]  717 	mov	(_time + 1),dph
      000251 85 F0 23         [24]  718 	mov	(_time + 2),b
      000254 F5 24            [12]  719 	mov	(_time + 3),a
      000256 D0 06            [24]  720 	pop	ar6
      000258 D0 07            [24]  721 	pop	ar7
                                    722 ;	./src/main.c:118: for(unsigned int i = 0; i < deg; i++){
      00025A 0E               [12]  723 	inc	r6
      00025B BE 00 98         [24]  724 	cjne	r6,#0x00,00114$
      00025E 0F               [12]  725 	inc	r7
      00025F 80 95            [24]  726 	sjmp	00114$
      000261                        727 00116$:
                                    728 ;	./src/main.c:123: }
      000261 22               [24]  729 	ret
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'T0_isr'
                                    732 ;------------------------------------------------------------
                                    733 ;	./src/main.c:126: void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
                                    734 ;	-----------------------------------------
                                    735 ;	 function T0_isr
                                    736 ;	-----------------------------------------
      000262                        737 _T0_isr:
      000262 C0 E0            [24]  738 	push	acc
      000264 C0 07            [24]  739 	push	ar7
      000266 C0 D0            [24]  740 	push	psw
      000268 75 D0 00         [24]  741 	mov	psw,#0x00
                                    742 ;	./src/main.c:129: TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
      00026B 75 8C FC         [24]  743 	mov	_TH0,#0xfc
                                    744 ;	./src/main.c:130: TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
      00026E 75 8A 18         [24]  745 	mov	_TL0,#0x18
                                    746 ;	./src/main.c:132: time = time + 1;
      000271 05 21            [12]  747 	inc	_time
      000273 E4               [12]  748 	clr	a
      000274 B5 21 0C         [24]  749 	cjne	a,_time,00114$
      000277 05 22            [12]  750 	inc	(_time + 1)
      000279 B5 22 07         [24]  751 	cjne	a,(_time + 1),00114$
      00027C 05 23            [12]  752 	inc	(_time + 2)
      00027E B5 23 02         [24]  753 	cjne	a,(_time + 2),00114$
      000281 05 24            [12]  754 	inc	(_time + 3)
      000283                        755 00114$:
                                    756 ;	./src/main.c:133: if((Hall_In == 0) && (hall_last_state == 1))	// Falling edge of hall sensor signal (activated)
      000283 20 A4 0B         [24]  757 	jb	_P2_4,00102$
      000286 74 01            [12]  758 	mov	a,#0x01
      000288 B5 20 06         [24]  759 	cjne	a,_hall_last_state,00102$
                                    760 ;	./src/main.c:135: hall_cnt = hall_cnt + 1;					// Count 1 activation
      00028B E5 1F            [12]  761 	mov	a,_hall_cnt
      00028D FF               [12]  762 	mov	r7,a
      00028E 04               [12]  763 	inc	a
      00028F F5 1F            [12]  764 	mov	_hall_cnt,a
      000291                        765 00102$:
                                    766 ;	./src/main.c:138: hall_last_state = Hall_In;						// Update last Hall sensor state
      000291 A2 A4            [12]  767 	mov	c,_P2_4
      000293 E4               [12]  768 	clr	a
      000294 33               [12]  769 	rlc	a
      000295 F5 20            [12]  770 	mov	_hall_last_state,a
                                    771 ;	./src/main.c:139: }
      000297 D0 D0            [24]  772 	pop	psw
      000299 D0 07            [24]  773 	pop	ar7
      00029B D0 E0            [24]  774 	pop	acc
      00029D 32               [24]  775 	reti
                                    776 ;	eliminated unneeded push/pop dpl
                                    777 ;	eliminated unneeded push/pop dph
                                    778 ;	eliminated unneeded push/pop b
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'Clean'
                                    781 ;------------------------------------------------------------
                                    782 ;i                         Allocated to registers r6 r7 
                                    783 ;------------------------------------------------------------
                                    784 ;	./src/main.c:142: void Clean(void){
                                    785 ;	-----------------------------------------
                                    786 ;	 function Clean
                                    787 ;	-----------------------------------------
      00029E                        788 _Clean:
                                    789 ;	./src/main.c:143: for(unsigned int i = 0; i < 8; i++){
      00029E 7E 00            [12]  790 	mov	r6,#0x00
      0002A0 7F 00            [12]  791 	mov	r7,#0x00
      0002A2                        792 00103$:
      0002A2 C3               [12]  793 	clr	c
      0002A3 EE               [12]  794 	mov	a,r6
      0002A4 94 08            [12]  795 	subb	a,#0x08
      0002A6 EF               [12]  796 	mov	a,r7
      0002A7 94 00            [12]  797 	subb	a,#0x00
      0002A9 50 0D            [24]  798 	jnc	00101$
                                    799 ;	./src/main.c:144: print[i] = 0x00;
      0002AB EE               [12]  800 	mov	a,r6
      0002AC 24 13            [12]  801 	add	a,#_print
      0002AE F8               [12]  802 	mov	r0,a
      0002AF 76 00            [12]  803 	mov	@r0,#0x00
                                    804 ;	./src/main.c:143: for(unsigned int i = 0; i < 8; i++){
      0002B1 0E               [12]  805 	inc	r6
      0002B2 BE 00 ED         [24]  806 	cjne	r6,#0x00,00103$
      0002B5 0F               [12]  807 	inc	r7
      0002B6 80 EA            [24]  808 	sjmp	00103$
      0002B8                        809 00101$:
                                    810 ;	./src/main.c:146: time = 0;
      0002B8 E4               [12]  811 	clr	a
      0002B9 F5 21            [12]  812 	mov	_time,a
      0002BB F5 22            [12]  813 	mov	(_time + 1),a
      0002BD F5 23            [12]  814 	mov	(_time + 2),a
      0002BF F5 24            [12]  815 	mov	(_time + 3),a
                                    816 ;	./src/main.c:147: }
      0002C1 22               [24]  817 	ret
                                    818 ;------------------------------------------------------------
                                    819 ;Allocation info for local variables in function 'main'
                                    820 ;------------------------------------------------------------
                                    821 ;	./src/main.c:150: void main(void)
                                    822 ;	-----------------------------------------
                                    823 ;	 function main
                                    824 ;	-----------------------------------------
      0002C2                        825 _main:
                                    826 ;	./src/main.c:153: Initial();
      0002C2 12 01 19         [24]  827 	lcall	_Initial
                                    828 ;	./src/main.c:155: TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
      0002C5 75 89 01         [24]  829 	mov	_TMOD,#0x01
                                    830 ;	./src/main.c:156: TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
      0002C8 75 8C FC         [24]  831 	mov	_TH0,#0xfc
                                    832 ;	./src/main.c:157: TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
      0002CB 75 8A 18         [24]  833 	mov	_TL0,#0x18
                                    834 ;	./src/main.c:158: ET0 = 1;										// Enable Timer 0 interrupt
                                    835 ;	assignBit
      0002CE D2 A9            [12]  836 	setb	_ET0
                                    837 ;	./src/main.c:159: EA = 1;											// Enable all interrupt
                                    838 ;	assignBit
      0002D0 D2 AF            [12]  839 	setb	_EA
                                    840 ;	./src/main.c:160: TR0 = 1;										// Start Timer 0
                                    841 ;	assignBit
      0002D2 D2 8C            [12]  842 	setb	_TR0
                                    843 ;	./src/main.c:162: Hall_In = 1;
                                    844 ;	assignBit
      0002D4 D2 A4            [12]  845 	setb	_P2_4
                                    846 ;	./src/main.c:164: while(1)
      0002D6                        847 00105$:
                                    848 ;	./src/main.c:166: if((Hall_In == 0) && (hall_last_state == 1)){
      0002D6 20 A4 FD         [24]  849 	jb	_P2_4,00105$
      0002D9 74 01            [12]  850 	mov	a,#0x01
      0002DB B5 20 F8         [24]  851 	cjne	a,_hall_last_state,00105$
                                    852 ;	./src/main.c:167: countTime();
      0002DE 12 01 88         [24]  853 	lcall	_countTime
                                    854 ;	./src/main.c:168: print[3] = print[3] + 0x80;
      0002E1 AF 16            [24]  855 	mov	r7,(_print + 0x0003)
      0002E3 74 80            [12]  856 	mov	a,#0x80
      0002E5 2F               [12]  857 	add	a,r7
      0002E6 F5 16            [12]  858 	mov	(_print + 0x0003),a
                                    859 ;	./src/main.c:169: draw();
      0002E8 12 01 5B         [24]  860 	lcall	_draw
                                    861 ;	./src/main.c:170: Clean();
      0002EB 12 02 9E         [24]  862 	lcall	_Clean
                                    863 ;	./src/main.c:174: }
      0002EE 80 E6            [24]  864 	sjmp	00105$
                                    865 	.area CSEG    (CODE)
                                    866 	.area CONST   (CODE)
                                    867 	.area XINIT   (CODE)
                                    868 	.area CABS    (ABS,CODE)
