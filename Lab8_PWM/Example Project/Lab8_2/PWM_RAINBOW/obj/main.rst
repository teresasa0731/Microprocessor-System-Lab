                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _PWM_Dimming_LED
                                     12 	.globl _main
                                     13 	.globl _delay_ms
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
                                    110 	.globl _duty_cycle
                                    111 	.globl _b_duty_cycle
                                    112 	.globl _g_duty_cycle
                                    113 	.globl _r_duty_cycle
                                    114 	.globl _pwm_count
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
      000008                        230 _pwm_count::
      000008                        231 	.ds 2
      00000A                        232 _r_duty_cycle::
      00000A                        233 	.ds 2
      00000C                        234 _g_duty_cycle::
      00000C                        235 	.ds 2
      00000E                        236 _b_duty_cycle::
      00000E                        237 	.ds 2
      000010                        238 _duty_cycle::
      000010                        239 	.ds 2
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable items in internal ram
                                    242 ;--------------------------------------------------------
                                    243 ;--------------------------------------------------------
                                    244 ; Stack segment in internal ram
                                    245 ;--------------------------------------------------------
                                    246 	.area SSEG
      000012                        247 __start__stack:
      000012                        248 	.ds	1
                                    249 
                                    250 ;--------------------------------------------------------
                                    251 ; indirectly addressable internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area ISEG    (DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; absolute internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area IABS    (ABS,DATA)
                                    258 	.area IABS    (ABS,DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; bit data
                                    261 ;--------------------------------------------------------
                                    262 	.area BSEG    (BIT)
                                    263 ;--------------------------------------------------------
                                    264 ; paged external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area PSEG    (PAG,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; uninitialized external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XSEG    (XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XABS    (ABS,XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; initialized external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XISEG   (XDATA)
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT0 (CODE)
                                    281 	.area GSINIT1 (CODE)
                                    282 	.area GSINIT2 (CODE)
                                    283 	.area GSINIT3 (CODE)
                                    284 	.area GSINIT4 (CODE)
                                    285 	.area GSINIT5 (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area CSEG    (CODE)
                                    289 ;--------------------------------------------------------
                                    290 ; interrupt vector
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
      000000                        293 __interrupt_vect:
      000000 02 00 11         [24]  294 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  295 	reti
      000004                        296 	.ds	7
      00000B 02 02 0F         [24]  297 	ljmp	_PWM_Dimming_LED
                                    298 ;--------------------------------------------------------
                                    299 ; global & static initialisations
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.globl __sdcc_gsinit_startup
                                    306 	.globl __sdcc_program_startup
                                    307 	.globl __start__stack
                                    308 	.globl __mcs51_genXINIT
                                    309 	.globl __mcs51_genXRAMCLEAR
                                    310 	.globl __mcs51_genRAMCLEAR
                                    311 ;	./src/main.c:12: int pwm_count=0;
      00006A E4               [12]  312 	clr	a
      00006B F5 08            [12]  313 	mov	_pwm_count,a
      00006D F5 09            [12]  314 	mov	(_pwm_count + 1),a
                                    315 ;	./src/main.c:14: int r_duty_cycle = 0;
      00006F F5 0A            [12]  316 	mov	_r_duty_cycle,a
      000071 F5 0B            [12]  317 	mov	(_r_duty_cycle + 1),a
                                    318 ;	./src/main.c:15: int g_duty_cycle = 0;
      000073 F5 0C            [12]  319 	mov	_g_duty_cycle,a
      000075 F5 0D            [12]  320 	mov	(_g_duty_cycle + 1),a
                                    321 ;	./src/main.c:16: int b_duty_cycle = 0;
      000077 F5 0E            [12]  322 	mov	_b_duty_cycle,a
      000079 F5 0F            [12]  323 	mov	(_b_duty_cycle + 1),a
                                    324 ;	./src/main.c:17: int duty_cycle = 0;
      00007B F5 10            [12]  325 	mov	_duty_cycle,a
      00007D F5 11            [12]  326 	mov	(_duty_cycle + 1),a
                                    327 	.area GSFINAL (CODE)
      00007F 02 00 0E         [24]  328 	ljmp	__sdcc_program_startup
                                    329 ;--------------------------------------------------------
                                    330 ; Home
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area HOME    (CODE)
      00000E                        334 __sdcc_program_startup:
      00000E 02 00 82         [24]  335 	ljmp	_main
                                    336 ;	return from main will return to caller
                                    337 ;--------------------------------------------------------
                                    338 ; code
                                    339 ;--------------------------------------------------------
                                    340 	.area CSEG    (CODE)
                                    341 ;------------------------------------------------------------
                                    342 ;Allocation info for local variables in function 'main'
                                    343 ;------------------------------------------------------------
                                    344 ;i                         Allocated to registers r6 r7 
                                    345 ;------------------------------------------------------------
                                    346 ;	./src/main.c:18: int main(void)
                                    347 ;	-----------------------------------------
                                    348 ;	 function main
                                    349 ;	-----------------------------------------
      000082                        350 _main:
                           000007   351 	ar7 = 0x07
                           000006   352 	ar6 = 0x06
                           000005   353 	ar5 = 0x05
                           000004   354 	ar4 = 0x04
                           000003   355 	ar3 = 0x03
                           000002   356 	ar2 = 0x02
                           000001   357 	ar1 = 0x01
                           000000   358 	ar0 = 0x00
                                    359 ;	./src/main.c:22: TMOD = 0x01;
      000082 75 89 01         [24]  360 	mov	_TMOD,#0x01
                                    361 ;	./src/main.c:23: TH0 = freq >> 8;
      000085 75 8C FF         [24]  362 	mov	_TH0,#0xff
                                    363 ;	./src/main.c:24: TL0 = freq & 0xFF;  
      000088 75 8A 9C         [24]  364 	mov	_TL0,#0x9c
                                    365 ;	./src/main.c:25: ET0 = 1;								
                                    366 ;	assignBit
      00008B D2 A9            [12]  367 	setb	_ET0
                                    368 ;	./src/main.c:26: EA = 1;									
                                    369 ;	assignBit
      00008D D2 AF            [12]  370 	setb	_EA
                                    371 ;	./src/main.c:27: TR0 = 1;
                                    372 ;	assignBit
      00008F D2 8C            [12]  373 	setb	_TR0
                                    374 ;	./src/main.c:31: for(i = 0; i <= PWM_CNT_UPPER; i++)
      000091                        375 00130$:
      000091 7E 00            [12]  376 	mov	r6,#0x00
      000093 7F 00            [12]  377 	mov	r7,#0x00
      000095                        378 00112$:
                                    379 ;	./src/main.c:33: r_duty_cycle = i;
      000095 8E 0A            [24]  380 	mov	_r_duty_cycle,r6
      000097 8F 0B            [24]  381 	mov	(_r_duty_cycle + 1),r7
                                    382 ;	./src/main.c:34: delay_ms(50);
      000099 90 00 32         [24]  383 	mov	dptr,#0x0032
      00009C C0 07            [24]  384 	push	ar7
      00009E C0 06            [24]  385 	push	ar6
      0000A0 12 02 87         [24]  386 	lcall	_delay_ms
      0000A3 D0 06            [24]  387 	pop	ar6
      0000A5 D0 07            [24]  388 	pop	ar7
                                    389 ;	./src/main.c:31: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0000A7 0E               [12]  390 	inc	r6
      0000A8 BE 00 01         [24]  391 	cjne	r6,#0x00,00206$
      0000AB 0F               [12]  392 	inc	r7
      0000AC                        393 00206$:
      0000AC C3               [12]  394 	clr	c
      0000AD 74 64            [12]  395 	mov	a,#0x64
      0000AF 9E               [12]  396 	subb	a,r6
      0000B0 74 80            [12]  397 	mov	a,#(0x00 ^ 0x80)
      0000B2 8F F0            [24]  398 	mov	b,r7
      0000B4 63 F0 80         [24]  399 	xrl	b,#0x80
      0000B7 95 F0            [12]  400 	subb	a,b
      0000B9 50 DA            [24]  401 	jnc	00112$
                                    402 ;	./src/main.c:38: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0000BB 7E 00            [12]  403 	mov	r6,#0x00
      0000BD 7F 00            [12]  404 	mov	r7,#0x00
      0000BF                        405 00114$:
                                    406 ;	./src/main.c:40: g_duty_cycle = i;
      0000BF 8E 0C            [24]  407 	mov	_g_duty_cycle,r6
      0000C1 8F 0D            [24]  408 	mov	(_g_duty_cycle + 1),r7
                                    409 ;	./src/main.c:41: delay_ms(50);
      0000C3 90 00 32         [24]  410 	mov	dptr,#0x0032
      0000C6 C0 07            [24]  411 	push	ar7
      0000C8 C0 06            [24]  412 	push	ar6
      0000CA 12 02 87         [24]  413 	lcall	_delay_ms
      0000CD D0 06            [24]  414 	pop	ar6
      0000CF D0 07            [24]  415 	pop	ar7
                                    416 ;	./src/main.c:38: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0000D1 0E               [12]  417 	inc	r6
      0000D2 BE 00 01         [24]  418 	cjne	r6,#0x00,00208$
      0000D5 0F               [12]  419 	inc	r7
      0000D6                        420 00208$:
      0000D6 C3               [12]  421 	clr	c
      0000D7 74 64            [12]  422 	mov	a,#0x64
      0000D9 9E               [12]  423 	subb	a,r6
      0000DA 74 80            [12]  424 	mov	a,#(0x00 ^ 0x80)
      0000DC 8F F0            [24]  425 	mov	b,r7
      0000DE 63 F0 80         [24]  426 	xrl	b,#0x80
      0000E1 95 F0            [12]  427 	subb	a,b
      0000E3 50 DA            [24]  428 	jnc	00114$
                                    429 ;	./src/main.c:45: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0000E5 7E 00            [12]  430 	mov	r6,#0x00
      0000E7 7F 00            [12]  431 	mov	r7,#0x00
      0000E9                        432 00116$:
                                    433 ;	./src/main.c:47: r_duty_cycle = r_duty_cycle - i;
      0000E9 E5 0A            [12]  434 	mov	a,_r_duty_cycle
      0000EB C3               [12]  435 	clr	c
      0000EC 9E               [12]  436 	subb	a,r6
      0000ED F5 0A            [12]  437 	mov	_r_duty_cycle,a
      0000EF E5 0B            [12]  438 	mov	a,(_r_duty_cycle + 1)
      0000F1 9F               [12]  439 	subb	a,r7
      0000F2 F5 0B            [12]  440 	mov	(_r_duty_cycle + 1),a
                                    441 ;	./src/main.c:48: delay_ms(50);
      0000F4 90 00 32         [24]  442 	mov	dptr,#0x0032
      0000F7 C0 07            [24]  443 	push	ar7
      0000F9 C0 06            [24]  444 	push	ar6
      0000FB 12 02 87         [24]  445 	lcall	_delay_ms
      0000FE D0 06            [24]  446 	pop	ar6
      000100 D0 07            [24]  447 	pop	ar7
                                    448 ;	./src/main.c:45: for(i = 0; i <= PWM_CNT_UPPER; i++)
      000102 0E               [12]  449 	inc	r6
      000103 BE 00 01         [24]  450 	cjne	r6,#0x00,00210$
      000106 0F               [12]  451 	inc	r7
      000107                        452 00210$:
      000107 C3               [12]  453 	clr	c
      000108 74 64            [12]  454 	mov	a,#0x64
      00010A 9E               [12]  455 	subb	a,r6
      00010B 74 80            [12]  456 	mov	a,#(0x00 ^ 0x80)
      00010D 8F F0            [24]  457 	mov	b,r7
      00010F 63 F0 80         [24]  458 	xrl	b,#0x80
      000112 95 F0            [12]  459 	subb	a,b
      000114 50 D3            [24]  460 	jnc	00116$
                                    461 ;	./src/main.c:51: for(i = 0; i <= PWM_CNT_UPPER; i++)
      000116 7E 00            [12]  462 	mov	r6,#0x00
      000118 7F 00            [12]  463 	mov	r7,#0x00
      00011A                        464 00118$:
                                    465 ;	./src/main.c:53: b_duty_cycle = i;
      00011A 8E 0E            [24]  466 	mov	_b_duty_cycle,r6
      00011C 8F 0F            [24]  467 	mov	(_b_duty_cycle + 1),r7
                                    468 ;	./src/main.c:54: delay_ms(50);
      00011E 90 00 32         [24]  469 	mov	dptr,#0x0032
      000121 C0 07            [24]  470 	push	ar7
      000123 C0 06            [24]  471 	push	ar6
      000125 12 02 87         [24]  472 	lcall	_delay_ms
      000128 D0 06            [24]  473 	pop	ar6
      00012A D0 07            [24]  474 	pop	ar7
                                    475 ;	./src/main.c:51: for(i = 0; i <= PWM_CNT_UPPER; i++)
      00012C 0E               [12]  476 	inc	r6
      00012D BE 00 01         [24]  477 	cjne	r6,#0x00,00212$
      000130 0F               [12]  478 	inc	r7
      000131                        479 00212$:
      000131 C3               [12]  480 	clr	c
      000132 74 64            [12]  481 	mov	a,#0x64
      000134 9E               [12]  482 	subb	a,r6
      000135 74 80            [12]  483 	mov	a,#(0x00 ^ 0x80)
      000137 8F F0            [24]  484 	mov	b,r7
      000139 63 F0 80         [24]  485 	xrl	b,#0x80
      00013C 95 F0            [12]  486 	subb	a,b
      00013E 50 DA            [24]  487 	jnc	00118$
                                    488 ;	./src/main.c:57: for(i = 0; i <= PWM_CNT_UPPER; i++)
      000140 7E 00            [12]  489 	mov	r6,#0x00
      000142 7F 00            [12]  490 	mov	r7,#0x00
      000144                        491 00120$:
                                    492 ;	./src/main.c:59: g_duty_cycle = g_duty_cycle - i;
      000144 E5 0C            [12]  493 	mov	a,_g_duty_cycle
      000146 C3               [12]  494 	clr	c
      000147 9E               [12]  495 	subb	a,r6
      000148 F5 0C            [12]  496 	mov	_g_duty_cycle,a
      00014A E5 0D            [12]  497 	mov	a,(_g_duty_cycle + 1)
      00014C 9F               [12]  498 	subb	a,r7
      00014D F5 0D            [12]  499 	mov	(_g_duty_cycle + 1),a
                                    500 ;	./src/main.c:60: delay_ms(50);
      00014F 90 00 32         [24]  501 	mov	dptr,#0x0032
      000152 C0 07            [24]  502 	push	ar7
      000154 C0 06            [24]  503 	push	ar6
      000156 12 02 87         [24]  504 	lcall	_delay_ms
      000159 D0 06            [24]  505 	pop	ar6
      00015B D0 07            [24]  506 	pop	ar7
                                    507 ;	./src/main.c:57: for(i = 0; i <= PWM_CNT_UPPER; i++)
      00015D 0E               [12]  508 	inc	r6
      00015E BE 00 01         [24]  509 	cjne	r6,#0x00,00214$
      000161 0F               [12]  510 	inc	r7
      000162                        511 00214$:
      000162 C3               [12]  512 	clr	c
      000163 74 64            [12]  513 	mov	a,#0x64
      000165 9E               [12]  514 	subb	a,r6
      000166 74 80            [12]  515 	mov	a,#(0x00 ^ 0x80)
      000168 8F F0            [24]  516 	mov	b,r7
      00016A 63 F0 80         [24]  517 	xrl	b,#0x80
      00016D 95 F0            [12]  518 	subb	a,b
      00016F 50 D3            [24]  519 	jnc	00120$
                                    520 ;	./src/main.c:63: for(i = 0; i <= PWM_CNT_UPPER; i++)
      000171 7E 00            [12]  521 	mov	r6,#0x00
      000173 7F 00            [12]  522 	mov	r7,#0x00
      000175                        523 00122$:
                                    524 ;	./src/main.c:65: r_duty_cycle = i;
      000175 8E 0A            [24]  525 	mov	_r_duty_cycle,r6
      000177 8F 0B            [24]  526 	mov	(_r_duty_cycle + 1),r7
                                    527 ;	./src/main.c:66: delay_ms(50);
      000179 90 00 32         [24]  528 	mov	dptr,#0x0032
      00017C C0 07            [24]  529 	push	ar7
      00017E C0 06            [24]  530 	push	ar6
      000180 12 02 87         [24]  531 	lcall	_delay_ms
      000183 D0 06            [24]  532 	pop	ar6
      000185 D0 07            [24]  533 	pop	ar7
                                    534 ;	./src/main.c:63: for(i = 0; i <= PWM_CNT_UPPER; i++)
      000187 0E               [12]  535 	inc	r6
      000188 BE 00 01         [24]  536 	cjne	r6,#0x00,00216$
      00018B 0F               [12]  537 	inc	r7
      00018C                        538 00216$:
      00018C C3               [12]  539 	clr	c
      00018D 74 64            [12]  540 	mov	a,#0x64
      00018F 9E               [12]  541 	subb	a,r6
      000190 74 80            [12]  542 	mov	a,#(0x00 ^ 0x80)
      000192 8F F0            [24]  543 	mov	b,r7
      000194 63 F0 80         [24]  544 	xrl	b,#0x80
      000197 95 F0            [12]  545 	subb	a,b
      000199 50 DA            [24]  546 	jnc	00122$
                                    547 ;	./src/main.c:70: for(i = 0; i <= PWM_CNT_UPPER; i++)
      00019B 7E 00            [12]  548 	mov	r6,#0x00
      00019D 7F 00            [12]  549 	mov	r7,#0x00
      00019F                        550 00124$:
                                    551 ;	./src/main.c:72: g_duty_cycle = i;
      00019F 8E 0C            [24]  552 	mov	_g_duty_cycle,r6
      0001A1 8F 0D            [24]  553 	mov	(_g_duty_cycle + 1),r7
                                    554 ;	./src/main.c:73: delay_ms(50);
      0001A3 90 00 32         [24]  555 	mov	dptr,#0x0032
      0001A6 C0 07            [24]  556 	push	ar7
      0001A8 C0 06            [24]  557 	push	ar6
      0001AA 12 02 87         [24]  558 	lcall	_delay_ms
      0001AD D0 06            [24]  559 	pop	ar6
      0001AF D0 07            [24]  560 	pop	ar7
                                    561 ;	./src/main.c:70: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0001B1 0E               [12]  562 	inc	r6
      0001B2 BE 00 01         [24]  563 	cjne	r6,#0x00,00218$
      0001B5 0F               [12]  564 	inc	r7
      0001B6                        565 00218$:
      0001B6 C3               [12]  566 	clr	c
      0001B7 74 64            [12]  567 	mov	a,#0x64
      0001B9 9E               [12]  568 	subb	a,r6
      0001BA 74 80            [12]  569 	mov	a,#(0x00 ^ 0x80)
      0001BC 8F F0            [24]  570 	mov	b,r7
      0001BE 63 F0 80         [24]  571 	xrl	b,#0x80
      0001C1 95 F0            [12]  572 	subb	a,b
      0001C3 50 DA            [24]  573 	jnc	00124$
                                    574 ;	./src/main.c:76: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0001C5 7E 00            [12]  575 	mov	r6,#0x00
      0001C7 7F 00            [12]  576 	mov	r7,#0x00
      0001C9                        577 00126$:
                                    578 ;	./src/main.c:78: r_duty_cycle = r_duty_cycle - i;
      0001C9 E5 0A            [12]  579 	mov	a,_r_duty_cycle
      0001CB C3               [12]  580 	clr	c
      0001CC 9E               [12]  581 	subb	a,r6
      0001CD F5 0A            [12]  582 	mov	_r_duty_cycle,a
      0001CF E5 0B            [12]  583 	mov	a,(_r_duty_cycle + 1)
      0001D1 9F               [12]  584 	subb	a,r7
      0001D2 F5 0B            [12]  585 	mov	(_r_duty_cycle + 1),a
                                    586 ;	./src/main.c:79: g_duty_cycle = g_duty_cycle - i;
      0001D4 E5 0C            [12]  587 	mov	a,_g_duty_cycle
      0001D6 C3               [12]  588 	clr	c
      0001D7 9E               [12]  589 	subb	a,r6
      0001D8 F5 0C            [12]  590 	mov	_g_duty_cycle,a
      0001DA E5 0D            [12]  591 	mov	a,(_g_duty_cycle + 1)
      0001DC 9F               [12]  592 	subb	a,r7
      0001DD F5 0D            [12]  593 	mov	(_g_duty_cycle + 1),a
                                    594 ;	./src/main.c:80: b_duty_cycle = b_duty_cycle - i;
      0001DF E5 0E            [12]  595 	mov	a,_b_duty_cycle
      0001E1 C3               [12]  596 	clr	c
      0001E2 9E               [12]  597 	subb	a,r6
      0001E3 F5 0E            [12]  598 	mov	_b_duty_cycle,a
      0001E5 E5 0F            [12]  599 	mov	a,(_b_duty_cycle + 1)
      0001E7 9F               [12]  600 	subb	a,r7
      0001E8 F5 0F            [12]  601 	mov	(_b_duty_cycle + 1),a
                                    602 ;	./src/main.c:81: delay_ms(50);
      0001EA 90 00 32         [24]  603 	mov	dptr,#0x0032
      0001ED C0 07            [24]  604 	push	ar7
      0001EF C0 06            [24]  605 	push	ar6
      0001F1 12 02 87         [24]  606 	lcall	_delay_ms
      0001F4 D0 06            [24]  607 	pop	ar6
      0001F6 D0 07            [24]  608 	pop	ar7
                                    609 ;	./src/main.c:76: for(i = 0; i <= PWM_CNT_UPPER; i++)
      0001F8 0E               [12]  610 	inc	r6
      0001F9 BE 00 01         [24]  611 	cjne	r6,#0x00,00220$
      0001FC 0F               [12]  612 	inc	r7
      0001FD                        613 00220$:
      0001FD C3               [12]  614 	clr	c
      0001FE 74 64            [12]  615 	mov	a,#0x64
      000200 9E               [12]  616 	subb	a,r6
      000201 74 80            [12]  617 	mov	a,#(0x00 ^ 0x80)
      000203 8F F0            [24]  618 	mov	b,r7
      000205 63 F0 80         [24]  619 	xrl	b,#0x80
      000208 95 F0            [12]  620 	subb	a,b
      00020A 50 BD            [24]  621 	jnc	00126$
                                    622 ;	./src/main.c:84: }
      00020C 02 00 91         [24]  623 	ljmp	00130$
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'PWM_Dimming_LED'
                                    626 ;------------------------------------------------------------
                                    627 ;	./src/main.c:85: void PWM_Dimming_LED(void) __interrupt (1)
                                    628 ;	-----------------------------------------
                                    629 ;	 function PWM_Dimming_LED
                                    630 ;	-----------------------------------------
      00020F                        631 _PWM_Dimming_LED:
      00020F C0 E0            [24]  632 	push	acc
      000211 C0 F0            [24]  633 	push	b
      000213 C0 D0            [24]  634 	push	psw
                                    635 ;	./src/main.c:87: TH0 = freq >> 8;
      000215 75 8C FF         [24]  636 	mov	_TH0,#0xff
                                    637 ;	./src/main.c:88: TL0 = freq & 0xFF;   
      000218 75 8A 9C         [24]  638 	mov	_TL0,#0x9c
                                    639 ;	./src/main.c:90: pwm_count++;
      00021B 05 08            [12]  640 	inc	_pwm_count
      00021D E4               [12]  641 	clr	a
      00021E B5 08 02         [24]  642 	cjne	a,_pwm_count,00130$
      000221 05 09            [12]  643 	inc	(_pwm_count + 1)
      000223                        644 00130$:
                                    645 ;	./src/main.c:91: if(pwm_count >= PWM_CNT_UPPER)
      000223 C3               [12]  646 	clr	c
      000224 E5 08            [12]  647 	mov	a,_pwm_count
      000226 94 64            [12]  648 	subb	a,#0x64
      000228 E5 09            [12]  649 	mov	a,(_pwm_count + 1)
      00022A 64 80            [12]  650 	xrl	a,#0x80
      00022C 94 80            [12]  651 	subb	a,#0x80
      00022E 40 05            [24]  652 	jc	00102$
                                    653 ;	./src/main.c:92: pwm_count = 0;
      000230 E4               [12]  654 	clr	a
      000231 F5 08            [12]  655 	mov	_pwm_count,a
      000233 F5 09            [12]  656 	mov	(_pwm_count + 1),a
      000235                        657 00102$:
                                    658 ;	./src/main.c:94: if(r_duty_cycle > pwm_count)  
      000235 C3               [12]  659 	clr	c
      000236 E5 08            [12]  660 	mov	a,_pwm_count
      000238 95 0A            [12]  661 	subb	a,_r_duty_cycle
      00023A E5 09            [12]  662 	mov	a,(_pwm_count + 1)
      00023C 64 80            [12]  663 	xrl	a,#0x80
      00023E 85 0B F0         [24]  664 	mov	b,(_r_duty_cycle + 1)
      000241 63 F0 80         [24]  665 	xrl	b,#0x80
      000244 95 F0            [12]  666 	subb	a,b
      000246 50 04            [24]  667 	jnc	00104$
                                    668 ;	./src/main.c:95: PWM_R_Pin = 0;
                                    669 ;	assignBit
      000248 C2 90            [12]  670 	clr	_P1_0
      00024A 80 02            [24]  671 	sjmp	00105$
      00024C                        672 00104$:
                                    673 ;	./src/main.c:97: PWM_R_Pin = 1;
                                    674 ;	assignBit
      00024C D2 90            [12]  675 	setb	_P1_0
      00024E                        676 00105$:
                                    677 ;	./src/main.c:99: if(g_duty_cycle > pwm_count)  
      00024E C3               [12]  678 	clr	c
      00024F E5 08            [12]  679 	mov	a,_pwm_count
      000251 95 0C            [12]  680 	subb	a,_g_duty_cycle
      000253 E5 09            [12]  681 	mov	a,(_pwm_count + 1)
      000255 64 80            [12]  682 	xrl	a,#0x80
      000257 85 0D F0         [24]  683 	mov	b,(_g_duty_cycle + 1)
      00025A 63 F0 80         [24]  684 	xrl	b,#0x80
      00025D 95 F0            [12]  685 	subb	a,b
      00025F 50 04            [24]  686 	jnc	00107$
                                    687 ;	./src/main.c:100: PWM_G_Pin = 0;
                                    688 ;	assignBit
      000261 C2 91            [12]  689 	clr	_P1_1
      000263 80 02            [24]  690 	sjmp	00108$
      000265                        691 00107$:
                                    692 ;	./src/main.c:102: PWM_G_Pin = 1;
                                    693 ;	assignBit
      000265 D2 91            [12]  694 	setb	_P1_1
      000267                        695 00108$:
                                    696 ;	./src/main.c:104: if(b_duty_cycle > pwm_count)  
      000267 C3               [12]  697 	clr	c
      000268 E5 08            [12]  698 	mov	a,_pwm_count
      00026A 95 0E            [12]  699 	subb	a,_b_duty_cycle
      00026C E5 09            [12]  700 	mov	a,(_pwm_count + 1)
      00026E 64 80            [12]  701 	xrl	a,#0x80
      000270 85 0F F0         [24]  702 	mov	b,(_b_duty_cycle + 1)
      000273 63 F0 80         [24]  703 	xrl	b,#0x80
      000276 95 F0            [12]  704 	subb	a,b
      000278 50 04            [24]  705 	jnc	00110$
                                    706 ;	./src/main.c:105: PWM_B_Pin = 0;
                                    707 ;	assignBit
      00027A C2 92            [12]  708 	clr	_P1_2
      00027C 80 02            [24]  709 	sjmp	00112$
      00027E                        710 00110$:
                                    711 ;	./src/main.c:107: PWM_B_Pin = 1;
                                    712 ;	assignBit
      00027E D2 92            [12]  713 	setb	_P1_2
      000280                        714 00112$:
                                    715 ;	./src/main.c:108: }
      000280 D0 D0            [24]  716 	pop	psw
      000282 D0 F0            [24]  717 	pop	b
      000284 D0 E0            [24]  718 	pop	acc
      000286 32               [24]  719 	reti
                                    720 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    721 ;	eliminated unneeded push/pop dpl
                                    722 ;	eliminated unneeded push/pop dph
                                    723 	.area CSEG    (CODE)
                                    724 	.area CONST   (CODE)
                                    725 	.area XINIT   (CODE)
                                    726 	.area CABS    (ABS,CODE)
