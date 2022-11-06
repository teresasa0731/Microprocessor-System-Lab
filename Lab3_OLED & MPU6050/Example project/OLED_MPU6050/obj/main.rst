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
                                     13 	.globl _readMPU6050_GyroData
                                     14 	.globl _readMPU6050_AccelData
                                     15 	.globl _MPU6050_INIT
                                     16 	.globl _OLED_SetCursor
                                     17 	.globl _OLED_DisplayString
                                     18 	.globl _OLED_DisplayChar
                                     19 	.globl _OLED_Init
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _gyro_data
                                    117 	.globl _accel_data
                                    118 	.globl _i
                                    119 	.globl _data_buf
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000008                        235 _data_buf::
      000008                        236 	.ds 2
      00000A                        237 _i::
      00000A                        238 	.ds 1
      00000B                        239 _accel_data::
      00000B                        240 	.ds 6
      000011                        241 _gyro_data::
      000011                        242 	.ds 6
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram
                                    245 ;--------------------------------------------------------
                                    246 ;--------------------------------------------------------
                                    247 ; Stack segment in internal ram
                                    248 ;--------------------------------------------------------
                                    249 	.area SSEG
      000037                        250 __start__stack:
      000037                        251 	.ds	1
                                    252 
                                    253 ;--------------------------------------------------------
                                    254 ; indirectly addressable internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area ISEG    (DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area IABS    (ABS,DATA)
                                    261 	.area IABS    (ABS,DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; bit data
                                    264 ;--------------------------------------------------------
                                    265 	.area BSEG    (BIT)
                                    266 ;--------------------------------------------------------
                                    267 ; paged external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area PSEG    (PAG,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; uninitialized external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XSEG    (XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; absolute external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XABS    (ABS,XDATA)
                                    278 ;--------------------------------------------------------
                                    279 ; initialized external ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area XISEG   (XDATA)
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT0 (CODE)
                                    284 	.area GSINIT1 (CODE)
                                    285 	.area GSINIT2 (CODE)
                                    286 	.area GSINIT3 (CODE)
                                    287 	.area GSINIT4 (CODE)
                                    288 	.area GSINIT5 (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area CSEG    (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; interrupt vector
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
      000000                        296 __interrupt_vect:
      000000 02 00 06         [24]  297 	ljmp	__sdcc_gsinit_startup
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
                                    311 ;	./src/main.c:34: char i = 0;
      00005F 75 0A 00         [24]  312 	mov	_i,#0x00
                                    313 ;	./src/main.c:36: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
      000062 E4               [12]  314 	clr	a
      000063 F5 0B            [12]  315 	mov	(_accel_data + 0),a
      000065 F5 0C            [12]  316 	mov	(_accel_data + 1),a
      000067 F5 0D            [12]  317 	mov	((_accel_data + 0x0002) + 0),a
      000069 F5 0E            [12]  318 	mov	((_accel_data + 0x0002) + 1),a
      00006B F5 0F            [12]  319 	mov	((_accel_data + 0x0004) + 0),a
      00006D F5 10            [12]  320 	mov	((_accel_data + 0x0004) + 1),a
                                    321 ;	./src/main.c:37: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
      00006F F5 11            [12]  322 	mov	(_gyro_data + 0),a
      000071 F5 12            [12]  323 	mov	(_gyro_data + 1),a
      000073 F5 13            [12]  324 	mov	((_gyro_data + 0x0002) + 0),a
      000075 F5 14            [12]  325 	mov	((_gyro_data + 0x0002) + 1),a
      000077 F5 15            [12]  326 	mov	((_gyro_data + 0x0004) + 0),a
      000079 F5 16            [12]  327 	mov	((_gyro_data + 0x0004) + 1),a
                                    328 	.area GSFINAL (CODE)
      000087 02 00 03         [24]  329 	ljmp	__sdcc_program_startup
                                    330 ;--------------------------------------------------------
                                    331 ; Home
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area HOME    (CODE)
      000003                        335 __sdcc_program_startup:
      000003 02 00 8A         [24]  336 	ljmp	_main
                                    337 ;	return from main will return to caller
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'main'
                                    344 ;------------------------------------------------------------
                                    345 ;	./src/main.c:41: void main(void)
                                    346 ;	-----------------------------------------
                                    347 ;	 function main
                                    348 ;	-----------------------------------------
      00008A                        349 _main:
                           000007   350 	ar7 = 0x07
                           000006   351 	ar6 = 0x06
                           000005   352 	ar5 = 0x05
                           000004   353 	ar4 = 0x04
                           000003   354 	ar3 = 0x03
                           000002   355 	ar2 = 0x02
                           000001   356 	ar1 = 0x01
                           000000   357 	ar0 = 0x00
                                    358 ;	./src/main.c:43: SDA = 1;
                                    359 ;	assignBit
      00008A D2 81            [12]  360 	setb	_P0_1
                                    361 ;	./src/main.c:44: SCL = 1;
                                    362 ;	assignBit
      00008C D2 80            [12]  363 	setb	_P0_0
                                    364 ;	./src/main.c:45: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
      00008E 12 05 7E         [24]  365 	lcall	_OLED_Init
                                    366 ;	./src/main.c:46: MPU6050_INIT();
      000091 12 03 29         [24]  367 	lcall	_MPU6050_INIT
                                    368 ;	./src/main.c:48: OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
      000094 75 1A 00         [24]  369 	mov	_OLED_SetCursor_PARM_2,#0x00
      000097 75 82 00         [24]  370 	mov	dpl,#0x00
      00009A 12 06 E6         [24]  371 	lcall	_OLED_SetCursor
                                    372 ;	./src/main.c:50: OLED_SetCursor(2, 0);  
      00009D 75 1A 00         [24]  373 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000A0 75 82 02         [24]  374 	mov	dpl,#0x02
      0000A3 12 06 E6         [24]  375 	lcall	_OLED_SetCursor
                                    376 ;	./src/main.c:51: OLED_DisplayString("AX ");
      0000A6 90 08 6A         [24]  377 	mov	dptr,#___str_0
      0000A9 75 F0 80         [24]  378 	mov	b,#0x80
      0000AC 12 06 90         [24]  379 	lcall	_OLED_DisplayString
                                    380 ;	./src/main.c:52: OLED_SetCursor(3, 0);  
      0000AF 75 1A 00         [24]  381 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000B2 75 82 03         [24]  382 	mov	dpl,#0x03
      0000B5 12 06 E6         [24]  383 	lcall	_OLED_SetCursor
                                    384 ;	./src/main.c:53: OLED_DisplayString("AY ");
      0000B8 90 08 6E         [24]  385 	mov	dptr,#___str_1
      0000BB 75 F0 80         [24]  386 	mov	b,#0x80
      0000BE 12 06 90         [24]  387 	lcall	_OLED_DisplayString
                                    388 ;	./src/main.c:54: OLED_SetCursor(4, 0);  
      0000C1 75 1A 00         [24]  389 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000C4 75 82 04         [24]  390 	mov	dpl,#0x04
      0000C7 12 06 E6         [24]  391 	lcall	_OLED_SetCursor
                                    392 ;	./src/main.c:55: OLED_DisplayString("AZ ");
      0000CA 90 08 72         [24]  393 	mov	dptr,#___str_2
      0000CD 75 F0 80         [24]  394 	mov	b,#0x80
      0000D0 12 06 90         [24]  395 	lcall	_OLED_DisplayString
                                    396 ;	./src/main.c:56: OLED_SetCursor(5, 0);  
      0000D3 75 1A 00         [24]  397 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000D6 75 82 05         [24]  398 	mov	dpl,#0x05
      0000D9 12 06 E6         [24]  399 	lcall	_OLED_SetCursor
                                    400 ;	./src/main.c:57: OLED_DisplayString("GX ");
      0000DC 90 08 76         [24]  401 	mov	dptr,#___str_3
      0000DF 75 F0 80         [24]  402 	mov	b,#0x80
      0000E2 12 06 90         [24]  403 	lcall	_OLED_DisplayString
                                    404 ;	./src/main.c:58: OLED_SetCursor(6, 0);  
      0000E5 75 1A 00         [24]  405 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000E8 75 82 06         [24]  406 	mov	dpl,#0x06
      0000EB 12 06 E6         [24]  407 	lcall	_OLED_SetCursor
                                    408 ;	./src/main.c:59: OLED_DisplayString("GY ");
      0000EE 90 08 7A         [24]  409 	mov	dptr,#___str_4
      0000F1 75 F0 80         [24]  410 	mov	b,#0x80
      0000F4 12 06 90         [24]  411 	lcall	_OLED_DisplayString
                                    412 ;	./src/main.c:60: OLED_SetCursor(7, 0);  
      0000F7 75 1A 00         [24]  413 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000FA 75 82 07         [24]  414 	mov	dpl,#0x07
      0000FD 12 06 E6         [24]  415 	lcall	_OLED_SetCursor
                                    416 ;	./src/main.c:61: OLED_DisplayString("GZ ");
      000100 90 08 7E         [24]  417 	mov	dptr,#___str_5
      000103 75 F0 80         [24]  418 	mov	b,#0x80
      000106 12 06 90         [24]  419 	lcall	_OLED_DisplayString
                                    420 ;	./src/main.c:63: while(1) {
      000109                        421 00109$:
                                    422 ;	./src/main.c:64: readMPU6050_AccelData(&accel_data[0]);
      000109 90 00 0B         [24]  423 	mov	dptr,#_accel_data
      00010C 75 F0 40         [24]  424 	mov	b,#0x40
      00010F 12 03 C6         [24]  425 	lcall	_readMPU6050_AccelData
                                    426 ;	./src/main.c:65: readMPU6050_GyroData(&gyro_data[0]);
      000112 90 00 11         [24]  427 	mov	dptr,#_gyro_data
      000115 75 F0 40         [24]  428 	mov	b,#0x40
      000118 12 04 99         [24]  429 	lcall	_readMPU6050_GyroData
                                    430 ;	./src/main.c:67: for(i = 0; i < 6; i++) {
      00011B 75 0A 00         [24]  431 	mov	_i,#0x00
      00011E                        432 00111$:
                                    433 ;	./src/main.c:68: if(i < 3) {
      00011E 74 FD            [12]  434 	mov	a,#0x100 - 0x03
      000120 25 0A            [12]  435 	add	a,_i
      000122 40 1C            [24]  436 	jc	00102$
                                    437 ;	./src/main.c:69: data_buf = accel_data[i];
      000124 E5 0A            [12]  438 	mov	a,_i
      000126 25 0A            [12]  439 	add	a,_i
      000128 24 0B            [12]  440 	add	a,#_accel_data
      00012A F9               [12]  441 	mov	r1,a
      00012B 87 08            [24]  442 	mov	_data_buf,@r1
      00012D 09               [12]  443 	inc	r1
      00012E 87 09            [24]  444 	mov	(_data_buf + 1),@r1
      000130 19               [12]  445 	dec	r1
                                    446 ;	./src/main.c:70: OLED_SetCursor(2 + i, 54); 
      000131 AF 0A            [24]  447 	mov	r7,_i
      000133 74 02            [12]  448 	mov	a,#0x02
      000135 2F               [12]  449 	add	a,r7
      000136 F5 82            [12]  450 	mov	dpl,a
      000138 75 1A 36         [24]  451 	mov	_OLED_SetCursor_PARM_2,#0x36
      00013B 12 06 E6         [24]  452 	lcall	_OLED_SetCursor
      00013E 80 1B            [24]  453 	sjmp	00103$
      000140                        454 00102$:
                                    455 ;	./src/main.c:72: data_buf = gyro_data[i - 3];
      000140 E5 0A            [12]  456 	mov	a,_i
      000142 FF               [12]  457 	mov	r7,a
      000143 24 FD            [12]  458 	add	a,#0xfd
      000145 25 E0            [12]  459 	add	a,acc
      000147 24 11            [12]  460 	add	a,#_gyro_data
      000149 F9               [12]  461 	mov	r1,a
      00014A 87 08            [24]  462 	mov	_data_buf,@r1
      00014C 09               [12]  463 	inc	r1
      00014D 87 09            [24]  464 	mov	(_data_buf + 1),@r1
      00014F 19               [12]  465 	dec	r1
                                    466 ;	./src/main.c:73: OLED_SetCursor(2 + i, 54); 
      000150 74 02            [12]  467 	mov	a,#0x02
      000152 2F               [12]  468 	add	a,r7
      000153 F5 82            [12]  469 	mov	dpl,a
      000155 75 1A 36         [24]  470 	mov	_OLED_SetCursor_PARM_2,#0x36
      000158 12 06 E6         [24]  471 	lcall	_OLED_SetCursor
      00015B                        472 00103$:
                                    473 ;	./src/main.c:75: if(data_buf < 0) {
      00015B E5 09            [12]  474 	mov	a,(_data_buf + 1)
      00015D 30 E7 13         [24]  475 	jnb	acc.7,00105$
                                    476 ;	./src/main.c:76: OLED_DisplayChar('-');
      000160 75 82 2D         [24]  477 	mov	dpl,#0x2d
      000163 12 05 ED         [24]  478 	lcall	_OLED_DisplayChar
                                    479 ;	./src/main.c:77: data_buf = data_buf * -1;
      000166 C3               [12]  480 	clr	c
      000167 E4               [12]  481 	clr	a
      000168 95 08            [12]  482 	subb	a,_data_buf
      00016A F5 08            [12]  483 	mov	_data_buf,a
      00016C E4               [12]  484 	clr	a
      00016D 95 09            [12]  485 	subb	a,(_data_buf + 1)
      00016F F5 09            [12]  486 	mov	(_data_buf + 1),a
      000171 80 06            [24]  487 	sjmp	00106$
      000173                        488 00105$:
                                    489 ;	./src/main.c:79: OLED_DisplayChar(' ');
      000173 75 82 20         [24]  490 	mov	dpl,#0x20
      000176 12 05 ED         [24]  491 	lcall	_OLED_DisplayChar
      000179                        492 00106$:
                                    493 ;	./src/main.c:81: OLED_DisplayChar(data_buf / 10000 + '0');
      000179 75 1B 10         [24]  494 	mov	__divsint_PARM_2,#0x10
      00017C 75 1C 27         [24]  495 	mov	(__divsint_PARM_2 + 1),#0x27
      00017F 85 08 82         [24]  496 	mov	dpl,_data_buf
      000182 85 09 83         [24]  497 	mov	dph,(_data_buf + 1)
      000185 12 08 2E         [24]  498 	lcall	__divsint
      000188 AE 82            [24]  499 	mov	r6,dpl
      00018A 74 30            [12]  500 	mov	a,#0x30
      00018C 2E               [12]  501 	add	a,r6
      00018D F5 82            [12]  502 	mov	dpl,a
      00018F 12 05 ED         [24]  503 	lcall	_OLED_DisplayChar
                                    504 ;	./src/main.c:82: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
      000192 75 1B 10         [24]  505 	mov	__modsint_PARM_2,#0x10
      000195 75 1C 27         [24]  506 	mov	(__modsint_PARM_2 + 1),#0x27
      000198 85 08 82         [24]  507 	mov	dpl,_data_buf
      00019B 85 09 83         [24]  508 	mov	dph,(_data_buf + 1)
      00019E 12 07 F8         [24]  509 	lcall	__modsint
      0001A1 75 1B E8         [24]  510 	mov	__divsint_PARM_2,#0xe8
      0001A4 75 1C 03         [24]  511 	mov	(__divsint_PARM_2 + 1),#0x03
      0001A7 12 08 2E         [24]  512 	lcall	__divsint
      0001AA AE 82            [24]  513 	mov	r6,dpl
      0001AC 74 30            [12]  514 	mov	a,#0x30
      0001AE 2E               [12]  515 	add	a,r6
      0001AF F5 82            [12]  516 	mov	dpl,a
      0001B1 12 05 ED         [24]  517 	lcall	_OLED_DisplayChar
                                    518 ;	./src/main.c:83: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
      0001B4 75 1B E8         [24]  519 	mov	__modsint_PARM_2,#0xe8
      0001B7 75 1C 03         [24]  520 	mov	(__modsint_PARM_2 + 1),#0x03
      0001BA 85 08 82         [24]  521 	mov	dpl,_data_buf
      0001BD 85 09 83         [24]  522 	mov	dph,(_data_buf + 1)
      0001C0 12 07 F8         [24]  523 	lcall	__modsint
      0001C3 75 1B 64         [24]  524 	mov	__divsint_PARM_2,#0x64
      0001C6 75 1C 00         [24]  525 	mov	(__divsint_PARM_2 + 1),#0x00
      0001C9 12 08 2E         [24]  526 	lcall	__divsint
      0001CC AE 82            [24]  527 	mov	r6,dpl
      0001CE 74 30            [12]  528 	mov	a,#0x30
      0001D0 2E               [12]  529 	add	a,r6
      0001D1 F5 82            [12]  530 	mov	dpl,a
      0001D3 12 05 ED         [24]  531 	lcall	_OLED_DisplayChar
                                    532 ;	./src/main.c:84: OLED_DisplayChar(data_buf % 100 / 10 + '0');
      0001D6 75 1B 64         [24]  533 	mov	__modsint_PARM_2,#0x64
      0001D9 75 1C 00         [24]  534 	mov	(__modsint_PARM_2 + 1),#0x00
      0001DC 85 08 82         [24]  535 	mov	dpl,_data_buf
      0001DF 85 09 83         [24]  536 	mov	dph,(_data_buf + 1)
      0001E2 12 07 F8         [24]  537 	lcall	__modsint
      0001E5 75 1B 0A         [24]  538 	mov	__divsint_PARM_2,#0x0a
      0001E8 75 1C 00         [24]  539 	mov	(__divsint_PARM_2 + 1),#0x00
      0001EB 12 08 2E         [24]  540 	lcall	__divsint
      0001EE AE 82            [24]  541 	mov	r6,dpl
      0001F0 74 30            [12]  542 	mov	a,#0x30
      0001F2 2E               [12]  543 	add	a,r6
      0001F3 F5 82            [12]  544 	mov	dpl,a
      0001F5 12 05 ED         [24]  545 	lcall	_OLED_DisplayChar
                                    546 ;	./src/main.c:85: OLED_DisplayChar(data_buf % 10 + '0');
      0001F8 75 1B 0A         [24]  547 	mov	__modsint_PARM_2,#0x0a
      0001FB 75 1C 00         [24]  548 	mov	(__modsint_PARM_2 + 1),#0x00
      0001FE 85 08 82         [24]  549 	mov	dpl,_data_buf
      000201 85 09 83         [24]  550 	mov	dph,(_data_buf + 1)
      000204 12 07 F8         [24]  551 	lcall	__modsint
      000207 AE 82            [24]  552 	mov	r6,dpl
      000209 74 30            [12]  553 	mov	a,#0x30
      00020B 2E               [12]  554 	add	a,r6
      00020C F5 82            [12]  555 	mov	dpl,a
      00020E 12 05 ED         [24]  556 	lcall	_OLED_DisplayChar
                                    557 ;	./src/main.c:67: for(i = 0; i < 6; i++) {
      000211 05 0A            [12]  558 	inc	_i
      000213 74 FA            [12]  559 	mov	a,#0x100 - 0x06
      000215 25 0A            [12]  560 	add	a,_i
      000217 40 03            [24]  561 	jc	00137$
      000219 02 01 1E         [24]  562 	ljmp	00111$
      00021C                        563 00137$:
                                    564 ;	./src/main.c:87: delay_ms(100);
      00021C 90 00 64         [24]  565 	mov	dptr,#0x0064
      00021F 12 03 17         [24]  566 	lcall	_delay_ms
                                    567 ;	./src/main.c:89: }
      000222 02 01 09         [24]  568 	ljmp	00109$
                                    569 	.area CSEG    (CODE)
                                    570 	.area CONST   (CODE)
                                    571 	.area CONST   (CODE)
      00086A                        572 ___str_0:
      00086A 41 58 20               573 	.ascii "AX "
      00086D 00                     574 	.db 0x00
                                    575 	.area CSEG    (CODE)
                                    576 	.area CONST   (CODE)
      00086E                        577 ___str_1:
      00086E 41 59 20               578 	.ascii "AY "
      000871 00                     579 	.db 0x00
                                    580 	.area CSEG    (CODE)
                                    581 	.area CONST   (CODE)
      000872                        582 ___str_2:
      000872 41 5A 20               583 	.ascii "AZ "
      000875 00                     584 	.db 0x00
                                    585 	.area CSEG    (CODE)
                                    586 	.area CONST   (CODE)
      000876                        587 ___str_3:
      000876 47 58 20               588 	.ascii "GX "
      000879 00                     589 	.db 0x00
                                    590 	.area CSEG    (CODE)
                                    591 	.area CONST   (CODE)
      00087A                        592 ___str_4:
      00087A 47 59 20               593 	.ascii "GY "
      00087D 00                     594 	.db 0x00
                                    595 	.area CSEG    (CODE)
                                    596 	.area CONST   (CODE)
      00087E                        597 ___str_5:
      00087E 47 5A 20               598 	.ascii "GZ "
      000881 00                     599 	.db 0x00
                                    600 	.area CSEG    (CODE)
                                    601 	.area XINIT   (CODE)
                                    602 	.area CABS    (ABS,CODE)
