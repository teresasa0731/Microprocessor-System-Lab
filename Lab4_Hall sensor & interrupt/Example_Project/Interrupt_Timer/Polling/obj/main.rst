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
                                     12 	.globl _timer_delay
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
                                    109 	.globl _cnt
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
      000008                        225 _cnt::
      000008                        226 	.ds 2
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable items in internal ram
                                    229 ;--------------------------------------------------------
                                    230 ;--------------------------------------------------------
                                    231 ; Stack segment in internal ram
                                    232 ;--------------------------------------------------------
                                    233 	.area SSEG
      00000A                        234 __start__stack:
      00000A                        235 	.ds	1
                                    236 
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; uninitialized external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; initialized external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; interrupt vector
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
      000000                        280 __interrupt_vect:
      000000 02 00 06         [24]  281 	ljmp	__sdcc_gsinit_startup
                                    282 ;--------------------------------------------------------
                                    283 ; global & static initialisations
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.globl __sdcc_gsinit_startup
                                    290 	.globl __sdcc_program_startup
                                    291 	.globl __start__stack
                                    292 	.globl __mcs51_genXINIT
                                    293 	.globl __mcs51_genXRAMCLEAR
                                    294 	.globl __mcs51_genRAMCLEAR
                                    295 ;	./src/main.c:3: int cnt = 0;
      00005F E4               [12]  296 	clr	a
      000060 F5 08            [12]  297 	mov	_cnt,a
      000062 F5 09            [12]  298 	mov	(_cnt + 1),a
                                    299 	.area GSFINAL (CODE)
      000064 02 00 03         [24]  300 	ljmp	__sdcc_program_startup
                                    301 ;--------------------------------------------------------
                                    302 ; Home
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area HOME    (CODE)
      000003                        306 __sdcc_program_startup:
      000003 02 00 77         [24]  307 	ljmp	_main
                                    308 ;	return from main will return to caller
                                    309 ;--------------------------------------------------------
                                    310 ; code
                                    311 ;--------------------------------------------------------
                                    312 	.area CSEG    (CODE)
                                    313 ;------------------------------------------------------------
                                    314 ;Allocation info for local variables in function 'timer_delay'
                                    315 ;------------------------------------------------------------
                                    316 ;	./src/main.c:5: void timer_delay(void)			    // Delay function, delays 1ms
                                    317 ;	-----------------------------------------
                                    318 ;	 function timer_delay
                                    319 ;	-----------------------------------------
      000067                        320 _timer_delay:
                           000007   321 	ar7 = 0x07
                           000006   322 	ar6 = 0x06
                           000005   323 	ar5 = 0x05
                           000004   324 	ar4 = 0x04
                           000003   325 	ar3 = 0x03
                           000002   326 	ar2 = 0x02
                           000001   327 	ar1 = 0x01
                           000000   328 	ar0 = 0x00
                                    329 ;	./src/main.c:7: TH0 = (65536-1000) / 256;	// Load higher 8 bits into Timer 0
      000067 75 8C FC         [24]  330 	mov	_TH0,#0xfc
                                    331 ;	./src/main.c:8: TL0 = (65536-1000) % 256;   // Load lower 8 bits into Timer 0
      00006A 75 8A 18         [24]  332 	mov	_TL0,#0x18
                                    333 ;	./src/main.c:9: TR0 = 1;                    // Start Timer 0
                                    334 ;	assignBit
      00006D D2 8C            [12]  335 	setb	_TR0
                                    336 ;	./src/main.c:10: TF0 = 0;                    // Clear Timer 0 flag
                                    337 ;	assignBit
      00006F C2 8D            [12]  338 	clr	_TF0
                                    339 ;	./src/main.c:11: while(TF0 == 0);		    // Wait until Timer 0 flag is set (1ms)
      000071                        340 00101$:
      000071 30 8D FD         [24]  341 	jnb	_TF0,00101$
                                    342 ;	./src/main.c:12: TR0 = 0;			        // Stop Timer 0
                                    343 ;	assignBit
      000074 C2 8C            [12]  344 	clr	_TR0
                                    345 ;	./src/main.c:13: }
      000076 22               [24]  346 	ret
                                    347 ;------------------------------------------------------------
                                    348 ;Allocation info for local variables in function 'main'
                                    349 ;------------------------------------------------------------
                                    350 ;	./src/main.c:16: void main(void)
                                    351 ;	-----------------------------------------
                                    352 ;	 function main
                                    353 ;	-----------------------------------------
      000077                        354 _main:
                                    355 ;	./src/main.c:18: P1 =  0x00;									// Initial wave signal
      000077 75 90 00         [24]  356 	mov	_P1,#0x00
                                    357 ;	./src/main.c:19: TMOD = 0x01;								// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
      00007A 75 89 01         [24]  358 	mov	_TMOD,#0x01
                                    359 ;	./src/main.c:20: while(1)
      00007D                        360 00103$:
                                    361 ;	./src/main.c:22: P1 = ~P1;		     					// Reverse wave signal
      00007D E5 90            [12]  362 	mov	a,_P1
      00007F F4               [12]  363 	cpl	a
      000080 F5 90            [12]  364 	mov	_P1,a
                                    365 ;	./src/main.c:23: for(cnt = 0; cnt < 1000; cnt ++)		// Do a thousand times
      000082 E4               [12]  366 	clr	a
      000083 F5 08            [12]  367 	mov	_cnt,a
      000085 F5 09            [12]  368 	mov	(_cnt + 1),a
      000087                        369 00105$:
                                    370 ;	./src/main.c:24: timer_delay();						// Repeatedly call timer_delay
      000087 12 00 67         [24]  371 	lcall	_timer_delay
                                    372 ;	./src/main.c:23: for(cnt = 0; cnt < 1000; cnt ++)		// Do a thousand times
      00008A 05 08            [12]  373 	inc	_cnt
      00008C E4               [12]  374 	clr	a
      00008D B5 08 02         [24]  375 	cjne	a,_cnt,00121$
      000090 05 09            [12]  376 	inc	(_cnt + 1)
      000092                        377 00121$:
      000092 C3               [12]  378 	clr	c
      000093 E5 08            [12]  379 	mov	a,_cnt
      000095 94 E8            [12]  380 	subb	a,#0xe8
      000097 E5 09            [12]  381 	mov	a,(_cnt + 1)
      000099 64 80            [12]  382 	xrl	a,#0x80
      00009B 94 83            [12]  383 	subb	a,#0x83
      00009D 40 E8            [24]  384 	jc	00105$
                                    385 ;	./src/main.c:26: }
      00009F 80 DC            [24]  386 	sjmp	00103$
                                    387 	.area CSEG    (CODE)
                                    388 	.area CONST   (CODE)
                                    389 	.area XINIT   (CODE)
                                    390 	.area CABS    (ABS,CODE)
