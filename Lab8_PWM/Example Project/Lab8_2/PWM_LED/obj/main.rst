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
                                    111 	.globl _pwm_count
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      000008                        227 _pwm_count::
      000008                        228 	.ds 2
      00000A                        229 _duty_cycle::
      00000A                        230 	.ds 2
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable items in internal ram
                                    233 ;--------------------------------------------------------
                                    234 ;--------------------------------------------------------
                                    235 ; Stack segment in internal ram
                                    236 ;--------------------------------------------------------
                                    237 	.area SSEG
      00000C                        238 __start__stack:
      00000C                        239 	.ds	1
                                    240 
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; absolute internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area IABS    (ABS,DATA)
                                    249 	.area IABS    (ABS,DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; bit data
                                    252 ;--------------------------------------------------------
                                    253 	.area BSEG    (BIT)
                                    254 ;--------------------------------------------------------
                                    255 ; paged external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area PSEG    (PAG,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; uninitialized external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XSEG    (XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XABS    (ABS,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; initialized external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XISEG   (XDATA)
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT0 (CODE)
                                    272 	.area GSINIT1 (CODE)
                                    273 	.area GSINIT2 (CODE)
                                    274 	.area GSINIT3 (CODE)
                                    275 	.area GSINIT4 (CODE)
                                    276 	.area GSINIT5 (CODE)
                                    277 	.area GSINIT  (CODE)
                                    278 	.area GSFINAL (CODE)
                                    279 	.area CSEG    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; interrupt vector
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
      000000                        284 __interrupt_vect:
      000000 02 00 11         [24]  285 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  286 	reti
      000004                        287 	.ds	7
      00000B 02 00 B4         [24]  288 	ljmp	_PWM_Dimming_LED
                                    289 ;--------------------------------------------------------
                                    290 ; global & static initialisations
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.area GSFINAL (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.globl __sdcc_gsinit_startup
                                    297 	.globl __sdcc_program_startup
                                    298 	.globl __start__stack
                                    299 	.globl __mcs51_genXINIT
                                    300 	.globl __mcs51_genXRAMCLEAR
                                    301 	.globl __mcs51_genRAMCLEAR
                                    302 ;	./src/main.c:7: int pwm_count=0;
      00006A E4               [12]  303 	clr	a
      00006B F5 08            [12]  304 	mov	_pwm_count,a
      00006D F5 09            [12]  305 	mov	(_pwm_count + 1),a
                                    306 ;	./src/main.c:8: int duty_cycle = 0;
      00006F F5 0A            [12]  307 	mov	_duty_cycle,a
      000071 F5 0B            [12]  308 	mov	(_duty_cycle + 1),a
                                    309 	.area GSFINAL (CODE)
      000073 02 00 0E         [24]  310 	ljmp	__sdcc_program_startup
                                    311 ;--------------------------------------------------------
                                    312 ; Home
                                    313 ;--------------------------------------------------------
                                    314 	.area HOME    (CODE)
                                    315 	.area HOME    (CODE)
      00000E                        316 __sdcc_program_startup:
      00000E 02 00 76         [24]  317 	ljmp	_main
                                    318 ;	return from main will return to caller
                                    319 ;--------------------------------------------------------
                                    320 ; code
                                    321 ;--------------------------------------------------------
                                    322 	.area CSEG    (CODE)
                                    323 ;------------------------------------------------------------
                                    324 ;Allocation info for local variables in function 'main'
                                    325 ;------------------------------------------------------------
                                    326 ;i                         Allocated to registers r6 r7 
                                    327 ;------------------------------------------------------------
                                    328 ;	./src/main.c:9: int main(void)
                                    329 ;	-----------------------------------------
                                    330 ;	 function main
                                    331 ;	-----------------------------------------
      000076                        332 _main:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
                                    341 ;	./src/main.c:12: P1 = 0x7F;
      000076 75 90 7F         [24]  342 	mov	_P1,#0x7f
                                    343 ;	./src/main.c:13: TMOD = 0x01;
      000079 75 89 01         [24]  344 	mov	_TMOD,#0x01
                                    345 ;	./src/main.c:14: TH0 = freq >> 8;
      00007C 75 8C FF         [24]  346 	mov	_TH0,#0xff
                                    347 ;	./src/main.c:15: TL0 = freq & 0xFF;  
      00007F 75 8A 9C         [24]  348 	mov	_TL0,#0x9c
                                    349 ;	./src/main.c:16: ET0 = 1;								
                                    350 ;	assignBit
      000082 D2 A9            [12]  351 	setb	_ET0
                                    352 ;	./src/main.c:17: EA = 1;									
                                    353 ;	assignBit
      000084 D2 AF            [12]  354 	setb	_EA
                                    355 ;	./src/main.c:18: TR0 = 1;
                                    356 ;	assignBit
      000086 D2 8C            [12]  357 	setb	_TR0
                                    358 ;	./src/main.c:22: for(i = 0; i <= PWM_CNT_UPPER; i++)
      000088                        359 00109$:
      000088 7E 00            [12]  360 	mov	r6,#0x00
      00008A 7F 00            [12]  361 	mov	r7,#0x00
      00008C                        362 00105$:
                                    363 ;	./src/main.c:24: duty_cycle = i;
      00008C 8E 0A            [24]  364 	mov	_duty_cycle,r6
      00008E 8F 0B            [24]  365 	mov	(_duty_cycle + 1),r7
                                    366 ;	./src/main.c:25: delay_ms(100);
      000090 90 00 64         [24]  367 	mov	dptr,#0x0064
      000093 C0 07            [24]  368 	push	ar7
      000095 C0 06            [24]  369 	push	ar6
      000097 12 00 FA         [24]  370 	lcall	_delay_ms
      00009A D0 06            [24]  371 	pop	ar6
      00009C D0 07            [24]  372 	pop	ar7
                                    373 ;	./src/main.c:22: for(i = 0; i <= PWM_CNT_UPPER; i++)
      00009E 0E               [12]  374 	inc	r6
      00009F BE 00 01         [24]  375 	cjne	r6,#0x00,00122$
      0000A2 0F               [12]  376 	inc	r7
      0000A3                        377 00122$:
      0000A3 C3               [12]  378 	clr	c
      0000A4 74 64            [12]  379 	mov	a,#0x64
      0000A6 9E               [12]  380 	subb	a,r6
      0000A7 74 80            [12]  381 	mov	a,#(0x00 ^ 0x80)
      0000A9 8F F0            [24]  382 	mov	b,r7
      0000AB 63 F0 80         [24]  383 	xrl	b,#0x80
      0000AE 95 F0            [12]  384 	subb	a,b
      0000B0 50 DA            [24]  385 	jnc	00105$
                                    386 ;	./src/main.c:28: }
      0000B2 80 D4            [24]  387 	sjmp	00109$
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'PWM_Dimming_LED'
                                    390 ;------------------------------------------------------------
                                    391 ;	./src/main.c:29: void PWM_Dimming_LED(void) __interrupt (1)  
                                    392 ;	-----------------------------------------
                                    393 ;	 function PWM_Dimming_LED
                                    394 ;	-----------------------------------------
      0000B4                        395 _PWM_Dimming_LED:
      0000B4 C0 E0            [24]  396 	push	acc
      0000B6 C0 F0            [24]  397 	push	b
      0000B8 C0 D0            [24]  398 	push	psw
                                    399 ;	./src/main.c:31: TH0 = freq >> 8;
      0000BA 75 8C FF         [24]  400 	mov	_TH0,#0xff
                                    401 ;	./src/main.c:32: TL0 = freq & 0xFF;   
      0000BD 75 8A 9C         [24]  402 	mov	_TL0,#0x9c
                                    403 ;	./src/main.c:34: pwm_count++;
      0000C0 05 08            [12]  404 	inc	_pwm_count
      0000C2 E4               [12]  405 	clr	a
      0000C3 B5 08 02         [24]  406 	cjne	a,_pwm_count,00116$
      0000C6 05 09            [12]  407 	inc	(_pwm_count + 1)
      0000C8                        408 00116$:
                                    409 ;	./src/main.c:35: if(pwm_count >= PWM_CNT_UPPER)
      0000C8 C3               [12]  410 	clr	c
      0000C9 E5 08            [12]  411 	mov	a,_pwm_count
      0000CB 94 64            [12]  412 	subb	a,#0x64
      0000CD E5 09            [12]  413 	mov	a,(_pwm_count + 1)
      0000CF 64 80            [12]  414 	xrl	a,#0x80
      0000D1 94 80            [12]  415 	subb	a,#0x80
      0000D3 40 05            [24]  416 	jc	00102$
                                    417 ;	./src/main.c:36: pwm_count = 0;
      0000D5 E4               [12]  418 	clr	a
      0000D6 F5 08            [12]  419 	mov	_pwm_count,a
      0000D8 F5 09            [12]  420 	mov	(_pwm_count + 1),a
      0000DA                        421 00102$:
                                    422 ;	./src/main.c:38: if(duty_cycle > pwm_count)  
      0000DA C3               [12]  423 	clr	c
      0000DB E5 08            [12]  424 	mov	a,_pwm_count
      0000DD 95 0A            [12]  425 	subb	a,_duty_cycle
      0000DF E5 09            [12]  426 	mov	a,(_pwm_count + 1)
      0000E1 64 80            [12]  427 	xrl	a,#0x80
      0000E3 85 0B F0         [24]  428 	mov	b,(_duty_cycle + 1)
      0000E6 63 F0 80         [24]  429 	xrl	b,#0x80
      0000E9 95 F0            [12]  430 	subb	a,b
      0000EB 50 04            [24]  431 	jnc	00104$
                                    432 ;	./src/main.c:39: PWM_Pin = 0;
                                    433 ;	assignBit
      0000ED C2 90            [12]  434 	clr	_P1_0
      0000EF 80 02            [24]  435 	sjmp	00106$
      0000F1                        436 00104$:
                                    437 ;	./src/main.c:41: PWM_Pin = 1; 
                                    438 ;	assignBit
      0000F1 D2 90            [12]  439 	setb	_P1_0
      0000F3                        440 00106$:
                                    441 ;	./src/main.c:42: }
      0000F3 D0 D0            [24]  442 	pop	psw
      0000F5 D0 F0            [24]  443 	pop	b
      0000F7 D0 E0            [24]  444 	pop	acc
      0000F9 32               [24]  445 	reti
                                    446 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    447 ;	eliminated unneeded push/pop dpl
                                    448 ;	eliminated unneeded push/pop dph
                                    449 	.area CSEG    (CODE)
                                    450 	.area CONST   (CODE)
                                    451 	.area XINIT   (CODE)
                                    452 	.area CABS    (ABS,CODE)
