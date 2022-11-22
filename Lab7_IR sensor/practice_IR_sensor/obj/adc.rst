                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module adc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_5
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
                                    108 	.globl _SPI_WR
                                    109 	.globl _read_adc3202
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
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable items in internal ram
                                    227 ;--------------------------------------------------------
                                    228 ;--------------------------------------------------------
                                    229 ; indirectly addressable internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area ISEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; absolute internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area IABS    (ABS,DATA)
                                    236 	.area IABS    (ABS,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; bit data
                                    239 ;--------------------------------------------------------
                                    240 	.area BSEG    (BIT)
                                    241 ;--------------------------------------------------------
                                    242 ; paged external ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area PSEG    (PAG,XDATA)
                                    245 ;--------------------------------------------------------
                                    246 ; uninitialized external ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area XSEG    (XDATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute external ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area XABS    (ABS,XDATA)
                                    253 ;--------------------------------------------------------
                                    254 ; initialized external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area XISEG   (XDATA)
                                    257 	.area HOME    (CODE)
                                    258 	.area GSINIT0 (CODE)
                                    259 	.area GSINIT1 (CODE)
                                    260 	.area GSINIT2 (CODE)
                                    261 	.area GSINIT3 (CODE)
                                    262 	.area GSINIT4 (CODE)
                                    263 	.area GSINIT5 (CODE)
                                    264 	.area GSINIT  (CODE)
                                    265 	.area GSFINAL (CODE)
                                    266 	.area CSEG    (CODE)
                                    267 ;--------------------------------------------------------
                                    268 ; global & static initialisations
                                    269 ;--------------------------------------------------------
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; Home
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
                                    278 	.area HOME    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; code
                                    281 ;--------------------------------------------------------
                                    282 	.area CSEG    (CODE)
                                    283 ;------------------------------------------------------------
                                    284 ;Allocation info for local variables in function 'SPI_WR'
                                    285 ;------------------------------------------------------------
                                    286 ;data_in                   Allocated to registers r7 
                                    287 ;data_out                  Allocated to registers r6 
                                    288 ;i                         Allocated to registers r5 
                                    289 ;------------------------------------------------------------
                                    290 ;	./src/adc.c:5: char SPI_WR(char data_in)
                                    291 ;	-----------------------------------------
                                    292 ;	 function SPI_WR
                                    293 ;	-----------------------------------------
      000236                        294 _SPI_WR:
                           000007   295 	ar7 = 0x07
                           000006   296 	ar6 = 0x06
                           000005   297 	ar5 = 0x05
                           000004   298 	ar4 = 0x04
                           000003   299 	ar3 = 0x03
                           000002   300 	ar2 = 0x02
                           000001   301 	ar1 = 0x01
                           000000   302 	ar0 = 0x00
      000236 AF 82            [24]  303 	mov	r7,dpl
                                    304 ;	./src/adc.c:7: char data_out = 0;
      000238 7E 00            [12]  305 	mov	r6,#0x00
                                    306 ;	./src/adc.c:9: for(i=0;i<8;i++)  // 8 bit transaction
      00023A 7D 00            [12]  307 	mov	r5,#0x00
      00023C                        308 00104$:
                                    309 ;	./src/adc.c:11: data_out <<= 1;
      00023C 8E 04            [24]  310 	mov	ar4,r6
      00023E EC               [12]  311 	mov	a,r4
      00023F 2C               [12]  312 	add	a,r4
      000240 FE               [12]  313 	mov	r6,a
                                    314 ;	./src/adc.c:13: CLK = 0;
                                    315 ;	assignBit
      000241 C2 A0            [12]  316 	clr	_P2_0
                                    317 ;	./src/adc.c:14: delay_5();
      000243 C0 07            [24]  318 	push	ar7
      000245 C0 06            [24]  319 	push	ar6
      000247 C0 05            [24]  320 	push	ar5
      000249 12 03 7C         [24]  321 	lcall	_delay_5
      00024C D0 05            [24]  322 	pop	ar5
      00024E D0 06            [24]  323 	pop	ar6
      000250 D0 07            [24]  324 	pop	ar7
                                    325 ;	./src/adc.c:15: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
      000252 8F 03            [24]  326 	mov	ar3,r7
      000254 53 03 80         [24]  327 	anl	ar3,#0x80
      000257 7C 00            [12]  328 	mov	r4,#0x00
                                    329 ;	assignBit
      000259 EB               [12]  330 	mov	a,r3
      00025A 4C               [12]  331 	orl	a,r4
      00025B 24 FF            [12]  332 	add	a,#0xff
      00025D 92 A1            [24]  333 	mov	_P2_1,c
                                    334 ;	./src/adc.c:16: delay_5();
      00025F C0 07            [24]  335 	push	ar7
      000261 C0 06            [24]  336 	push	ar6
      000263 C0 05            [24]  337 	push	ar5
      000265 12 03 7C         [24]  338 	lcall	_delay_5
                                    339 ;	./src/adc.c:17: CLK = 1;
                                    340 ;	assignBit
      000268 D2 A0            [12]  341 	setb	_P2_0
                                    342 ;	./src/adc.c:18: delay_5();
      00026A 12 03 7C         [24]  343 	lcall	_delay_5
      00026D D0 05            [24]  344 	pop	ar5
      00026F D0 06            [24]  345 	pop	ar6
      000271 D0 07            [24]  346 	pop	ar7
                                    347 ;	./src/adc.c:20: if(DOUT == 1)   // Read DOUT
      000273 30 A2 03         [24]  348 	jnb	_P2_2,00102$
                                    349 ;	./src/adc.c:21: data_out = (data_out | 0x01);   // Store into data_out
      000276 43 06 01         [24]  350 	orl	ar6,#0x01
      000279                        351 00102$:
                                    352 ;	./src/adc.c:22: data_in <<= 1;
      000279 8F 04            [24]  353 	mov	ar4,r7
      00027B EC               [12]  354 	mov	a,r4
      00027C 2C               [12]  355 	add	a,r4
      00027D FF               [12]  356 	mov	r7,a
                                    357 ;	./src/adc.c:9: for(i=0;i<8;i++)  // 8 bit transaction
      00027E 0D               [12]  358 	inc	r5
      00027F BD 08 00         [24]  359 	cjne	r5,#0x08,00122$
      000282                        360 00122$:
      000282 40 B8            [24]  361 	jc	00104$
                                    362 ;	./src/adc.c:24: return data_out;
      000284 8E 82            [24]  363 	mov	dpl,r6
                                    364 ;	./src/adc.c:25: }
      000286 22               [24]  365 	ret
                                    366 ;------------------------------------------------------------
                                    367 ;Allocation info for local variables in function 'read_adc3202'
                                    368 ;------------------------------------------------------------
                                    369 ;channel                   Allocated to registers r7 
                                    370 ;data_buff                 Allocated to registers r7 r6 
                                    371 ;spi_buff                  Allocated to registers r5 
                                    372 ;------------------------------------------------------------
                                    373 ;	./src/adc.c:27: unsigned int read_adc3202(unsigned char channel)
                                    374 ;	-----------------------------------------
                                    375 ;	 function read_adc3202
                                    376 ;	-----------------------------------------
      000287                        377 _read_adc3202:
      000287 AF 82            [24]  378 	mov	r7,dpl
                                    379 ;	./src/adc.c:33: LOAD = 0;
                                    380 ;	assignBit
      000289 C2 A3            [12]  381 	clr	_P2_3
                                    382 ;	./src/adc.c:36: SPI_WR(0x01);               // First byte transaction includes start bit
      00028B 75 82 01         [24]  383 	mov	dpl,#0x01
      00028E C0 07            [24]  384 	push	ar7
      000290 12 02 36         [24]  385 	lcall	_SPI_WR
      000293 D0 07            [24]  386 	pop	ar7
                                    387 ;	./src/adc.c:37: if(channel == 1)            // Channel 1: 11100000, to IR sensor
      000295 BF 01 0A         [24]  388 	cjne	r7,#0x01,00102$
                                    389 ;	./src/adc.c:38: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
      000298 75 82 E0         [24]  390 	mov	dpl,#0xe0
      00029B 12 02 36         [24]  391 	lcall	_SPI_WR
      00029E AF 82            [24]  392 	mov	r7,dpl
      0002A0 80 08            [24]  393 	sjmp	00103$
      0002A2                        394 00102$:
                                    395 ;	./src/adc.c:40: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
      0002A2 75 82 A0         [24]  396 	mov	dpl,#0xa0
      0002A5 12 02 36         [24]  397 	lcall	_SPI_WR
      0002A8 AF 82            [24]  398 	mov	r7,dpl
      0002AA                        399 00103$:
                                    400 ;	./src/adc.c:41: data_buff = spi_buff & 0x0f;
      0002AA 53 07 0F         [24]  401 	anl	ar7,#0x0f
                                    402 ;	./src/adc.c:42: data_buff <<= 8;            // Store higher 4 bit ADC output
      0002AD 8F 06            [24]  403 	mov	ar6,r7
      0002AF 7F 00            [12]  404 	mov	r7,#0x00
                                    405 ;	./src/adc.c:44: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
      0002B1 75 82 00         [24]  406 	mov	dpl,#0x00
      0002B4 C0 07            [24]  407 	push	ar7
      0002B6 C0 06            [24]  408 	push	ar6
      0002B8 12 02 36         [24]  409 	lcall	_SPI_WR
      0002BB AD 82            [24]  410 	mov	r5,dpl
      0002BD D0 06            [24]  411 	pop	ar6
      0002BF D0 07            [24]  412 	pop	ar7
                                    413 ;	./src/adc.c:45: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
      0002C1 7C 00            [12]  414 	mov	r4,#0x00
      0002C3 ED               [12]  415 	mov	a,r5
      0002C4 4F               [12]  416 	orl	a,r7
      0002C5 F5 82            [12]  417 	mov	dpl,a
      0002C7 EC               [12]  418 	mov	a,r4
      0002C8 4E               [12]  419 	orl	a,r6
      0002C9 F5 83            [12]  420 	mov	dph,a
                                    421 ;	./src/adc.c:47: LOAD = 1;  
                                    422 ;	assignBit
      0002CB D2 A3            [12]  423 	setb	_P2_3
                                    424 ;	./src/adc.c:48: CLK = 0;
                                    425 ;	assignBit
      0002CD C2 A0            [12]  426 	clr	_P2_0
                                    427 ;	./src/adc.c:49: DIN = 0;
                                    428 ;	assignBit
      0002CF C2 A1            [12]  429 	clr	_P2_1
                                    430 ;	./src/adc.c:51: return data_buff;
                                    431 ;	./src/adc.c:52: }
      0002D1 22               [24]  432 	ret
                                    433 	.area CSEG    (CODE)
                                    434 	.area CONST   (CODE)
                                    435 	.area XINIT   (CODE)
                                    436 	.area CABS    (ABS,CODE)
