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
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
                                     15 	.globl _read_adc3202
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _seg
                                    113 	.globl _led_out
                                    114 	.globl _segment_voltage
                                    115 	.globl _segment_out
                                    116 	.globl _adc_value
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
      000008                        232 _adc_value::
      000008                        233 	.ds 2
      00000A                        234 _segment_out::
      00000A                        235 	.ds 2
      00000C                        236 _segment_voltage::
      00000C                        237 	.ds 2
      00000E                        238 _led_out::
      00000E                        239 	.ds 1
      00000F                        240 _seg::
      00000F                        241 	.ds 10
                                    242 ;--------------------------------------------------------
                                    243 ; overlayable items in internal ram
                                    244 ;--------------------------------------------------------
                                    245 ;--------------------------------------------------------
                                    246 ; Stack segment in internal ram
                                    247 ;--------------------------------------------------------
                                    248 	.area SSEG
      00001C                        249 __start__stack:
      00001C                        250 	.ds	1
                                    251 
                                    252 ;--------------------------------------------------------
                                    253 ; indirectly addressable internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area ISEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area IABS    (ABS,DATA)
                                    260 	.area IABS    (ABS,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; bit data
                                    263 ;--------------------------------------------------------
                                    264 	.area BSEG    (BIT)
                                    265 ;--------------------------------------------------------
                                    266 ; paged external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area PSEG    (PAG,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; uninitialized external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XSEG    (XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; absolute external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XABS    (ABS,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; initialized external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XISEG   (XDATA)
                                    281 	.area HOME    (CODE)
                                    282 	.area GSINIT0 (CODE)
                                    283 	.area GSINIT1 (CODE)
                                    284 	.area GSINIT2 (CODE)
                                    285 	.area GSINIT3 (CODE)
                                    286 	.area GSINIT4 (CODE)
                                    287 	.area GSINIT5 (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area CSEG    (CODE)
                                    291 ;--------------------------------------------------------
                                    292 ; interrupt vector
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
      000000                        295 __interrupt_vect:
      000000 02 00 06         [24]  296 	ljmp	__sdcc_gsinit_startup
                                    297 ;--------------------------------------------------------
                                    298 ; global & static initialisations
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.area GSFINAL (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.globl __sdcc_gsinit_startup
                                    305 	.globl __sdcc_program_startup
                                    306 	.globl __start__stack
                                    307 	.globl __mcs51_genXINIT
                                    308 	.globl __mcs51_genXRAMCLEAR
                                    309 	.globl __mcs51_genRAMCLEAR
                                    310 ;	./src/main.c:11: unsigned char seg[10] = {
      00005F 75 0F 7E         [24]  311 	mov	_seg,#0x7e
      000062 75 10 30         [24]  312 	mov	(_seg + 0x0001),#0x30
      000065 75 11 6D         [24]  313 	mov	(_seg + 0x0002),#0x6d
      000068 75 12 79         [24]  314 	mov	(_seg + 0x0003),#0x79
      00006B 75 13 33         [24]  315 	mov	(_seg + 0x0004),#0x33
      00006E 75 14 5B         [24]  316 	mov	(_seg + 0x0005),#0x5b
      000071 75 15 5F         [24]  317 	mov	(_seg + 0x0006),#0x5f
      000074 75 16 70         [24]  318 	mov	(_seg + 0x0007),#0x70
      000077 75 17 7F         [24]  319 	mov	(_seg + 0x0008),#0x7f
      00007A 75 18 7B         [24]  320 	mov	(_seg + 0x0009),#0x7b
                                    321 	.area GSFINAL (CODE)
      00007D 02 00 03         [24]  322 	ljmp	__sdcc_program_startup
                                    323 ;--------------------------------------------------------
                                    324 ; Home
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
                                    327 	.area HOME    (CODE)
      000003                        328 __sdcc_program_startup:
      000003 02 00 80         [24]  329 	ljmp	_main
                                    330 ;	return from main will return to caller
                                    331 ;--------------------------------------------------------
                                    332 ; code
                                    333 ;--------------------------------------------------------
                                    334 	.area CSEG    (CODE)
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'main'
                                    337 ;------------------------------------------------------------
                                    338 ;	./src/main.c:30: void main()
                                    339 ;	-----------------------------------------
                                    340 ;	 function main
                                    341 ;	-----------------------------------------
      000080                        342 _main:
                           000007   343 	ar7 = 0x07
                           000006   344 	ar6 = 0x06
                           000005   345 	ar5 = 0x05
                           000004   346 	ar4 = 0x04
                           000003   347 	ar3 = 0x03
                           000002   348 	ar2 = 0x02
                           000001   349 	ar1 = 0x01
                           000000   350 	ar0 = 0x00
                                    351 ;	./src/main.c:32: DOUT = 1; //Setting gpio input mode
                                    352 ;	assignBit
      000080 D2 A2            [12]  353 	setb	_P2_2
                                    354 ;	./src/main.c:33: LOAD = 1; 
                                    355 ;	assignBit
      000082 D2 A3            [12]  356 	setb	_P2_3
                                    357 ;	./src/main.c:34: CLK = 0;
                                    358 ;	assignBit
      000084 C2 A0            [12]  359 	clr	_P2_0
                                    360 ;	./src/main.c:35: DIN = 0;
                                    361 ;	assignBit
      000086 C2 A1            [12]  362 	clr	_P2_1
                                    363 ;	./src/main.c:37: Initial();
      000088 12 03 28         [24]  364 	lcall	_Initial
                                    365 ;	./src/main.c:39: while(1)
      00008B                        366 00102$:
                                    367 ;	./src/main.c:45: adc_value =  read_adc3202(1);    // Read voltage from ADC channel 1 
      00008B 75 82 01         [24]  368 	mov	dpl,#0x01
      00008E 12 02 87         [24]  369 	lcall	_read_adc3202
                                    370 ;	./src/main.c:46: segment_voltage = adc_value;
                                    371 ;	./src/main.c:47: segment_out = 100000/(0.2554*adc_value-40.9);        // 1 / (0.2554 * voltage – 0.0409)
      000091 85 82 08         [24]  372 	mov	_adc_value,dpl
      000094 85 83 09         [24]  373 	mov	(_adc_value + 1),dph
      000097 85 08 0C         [24]  374 	mov	_segment_voltage,_adc_value
      00009A 85 09 0D         [24]  375 	mov	(_segment_voltage + 1),(_adc_value + 1)
      00009D 12 05 5F         [24]  376 	lcall	___uint2fs
      0000A0 AC 82            [24]  377 	mov	r4,dpl
      0000A2 AD 83            [24]  378 	mov	r5,dph
      0000A4 AE F0            [24]  379 	mov	r6,b
      0000A6 FF               [12]  380 	mov	r7,a
      0000A7 C0 04            [24]  381 	push	ar4
      0000A9 C0 05            [24]  382 	push	ar5
      0000AB C0 06            [24]  383 	push	ar6
      0000AD C0 07            [24]  384 	push	ar7
      0000AF 90 C3 CA         [24]  385 	mov	dptr,#0xc3ca
      0000B2 75 F0 82         [24]  386 	mov	b,#0x82
      0000B5 74 3E            [12]  387 	mov	a,#0x3e
      0000B7 12 03 B5         [24]  388 	lcall	___fsmul
      0000BA AC 82            [24]  389 	mov	r4,dpl
      0000BC AD 83            [24]  390 	mov	r5,dph
      0000BE AE F0            [24]  391 	mov	r6,b
      0000C0 FF               [12]  392 	mov	r7,a
      0000C1 E5 81            [12]  393 	mov	a,sp
      0000C3 24 FC            [12]  394 	add	a,#0xfc
      0000C5 F5 81            [12]  395 	mov	sp,a
      0000C7 74 9A            [12]  396 	mov	a,#0x9a
      0000C9 C0 E0            [24]  397 	push	acc
      0000CB 14               [12]  398 	dec	a
      0000CC C0 E0            [24]  399 	push	acc
      0000CE 74 23            [12]  400 	mov	a,#0x23
      0000D0 C0 E0            [24]  401 	push	acc
      0000D2 74 42            [12]  402 	mov	a,#0x42
      0000D4 C0 E0            [24]  403 	push	acc
      0000D6 8C 82            [24]  404 	mov	dpl,r4
      0000D8 8D 83            [24]  405 	mov	dph,r5
      0000DA 8E F0            [24]  406 	mov	b,r6
      0000DC EF               [12]  407 	mov	a,r7
      0000DD 12 03 81         [24]  408 	lcall	___fssub
      0000E0 AC 82            [24]  409 	mov	r4,dpl
      0000E2 AD 83            [24]  410 	mov	r5,dph
      0000E4 AE F0            [24]  411 	mov	r6,b
      0000E6 FF               [12]  412 	mov	r7,a
      0000E7 E5 81            [12]  413 	mov	a,sp
      0000E9 24 FC            [12]  414 	add	a,#0xfc
      0000EB F5 81            [12]  415 	mov	sp,a
      0000ED C0 04            [24]  416 	push	ar4
      0000EF C0 05            [24]  417 	push	ar5
      0000F1 C0 06            [24]  418 	push	ar6
      0000F3 C0 07            [24]  419 	push	ar7
      0000F5 90 50 00         [24]  420 	mov	dptr,#0x5000
      0000F8 75 F0 C3         [24]  421 	mov	b,#0xc3
      0000FB 74 47            [12]  422 	mov	a,#0x47
      0000FD 12 05 DF         [24]  423 	lcall	___fsdiv
      000100 AC 82            [24]  424 	mov	r4,dpl
      000102 AD 83            [24]  425 	mov	r5,dph
      000104 AE F0            [24]  426 	mov	r6,b
      000106 FF               [12]  427 	mov	r7,a
      000107 E5 81            [12]  428 	mov	a,sp
      000109 24 FC            [12]  429 	add	a,#0xfc
      00010B F5 81            [12]  430 	mov	sp,a
      00010D 8C 82            [24]  431 	mov	dpl,r4
      00010F 8D 83            [24]  432 	mov	dph,r5
      000111 8E F0            [24]  433 	mov	b,r6
      000113 EF               [12]  434 	mov	a,r7
      000114 12 05 6B         [24]  435 	lcall	___fs2uint
                                    436 ;	./src/main.c:49: Write7219(0x08, seg[segment_out / 1000]);    // Display on MAX7219
      000117 85 82 0A         [24]  437 	mov	_segment_out,dpl
      00011A 85 83 0B         [24]  438 	mov	(_segment_out + 1),dph
      00011D 75 1A E8         [24]  439 	mov	__divuint_PARM_2,#0xe8
      000120 75 1B 03         [24]  440 	mov	(__divuint_PARM_2 + 1),#0x03
      000123 12 03 8C         [24]  441 	lcall	__divuint
      000126 AE 82            [24]  442 	mov	r6,dpl
      000128 EE               [12]  443 	mov	a,r6
      000129 24 0F            [12]  444 	add	a,#_seg
      00012B F9               [12]  445 	mov	r1,a
      00012C 87 19            [24]  446 	mov	_Write7219_PARM_2,@r1
      00012E 75 82 08         [24]  447 	mov	dpl,#0x08
      000131 12 03 09         [24]  448 	lcall	_Write7219
                                    449 ;	./src/main.c:50: Write7219(0x07, seg[segment_out % 1000 / 100]+ 0x80);
      000134 75 1A E8         [24]  450 	mov	__moduint_PARM_2,#0xe8
      000137 75 1B 03         [24]  451 	mov	(__moduint_PARM_2 + 1),#0x03
      00013A 85 0A 82         [24]  452 	mov	dpl,_segment_out
      00013D 85 0B 83         [24]  453 	mov	dph,(_segment_out + 1)
      000140 12 04 B9         [24]  454 	lcall	__moduint
      000143 75 1A 64         [24]  455 	mov	__divuint_PARM_2,#0x64
      000146 75 1B 00         [24]  456 	mov	(__divuint_PARM_2 + 1),#0x00
      000149 12 03 8C         [24]  457 	lcall	__divuint
      00014C AE 82            [24]  458 	mov	r6,dpl
      00014E EE               [12]  459 	mov	a,r6
      00014F 24 0F            [12]  460 	add	a,#_seg
      000151 F9               [12]  461 	mov	r1,a
      000152 87 07            [24]  462 	mov	ar7,@r1
      000154 74 80            [12]  463 	mov	a,#0x80
      000156 2F               [12]  464 	add	a,r7
      000157 F5 19            [12]  465 	mov	_Write7219_PARM_2,a
      000159 75 82 07         [24]  466 	mov	dpl,#0x07
      00015C 12 03 09         [24]  467 	lcall	_Write7219
                                    468 ;	./src/main.c:51: Write7219(0x06, seg[segment_out % 100 / 10]);
      00015F 75 1A 64         [24]  469 	mov	__moduint_PARM_2,#0x64
      000162 75 1B 00         [24]  470 	mov	(__moduint_PARM_2 + 1),#0x00
      000165 85 0A 82         [24]  471 	mov	dpl,_segment_out
      000168 85 0B 83         [24]  472 	mov	dph,(_segment_out + 1)
      00016B 12 04 B9         [24]  473 	lcall	__moduint
      00016E 75 1A 0A         [24]  474 	mov	__divuint_PARM_2,#0x0a
      000171 75 1B 00         [24]  475 	mov	(__divuint_PARM_2 + 1),#0x00
      000174 12 03 8C         [24]  476 	lcall	__divuint
      000177 AE 82            [24]  477 	mov	r6,dpl
      000179 EE               [12]  478 	mov	a,r6
      00017A 24 0F            [12]  479 	add	a,#_seg
      00017C F9               [12]  480 	mov	r1,a
      00017D 87 19            [24]  481 	mov	_Write7219_PARM_2,@r1
      00017F 75 82 06         [24]  482 	mov	dpl,#0x06
      000182 12 03 09         [24]  483 	lcall	_Write7219
                                    484 ;	./src/main.c:52: Write7219(0x05, seg[segment_out % 10]);
      000185 75 1A 0A         [24]  485 	mov	__moduint_PARM_2,#0x0a
      000188 75 1B 00         [24]  486 	mov	(__moduint_PARM_2 + 1),#0x00
      00018B 85 0A 82         [24]  487 	mov	dpl,_segment_out
      00018E 85 0B 83         [24]  488 	mov	dph,(_segment_out + 1)
      000191 12 04 B9         [24]  489 	lcall	__moduint
      000194 AE 82            [24]  490 	mov	r6,dpl
      000196 EE               [12]  491 	mov	a,r6
      000197 24 0F            [12]  492 	add	a,#_seg
      000199 F9               [12]  493 	mov	r1,a
      00019A 87 19            [24]  494 	mov	_Write7219_PARM_2,@r1
      00019C 75 82 05         [24]  495 	mov	dpl,#0x05
      00019F 12 03 09         [24]  496 	lcall	_Write7219
                                    497 ;	./src/main.c:55: Write7219(0x04, seg[segment_voltage / 1000]+ 0x80);    // Display on MAX7219
      0001A2 75 1A E8         [24]  498 	mov	__divuint_PARM_2,#0xe8
      0001A5 75 1B 03         [24]  499 	mov	(__divuint_PARM_2 + 1),#0x03
      0001A8 85 0C 82         [24]  500 	mov	dpl,_segment_voltage
      0001AB 85 0D 83         [24]  501 	mov	dph,(_segment_voltage + 1)
      0001AE 12 03 8C         [24]  502 	lcall	__divuint
      0001B1 AE 82            [24]  503 	mov	r6,dpl
      0001B3 EE               [12]  504 	mov	a,r6
      0001B4 24 0F            [12]  505 	add	a,#_seg
      0001B6 F9               [12]  506 	mov	r1,a
      0001B7 87 07            [24]  507 	mov	ar7,@r1
      0001B9 74 80            [12]  508 	mov	a,#0x80
      0001BB 2F               [12]  509 	add	a,r7
      0001BC F5 19            [12]  510 	mov	_Write7219_PARM_2,a
      0001BE 75 82 04         [24]  511 	mov	dpl,#0x04
      0001C1 12 03 09         [24]  512 	lcall	_Write7219
                                    513 ;	./src/main.c:56: Write7219(0x03, seg[segment_voltage % 1000 / 100]);
      0001C4 75 1A E8         [24]  514 	mov	__moduint_PARM_2,#0xe8
      0001C7 75 1B 03         [24]  515 	mov	(__moduint_PARM_2 + 1),#0x03
      0001CA 85 0C 82         [24]  516 	mov	dpl,_segment_voltage
      0001CD 85 0D 83         [24]  517 	mov	dph,(_segment_voltage + 1)
      0001D0 12 04 B9         [24]  518 	lcall	__moduint
      0001D3 75 1A 64         [24]  519 	mov	__divuint_PARM_2,#0x64
      0001D6 75 1B 00         [24]  520 	mov	(__divuint_PARM_2 + 1),#0x00
      0001D9 12 03 8C         [24]  521 	lcall	__divuint
      0001DC AE 82            [24]  522 	mov	r6,dpl
      0001DE EE               [12]  523 	mov	a,r6
      0001DF 24 0F            [12]  524 	add	a,#_seg
      0001E1 F9               [12]  525 	mov	r1,a
      0001E2 87 19            [24]  526 	mov	_Write7219_PARM_2,@r1
      0001E4 75 82 03         [24]  527 	mov	dpl,#0x03
      0001E7 12 03 09         [24]  528 	lcall	_Write7219
                                    529 ;	./src/main.c:57: Write7219(0x02, seg[segment_voltage % 100 / 10]);
      0001EA 75 1A 64         [24]  530 	mov	__moduint_PARM_2,#0x64
      0001ED 75 1B 00         [24]  531 	mov	(__moduint_PARM_2 + 1),#0x00
      0001F0 85 0C 82         [24]  532 	mov	dpl,_segment_voltage
      0001F3 85 0D 83         [24]  533 	mov	dph,(_segment_voltage + 1)
      0001F6 12 04 B9         [24]  534 	lcall	__moduint
      0001F9 75 1A 0A         [24]  535 	mov	__divuint_PARM_2,#0x0a
      0001FC 75 1B 00         [24]  536 	mov	(__divuint_PARM_2 + 1),#0x00
      0001FF 12 03 8C         [24]  537 	lcall	__divuint
      000202 AE 82            [24]  538 	mov	r6,dpl
      000204 EE               [12]  539 	mov	a,r6
      000205 24 0F            [12]  540 	add	a,#_seg
      000207 F9               [12]  541 	mov	r1,a
      000208 87 19            [24]  542 	mov	_Write7219_PARM_2,@r1
      00020A 75 82 02         [24]  543 	mov	dpl,#0x02
      00020D 12 03 09         [24]  544 	lcall	_Write7219
                                    545 ;	./src/main.c:58: Write7219(0x01, seg[segment_voltage % 10]);
      000210 75 1A 0A         [24]  546 	mov	__moduint_PARM_2,#0x0a
      000213 75 1B 00         [24]  547 	mov	(__moduint_PARM_2 + 1),#0x00
      000216 85 0C 82         [24]  548 	mov	dpl,_segment_voltage
      000219 85 0D 83         [24]  549 	mov	dph,(_segment_voltage + 1)
      00021C 12 04 B9         [24]  550 	lcall	__moduint
      00021F AE 82            [24]  551 	mov	r6,dpl
      000221 EE               [12]  552 	mov	a,r6
      000222 24 0F            [12]  553 	add	a,#_seg
      000224 F9               [12]  554 	mov	r1,a
      000225 87 19            [24]  555 	mov	_Write7219_PARM_2,@r1
      000227 75 82 01         [24]  556 	mov	dpl,#0x01
      00022A 12 03 09         [24]  557 	lcall	_Write7219
                                    558 ;	./src/main.c:59: delay_ms(500);
      00022D 90 01 F4         [24]  559 	mov	dptr,#0x01f4
      000230 12 03 6A         [24]  560 	lcall	_delay_ms
                                    561 ;	./src/main.c:61: }
      000233 02 00 8B         [24]  562 	ljmp	00102$
                                    563 	.area CSEG    (CODE)
                                    564 	.area CONST   (CODE)
                                    565 	.area XINIT   (CODE)
                                    566 	.area CABS    (ABS,CODE)
