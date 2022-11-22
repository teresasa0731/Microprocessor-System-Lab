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
                                     12 	.globl _delay_ms
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram
                                    226 ;--------------------------------------------------------
                                    227 ;--------------------------------------------------------
                                    228 ; Stack segment in internal ram
                                    229 ;--------------------------------------------------------
                                    230 	.area SSEG
      000008                        231 __start__stack:
      000008                        232 	.ds	1
                                    233 
                                    234 ;--------------------------------------------------------
                                    235 ; indirectly addressable internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area ISEG    (DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; absolute internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area IABS    (ABS,DATA)
                                    242 	.area IABS    (ABS,DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; bit data
                                    245 ;--------------------------------------------------------
                                    246 	.area BSEG    (BIT)
                                    247 ;--------------------------------------------------------
                                    248 ; paged external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area PSEG    (PAG,XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; uninitialized external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XSEG    (XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XABS    (ABS,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; initialized external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XISEG   (XDATA)
                                    263 	.area HOME    (CODE)
                                    264 	.area GSINIT0 (CODE)
                                    265 	.area GSINIT1 (CODE)
                                    266 	.area GSINIT2 (CODE)
                                    267 	.area GSINIT3 (CODE)
                                    268 	.area GSINIT4 (CODE)
                                    269 	.area GSINIT5 (CODE)
                                    270 	.area GSINIT  (CODE)
                                    271 	.area GSFINAL (CODE)
                                    272 	.area CSEG    (CODE)
                                    273 ;--------------------------------------------------------
                                    274 ; interrupt vector
                                    275 ;--------------------------------------------------------
                                    276 	.area HOME    (CODE)
      000000                        277 __interrupt_vect:
      000000 02 00 06         [24]  278 	ljmp	__sdcc_gsinit_startup
                                    279 ;--------------------------------------------------------
                                    280 ; global & static initialisations
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.globl __sdcc_gsinit_startup
                                    287 	.globl __sdcc_program_startup
                                    288 	.globl __start__stack
                                    289 	.globl __mcs51_genXINIT
                                    290 	.globl __mcs51_genXRAMCLEAR
                                    291 	.globl __mcs51_genRAMCLEAR
                                    292 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  293 	ljmp	__sdcc_program_startup
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
      000003                        299 __sdcc_program_startup:
      000003 02 00 62         [24]  300 	ljmp	_main
                                    301 ;	return from main will return to caller
                                    302 ;--------------------------------------------------------
                                    303 ; code
                                    304 ;--------------------------------------------------------
                                    305 	.area CSEG    (CODE)
                                    306 ;------------------------------------------------------------
                                    307 ;Allocation info for local variables in function 'main'
                                    308 ;------------------------------------------------------------
                                    309 ;patt                      Allocated to registers r7 
                                    310 ;prebut1                   Allocated to registers r5 r6 
                                    311 ;prebut2                   Allocated to registers r3 r4 
                                    312 ;mode                      Allocated to registers r1 r2 
                                    313 ;------------------------------------------------------------
                                    314 ;	./src/main.c:10: void main(void)
                                    315 ;	-----------------------------------------
                                    316 ;	 function main
                                    317 ;	-----------------------------------------
      000062                        318 _main:
                           000007   319 	ar7 = 0x07
                           000006   320 	ar6 = 0x06
                           000005   321 	ar5 = 0x05
                           000004   322 	ar4 = 0x04
                           000003   323 	ar3 = 0x03
                           000002   324 	ar2 = 0x02
                           000001   325 	ar1 = 0x01
                           000000   326 	ar0 = 0x00
                                    327 ;	./src/main.c:13: unsigned char patt = 0x80; 	//led value
      000062 7F 80            [12]  328 	mov	r7,#0x80
                                    329 ;	./src/main.c:14: unsigned int prebut1 = 0;    		//debounce
      000064 7D 00            [12]  330 	mov	r5,#0x00
      000066 7E 00            [12]  331 	mov	r6,#0x00
                                    332 ;	./src/main.c:15: unsigned int prebut2 = 0 ;
      000068 7B 00            [12]  333 	mov	r3,#0x00
      00006A 7C 00            [12]  334 	mov	r4,#0x00
                                    335 ;	./src/main.c:17: but1 = 1;                 	//initialize
                                    336 ;	assignBit
      00006C D2 A0            [12]  337 	setb	_P2_0
                                    338 ;	./src/main.c:18: but2 = 1;
                                    339 ;	assignBit
      00006E D2 A1            [12]  340 	setb	_P2_1
                                    341 ;	./src/main.c:19: mode = 0;
      000070 79 00            [12]  342 	mov	r1,#0x00
      000072 7A 00            [12]  343 	mov	r2,#0x00
                                    344 ;	./src/main.c:21: while(1) {
      000074                        345 00131$:
                                    346 ;	./src/main.c:23: if (but3 == 0)	// one bits
      000074 20 B2 06         [24]  347 	jb	_INT0,00104$
                                    348 ;	./src/main.c:24: mode = 0;
      000077 79 00            [12]  349 	mov	r1,#0x00
      000079 7A 00            [12]  350 	mov	r2,#0x00
      00007B 80 07            [24]  351 	sjmp	00105$
      00007D                        352 00104$:
                                    353 ;	./src/main.c:25: else if(but4 == 0)	// two bits
      00007D 20 B3 04         [24]  354 	jb	_INT1,00105$
                                    355 ;	./src/main.c:26: mode = 1;
      000080 79 01            [12]  356 	mov	r1,#0x01
      000082 7A 00            [12]  357 	mov	r2,#0x00
      000084                        358 00105$:
                                    359 ;	./src/main.c:29: if((but1 == 0) && (prebut1 == 1)) {
      000084 20 A0 3B         [24]  360 	jb	_P2_0,00116$
      000087 BD 01 38         [24]  361 	cjne	r5,#0x01,00116$
      00008A BE 00 35         [24]  362 	cjne	r6,#0x00,00116$
                                    363 ;	./src/main.c:30: delay_ms(10);
      00008D 90 00 0A         [24]  364 	mov	dptr,#0x000a
      000090 C0 07            [24]  365 	push	ar7
      000092 C0 04            [24]  366 	push	ar4
      000094 C0 03            [24]  367 	push	ar3
      000096 C0 02            [24]  368 	push	ar2
      000098 C0 01            [24]  369 	push	ar1
      00009A 12 01 31         [24]  370 	lcall	_delay_ms
      00009D D0 01            [24]  371 	pop	ar1
      00009F D0 02            [24]  372 	pop	ar2
      0000A1 D0 03            [24]  373 	pop	ar3
      0000A3 D0 04            [24]  374 	pop	ar4
      0000A5 D0 07            [24]  375 	pop	ar7
                                    376 ;	./src/main.c:31: if(but1 == 0) {
      0000A7 20 A0 18         [24]  377 	jb	_P2_0,00116$
                                    378 ;	./src/main.c:32: if(mode == 0){
      0000AA E9               [12]  379 	mov	a,r1
      0000AB 4A               [12]  380 	orl	a,r2
      0000AC 70 0A            [24]  381 	jnz	00111$
                                    382 ;	./src/main.c:33: patt = patt >> 1;
      0000AE EF               [12]  383 	mov	a,r7
      0000AF C3               [12]  384 	clr	c
      0000B0 13               [12]  385 	rrc	a
                                    386 ;	./src/main.c:34: if(patt == 0x00)	// reset
      0000B1 FF               [12]  387 	mov	r7,a
      0000B2 70 0E            [24]  388 	jnz	00116$
                                    389 ;	./src/main.c:35: patt = 0x80;
      0000B4 7F 80            [12]  390 	mov	r7,#0x80
      0000B6 80 0A            [24]  391 	sjmp	00116$
      0000B8                        392 00111$:
                                    393 ;	./src/main.c:38: patt = patt >> 2;
      0000B8 EF               [12]  394 	mov	a,r7
      0000B9 03               [12]  395 	rr	a
      0000BA 03               [12]  396 	rr	a
      0000BB 54 3F            [12]  397 	anl	a,#0x3f
                                    398 ;	./src/main.c:39: if(patt == 0x00)	// reset
      0000BD FF               [12]  399 	mov	r7,a
      0000BE 70 02            [24]  400 	jnz	00116$
                                    401 ;	./src/main.c:40: patt = 0x80;
      0000C0 7F 80            [12]  402 	mov	r7,#0x80
      0000C2                        403 00116$:
                                    404 ;	./src/main.c:46: if((but2 == 0) && (prebut2 == 1)) {
      0000C2 20 A1 35         [24]  405 	jb	_P2_1,00128$
      0000C5 BB 01 32         [24]  406 	cjne	r3,#0x01,00128$
      0000C8 BC 00 2F         [24]  407 	cjne	r4,#0x00,00128$
                                    408 ;	./src/main.c:47: delay_ms(10);
      0000CB 90 00 0A         [24]  409 	mov	dptr,#0x000a
      0000CE C0 07            [24]  410 	push	ar7
      0000D0 C0 02            [24]  411 	push	ar2
      0000D2 C0 01            [24]  412 	push	ar1
      0000D4 12 01 31         [24]  413 	lcall	_delay_ms
      0000D7 D0 01            [24]  414 	pop	ar1
      0000D9 D0 02            [24]  415 	pop	ar2
      0000DB D0 07            [24]  416 	pop	ar7
                                    417 ;	./src/main.c:48: if(but2 == 0) {
      0000DD 20 A1 1A         [24]  418 	jb	_P2_1,00128$
                                    419 ;	./src/main.c:49: if(mode == 0) {
      0000E0 E9               [12]  420 	mov	a,r1
      0000E1 4A               [12]  421 	orl	a,r2
      0000E2 70 0B            [24]  422 	jnz	00123$
                                    423 ;	./src/main.c:50: patt = patt << 1;
      0000E4 8F 00            [24]  424 	mov	ar0,r7
      0000E6 E8               [12]  425 	mov	a,r0
      0000E7 28               [12]  426 	add	a,r0
                                    427 ;	./src/main.c:51: if(patt == 0x00)
      0000E8 FF               [12]  428 	mov	r7,a
      0000E9 70 0F            [24]  429 	jnz	00128$
                                    430 ;	./src/main.c:52: patt = 0x01;
      0000EB 7F 01            [12]  431 	mov	r7,#0x01
      0000ED 80 0B            [24]  432 	sjmp	00128$
      0000EF                        433 00123$:
                                    434 ;	./src/main.c:55: patt = patt << 2;
      0000EF 8F 00            [24]  435 	mov	ar0,r7
      0000F1 E8               [12]  436 	mov	a,r0
      0000F2 28               [12]  437 	add	a,r0
                                    438 ;	./src/main.c:56: if(patt == 0x00)
      0000F3 25 E0            [12]  439 	add	a,acc
      0000F5 FF               [12]  440 	mov	r7,a
      0000F6 70 02            [24]  441 	jnz	00128$
                                    442 ;	./src/main.c:57: patt = 0x01;
      0000F8 7F 01            [12]  443 	mov	r7,#0x01
      0000FA                        444 00128$:
                                    445 ;	./src/main.c:62: led =~ patt;	
      0000FA EF               [12]  446 	mov	a,r7
      0000FB F4               [12]  447 	cpl	a
      0000FC F5 90            [12]  448 	mov	_P1,a
                                    449 ;	./src/main.c:63: prebut1 = but1;
      0000FE A2 A0            [12]  450 	mov	c,_P2_0
      000100 E4               [12]  451 	clr	a
      000101 33               [12]  452 	rlc	a
      000102 FD               [12]  453 	mov	r5,a
      000103 7E 00            [12]  454 	mov	r6,#0x00
                                    455 ;	./src/main.c:64: prebut2 = but2;
      000105 A2 A1            [12]  456 	mov	c,_P2_1
      000107 E4               [12]  457 	clr	a
      000108 33               [12]  458 	rlc	a
      000109 FB               [12]  459 	mov	r3,a
      00010A 7C 00            [12]  460 	mov	r4,#0x00
                                    461 ;	./src/main.c:65: delay_ms(10);
      00010C 90 00 0A         [24]  462 	mov	dptr,#0x000a
      00010F C0 07            [24]  463 	push	ar7
      000111 C0 06            [24]  464 	push	ar6
      000113 C0 05            [24]  465 	push	ar5
      000115 C0 04            [24]  466 	push	ar4
      000117 C0 03            [24]  467 	push	ar3
      000119 C0 02            [24]  468 	push	ar2
      00011B C0 01            [24]  469 	push	ar1
      00011D 12 01 31         [24]  470 	lcall	_delay_ms
      000120 D0 01            [24]  471 	pop	ar1
      000122 D0 02            [24]  472 	pop	ar2
      000124 D0 03            [24]  473 	pop	ar3
      000126 D0 04            [24]  474 	pop	ar4
      000128 D0 05            [24]  475 	pop	ar5
      00012A D0 06            [24]  476 	pop	ar6
      00012C D0 07            [24]  477 	pop	ar7
                                    478 ;	./src/main.c:67: }
      00012E 02 00 74         [24]  479 	ljmp	00131$
                                    480 	.area CSEG    (CODE)
                                    481 	.area CONST   (CODE)
                                    482 	.area XINIT   (CODE)
                                    483 	.area CABS    (ABS,CODE)
