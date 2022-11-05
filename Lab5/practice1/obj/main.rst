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
                                     11 	.globl _uart_isr
                                     12 	.globl _main
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _a
                                    112 	.globl _received_flag
                                    113 	.globl _received_data
                                    114 	.globl _send_flag
                                    115 	.globl _send_data
                                    116 	.globl _ANS
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
      000008                        232 _ANS::
      000008                        233 	.ds 7
      00000F                        234 _send_data::
      00000F                        235 	.ds 1
      000010                        236 _send_flag::
      000010                        237 	.ds 1
      000011                        238 _received_data::
      000011                        239 	.ds 1
      000012                        240 _received_flag::
      000012                        241 	.ds 1
      000013                        242 _a::
      000013                        243 	.ds 2
                                    244 ;--------------------------------------------------------
                                    245 ; overlayable items in internal ram
                                    246 ;--------------------------------------------------------
                                    247 ;--------------------------------------------------------
                                    248 ; Stack segment in internal ram
                                    249 ;--------------------------------------------------------
                                    250 	.area SSEG
      00001E                        251 __start__stack:
      00001E                        252 	.ds	1
                                    253 
                                    254 ;--------------------------------------------------------
                                    255 ; indirectly addressable internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area ISEG    (DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area IABS    (ABS,DATA)
                                    262 	.area IABS    (ABS,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; bit data
                                    265 ;--------------------------------------------------------
                                    266 	.area BSEG    (BIT)
                                    267 ;--------------------------------------------------------
                                    268 ; paged external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area PSEG    (PAG,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; uninitialized external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XSEG    (XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XABS    (ABS,XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; initialized external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XISEG   (XDATA)
                                    283 	.area HOME    (CODE)
                                    284 	.area GSINIT0 (CODE)
                                    285 	.area GSINIT1 (CODE)
                                    286 	.area GSINIT2 (CODE)
                                    287 	.area GSINIT3 (CODE)
                                    288 	.area GSINIT4 (CODE)
                                    289 	.area GSINIT5 (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area CSEG    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; interrupt vector
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
      000000                        297 __interrupt_vect:
      000000 02 00 29         [24]  298 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  299 	reti
      000004                        300 	.ds	7
      00000B 32               [24]  301 	reti
      00000C                        302 	.ds	7
      000013 32               [24]  303 	reti
      000014                        304 	.ds	7
      00001B 32               [24]  305 	reti
      00001C                        306 	.ds	7
      000023 02 01 9B         [24]  307 	ljmp	_uart_isr
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.globl __sdcc_gsinit_startup
                                    316 	.globl __sdcc_program_startup
                                    317 	.globl __start__stack
                                    318 	.globl __mcs51_genXINIT
                                    319 	.globl __mcs51_genXRAMCLEAR
                                    320 	.globl __mcs51_genRAMCLEAR
                                    321 ;	./src/main.c:5: unsigned char ANS[] = {3,2,1,2,1,2,1};
      000082 75 08 03         [24]  322 	mov	_ANS,#0x03
      000085 75 09 02         [24]  323 	mov	(_ANS + 0x0001),#0x02
      000088 75 0A 01         [24]  324 	mov	(_ANS + 0x0002),#0x01
      00008B 75 0B 02         [24]  325 	mov	(_ANS + 0x0003),#0x02
      00008E 75 0C 01         [24]  326 	mov	(_ANS + 0x0004),#0x01
      000091 75 0D 02         [24]  327 	mov	(_ANS + 0x0005),#0x02
      000094 75 0E 01         [24]  328 	mov	(_ANS + 0x0006),#0x01
                                    329 ;	./src/main.c:7: unsigned char send_flag = 0;
      000097 75 10 00         [24]  330 	mov	_send_flag,#0x00
                                    331 ;	./src/main.c:9: unsigned char received_flag = 0;
      00009A 75 12 00         [24]  332 	mov	_received_flag,#0x00
                                    333 ;	./src/main.c:10: unsigned int a = 1;
      00009D 75 13 01         [24]  334 	mov	_a,#0x01
      0000A0 75 14 00         [24]  335 	mov	(_a + 1),#0x00
                                    336 	.area GSFINAL (CODE)
      0000A6 02 00 26         [24]  337 	ljmp	__sdcc_program_startup
                                    338 ;--------------------------------------------------------
                                    339 ; Home
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
                                    342 	.area HOME    (CODE)
      000026                        343 __sdcc_program_startup:
      000026 02 00 A9         [24]  344 	ljmp	_main
                                    345 ;	return from main will return to caller
                                    346 ;--------------------------------------------------------
                                    347 ; code
                                    348 ;--------------------------------------------------------
                                    349 	.area CSEG    (CODE)
                                    350 ;------------------------------------------------------------
                                    351 ;Allocation info for local variables in function 'main'
                                    352 ;------------------------------------------------------------
                                    353 ;cnt1                      Allocated to registers r7 
                                    354 ;cnt2                      Allocated to registers r6 
                                    355 ;cnt3                      Allocated to registers r5 
                                    356 ;cnt4                      Allocated to registers r4 
                                    357 ;------------------------------------------------------------
                                    358 ;	./src/main.c:17: void main(void)
                                    359 ;	-----------------------------------------
                                    360 ;	 function main
                                    361 ;	-----------------------------------------
      0000A9                        362 _main:
                           000007   363 	ar7 = 0x07
                           000006   364 	ar6 = 0x06
                           000005   365 	ar5 = 0x05
                           000004   366 	ar4 = 0x04
                           000003   367 	ar3 = 0x03
                           000002   368 	ar2 = 0x02
                           000001   369 	ar1 = 0x01
                           000000   370 	ar0 = 0x00
                                    371 ;	./src/main.c:19: unsigned char cnt1 = 0;
      0000A9 7F 00            [12]  372 	mov	r7,#0x00
                                    373 ;	./src/main.c:20: unsigned char cnt2 = 0;
      0000AB 7E 00            [12]  374 	mov	r6,#0x00
                                    375 ;	./src/main.c:21: unsigned char cnt3 = 0;
      0000AD 7D 00            [12]  376 	mov	r5,#0x00
                                    377 ;	./src/main.c:22: unsigned char cnt4 = 0;
      0000AF 7C 00            [12]  378 	mov	r4,#0x00
                                    379 ;	./src/main.c:24: Initial();
      0000B1 C0 07            [24]  380 	push	ar7
      0000B3 C0 06            [24]  381 	push	ar6
      0000B5 C0 05            [24]  382 	push	ar5
      0000B7 C0 04            [24]  383 	push	ar4
      0000B9 12 02 47         [24]  384 	lcall	_Initial
      0000BC D0 04            [24]  385 	pop	ar4
      0000BE D0 05            [24]  386 	pop	ar5
      0000C0 D0 06            [24]  387 	pop	ar6
      0000C2 D0 07            [24]  388 	pop	ar7
                                    389 ;	./src/main.c:26: TMOD = 0x20;			// set timer1 to mode2 
      0000C4 75 89 20         [24]  390 	mov	_TMOD,#0x20
                                    391 ;	./src/main.c:27: SCON = 0x50;       		// set serial mode1
      0000C7 75 98 50         [24]  392 	mov	_SCON,#0x50
                                    393 ;	./src/main.c:28: TH1 = 250;     			// baudrate = 9600, fosc = 11.0592MHz
      0000CA 75 8D FA         [24]  394 	mov	_TH1,#0xfa
                                    395 ;	./src/main.c:29: TR1 = 1;				// enable timer = 1
                                    396 ;	assignBit
      0000CD D2 8E            [12]  397 	setb	_TR1
                                    398 ;	./src/main.c:30: IE = 0x90;				// enable serial port interrupt
      0000CF 75 A8 90         [24]  399 	mov	_IE,#0x90
                                    400 ;	./src/main.c:32: while(1)
      0000D2                        401 00139$:
                                    402 ;	./src/main.c:36: if (but1 == 0) {
      0000D2 20 B2 11         [24]  403 	jb	_P3_2,00106$
                                    404 ;	./src/main.c:37: if (cnt1 < 3) {
      0000D5 BF 03 00         [24]  405 	cjne	r7,#0x03,00212$
      0000D8                        406 00212$:
      0000D8 50 0E            [24]  407 	jnc	00107$
                                    408 ;	./src/main.c:38: cnt1++;
      0000DA 0F               [12]  409 	inc	r7
                                    410 ;	./src/main.c:39: if (cnt1 == 3) {
      0000DB BF 03 0A         [24]  411 	cjne	r7,#0x03,00107$
                                    412 ;	./src/main.c:40: send_data = 1;
      0000DE 75 0F 01         [24]  413 	mov	_send_data,#0x01
                                    414 ;	./src/main.c:41: send_flag = 1;
      0000E1 75 10 01         [24]  415 	mov	_send_flag,#0x01
      0000E4 80 02            [24]  416 	sjmp	00107$
      0000E6                        417 00106$:
                                    418 ;	./src/main.c:45: else { cnt1 = 0; }
      0000E6 7F 00            [12]  419 	mov	r7,#0x00
      0000E8                        420 00107$:
                                    421 ;	./src/main.c:47: if (but2 == 0) {
      0000E8 20 B3 11         [24]  422 	jb	_P3_3,00113$
                                    423 ;	./src/main.c:48: if (cnt2 < 3) {
      0000EB BE 03 00         [24]  424 	cjne	r6,#0x03,00217$
      0000EE                        425 00217$:
      0000EE 50 0E            [24]  426 	jnc	00114$
                                    427 ;	./src/main.c:49: cnt2++;
      0000F0 0E               [12]  428 	inc	r6
                                    429 ;	./src/main.c:50: if (cnt2 == 3) {
      0000F1 BE 03 0A         [24]  430 	cjne	r6,#0x03,00114$
                                    431 ;	./src/main.c:51: send_data = 2;
      0000F4 75 0F 02         [24]  432 	mov	_send_data,#0x02
                                    433 ;	./src/main.c:52: send_flag = 1;
      0000F7 75 10 01         [24]  434 	mov	_send_flag,#0x01
      0000FA 80 02            [24]  435 	sjmp	00114$
      0000FC                        436 00113$:
                                    437 ;	./src/main.c:56: else { cnt2 = 0; }
      0000FC 7E 00            [12]  438 	mov	r6,#0x00
      0000FE                        439 00114$:
                                    440 ;	./src/main.c:58: if (but3 == 0) {
      0000FE 20 A0 11         [24]  441 	jb	_P2_0,00120$
                                    442 ;	./src/main.c:59: if (cnt3 < 3) {
      000101 BD 03 00         [24]  443 	cjne	r5,#0x03,00222$
      000104                        444 00222$:
      000104 50 0E            [24]  445 	jnc	00121$
                                    446 ;	./src/main.c:60: cnt3++;
      000106 0D               [12]  447 	inc	r5
                                    448 ;	./src/main.c:61: if (cnt3 == 3) {
      000107 BD 03 0A         [24]  449 	cjne	r5,#0x03,00121$
                                    450 ;	./src/main.c:62: send_data = 3;
      00010A 75 0F 03         [24]  451 	mov	_send_data,#0x03
                                    452 ;	./src/main.c:63: send_flag = 1;
      00010D 75 10 01         [24]  453 	mov	_send_flag,#0x01
      000110 80 02            [24]  454 	sjmp	00121$
      000112                        455 00120$:
                                    456 ;	./src/main.c:67: else { cnt3 = 0; }
      000112 7D 00            [12]  457 	mov	r5,#0x00
      000114                        458 00121$:
                                    459 ;	./src/main.c:69: if (but4 == 0) {
      000114 20 A1 11         [24]  460 	jb	_P2_1,00127$
                                    461 ;	./src/main.c:70: if (cnt4 < 3) {
      000117 BC 03 00         [24]  462 	cjne	r4,#0x03,00227$
      00011A                        463 00227$:
      00011A 50 0E            [24]  464 	jnc	00128$
                                    465 ;	./src/main.c:71: cnt4++;
      00011C 0C               [12]  466 	inc	r4
                                    467 ;	./src/main.c:72: if (cnt4 == 3) {
      00011D BC 03 0A         [24]  468 	cjne	r4,#0x03,00128$
                                    469 ;	./src/main.c:73: send_data = 4;
      000120 75 0F 04         [24]  470 	mov	_send_data,#0x04
                                    471 ;	./src/main.c:74: send_flag = 1;
      000123 75 10 01         [24]  472 	mov	_send_flag,#0x01
      000126 80 02            [24]  473 	sjmp	00128$
      000128                        474 00127$:
                                    475 ;	./src/main.c:78: else { cnt4 = 0; }
      000128 7C 00            [12]  476 	mov	r4,#0x00
      00012A                        477 00128$:
                                    478 ;	./src/main.c:81: if(send_flag == 1)
      00012A 74 01            [12]  479 	mov	a,#0x01
      00012C B5 10 06         [24]  480 	cjne	a,_send_flag,00130$
                                    481 ;	./src/main.c:83: SBUF = send_data;	
      00012F 85 0F 99         [24]  482 	mov	_SBUF,_send_data
                                    483 ;	./src/main.c:84: send_flag = 0;
      000132 75 10 00         [24]  484 	mov	_send_flag,#0x00
      000135                        485 00130$:
                                    486 ;	./src/main.c:88: if(received_flag==1){
      000135 74 01            [12]  487 	mov	a,#0x01
      000137 B5 12 98         [24]  488 	cjne	a,_received_flag,00139$
                                    489 ;	./src/main.c:89: if(received_data == ANS[a-1]){
      00013A E5 13            [12]  490 	mov	a,_a
      00013C FB               [12]  491 	mov	r3,a
      00013D 14               [12]  492 	dec	a
      00013E 24 08            [12]  493 	add	a,#_ANS
      000140 F9               [12]  494 	mov	r1,a
      000141 E7               [12]  495 	mov	a,@r1
      000142 FA               [12]  496 	mov	r2,a
      000143 B5 11 2F         [24]  497 	cjne	a,_received_data,00134$
                                    498 ;	./src/main.c:90: Write7219(8-a, received_data);
      000146 74 08            [12]  499 	mov	a,#0x08
      000148 C3               [12]  500 	clr	c
      000149 9B               [12]  501 	subb	a,r3
      00014A F5 82            [12]  502 	mov	dpl,a
      00014C 85 11 15         [24]  503 	mov	_Write7219_PARM_2,_received_data
      00014F C0 07            [24]  504 	push	ar7
      000151 C0 06            [24]  505 	push	ar6
      000153 C0 05            [24]  506 	push	ar5
      000155 C0 04            [24]  507 	push	ar4
      000157 12 01 E3         [24]  508 	lcall	_Write7219
                                    509 ;	./src/main.c:91: Write7219(8, 1);
      00015A 75 15 01         [24]  510 	mov	_Write7219_PARM_2,#0x01
      00015D 75 82 08         [24]  511 	mov	dpl,#0x08
      000160 12 01 E3         [24]  512 	lcall	_Write7219
      000163 D0 04            [24]  513 	pop	ar4
      000165 D0 05            [24]  514 	pop	ar5
      000167 D0 06            [24]  515 	pop	ar6
      000169 D0 07            [24]  516 	pop	ar7
                                    517 ;	./src/main.c:92: a+=1;
      00016B 05 13            [12]  518 	inc	_a
      00016D E4               [12]  519 	clr	a
      00016E B5 13 24         [24]  520 	cjne	a,_a,00135$
      000171 05 14            [12]  521 	inc	(_a + 1)
      000173 80 20            [24]  522 	sjmp	00135$
      000175                        523 00134$:
                                    524 ;	./src/main.c:93: }else if (received_flag != 1)
      000175 74 01            [12]  525 	mov	a,#0x01
      000177 B5 12 02         [24]  526 	cjne	a,_received_flag,00238$
      00017A 80 19            [24]  527 	sjmp	00135$
      00017C                        528 00238$:
                                    529 ;	./src/main.c:94: Write7219(8, 0);
      00017C 75 15 00         [24]  530 	mov	_Write7219_PARM_2,#0x00
      00017F 75 82 08         [24]  531 	mov	dpl,#0x08
      000182 C0 07            [24]  532 	push	ar7
      000184 C0 06            [24]  533 	push	ar6
      000186 C0 05            [24]  534 	push	ar5
      000188 C0 04            [24]  535 	push	ar4
      00018A 12 01 E3         [24]  536 	lcall	_Write7219
      00018D D0 04            [24]  537 	pop	ar4
      00018F D0 05            [24]  538 	pop	ar5
      000191 D0 06            [24]  539 	pop	ar6
      000193 D0 07            [24]  540 	pop	ar7
      000195                        541 00135$:
                                    542 ;	./src/main.c:96: received_flag = 0;
      000195 75 12 00         [24]  543 	mov	_received_flag,#0x00
                                    544 ;	./src/main.c:99: }
      000198 02 00 D2         [24]  545 	ljmp	00139$
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'uart_isr'
                                    548 ;------------------------------------------------------------
                                    549 ;	./src/main.c:102: void uart_isr(void) __interrupt (4) 
                                    550 ;	-----------------------------------------
                                    551 ;	 function uart_isr
                                    552 ;	-----------------------------------------
      00019B                        553 _uart_isr:
                                    554 ;	./src/main.c:104: if (TI == 1)
                                    555 ;	./src/main.c:105: TI = 0;
                                    556 ;	assignBit
      00019B 10 99 02         [24]  557 	jbc	_TI,00115$
      00019E 80 00            [24]  558 	sjmp	00102$
      0001A0                        559 00115$:
      0001A0                        560 00102$:
                                    561 ;	./src/main.c:106: if( RI == 1) {
                                    562 ;	./src/main.c:107: RI = 0;                  // refresh RI
                                    563 ;	assignBit
      0001A0 10 98 02         [24]  564 	jbc	_RI,00116$
      0001A3 80 06            [24]  565 	sjmp	00105$
      0001A5                        566 00116$:
                                    567 ;	./src/main.c:108: received_data = SBUF;    // receive data from SBUF
      0001A5 85 99 11         [24]  568 	mov	_received_data,_SBUF
                                    569 ;	./src/main.c:109: received_flag = 1;       // receiving finished
      0001A8 75 12 01         [24]  570 	mov	_received_flag,#0x01
      0001AB                        571 00105$:
                                    572 ;	./src/main.c:111: }
      0001AB 32               [24]  573 	reti
                                    574 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    575 ;	eliminated unneeded push/pop not_psw
                                    576 ;	eliminated unneeded push/pop dpl
                                    577 ;	eliminated unneeded push/pop dph
                                    578 ;	eliminated unneeded push/pop b
                                    579 ;	eliminated unneeded push/pop acc
                                    580 	.area CSEG    (CODE)
                                    581 	.area CONST   (CODE)
                                    582 	.area XINIT   (CODE)
                                    583 	.area CABS    (ABS,CODE)
