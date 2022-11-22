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
                                     11 	.globl _main
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _patt
                                    109 	.globl _states
                                    110 	.globl _read_curINPUT
                                    111 	.globl _shiftLeft
                                    112 	.globl _shiftRight
                                    113 	.globl _inversedLight
                                    114 	.globl _delay_ms
                                    115 ;--------------------------------------------------------
                                    116 ; special function registers
                                    117 ;--------------------------------------------------------
                                    118 	.area RSEG    (ABS,DATA)
      000000                        119 	.org 0x0000
                           000080   120 _P0	=	0x0080
                           000081   121 _SP	=	0x0081
                           000082   122 _DPL	=	0x0082
                           000083   123 _DPH	=	0x0083
                           000087   124 _PCON	=	0x0087
                           000088   125 _TCON	=	0x0088
                           000089   126 _TMOD	=	0x0089
                           00008A   127 _TL0	=	0x008a
                           00008B   128 _TL1	=	0x008b
                           00008C   129 _TH0	=	0x008c
                           00008D   130 _TH1	=	0x008d
                           000090   131 _P1	=	0x0090
                           000098   132 _SCON	=	0x0098
                           000099   133 _SBUF	=	0x0099
                           0000A0   134 _P2	=	0x00a0
                           0000A8   135 _IE	=	0x00a8
                           0000B0   136 _P3	=	0x00b0
                           0000B8   137 _IP	=	0x00b8
                           0000D0   138 _PSW	=	0x00d0
                           0000E0   139 _ACC	=	0x00e0
                           0000F0   140 _B	=	0x00f0
                                    141 ;--------------------------------------------------------
                                    142 ; special function bits
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0_0	=	0x0080
                           000081   147 _P0_1	=	0x0081
                           000082   148 _P0_2	=	0x0082
                           000083   149 _P0_3	=	0x0083
                           000084   150 _P0_4	=	0x0084
                           000085   151 _P0_5	=	0x0085
                           000086   152 _P0_6	=	0x0086
                           000087   153 _P0_7	=	0x0087
                           000088   154 _IT0	=	0x0088
                           000089   155 _IE0	=	0x0089
                           00008A   156 _IT1	=	0x008a
                           00008B   157 _IE1	=	0x008b
                           00008C   158 _TR0	=	0x008c
                           00008D   159 _TF0	=	0x008d
                           00008E   160 _TR1	=	0x008e
                           00008F   161 _TF1	=	0x008f
                           000090   162 _P1_0	=	0x0090
                           000091   163 _P1_1	=	0x0091
                           000092   164 _P1_2	=	0x0092
                           000093   165 _P1_3	=	0x0093
                           000094   166 _P1_4	=	0x0094
                           000095   167 _P1_5	=	0x0095
                           000096   168 _P1_6	=	0x0096
                           000097   169 _P1_7	=	0x0097
                           000098   170 _RI	=	0x0098
                           000099   171 _TI	=	0x0099
                           00009A   172 _RB8	=	0x009a
                           00009B   173 _TB8	=	0x009b
                           00009C   174 _REN	=	0x009c
                           00009D   175 _SM2	=	0x009d
                           00009E   176 _SM1	=	0x009e
                           00009F   177 _SM0	=	0x009f
                           0000A0   178 _P2_0	=	0x00a0
                           0000A1   179 _P2_1	=	0x00a1
                           0000A2   180 _P2_2	=	0x00a2
                           0000A3   181 _P2_3	=	0x00a3
                           0000A4   182 _P2_4	=	0x00a4
                           0000A5   183 _P2_5	=	0x00a5
                           0000A6   184 _P2_6	=	0x00a6
                           0000A7   185 _P2_7	=	0x00a7
                           0000A8   186 _EX0	=	0x00a8
                           0000A9   187 _ET0	=	0x00a9
                           0000AA   188 _EX1	=	0x00aa
                           0000AB   189 _ET1	=	0x00ab
                           0000AC   190 _ES	=	0x00ac
                           0000AF   191 _EA	=	0x00af
                           0000B0   192 _P3_0	=	0x00b0
                           0000B1   193 _P3_1	=	0x00b1
                           0000B2   194 _P3_2	=	0x00b2
                           0000B3   195 _P3_3	=	0x00b3
                           0000B4   196 _P3_4	=	0x00b4
                           0000B5   197 _P3_5	=	0x00b5
                           0000B6   198 _P3_6	=	0x00b6
                           0000B7   199 _P3_7	=	0x00b7
                           0000B0   200 _RXD	=	0x00b0
                           0000B1   201 _TXD	=	0x00b1
                           0000B2   202 _INT0	=	0x00b2
                           0000B3   203 _INT1	=	0x00b3
                           0000B4   204 _T0	=	0x00b4
                           0000B5   205 _T1	=	0x00b5
                           0000B6   206 _WR	=	0x00b6
                           0000B7   207 _RD	=	0x00b7
                           0000B8   208 _PX0	=	0x00b8
                           0000B9   209 _PT0	=	0x00b9
                           0000BA   210 _PX1	=	0x00ba
                           0000BB   211 _PT1	=	0x00bb
                           0000BC   212 _PS	=	0x00bc
                           0000D0   213 _P	=	0x00d0
                           0000D1   214 _F1	=	0x00d1
                           0000D2   215 _OV	=	0x00d2
                           0000D3   216 _RS0	=	0x00d3
                           0000D4   217 _RS1	=	0x00d4
                           0000D5   218 _F0	=	0x00d5
                           0000D6   219 _AC	=	0x00d6
                           0000D7   220 _CY	=	0x00d7
                                    221 ;--------------------------------------------------------
                                    222 ; overlayable register banks
                                    223 ;--------------------------------------------------------
                                    224 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        225 	.ds 8
                                    226 ;--------------------------------------------------------
                                    227 ; internal ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area DSEG    (DATA)
      000008                        230 _states::
      000008                        231 	.ds 6
      00000E                        232 _patt::
      00000E                        233 	.ds 1
      00000F                        234 _main_double_flag_65537_16:
      00000F                        235 	.ds 2
      000011                        236 _main_i_196609_20:
      000011                        237 	.ds 2
      000013                        238 _main_sloc0_1_0:
      000013                        239 	.ds 2
      000015                        240 _main_sloc1_1_0:
      000015                        241 	.ds 1
                                    242 ;--------------------------------------------------------
                                    243 ; overlayable items in internal ram
                                    244 ;--------------------------------------------------------
                                    245 	.area	OSEG    (OVR,DATA)
                                    246 	.area	OSEG    (OVR,DATA)
                                    247 	.area	OSEG    (OVR,DATA)
                                    248 	.area	OSEG    (OVR,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; Stack segment in internal ram
                                    251 ;--------------------------------------------------------
                                    252 	.area SSEG
      000016                        253 __start__stack:
      000016                        254 	.ds	1
                                    255 
                                    256 ;--------------------------------------------------------
                                    257 ; indirectly addressable internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area ISEG    (DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; absolute internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area IABS    (ABS,DATA)
                                    264 	.area IABS    (ABS,DATA)
                                    265 ;--------------------------------------------------------
                                    266 ; bit data
                                    267 ;--------------------------------------------------------
                                    268 	.area BSEG    (BIT)
                                    269 ;--------------------------------------------------------
                                    270 ; paged external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area PSEG    (PAG,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; uninitialized external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XSEG    (XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; absolute external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XABS    (ABS,XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; initialized external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XISEG   (XDATA)
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT0 (CODE)
                                    287 	.area GSINIT1 (CODE)
                                    288 	.area GSINIT2 (CODE)
                                    289 	.area GSINIT3 (CODE)
                                    290 	.area GSINIT4 (CODE)
                                    291 	.area GSINIT5 (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area CSEG    (CODE)
                                    295 ;--------------------------------------------------------
                                    296 ; interrupt vector
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
      000000                        299 __interrupt_vect:
      000000 02 00 06         [24]  300 	ljmp	__sdcc_gsinit_startup
                                    301 ;--------------------------------------------------------
                                    302 ; global & static initialisations
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.area GSFINAL (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.globl __sdcc_gsinit_startup
                                    309 	.globl __sdcc_program_startup
                                    310 	.globl __start__stack
                                    311 	.globl __mcs51_genXINIT
                                    312 	.globl __mcs51_genXRAMCLEAR
                                    313 	.globl __mcs51_genRAMCLEAR
                                    314 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  315 	ljmp	__sdcc_program_startup
                                    316 ;--------------------------------------------------------
                                    317 ; Home
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
                                    320 	.area HOME    (CODE)
      000003                        321 __sdcc_program_startup:
      000003 02 00 AF         [24]  322 	ljmp	_main
                                    323 ;	return from main will return to caller
                                    324 ;--------------------------------------------------------
                                    325 ; code
                                    326 ;--------------------------------------------------------
                                    327 	.area CSEG    (CODE)
                                    328 ;------------------------------------------------------------
                                    329 ;Allocation info for local variables in function 'read_curINPUT'
                                    330 ;------------------------------------------------------------
                                    331 ;	./src/main.c:39: void read_curINPUT(void)
                                    332 ;	-----------------------------------------
                                    333 ;	 function read_curINPUT
                                    334 ;	-----------------------------------------
      000062                        335 _read_curINPUT:
                           000007   336 	ar7 = 0x07
                           000006   337 	ar6 = 0x06
                           000005   338 	ar5 = 0x05
                           000004   339 	ar4 = 0x04
                           000003   340 	ar3 = 0x03
                           000002   341 	ar2 = 0x02
                           000001   342 	ar1 = 0x01
                           000000   343 	ar0 = 0x00
                                    344 ;	./src/main.c:41: states[0].currINPUT = PB1;
      000062 A2 B2            [12]  345 	mov	c,_INT0
      000064 E4               [12]  346 	clr	a
      000065 33               [12]  347 	rlc	a
      000066 78 08            [12]  348 	mov	r0,#_states
      000068 13               [12]  349 	rrc	a
      000069 E6               [12]  350 	mov	a,@r0
      00006A 92 E0            [24]  351 	mov	acc.0,c
      00006C F6               [12]  352 	mov	@r0,a
                                    353 ;	./src/main.c:42: states[1].currINPUT = PB2;
      00006D A2 B3            [12]  354 	mov	c,_INT1
      00006F E4               [12]  355 	clr	a
      000070 33               [12]  356 	rlc	a
      000071 78 0B            [12]  357 	mov	r0,#(_states + 0x0003)
      000073 13               [12]  358 	rrc	a
      000074 E6               [12]  359 	mov	a,@r0
      000075 92 E0            [24]  360 	mov	acc.0,c
      000077 F6               [12]  361 	mov	@r0,a
                                    362 ;	./src/main.c:43: }
      000078 22               [24]  363 	ret
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'shiftLeft'
                                    366 ;------------------------------------------------------------
                                    367 ;buf                       Allocated to registers r7 
                                    368 ;------------------------------------------------------------
                                    369 ;	./src/main.c:45: void shiftLeft(void){
                                    370 ;	-----------------------------------------
                                    371 ;	 function shiftLeft
                                    372 ;	-----------------------------------------
      000079                        373 _shiftLeft:
                                    374 ;	./src/main.c:46: unsigned char buf = patt & 0x01;
      000079 E5 0E            [12]  375 	mov	a,_patt
      00007B 54 01            [12]  376 	anl	a,#0x01
      00007D FF               [12]  377 	mov	r7,a
                                    378 ;	./src/main.c:48: patt = (patt >> 1) | buf << 7;
      00007E E5 0E            [12]  379 	mov	a,_patt
      000080 C3               [12]  380 	clr	c
      000081 13               [12]  381 	rrc	a
      000082 FE               [12]  382 	mov	r6,a
      000083 EF               [12]  383 	mov	a,r7
      000084 03               [12]  384 	rr	a
      000085 54 80            [12]  385 	anl	a,#0x80
      000087 4E               [12]  386 	orl	a,r6
      000088 F5 0E            [12]  387 	mov	_patt,a
                                    388 ;	./src/main.c:49: return;
                                    389 ;	./src/main.c:50: }
      00008A 22               [24]  390 	ret
                                    391 ;------------------------------------------------------------
                                    392 ;Allocation info for local variables in function 'shiftRight'
                                    393 ;------------------------------------------------------------
                                    394 ;buf                       Allocated to registers r7 
                                    395 ;------------------------------------------------------------
                                    396 ;	./src/main.c:52: void shiftRight(void){
                                    397 ;	-----------------------------------------
                                    398 ;	 function shiftRight
                                    399 ;	-----------------------------------------
      00008B                        400 _shiftRight:
                                    401 ;	./src/main.c:53: unsigned char buf = patt & 0x80;
      00008B E5 0E            [12]  402 	mov	a,_patt
      00008D 54 80            [12]  403 	anl	a,#0x80
      00008F FF               [12]  404 	mov	r7,a
                                    405 ;	./src/main.c:54: patt = (patt << 1) | buf >> 7;
      000090 E5 0E            [12]  406 	mov	a,_patt
      000092 25 0E            [12]  407 	add	a,_patt
      000094 FE               [12]  408 	mov	r6,a
      000095 EF               [12]  409 	mov	a,r7
      000096 23               [12]  410 	rl	a
      000097 54 01            [12]  411 	anl	a,#0x01
      000099 4E               [12]  412 	orl	a,r6
      00009A F5 0E            [12]  413 	mov	_patt,a
                                    414 ;	./src/main.c:55: return;
                                    415 ;	./src/main.c:56: }
      00009C 22               [24]  416 	ret
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'inversedLight'
                                    419 ;------------------------------------------------------------
                                    420 ;mode                      Allocated to registers r6 r7 
                                    421 ;------------------------------------------------------------
                                    422 ;	./src/main.c:58: void inversedLight(unsigned int mode){
                                    423 ;	-----------------------------------------
                                    424 ;	 function inversedLight
                                    425 ;	-----------------------------------------
      00009D                        426 _inversedLight:
      00009D AE 82            [24]  427 	mov	r6,dpl
      00009F AF 83            [24]  428 	mov	r7,dph
                                    429 ;	./src/main.c:59: if(mode == 0)
      0000A1 EE               [12]  430 	mov	a,r6
      0000A2 4F               [12]  431 	orl	a,r7
      0000A3 70 06            [24]  432 	jnz	00102$
                                    433 ;	./src/main.c:60: patt = ~patt;
      0000A5 E5 0E            [12]  434 	mov	a,_patt
      0000A7 F4               [12]  435 	cpl	a
      0000A8 F5 0E            [12]  436 	mov	_patt,a
      0000AA 22               [24]  437 	ret
      0000AB                        438 00102$:
                                    439 ;	./src/main.c:62: patt = patt ^0x80;
      0000AB 63 0E 80         [24]  440 	xrl	_patt,#0x80
                                    441 ;	./src/main.c:64: }
      0000AE 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'main'
                                    445 ;------------------------------------------------------------
                                    446 ;long_flag                 Allocated to registers 
                                    447 ;double_cnt                Allocated to registers r6 r7 
                                    448 ;double_flag               Allocated with name '_main_double_flag_65537_16'
                                    449 ;i                         Allocated to registers r2 r3 
                                    450 ;i                         Allocated with name '_main_i_196609_20'
                                    451 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    452 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    453 ;------------------------------------------------------------
                                    454 ;	./src/main.c:66: int main(void)
                                    455 ;	-----------------------------------------
                                    456 ;	 function main
                                    457 ;	-----------------------------------------
      0000AF                        458 _main:
                                    459 ;	./src/main.c:69: led = SW;
      0000AF 85 80 90         [24]  460 	mov	_P1,_P0
                                    461 ;	./src/main.c:70: patt = led;
      0000B2 85 90 0E         [24]  462 	mov	_patt,_P1
                                    463 ;	./src/main.c:71: int long_flag = 0, double_cnt = 0, double_flag = 0;
                                    464 ;	./src/main.c:74: for (int i = 0; i < 2; i++)
      0000B5 E4               [12]  465 	clr	a
      0000B6 FE               [12]  466 	mov	r6,a
      0000B7 FF               [12]  467 	mov	r7,a
      0000B8 F5 0F            [12]  468 	mov	_main_double_flag_65537_16,a
      0000BA F5 10            [12]  469 	mov	(_main_double_flag_65537_16 + 1),a
      0000BC FA               [12]  470 	mov	r2,a
      0000BD FB               [12]  471 	mov	r3,a
      0000BE 7C 00            [12]  472 	mov	r4,#0x00
      0000C0 7D 00            [12]  473 	mov	r5,#0x00
      0000C2                        474 00155$:
      0000C2 C3               [12]  475 	clr	c
      0000C3 EA               [12]  476 	mov	a,r2
      0000C4 94 02            [12]  477 	subb	a,#0x02
      0000C6 EB               [12]  478 	mov	a,r3
      0000C7 64 80            [12]  479 	xrl	a,#0x80
      0000C9 94 80            [12]  480 	subb	a,#0x80
      0000CB 50 30            [24]  481 	jnc	00152$
                                    482 ;	./src/main.c:76: states[i].currINPUT = LEVEL_HIGH;
      0000CD EC               [12]  483 	mov	a,r4
      0000CE 24 08            [12]  484 	add	a,#_states
      0000D0 F8               [12]  485 	mov	r0,a
      0000D1 E6               [12]  486 	mov	a,@r0
      0000D2 44 01            [12]  487 	orl	a,#0x01
      0000D4 F6               [12]  488 	mov	@r0,a
                                    489 ;	./src/main.c:77: states[i].currState = BTN_RELEASED;
      0000D5 EC               [12]  490 	mov	a,r4
      0000D6 24 08            [12]  491 	add	a,#_states
      0000D8 F8               [12]  492 	mov	r0,a
      0000D9 E6               [12]  493 	mov	a,@r0
      0000DA 54 F1            [12]  494 	anl	a,#0xf1
      0000DC F6               [12]  495 	mov	@r0,a
                                    496 ;	./src/main.c:78: states[i].prevState = BTN_RELEASED;
      0000DD EC               [12]  497 	mov	a,r4
      0000DE 24 08            [12]  498 	add	a,#_states
      0000E0 F8               [12]  499 	mov	r0,a
      0000E1 E6               [12]  500 	mov	a,@r0
      0000E2 54 8F            [12]  501 	anl	a,#0x8f
      0000E4 F6               [12]  502 	mov	@r0,a
                                    503 ;	./src/main.c:79: states[i].count = 0;
      0000E5 EC               [12]  504 	mov	a,r4
      0000E6 24 08            [12]  505 	add	a,#_states
      0000E8 04               [12]  506 	inc	a
      0000E9 F8               [12]  507 	mov	r0,a
      0000EA 76 00            [12]  508 	mov	@r0,#0x00
      0000EC 08               [12]  509 	inc	r0
      0000ED 76 00            [12]  510 	mov	@r0,#0x00
                                    511 ;	./src/main.c:74: for (int i = 0; i < 2; i++)
      0000EF 74 03            [12]  512 	mov	a,#0x03
      0000F1 2C               [12]  513 	add	a,r4
      0000F2 FC               [12]  514 	mov	r4,a
      0000F3 E4               [12]  515 	clr	a
      0000F4 3D               [12]  516 	addc	a,r5
      0000F5 FD               [12]  517 	mov	r5,a
      0000F6 0A               [12]  518 	inc	r2
                                    519 ;	./src/main.c:82: while (1)
      0000F7 BA 00 C8         [24]  520 	cjne	r2,#0x00,00155$
      0000FA 0B               [12]  521 	inc	r3
      0000FB 80 C5            [24]  522 	sjmp	00155$
      0000FD                        523 00152$:
                                    524 ;	./src/main.c:84: delay_ms(20);
      0000FD 90 00 14         [24]  525 	mov	dptr,#0x0014
      000100 C0 07            [24]  526 	push	ar7
      000102 C0 06            [24]  527 	push	ar6
      000104 12 03 3F         [24]  528 	lcall	_delay_ms
                                    529 ;	./src/main.c:85: read_curINPUT();
      000107 12 00 62         [24]  530 	lcall	_read_curINPUT
      00010A D0 06            [24]  531 	pop	ar6
      00010C D0 07            [24]  532 	pop	ar7
                                    533 ;	./src/main.c:86: for (unsigned int i = 0; i < 2; i++)
      00010E 8E 04            [24]  534 	mov	ar4,r6
      000110 8F 05            [24]  535 	mov	ar5,r7
      000112 E4               [12]  536 	clr	a
      000113 F5 11            [12]  537 	mov	_main_i_196609_20,a
      000115 F5 12            [12]  538 	mov	(_main_i_196609_20 + 1),a
      000117 F5 13            [12]  539 	mov	_main_sloc0_1_0,a
      000119 F5 14            [12]  540 	mov	(_main_sloc0_1_0 + 1),a
      00011B                        541 00158$:
      00011B C3               [12]  542 	clr	c
      00011C E5 11            [12]  543 	mov	a,_main_i_196609_20
      00011E 94 02            [12]  544 	subb	a,#0x02
      000120 E5 12            [12]  545 	mov	a,(_main_i_196609_20 + 1)
      000122 94 00            [12]  546 	subb	a,#0x00
      000124 40 03            [24]  547 	jc	00254$
      000126 02 02 5B         [24]  548 	ljmp	00185$
      000129                        549 00254$:
                                    550 ;	./src/main.c:89: switch (states[i].currState)
      000129 E5 13            [12]  551 	mov	a,_main_sloc0_1_0
      00012B 24 08            [12]  552 	add	a,#_states
      00012D F9               [12]  553 	mov	r1,a
      00012E E7               [12]  554 	mov	a,@r1
      00012F 03               [12]  555 	rr	a
      000130 54 07            [12]  556 	anl	a,#0x07
      000132 F5 15            [12]  557 	mov  _main_sloc1_1_0,a
      000134 24 FC            [12]  558 	add	a,#0xff - 0x03
      000136 50 03            [24]  559 	jnc	00255$
      000138 02 02 45         [24]  560 	ljmp	00159$
      00013B                        561 00255$:
      00013B E5 15            [12]  562 	mov	a,_main_sloc1_1_0
      00013D 75 F0 03         [24]  563 	mov	b,#0x03
      000140 A4               [48]  564 	mul	ab
      000141 90 01 45         [24]  565 	mov	dptr,#00256$
      000144 73               [24]  566 	jmp	@a+dptr
      000145                        567 00256$:
      000145 02 01 51         [24]  568 	ljmp	00102$
      000148 02 01 70         [24]  569 	ljmp	00106$
      00014B 02 01 93         [24]  570 	ljmp	00110$
      00014E 02 02 1B         [24]  571 	ljmp	00125$
                                    572 ;	./src/main.c:91: case BTN_RELEASED:
      000151                        573 00102$:
                                    574 ;	./src/main.c:92: if (states[i].currINPUT == LEVEL_LOW)
      000151 E5 13            [12]  575 	mov	a,_main_sloc0_1_0
      000153 24 08            [12]  576 	add	a,#_states
      000155 F9               [12]  577 	mov	r1,a
      000156 E7               [12]  578 	mov	a,@r1
      000157 20 E0 0E         [24]  579 	jb	acc.0,00104$
                                    580 ;	./src/main.c:93: states[i].currState = BTN_DEBOUNCED;
      00015A E5 13            [12]  581 	mov	a,_main_sloc0_1_0
      00015C 24 08            [12]  582 	add	a,#_states
      00015E F8               [12]  583 	mov	r0,a
      00015F E6               [12]  584 	mov	a,@r0
      000160 54 F1            [12]  585 	anl	a,#0xf1
      000162 44 02            [12]  586 	orl	a,#0x02
      000164 F6               [12]  587 	mov	@r0,a
      000165 02 02 45         [24]  588 	ljmp	00159$
      000168                        589 00104$:
                                    590 ;	./src/main.c:95: double_cnt++;
      000168 0C               [12]  591 	inc	r4
      000169 BC 00 01         [24]  592 	cjne	r4,#0x00,00258$
      00016C 0D               [12]  593 	inc	r5
      00016D                        594 00258$:
                                    595 ;	./src/main.c:97: break;
      00016D 02 02 45         [24]  596 	ljmp	00159$
                                    597 ;	./src/main.c:98: case BTN_DEBOUNCED:
      000170                        598 00106$:
                                    599 ;	./src/main.c:99: if (states[i].currINPUT == LEVEL_LOW)
      000170 E5 13            [12]  600 	mov	a,_main_sloc0_1_0
      000172 24 08            [12]  601 	add	a,#_states
      000174 F9               [12]  602 	mov	r1,a
      000175 E7               [12]  603 	mov	a,@r1
      000176 20 E0 0E         [24]  604 	jb	acc.0,00108$
                                    605 ;	./src/main.c:100: states[i].currState = BTN_PRESSED;
      000179 E5 13            [12]  606 	mov	a,_main_sloc0_1_0
      00017B 24 08            [12]  607 	add	a,#_states
      00017D F8               [12]  608 	mov	r0,a
      00017E E6               [12]  609 	mov	a,@r0
      00017F 54 F1            [12]  610 	anl	a,#0xf1
      000181 44 04            [12]  611 	orl	a,#0x04
      000183 F6               [12]  612 	mov	@r0,a
      000184 02 02 45         [24]  613 	ljmp	00159$
      000187                        614 00108$:
                                    615 ;	./src/main.c:102: states[i].currState = BTN_RELEASED;
      000187 E5 13            [12]  616 	mov	a,_main_sloc0_1_0
      000189 24 08            [12]  617 	add	a,#_states
      00018B F8               [12]  618 	mov	r0,a
      00018C E6               [12]  619 	mov	a,@r0
      00018D 54 F1            [12]  620 	anl	a,#0xf1
      00018F F6               [12]  621 	mov	@r0,a
                                    622 ;	./src/main.c:103: break;
      000190 02 02 45         [24]  623 	ljmp	00159$
                                    624 ;	./src/main.c:104: case BTN_PRESSED:
      000193                        625 00110$:
                                    626 ;	./src/main.c:105: if (states[i].currINPUT == LEVEL_LOW)
      000193 E5 13            [12]  627 	mov	a,_main_sloc0_1_0
      000195 24 08            [12]  628 	add	a,#_states
      000197 F9               [12]  629 	mov	r1,a
      000198 E7               [12]  630 	mov	a,@r1
      000199 20 E0 74         [24]  631 	jb	acc.0,00123$
                                    632 ;	./src/main.c:107: states[i].count++;
      00019C E5 13            [12]  633 	mov	a,_main_sloc0_1_0
      00019E 24 08            [12]  634 	add	a,#_states
      0001A0 F5 15            [12]  635 	mov	_main_sloc1_1_0,a
      0001A2 04               [12]  636 	inc	a
      0001A3 F9               [12]  637 	mov	r1,a
      0001A4 87 02            [24]  638 	mov	ar2,@r1
      0001A6 09               [12]  639 	inc	r1
      0001A7 87 03            [24]  640 	mov	ar3,@r1
      0001A9 19               [12]  641 	dec	r1
      0001AA 0A               [12]  642 	inc	r2
      0001AB BA 00 01         [24]  643 	cjne	r2,#0x00,00261$
      0001AE 0B               [12]  644 	inc	r3
      0001AF                        645 00261$:
      0001AF A7 02            [24]  646 	mov	@r1,ar2
      0001B1 09               [12]  647 	inc	r1
      0001B2 A7 03            [24]  648 	mov	@r1,ar3
      0001B4 19               [12]  649 	dec	r1
                                    650 ;	./src/main.c:108: if(i == 0){
      0001B5 E5 11            [12]  651 	mov	a,_main_i_196609_20
      0001B7 45 12            [12]  652 	orl	a,(_main_i_196609_20 + 1)
      0001B9 70 24            [24]  653 	jnz	00120$
                                    654 ;	./src/main.c:109: if (states[i].count > 50)
      0001BB 87 02            [24]  655 	mov	ar2,@r1
      0001BD 09               [12]  656 	inc	r1
      0001BE 87 03            [24]  657 	mov	ar3,@r1
      0001C0 19               [12]  658 	dec	r1
      0001C1 C3               [12]  659 	clr	c
      0001C2 74 32            [12]  660 	mov	a,#0x32
      0001C4 9A               [12]  661 	subb	a,r2
      0001C5 E4               [12]  662 	clr	a
      0001C6 9B               [12]  663 	subb	a,r3
      0001C7 50 0B            [24]  664 	jnc	00112$
                                    665 ;	./src/main.c:111: states[i].currState = BTN_LONG_PRESSED;
      0001C9 E5 15            [12]  666 	mov	a,_main_sloc1_1_0
      0001CB F8               [12]  667 	mov	r0,a
      0001CC E6               [12]  668 	mov	a,@r0
      0001CD 54 F1            [12]  669 	anl	a,#0xf1
      0001CF 44 06            [12]  670 	orl	a,#0x06
      0001D1 F6               [12]  671 	mov	@r0,a
                                    672 ;	./src/main.c:112: long_flag = 1;
      0001D2 80 71            [24]  673 	sjmp	00159$
      0001D4                        674 00112$:
                                    675 ;	./src/main.c:115: states[i].currState = BTN_PRESSED;
      0001D4 E5 15            [12]  676 	mov	a,_main_sloc1_1_0
      0001D6 F8               [12]  677 	mov	r0,a
      0001D7 E6               [12]  678 	mov	a,@r0
      0001D8 54 F1            [12]  679 	anl	a,#0xf1
      0001DA 44 04            [12]  680 	orl	a,#0x04
      0001DC F6               [12]  681 	mov	@r0,a
      0001DD 80 66            [24]  682 	sjmp	00159$
      0001DF                        683 00120$:
                                    684 ;	./src/main.c:116: }else if (i == 1)
      0001DF 74 01            [12]  685 	mov	a,#0x01
      0001E1 B5 11 06         [24]  686 	cjne	a,_main_i_196609_20,00264$
      0001E4 14               [12]  687 	dec	a
      0001E5 B5 12 02         [24]  688 	cjne	a,(_main_i_196609_20 + 1),00264$
      0001E8 80 02            [24]  689 	sjmp	00265$
      0001EA                        690 00264$:
      0001EA 80 59            [24]  691 	sjmp	00159$
      0001EC                        692 00265$:
                                    693 ;	./src/main.c:118: if (states[i].count > 100)
      0001EC 87 02            [24]  694 	mov	ar2,@r1
      0001EE 09               [12]  695 	inc	r1
      0001EF 87 03            [24]  696 	mov	ar3,@r1
      0001F1 19               [12]  697 	dec	r1
      0001F2 C3               [12]  698 	clr	c
      0001F3 74 64            [12]  699 	mov	a,#0x64
      0001F5 9A               [12]  700 	subb	a,r2
      0001F6 E4               [12]  701 	clr	a
      0001F7 9B               [12]  702 	subb	a,r3
      0001F8 50 0B            [24]  703 	jnc	00115$
                                    704 ;	./src/main.c:120: states[i].currState = BTN_LONG_PRESSED;
      0001FA E5 15            [12]  705 	mov	a,_main_sloc1_1_0
      0001FC F8               [12]  706 	mov	r0,a
      0001FD E6               [12]  707 	mov	a,@r0
      0001FE 54 F1            [12]  708 	anl	a,#0xf1
      000200 44 06            [12]  709 	orl	a,#0x06
      000202 F6               [12]  710 	mov	@r0,a
                                    711 ;	./src/main.c:121: long_flag = 1;
      000203 80 40            [24]  712 	sjmp	00159$
      000205                        713 00115$:
                                    714 ;	./src/main.c:124: states[i].currState = BTN_PRESSED;
      000205 E5 15            [12]  715 	mov	a,_main_sloc1_1_0
      000207 F8               [12]  716 	mov	r0,a
      000208 E6               [12]  717 	mov	a,@r0
      000209 54 F1            [12]  718 	anl	a,#0xf1
      00020B 44 04            [12]  719 	orl	a,#0x04
      00020D F6               [12]  720 	mov	@r0,a
      00020E 80 35            [24]  721 	sjmp	00159$
      000210                        722 00123$:
                                    723 ;	./src/main.c:128: states[i].currState = BTN_RELEASED;
      000210 E5 13            [12]  724 	mov	a,_main_sloc0_1_0
      000212 24 08            [12]  725 	add	a,#_states
      000214 F8               [12]  726 	mov	r0,a
      000215 E6               [12]  727 	mov	a,@r0
      000216 54 F1            [12]  728 	anl	a,#0xf1
      000218 F6               [12]  729 	mov	@r0,a
                                    730 ;	./src/main.c:129: break;
                                    731 ;	./src/main.c:130: case BTN_LONG_PRESSED:
      000219 80 2A            [24]  732 	sjmp	00159$
      00021B                        733 00125$:
                                    734 ;	./src/main.c:131: if (states[i].currINPUT == LEVEL_LOW)
      00021B E5 13            [12]  735 	mov	a,_main_sloc0_1_0
      00021D 24 08            [12]  736 	add	a,#_states
      00021F F9               [12]  737 	mov	r1,a
      000220 E7               [12]  738 	mov	a,@r1
      000221 20 E0 0D         [24]  739 	jb	acc.0,00127$
                                    740 ;	./src/main.c:132: states[i].currState = BTN_LONG_PRESSED;
      000224 E5 13            [12]  741 	mov	a,_main_sloc0_1_0
      000226 24 08            [12]  742 	add	a,#_states
      000228 F8               [12]  743 	mov	r0,a
      000229 E6               [12]  744 	mov	a,@r0
      00022A 54 F1            [12]  745 	anl	a,#0xf1
      00022C 44 06            [12]  746 	orl	a,#0x06
      00022E F6               [12]  747 	mov	@r0,a
      00022F 80 14            [24]  748 	sjmp	00159$
      000231                        749 00127$:
                                    750 ;	./src/main.c:135: states[i].currState = BTN_RELEASED;
      000231 E5 13            [12]  751 	mov	a,_main_sloc0_1_0
      000233 24 08            [12]  752 	add	a,#_states
      000235 F8               [12]  753 	mov	r0,a
      000236 E6               [12]  754 	mov	a,@r0
      000237 54 F1            [12]  755 	anl	a,#0xf1
      000239 F6               [12]  756 	mov	@r0,a
                                    757 ;	./src/main.c:136: states[i].count = 0;
      00023A E5 13            [12]  758 	mov	a,_main_sloc0_1_0
      00023C 24 08            [12]  759 	add	a,#_states
      00023E 04               [12]  760 	inc	a
      00023F F8               [12]  761 	mov	r0,a
      000240 76 00            [12]  762 	mov	@r0,#0x00
      000242 08               [12]  763 	inc	r0
      000243 76 00            [12]  764 	mov	@r0,#0x00
                                    765 ;	./src/main.c:141: }
      000245                        766 00159$:
                                    767 ;	./src/main.c:86: for (unsigned int i = 0; i < 2; i++)
      000245 74 03            [12]  768 	mov	a,#0x03
      000247 25 13            [12]  769 	add	a,_main_sloc0_1_0
      000249 F5 13            [12]  770 	mov	_main_sloc0_1_0,a
      00024B E4               [12]  771 	clr	a
      00024C 35 14            [12]  772 	addc	a,(_main_sloc0_1_0 + 1)
      00024E F5 14            [12]  773 	mov	(_main_sloc0_1_0 + 1),a
      000250 05 11            [12]  774 	inc	_main_i_196609_20
      000252 E4               [12]  775 	clr	a
      000253 B5 11 02         [24]  776 	cjne	a,_main_i_196609_20,00268$
      000256 05 12            [12]  777 	inc	(_main_i_196609_20 + 1)
      000258                        778 00268$:
      000258 02 01 1B         [24]  779 	ljmp	00158$
      00025B                        780 00185$:
      00025B 8C 06            [24]  781 	mov	ar6,r4
      00025D 8D 07            [24]  782 	mov	ar7,r5
                                    783 ;	./src/main.c:146: if (((states[0].currState == BTN_RELEASED) && (states[0].prevState == BTN_PRESSED)) || double_flag && (double_cnt > 100))
      00025F 78 08            [12]  784 	mov	r0,#_states
      000261 E6               [12]  785 	mov	a,@r0
      000262 54 0E            [12]  786 	anl	a,#0x0e
      000264 70 0C            [24]  787 	jnz	00150$
      000266 78 08            [12]  788 	mov	r0,#_states
      000268 E6               [12]  789 	mov	a,@r0
      000269 C4               [12]  790 	swap	a
      00026A 54 07            [12]  791 	anl	a,#0x07
      00026C FD               [12]  792 	mov	r5,a
      00026D BD 02 02         [24]  793 	cjne	r5,#0x02,00270$
      000270 80 15            [24]  794 	sjmp	00145$
      000272                        795 00270$:
      000272                        796 00150$:
      000272 E5 0F            [12]  797 	mov	a,_main_double_flag_65537_16
      000274 45 10            [12]  798 	orl	a,(_main_double_flag_65537_16 + 1)
      000276 60 50            [24]  799 	jz	00146$
      000278 C3               [12]  800 	clr	c
      000279 74 64            [12]  801 	mov	a,#0x64
      00027B 9E               [12]  802 	subb	a,r6
      00027C 74 80            [12]  803 	mov	a,#(0x00 ^ 0x80)
      00027E 8F F0            [24]  804 	mov	b,r7
      000280 63 F0 80         [24]  805 	xrl	b,#0x80
      000283 95 F0            [12]  806 	subb	a,b
      000285 50 41            [24]  807 	jnc	00146$
      000287                        808 00145$:
                                    809 ;	./src/main.c:148: if (double_flag)
      000287 E5 0F            [12]  810 	mov	a,_main_double_flag_65537_16
      000289 45 10            [12]  811 	orl	a,(_main_double_flag_65537_16 + 1)
      00028B 60 2A            [24]  812 	jz	00136$
                                    813 ;	./src/main.c:150: if (double_cnt < 100)
      00028D C3               [12]  814 	clr	c
      00028E EE               [12]  815 	mov	a,r6
      00028F 94 64            [12]  816 	subb	a,#0x64
      000291 EF               [12]  817 	mov	a,r7
      000292 64 80            [12]  818 	xrl	a,#0x80
      000294 94 80            [12]  819 	subb	a,#0x80
      000296 50 0D            [24]  820 	jnc	00133$
                                    821 ;	./src/main.c:151: shiftLeft();
      000298 C0 07            [24]  822 	push	ar7
      00029A C0 06            [24]  823 	push	ar6
      00029C 12 00 79         [24]  824 	lcall	_shiftLeft
      00029F D0 06            [24]  825 	pop	ar6
      0002A1 D0 07            [24]  826 	pop	ar7
      0002A3 80 0B            [24]  827 	sjmp	00134$
      0002A5                        828 00133$:
                                    829 ;	./src/main.c:153: shiftRight();
      0002A5 C0 07            [24]  830 	push	ar7
      0002A7 C0 06            [24]  831 	push	ar6
      0002A9 12 00 8B         [24]  832 	lcall	_shiftRight
      0002AC D0 06            [24]  833 	pop	ar6
      0002AE D0 07            [24]  834 	pop	ar7
      0002B0                        835 00134$:
                                    836 ;	./src/main.c:156: double_flag = 0;
      0002B0 E4               [12]  837 	clr	a
      0002B1 F5 0F            [12]  838 	mov	_main_double_flag_65537_16,a
      0002B3 F5 10            [12]  839 	mov	(_main_double_flag_65537_16 + 1),a
      0002B5 80 0A            [24]  840 	sjmp	00137$
      0002B7                        841 00136$:
                                    842 ;	./src/main.c:159: double_flag = 1;
      0002B7 75 0F 01         [24]  843 	mov	_main_double_flag_65537_16,#0x01
      0002BA 75 10 00         [24]  844 	mov	(_main_double_flag_65537_16 + 1),#0x00
                                    845 ;	./src/main.c:160: double_cnt = 0;
      0002BD 7E 00            [12]  846 	mov	r6,#0x00
      0002BF 7F 00            [12]  847 	mov	r7,#0x00
      0002C1                        848 00137$:
                                    849 ;	./src/main.c:162: states[0].count = 0;
      0002C1 E4               [12]  850 	clr	a
      0002C2 F5 09            [12]  851 	mov	((_states + 0x0001) + 0),a
      0002C4 F5 0A            [12]  852 	mov	((_states + 0x0001) + 1),a
      0002C6 80 4A            [24]  853 	sjmp	00147$
      0002C8                        854 00146$:
                                    855 ;	./src/main.c:165: else if((states[0].currState == BTN_RELEASED) && (states[0].prevState == BTN_LONG_PRESSED)){
      0002C8 78 08            [12]  856 	mov	r0,#_states
      0002CA E6               [12]  857 	mov	a,@r0
      0002CB 54 0E            [12]  858 	anl	a,#0x0e
      0002CD 70 1F            [24]  859 	jnz	00142$
      0002CF 78 08            [12]  860 	mov	r0,#_states
      0002D1 E6               [12]  861 	mov	a,@r0
      0002D2 C4               [12]  862 	swap	a
      0002D3 54 07            [12]  863 	anl	a,#0x07
      0002D5 FD               [12]  864 	mov	r5,a
      0002D6 BD 03 15         [24]  865 	cjne	r5,#0x03,00142$
                                    866 ;	./src/main.c:166: inversedLight(0);
      0002D9 90 00 00         [24]  867 	mov	dptr,#0x0000
      0002DC C0 07            [24]  868 	push	ar7
      0002DE C0 06            [24]  869 	push	ar6
      0002E0 12 00 9D         [24]  870 	lcall	_inversedLight
      0002E3 D0 06            [24]  871 	pop	ar6
      0002E5 D0 07            [24]  872 	pop	ar7
                                    873 ;	./src/main.c:167: double_flag = 0;
      0002E7 E4               [12]  874 	clr	a
      0002E8 F5 0F            [12]  875 	mov	_main_double_flag_65537_16,a
      0002EA F5 10            [12]  876 	mov	(_main_double_flag_65537_16 + 1),a
      0002EC 80 24            [24]  877 	sjmp	00147$
      0002EE                        878 00142$:
                                    879 ;	./src/main.c:169: else if((states[1].currState == BTN_RELEASED) && (states[1].prevState == BTN_LONG_PRESSED)){
      0002EE 78 0B            [12]  880 	mov	r0,#(_states + 0x0003)
      0002F0 E6               [12]  881 	mov	a,@r0
      0002F1 54 0E            [12]  882 	anl	a,#0x0e
      0002F3 70 1D            [24]  883 	jnz	00147$
      0002F5 78 0B            [12]  884 	mov	r0,#(_states + 0x0003)
      0002F7 E6               [12]  885 	mov	a,@r0
      0002F8 C4               [12]  886 	swap	a
      0002F9 54 07            [12]  887 	anl	a,#0x07
      0002FB FD               [12]  888 	mov	r5,a
      0002FC BD 03 13         [24]  889 	cjne	r5,#0x03,00147$
                                    890 ;	./src/main.c:170: inversedLight(1);
      0002FF 90 00 01         [24]  891 	mov	dptr,#0x0001
      000302 C0 07            [24]  892 	push	ar7
      000304 C0 06            [24]  893 	push	ar6
      000306 12 00 9D         [24]  894 	lcall	_inversedLight
      000309 D0 06            [24]  895 	pop	ar6
      00030B D0 07            [24]  896 	pop	ar7
                                    897 ;	./src/main.c:171: double_flag = 0;
      00030D E4               [12]  898 	clr	a
      00030E F5 0F            [12]  899 	mov	_main_double_flag_65537_16,a
      000310 F5 10            [12]  900 	mov	(_main_double_flag_65537_16 + 1),a
      000312                        901 00147$:
                                    902 ;	./src/main.c:173: states[0].prevState = states[0].currState;
      000312 78 08            [12]  903 	mov	r0,#_states
      000314 E6               [12]  904 	mov	a,@r0
      000315 03               [12]  905 	rr	a
      000316 54 07            [12]  906 	anl	a,#0x07
      000318 78 08            [12]  907 	mov	r0,#_states
      00031A C4               [12]  908 	swap	a
      00031B 54 70            [12]  909 	anl	a,#(0xf0&0x70)
      00031D F5 F0            [12]  910 	mov	b,a
      00031F E6               [12]  911 	mov	a,@r0
      000320 54 8F            [12]  912 	anl	a,#0x8f
      000322 45 F0            [12]  913 	orl	a,b
      000324 F6               [12]  914 	mov	@r0,a
                                    915 ;	./src/main.c:174: states[1].prevState = states[1].currState;
      000325 78 0B            [12]  916 	mov	r0,#(_states + 0x0003)
      000327 E6               [12]  917 	mov	a,@r0
      000328 03               [12]  918 	rr	a
      000329 54 07            [12]  919 	anl	a,#0x07
      00032B FD               [12]  920 	mov	r5,a
      00032C 78 0B            [12]  921 	mov	r0,#(_states + 0x0003)
      00032E C4               [12]  922 	swap	a
      00032F 54 70            [12]  923 	anl	a,#(0xf0&0x70)
      000331 F5 F0            [12]  924 	mov	b,a
      000333 E6               [12]  925 	mov	a,@r0
      000334 54 8F            [12]  926 	anl	a,#0x8f
      000336 45 F0            [12]  927 	orl	a,b
      000338 F6               [12]  928 	mov	@r0,a
                                    929 ;	./src/main.c:175: led = patt;
      000339 85 0E 90         [24]  930 	mov	_P1,_patt
                                    931 ;	./src/main.c:177: }
      00033C 02 00 FD         [24]  932 	ljmp	00152$
                                    933 ;------------------------------------------------------------
                                    934 ;Allocation info for local variables in function 'delay_ms'
                                    935 ;------------------------------------------------------------
                                    936 ;input_ms                  Allocated to registers r6 r7 
                                    937 ;cnt1                      Allocated to registers r4 r5 
                                    938 ;cnt2                      Allocated to registers r3 
                                    939 ;------------------------------------------------------------
                                    940 ;	./src/main.c:179: void delay_ms(unsigned int input_ms)
                                    941 ;	-----------------------------------------
                                    942 ;	 function delay_ms
                                    943 ;	-----------------------------------------
      00033F                        944 _delay_ms:
      00033F AE 82            [24]  945 	mov	r6,dpl
      000341 AF 83            [24]  946 	mov	r7,dph
                                    947 ;	./src/main.c:184: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      000343 7C 00            [12]  948 	mov	r4,#0x00
      000345 7D 00            [12]  949 	mov	r5,#0x00
      000347                        950 00107$:
      000347 C3               [12]  951 	clr	c
      000348 EC               [12]  952 	mov	a,r4
      000349 9E               [12]  953 	subb	a,r6
      00034A ED               [12]  954 	mov	a,r5
      00034B 9F               [12]  955 	subb	a,r7
      00034C 50 0B            [24]  956 	jnc	00109$
                                    957 ;	./src/main.c:186: for(cnt2 = 0; cnt2 < 90; cnt2 ++);
      00034E 7B 5A            [12]  958 	mov	r3,#0x5a
      000350                        959 00105$:
      000350 DB FE            [24]  960 	djnz	r3,00105$
                                    961 ;	./src/main.c:184: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
      000352 0C               [12]  962 	inc	r4
      000353 BC 00 F1         [24]  963 	cjne	r4,#0x00,00107$
      000356 0D               [12]  964 	inc	r5
      000357 80 EE            [24]  965 	sjmp	00107$
      000359                        966 00109$:
                                    967 ;	./src/main.c:188: }
      000359 22               [24]  968 	ret
                                    969 	.area CSEG    (CODE)
                                    970 	.area CONST   (CODE)
                                    971 	.area XINIT   (CODE)
                                    972 	.area CABS    (ABS,CODE)
