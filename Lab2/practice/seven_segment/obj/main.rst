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
                                     12 	.globl _Writesingle7219
                                     13 	.globl _Initial
                                     14 	.globl _delay_ms
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
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _main_seg_65536_9:
      000008                        227 	.ds 20
      00001C                        228 _main_snakeshift_65536_9:
      00001C                        229 	.ds 20
      000030                        230 _main_hi_65536_9:
      000030                        231 	.ds 16
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram
                                    234 ;--------------------------------------------------------
                                    235 ;--------------------------------------------------------
                                    236 ; Stack segment in internal ram
                                    237 ;--------------------------------------------------------
                                    238 	.area SSEG
      00006D                        239 __start__stack:
      00006D                        240 	.ds	1
                                    241 
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; uninitialized external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; initialized external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; interrupt vector
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
      000000                        285 __interrupt_vect:
      000000 02 00 06         [24]  286 	ljmp	__sdcc_gsinit_startup
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.globl __sdcc_gsinit_startup
                                    295 	.globl __sdcc_program_startup
                                    296 	.globl __start__stack
                                    297 	.globl __mcs51_genXINIT
                                    298 	.globl __mcs51_genXRAMCLEAR
                                    299 	.globl __mcs51_genRAMCLEAR
                                    300 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  301 	ljmp	__sdcc_program_startup
                                    302 ;--------------------------------------------------------
                                    303 ; Home
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area HOME    (CODE)
      000003                        307 __sdcc_program_startup:
      000003 02 00 62         [24]  308 	ljmp	_main
                                    309 ;	return from main will return to caller
                                    310 ;--------------------------------------------------------
                                    311 ; code
                                    312 ;--------------------------------------------------------
                                    313 	.area CSEG    (CODE)
                                    314 ;------------------------------------------------------------
                                    315 ;Allocation info for local variables in function 'main'
                                    316 ;------------------------------------------------------------
                                    317 ;seg                       Allocated with name '_main_seg_65536_9'
                                    318 ;snakeshift                Allocated with name '_main_snakeshift_65536_9'
                                    319 ;hi                        Allocated with name '_main_hi_65536_9'
                                    320 ;i                         Allocated to registers 
                                    321 ;i                         Allocated to registers r6 r7 
                                    322 ;------------------------------------------------------------
                                    323 ;	./src/main.c:6: void main(void)
                                    324 ;	-----------------------------------------
                                    325 ;	 function main
                                    326 ;	-----------------------------------------
      000062                        327 _main:
                           000007   328 	ar7 = 0x07
                           000006   329 	ar6 = 0x06
                           000005   330 	ar5 = 0x05
                           000004   331 	ar4 = 0x04
                           000003   332 	ar3 = 0x03
                           000002   333 	ar2 = 0x02
                           000001   334 	ar1 = 0x01
                           000000   335 	ar0 = 0x00
                                    336 ;	./src/main.c:9: unsigned char seg[] = {
      000062 75 08 40         [24]  337 	mov	_main_seg_65536_9,#0x40
      000065 75 09 40         [24]  338 	mov	(_main_seg_65536_9 + 0x0001),#0x40
      000068 75 0A 40         [24]  339 	mov	(_main_seg_65536_9 + 0x0002),#0x40
      00006B 75 0B 40         [24]  340 	mov	(_main_seg_65536_9 + 0x0003),#0x40
      00006E 75 0C 40         [24]  341 	mov	(_main_seg_65536_9 + 0x0004),#0x40
      000071 75 0D 40         [24]  342 	mov	(_main_seg_65536_9 + 0x0005),#0x40
      000074 75 0E 40         [24]  343 	mov	(_main_seg_65536_9 + 0x0006),#0x40
      000077 75 0F 40         [24]  344 	mov	(_main_seg_65536_9 + 0x0007),#0x40
      00007A 75 10 02         [24]  345 	mov	(_main_seg_65536_9 + 0x0008),#0x02
      00007D 75 11 04         [24]  346 	mov	(_main_seg_65536_9 + 0x0009),#0x04
      000080 75 12 08         [24]  347 	mov	(_main_seg_65536_9 + 0x000a),#0x08
      000083 75 13 08         [24]  348 	mov	(_main_seg_65536_9 + 0x000b),#0x08
      000086 75 14 08         [24]  349 	mov	(_main_seg_65536_9 + 0x000c),#0x08
      000089 75 15 08         [24]  350 	mov	(_main_seg_65536_9 + 0x000d),#0x08
      00008C 75 16 08         [24]  351 	mov	(_main_seg_65536_9 + 0x000e),#0x08
      00008F 75 17 08         [24]  352 	mov	(_main_seg_65536_9 + 0x000f),#0x08
      000092 75 18 08         [24]  353 	mov	(_main_seg_65536_9 + 0x0010),#0x08
      000095 75 19 08         [24]  354 	mov	(_main_seg_65536_9 + 0x0011),#0x08
      000098 75 1A 10         [24]  355 	mov	(_main_seg_65536_9 + 0x0012),#0x10
      00009B 75 1B 20         [24]  356 	mov	(_main_seg_65536_9 + 0x0013),#0x20
                                    357 ;	./src/main.c:11: unsigned char snakeshift[] = {1,2,3,4,5,6,7,8,8,8,8,7,6,5,4,3,2,1,1,1};
      00009E 75 1C 01         [24]  358 	mov	_main_snakeshift_65536_9,#0x01
      0000A1 75 1D 02         [24]  359 	mov	(_main_snakeshift_65536_9 + 0x0001),#0x02
      0000A4 75 1E 03         [24]  360 	mov	(_main_snakeshift_65536_9 + 0x0002),#0x03
      0000A7 75 1F 04         [24]  361 	mov	(_main_snakeshift_65536_9 + 0x0003),#0x04
      0000AA 75 20 05         [24]  362 	mov	(_main_snakeshift_65536_9 + 0x0004),#0x05
      0000AD 75 21 06         [24]  363 	mov	(_main_snakeshift_65536_9 + 0x0005),#0x06
      0000B0 75 22 07         [24]  364 	mov	(_main_snakeshift_65536_9 + 0x0006),#0x07
      0000B3 75 23 08         [24]  365 	mov	(_main_snakeshift_65536_9 + 0x0007),#0x08
      0000B6 75 24 08         [24]  366 	mov	(_main_snakeshift_65536_9 + 0x0008),#0x08
      0000B9 75 25 08         [24]  367 	mov	(_main_snakeshift_65536_9 + 0x0009),#0x08
      0000BC 75 26 08         [24]  368 	mov	(_main_snakeshift_65536_9 + 0x000a),#0x08
      0000BF 75 27 07         [24]  369 	mov	(_main_snakeshift_65536_9 + 0x000b),#0x07
      0000C2 75 28 06         [24]  370 	mov	(_main_snakeshift_65536_9 + 0x000c),#0x06
      0000C5 75 29 05         [24]  371 	mov	(_main_snakeshift_65536_9 + 0x000d),#0x05
      0000C8 75 2A 04         [24]  372 	mov	(_main_snakeshift_65536_9 + 0x000e),#0x04
      0000CB 75 2B 03         [24]  373 	mov	(_main_snakeshift_65536_9 + 0x000f),#0x03
      0000CE 75 2C 02         [24]  374 	mov	(_main_snakeshift_65536_9 + 0x0010),#0x02
      0000D1 75 2D 01         [24]  375 	mov	(_main_snakeshift_65536_9 + 0x0011),#0x01
      0000D4 75 2E 01         [24]  376 	mov	(_main_snakeshift_65536_9 + 0x0012),#0x01
      0000D7 75 2F 01         [24]  377 	mov	(_main_snakeshift_65536_9 + 0x0013),#0x01
                                    378 ;	./src/main.c:14: unsigned char hi[] = {0xFF, 0x10, 0x10, 0xFF, 0x00, 0x81, 0xFF, 0x81, 0x00, 0x0E, 0x1C, 0x38, 0x1C, 0x0E, 0x00, 0x00};
      0000DA 75 30 FF         [24]  379 	mov	_main_hi_65536_9,#0xff
      0000DD 75 31 10         [24]  380 	mov	(_main_hi_65536_9 + 0x0001),#0x10
      0000E0 75 32 10         [24]  381 	mov	(_main_hi_65536_9 + 0x0002),#0x10
      0000E3 75 33 FF         [24]  382 	mov	(_main_hi_65536_9 + 0x0003),#0xff
      0000E6 75 34 00         [24]  383 	mov	(_main_hi_65536_9 + 0x0004),#0x00
      0000E9 75 35 81         [24]  384 	mov	(_main_hi_65536_9 + 0x0005),#0x81
      0000EC 75 36 FF         [24]  385 	mov	(_main_hi_65536_9 + 0x0006),#0xff
      0000EF 75 37 81         [24]  386 	mov	(_main_hi_65536_9 + 0x0007),#0x81
      0000F2 75 38 00         [24]  387 	mov	(_main_hi_65536_9 + 0x0008),#0x00
      0000F5 75 39 0E         [24]  388 	mov	(_main_hi_65536_9 + 0x0009),#0x0e
      0000F8 75 3A 1C         [24]  389 	mov	(_main_hi_65536_9 + 0x000a),#0x1c
      0000FB 75 3B 38         [24]  390 	mov	(_main_hi_65536_9 + 0x000b),#0x38
      0000FE 75 3C 1C         [24]  391 	mov	(_main_hi_65536_9 + 0x000c),#0x1c
      000101 75 3D 0E         [24]  392 	mov	(_main_hi_65536_9 + 0x000d),#0x0e
      000104 75 3E 00         [24]  393 	mov	(_main_hi_65536_9 + 0x000e),#0x00
      000107 75 3F 00         [24]  394 	mov	(_main_hi_65536_9 + 0x000f),#0x00
                                    395 ;	./src/main.c:18: Initial(); // MAX7219 initialize
      00010A 12 01 FA         [24]  396 	lcall	_Initial
                                    397 ;	./src/main.c:22: for(int i=0;i<20;i++){
      00010D                        398 00112$:
      00010D 7E 00            [12]  399 	mov	r6,#0x00
      00010F 7F 00            [12]  400 	mov	r7,#0x00
      000111                        401 00106$:
      000111 C3               [12]  402 	clr	c
      000112 EE               [12]  403 	mov	a,r6
      000113 94 14            [12]  404 	subb	a,#0x14
      000115 EF               [12]  405 	mov	a,r7
      000116 64 80            [12]  406 	xrl	a,#0x80
      000118 94 80            [12]  407 	subb	a,#0x80
      00011A 50 F1            [24]  408 	jnc	00112$
                                    409 ;	./src/main.c:23: Writesingle7219(1,snakeshift[i], seg[i]);
      00011C EE               [12]  410 	mov	a,r6
      00011D 24 1C            [12]  411 	add	a,#_main_snakeshift_65536_9
      00011F F9               [12]  412 	mov	r1,a
      000120 87 41            [24]  413 	mov	_Writesingle7219_PARM_2,@r1
      000122 EE               [12]  414 	mov	a,r6
      000123 24 08            [12]  415 	add	a,#_main_seg_65536_9
      000125 F8               [12]  416 	mov	r0,a
      000126 86 42            [24]  417 	mov	_Writesingle7219_PARM_3,@r0
      000128 75 82 01         [24]  418 	mov	dpl,#0x01
      00012B C0 07            [24]  419 	push	ar7
      00012D C0 06            [24]  420 	push	ar6
      00012F C0 01            [24]  421 	push	ar1
      000131 12 01 B5         [24]  422 	lcall	_Writesingle7219
                                    423 ;	./src/main.c:24: delay_ms(500);
      000134 90 01 F4         [24]  424 	mov	dptr,#0x01f4
      000137 12 01 89         [24]  425 	lcall	_delay_ms
      00013A D0 01            [24]  426 	pop	ar1
                                    427 ;	./src/main.c:25: Writesingle7219(1,snakeshift[i], 0);
      00013C 87 41            [24]  428 	mov	_Writesingle7219_PARM_2,@r1
      00013E 75 42 00         [24]  429 	mov	_Writesingle7219_PARM_3,#0x00
      000141 75 82 01         [24]  430 	mov	dpl,#0x01
      000144 12 01 B5         [24]  431 	lcall	_Writesingle7219
      000147 D0 06            [24]  432 	pop	ar6
      000149 D0 07            [24]  433 	pop	ar7
                                    434 ;	./src/main.c:22: for(int i=0;i<20;i++){
      00014B 0E               [12]  435 	inc	r6
      00014C BE 00 C2         [24]  436 	cjne	r6,#0x00,00106$
      00014F 0F               [12]  437 	inc	r7
                                    438 ;	./src/main.c:91: }
      000150 80 BF            [24]  439 	sjmp	00106$
                                    440 	.area CSEG    (CODE)
                                    441 	.area CONST   (CODE)
                                    442 	.area XINIT   (CODE)
                                    443 	.area CABS    (ABS,CODE)
