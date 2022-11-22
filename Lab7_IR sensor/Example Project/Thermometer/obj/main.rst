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
                                     12 	.globl _readAmbientTemp
                                     13 	.globl _readObjectTemp
                                     14 	.globl _delay_ms
                                     15 	.globl _OLED_SetCursor
                                     16 	.globl _OLED_DisplayString
                                     17 	.globl _OLED_DisplayChar
                                     18 	.globl _OLED_Init
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _data_buf2
                                    116 	.globl _data_buf1
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
      000008                        232 _data_buf1::
      000008                        233 	.ds 2
      00000A                        234 _data_buf2::
      00000A                        235 	.ds 2
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram
                                    238 ;--------------------------------------------------------
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram
                                    241 ;--------------------------------------------------------
                                    242 	.area SSEG
      000013                        243 __start__stack:
      000013                        244 	.ds	1
                                    245 
                                    246 ;--------------------------------------------------------
                                    247 ; indirectly addressable internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area ISEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area IABS    (ABS,DATA)
                                    254 	.area IABS    (ABS,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; bit data
                                    257 ;--------------------------------------------------------
                                    258 	.area BSEG    (BIT)
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; uninitialized external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; initialized external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XISEG   (XDATA)
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT0 (CODE)
                                    277 	.area GSINIT1 (CODE)
                                    278 	.area GSINIT2 (CODE)
                                    279 	.area GSINIT3 (CODE)
                                    280 	.area GSINIT4 (CODE)
                                    281 	.area GSINIT5 (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area CSEG    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; interrupt vector
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
      000000                        289 __interrupt_vect:
      000000 02 00 06         [24]  290 	ljmp	__sdcc_gsinit_startup
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.globl __sdcc_gsinit_startup
                                    299 	.globl __sdcc_program_startup
                                    300 	.globl __start__stack
                                    301 	.globl __mcs51_genXINIT
                                    302 	.globl __mcs51_genXRAMCLEAR
                                    303 	.globl __mcs51_genRAMCLEAR
                                    304 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  305 	ljmp	__sdcc_program_startup
                                    306 ;--------------------------------------------------------
                                    307 ; Home
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area HOME    (CODE)
      000003                        311 __sdcc_program_startup:
      000003 02 00 65         [24]  312 	ljmp	_main
                                    313 ;	return from main will return to caller
                                    314 ;--------------------------------------------------------
                                    315 ; code
                                    316 ;--------------------------------------------------------
                                    317 	.area CSEG    (CODE)
                                    318 ;------------------------------------------------------------
                                    319 ;Allocation info for local variables in function 'main'
                                    320 ;------------------------------------------------------------
                                    321 ;	./src/main.c:11: int main() 
                                    322 ;	-----------------------------------------
                                    323 ;	 function main
                                    324 ;	-----------------------------------------
      000065                        325 _main:
                           000007   326 	ar7 = 0x07
                           000006   327 	ar6 = 0x06
                           000005   328 	ar5 = 0x05
                           000004   329 	ar4 = 0x04
                           000003   330 	ar3 = 0x03
                           000002   331 	ar2 = 0x02
                           000001   332 	ar1 = 0x01
                           000000   333 	ar0 = 0x00
                                    334 ;	./src/main.c:13: SDA = 1;
                                    335 ;	assignBit
      000065 D2 81            [12]  336 	setb	_P0_1
                                    337 ;	./src/main.c:14: SCL = 1;
                                    338 ;	assignBit
      000067 D2 80            [12]  339 	setb	_P0_0
                                    340 ;	./src/main.c:15: OLED_Init();		        // Check oled_i2c.c file for SCL,SDA pin connection
      000069 12 03 CD         [24]  341 	lcall	_OLED_Init
                                    342 ;	./src/main.c:16: OLED_SetCursor(0,0);     // Set cursor at 0th-line 0th-Position
      00006C 75 10 00         [24]  343 	mov	_OLED_SetCursor_PARM_2,#0x00
      00006F 75 82 00         [24]  344 	mov	dpl,#0x00
      000072 12 04 E3         [24]  345 	lcall	_OLED_SetCursor
                                    346 ;	./src/main.c:17: OLED_DisplayString("Lab5 Demo");	 
      000075 90 09 20         [24]  347 	mov	dptr,#___str_0
      000078 75 F0 80         [24]  348 	mov	b,#0x80
      00007B 12 04 8D         [24]  349 	lcall	_OLED_DisplayString
                                    350 ;	./src/main.c:18: OLED_SetCursor(5, 0); 
      00007E 75 10 00         [24]  351 	mov	_OLED_SetCursor_PARM_2,#0x00
      000081 75 82 05         [24]  352 	mov	dpl,#0x05
      000084 12 04 E3         [24]  353 	lcall	_OLED_SetCursor
                                    354 ;	./src/main.c:19: OLED_DisplayString("AmbientTempC: ");
      000087 90 09 2A         [24]  355 	mov	dptr,#___str_1
      00008A 75 F0 80         [24]  356 	mov	b,#0x80
      00008D 12 04 8D         [24]  357 	lcall	_OLED_DisplayString
                                    358 ;	./src/main.c:20: OLED_SetCursor(7, 0);  
      000090 75 10 00         [24]  359 	mov	_OLED_SetCursor_PARM_2,#0x00
      000093 75 82 07         [24]  360 	mov	dpl,#0x07
      000096 12 04 E3         [24]  361 	lcall	_OLED_SetCursor
                                    362 ;	./src/main.c:21: OLED_DisplayString("ObjectTempC: ");
      000099 90 09 39         [24]  363 	mov	dptr,#___str_2
      00009C 75 F0 80         [24]  364 	mov	b,#0x80
      00009F 12 04 8D         [24]  365 	lcall	_OLED_DisplayString
                                    366 ;	./src/main.c:23: while(1) {
      0000A2                        367 00108$:
                                    368 ;	./src/main.c:24: data_buf1 = readAmbientTemp();
      0000A2 12 02 D1         [24]  369 	lcall	_readAmbientTemp
      0000A5 12 07 26         [24]  370 	lcall	___fs2sint
      0000A8 85 82 08         [24]  371 	mov	_data_buf1,dpl
      0000AB 85 83 09         [24]  372 	mov	(_data_buf1 + 1),dph
                                    373 ;	./src/main.c:25: data_buf2 = readObjectTemp();
      0000AE 12 02 CB         [24]  374 	lcall	_readObjectTemp
      0000B1 12 07 26         [24]  375 	lcall	___fs2sint
      0000B4 85 82 0A         [24]  376 	mov	_data_buf2,dpl
      0000B7 85 83 0B         [24]  377 	mov	(_data_buf2 + 1),dph
                                    378 ;	./src/main.c:28: OLED_SetCursor(5, 80);
      0000BA 75 10 50         [24]  379 	mov	_OLED_SetCursor_PARM_2,#0x50
      0000BD 75 82 05         [24]  380 	mov	dpl,#0x05
      0000C0 12 04 E3         [24]  381 	lcall	_OLED_SetCursor
                                    382 ;	./src/main.c:29: if(data_buf1 < 0) {
      0000C3 E5 09            [12]  383 	mov	a,(_data_buf1 + 1)
      0000C5 30 E7 13         [24]  384 	jnb	acc.7,00102$
                                    385 ;	./src/main.c:30: OLED_DisplayChar('-');
      0000C8 75 82 2D         [24]  386 	mov	dpl,#0x2d
      0000CB 12 04 3C         [24]  387 	lcall	_OLED_DisplayChar
                                    388 ;	./src/main.c:31: data_buf1 = data_buf1 * -1;
      0000CE C3               [12]  389 	clr	c
      0000CF E4               [12]  390 	clr	a
      0000D0 95 08            [12]  391 	subb	a,_data_buf1
      0000D2 F5 08            [12]  392 	mov	_data_buf1,a
      0000D4 E4               [12]  393 	clr	a
      0000D5 95 09            [12]  394 	subb	a,(_data_buf1 + 1)
      0000D7 F5 09            [12]  395 	mov	(_data_buf1 + 1),a
      0000D9 80 06            [24]  396 	sjmp	00103$
      0000DB                        397 00102$:
                                    398 ;	./src/main.c:33: OLED_DisplayChar('+');
      0000DB 75 82 2B         [24]  399 	mov	dpl,#0x2b
      0000DE 12 04 3C         [24]  400 	lcall	_OLED_DisplayChar
      0000E1                        401 00103$:
                                    402 ;	./src/main.c:35: OLED_DisplayChar(data_buf1 % 1000 / 100 + '0');
      0000E1 75 11 E8         [24]  403 	mov	__modsint_PARM_2,#0xe8
      0000E4 75 12 03         [24]  404 	mov	(__modsint_PARM_2 + 1),#0x03
      0000E7 85 08 82         [24]  405 	mov	dpl,_data_buf1
      0000EA 85 09 83         [24]  406 	mov	dph,(_data_buf1 + 1)
      0000ED 12 07 EB         [24]  407 	lcall	__modsint
      0000F0 75 11 64         [24]  408 	mov	__divsint_PARM_2,#0x64
      0000F3 75 12 00         [24]  409 	mov	(__divsint_PARM_2 + 1),#0x00
      0000F6 12 08 34         [24]  410 	lcall	__divsint
      0000F9 AE 82            [24]  411 	mov	r6,dpl
      0000FB 74 30            [12]  412 	mov	a,#0x30
      0000FD 2E               [12]  413 	add	a,r6
      0000FE F5 82            [12]  414 	mov	dpl,a
      000100 12 04 3C         [24]  415 	lcall	_OLED_DisplayChar
                                    416 ;	./src/main.c:36: OLED_DisplayChar(data_buf1 % 100 / 10 + '0');
      000103 75 11 64         [24]  417 	mov	__modsint_PARM_2,#0x64
      000106 75 12 00         [24]  418 	mov	(__modsint_PARM_2 + 1),#0x00
      000109 85 08 82         [24]  419 	mov	dpl,_data_buf1
      00010C 85 09 83         [24]  420 	mov	dph,(_data_buf1 + 1)
      00010F 12 07 EB         [24]  421 	lcall	__modsint
      000112 75 11 0A         [24]  422 	mov	__divsint_PARM_2,#0x0a
      000115 75 12 00         [24]  423 	mov	(__divsint_PARM_2 + 1),#0x00
      000118 12 08 34         [24]  424 	lcall	__divsint
      00011B AE 82            [24]  425 	mov	r6,dpl
      00011D 74 30            [12]  426 	mov	a,#0x30
      00011F 2E               [12]  427 	add	a,r6
      000120 F5 82            [12]  428 	mov	dpl,a
      000122 12 04 3C         [24]  429 	lcall	_OLED_DisplayChar
                                    430 ;	./src/main.c:37: OLED_DisplayChar('.');
      000125 75 82 2E         [24]  431 	mov	dpl,#0x2e
      000128 12 04 3C         [24]  432 	lcall	_OLED_DisplayChar
                                    433 ;	./src/main.c:38: OLED_DisplayChar(data_buf1 % 10 / 1 + '0');
      00012B 75 11 0A         [24]  434 	mov	__modsint_PARM_2,#0x0a
      00012E 75 12 00         [24]  435 	mov	(__modsint_PARM_2 + 1),#0x00
      000131 85 08 82         [24]  436 	mov	dpl,_data_buf1
      000134 85 09 83         [24]  437 	mov	dph,(_data_buf1 + 1)
      000137 12 07 EB         [24]  438 	lcall	__modsint
      00013A AE 82            [24]  439 	mov	r6,dpl
      00013C 74 30            [12]  440 	mov	a,#0x30
      00013E 2E               [12]  441 	add	a,r6
      00013F F5 82            [12]  442 	mov	dpl,a
      000141 12 04 3C         [24]  443 	lcall	_OLED_DisplayChar
                                    444 ;	./src/main.c:41: OLED_SetCursor(7, 80);
      000144 75 10 50         [24]  445 	mov	_OLED_SetCursor_PARM_2,#0x50
      000147 75 82 07         [24]  446 	mov	dpl,#0x07
      00014A 12 04 E3         [24]  447 	lcall	_OLED_SetCursor
                                    448 ;	./src/main.c:42: if(data_buf2 < 0) {
      00014D E5 0B            [12]  449 	mov	a,(_data_buf2 + 1)
      00014F 30 E7 13         [24]  450 	jnb	acc.7,00105$
                                    451 ;	./src/main.c:43: OLED_DisplayChar('-');
      000152 75 82 2D         [24]  452 	mov	dpl,#0x2d
      000155 12 04 3C         [24]  453 	lcall	_OLED_DisplayChar
                                    454 ;	./src/main.c:44: data_buf2 = data_buf2 * -1;
      000158 C3               [12]  455 	clr	c
      000159 E4               [12]  456 	clr	a
      00015A 95 0A            [12]  457 	subb	a,_data_buf2
      00015C F5 0A            [12]  458 	mov	_data_buf2,a
      00015E E4               [12]  459 	clr	a
      00015F 95 0B            [12]  460 	subb	a,(_data_buf2 + 1)
      000161 F5 0B            [12]  461 	mov	(_data_buf2 + 1),a
      000163 80 06            [24]  462 	sjmp	00106$
      000165                        463 00105$:
                                    464 ;	./src/main.c:46: OLED_DisplayChar('+');
      000165 75 82 2B         [24]  465 	mov	dpl,#0x2b
      000168 12 04 3C         [24]  466 	lcall	_OLED_DisplayChar
      00016B                        467 00106$:
                                    468 ;	./src/main.c:48: OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
      00016B 75 11 E8         [24]  469 	mov	__modsint_PARM_2,#0xe8
      00016E 75 12 03         [24]  470 	mov	(__modsint_PARM_2 + 1),#0x03
      000171 85 0A 82         [24]  471 	mov	dpl,_data_buf2
      000174 85 0B 83         [24]  472 	mov	dph,(_data_buf2 + 1)
      000177 12 07 EB         [24]  473 	lcall	__modsint
      00017A 75 11 64         [24]  474 	mov	__divsint_PARM_2,#0x64
      00017D 75 12 00         [24]  475 	mov	(__divsint_PARM_2 + 1),#0x00
      000180 12 08 34         [24]  476 	lcall	__divsint
      000183 AE 82            [24]  477 	mov	r6,dpl
      000185 74 30            [12]  478 	mov	a,#0x30
      000187 2E               [12]  479 	add	a,r6
      000188 F5 82            [12]  480 	mov	dpl,a
      00018A 12 04 3C         [24]  481 	lcall	_OLED_DisplayChar
                                    482 ;	./src/main.c:49: OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
      00018D 75 11 64         [24]  483 	mov	__modsint_PARM_2,#0x64
      000190 75 12 00         [24]  484 	mov	(__modsint_PARM_2 + 1),#0x00
      000193 85 0A 82         [24]  485 	mov	dpl,_data_buf2
      000196 85 0B 83         [24]  486 	mov	dph,(_data_buf2 + 1)
      000199 12 07 EB         [24]  487 	lcall	__modsint
      00019C 75 11 0A         [24]  488 	mov	__divsint_PARM_2,#0x0a
      00019F 75 12 00         [24]  489 	mov	(__divsint_PARM_2 + 1),#0x00
      0001A2 12 08 34         [24]  490 	lcall	__divsint
      0001A5 AE 82            [24]  491 	mov	r6,dpl
      0001A7 74 30            [12]  492 	mov	a,#0x30
      0001A9 2E               [12]  493 	add	a,r6
      0001AA F5 82            [12]  494 	mov	dpl,a
      0001AC 12 04 3C         [24]  495 	lcall	_OLED_DisplayChar
                                    496 ;	./src/main.c:50: OLED_DisplayChar('.');
      0001AF 75 82 2E         [24]  497 	mov	dpl,#0x2e
      0001B2 12 04 3C         [24]  498 	lcall	_OLED_DisplayChar
                                    499 ;	./src/main.c:51: OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
      0001B5 75 11 0A         [24]  500 	mov	__modsint_PARM_2,#0x0a
      0001B8 75 12 00         [24]  501 	mov	(__modsint_PARM_2 + 1),#0x00
      0001BB 85 0A 82         [24]  502 	mov	dpl,_data_buf2
      0001BE 85 0B 83         [24]  503 	mov	dph,(_data_buf2 + 1)
      0001C1 12 07 EB         [24]  504 	lcall	__modsint
      0001C4 AE 82            [24]  505 	mov	r6,dpl
      0001C6 74 30            [12]  506 	mov	a,#0x30
      0001C8 2E               [12]  507 	add	a,r6
      0001C9 F5 82            [12]  508 	mov	dpl,a
      0001CB 12 04 3C         [24]  509 	lcall	_OLED_DisplayChar
                                    510 ;	./src/main.c:52: delay_ms(100);
      0001CE 90 00 64         [24]  511 	mov	dptr,#0x0064
      0001D1 12 03 B6         [24]  512 	lcall	_delay_ms
                                    513 ;	./src/main.c:54: }
      0001D4 02 00 A2         [24]  514 	ljmp	00108$
                                    515 	.area CSEG    (CODE)
                                    516 	.area CONST   (CODE)
                                    517 	.area CONST   (CODE)
      000920                        518 ___str_0:
      000920 4C 61 62 35 20 44 65   519 	.ascii "Lab5 Demo"
             6D 6F
      000929 00                     520 	.db 0x00
                                    521 	.area CSEG    (CODE)
                                    522 	.area CONST   (CODE)
      00092A                        523 ___str_1:
      00092A 41 6D 62 69 65 6E 74   524 	.ascii "AmbientTempC: "
             54 65 6D 70 43 3A 20
      000938 00                     525 	.db 0x00
                                    526 	.area CSEG    (CODE)
                                    527 	.area CONST   (CODE)
      000939                        528 ___str_2:
      000939 4F 62 6A 65 63 74 54   529 	.ascii "ObjectTempC: "
             65 6D 70 43 3A 20
      000946 00                     530 	.db 0x00
                                    531 	.area CSEG    (CODE)
                                    532 	.area XINIT   (CODE)
                                    533 	.area CABS    (ABS,CODE)
