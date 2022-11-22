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
                                     14 	.globl _MPU6050_INIT
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
                                    115 	.globl _gyro_data
                                    116 	.globl _accel_data
                                    117 	.globl _i
                                    118 	.globl _data_buf
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
      000008                        234 _data_buf::
      000008                        235 	.ds 2
      00000A                        236 _i::
      00000A                        237 	.ds 1
      00000B                        238 _accel_data::
      00000B                        239 	.ds 6
      000011                        240 _gyro_data::
      000011                        241 	.ds 6
                                    242 ;--------------------------------------------------------
                                    243 ; overlayable items in internal ram
                                    244 ;--------------------------------------------------------
                                    245 ;--------------------------------------------------------
                                    246 ; Stack segment in internal ram
                                    247 ;--------------------------------------------------------
                                    248 	.area SSEG
      000037                        249 __start__stack:
      000037                        250 	.ds	1
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
                                    310 ;	./src/main.c:8: char i = 0;
      00005F 75 0A 00         [24]  311 	mov	_i,#0x00
                                    312 ;	./src/main.c:10: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
      000062 E4               [12]  313 	clr	a
      000063 F5 0B            [12]  314 	mov	(_accel_data + 0),a
      000065 F5 0C            [12]  315 	mov	(_accel_data + 1),a
      000067 F5 0D            [12]  316 	mov	((_accel_data + 0x0002) + 0),a
      000069 F5 0E            [12]  317 	mov	((_accel_data + 0x0002) + 1),a
      00006B F5 0F            [12]  318 	mov	((_accel_data + 0x0004) + 0),a
      00006D F5 10            [12]  319 	mov	((_accel_data + 0x0004) + 1),a
                                    320 ;	./src/main.c:11: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
      00006F F5 11            [12]  321 	mov	(_gyro_data + 0),a
      000071 F5 12            [12]  322 	mov	(_gyro_data + 1),a
      000073 F5 13            [12]  323 	mov	((_gyro_data + 0x0002) + 0),a
      000075 F5 14            [12]  324 	mov	((_gyro_data + 0x0002) + 1),a
      000077 F5 15            [12]  325 	mov	((_gyro_data + 0x0004) + 0),a
      000079 F5 16            [12]  326 	mov	((_gyro_data + 0x0004) + 1),a
                                    327 	.area GSFINAL (CODE)
      000087 02 00 03         [24]  328 	ljmp	__sdcc_program_startup
                                    329 ;--------------------------------------------------------
                                    330 ; Home
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area HOME    (CODE)
      000003                        334 __sdcc_program_startup:
      000003 02 00 8A         [24]  335 	ljmp	_main
                                    336 ;	return from main will return to caller
                                    337 ;--------------------------------------------------------
                                    338 ; code
                                    339 ;--------------------------------------------------------
                                    340 	.area CSEG    (CODE)
                                    341 ;------------------------------------------------------------
                                    342 ;Allocation info for local variables in function 'main'
                                    343 ;------------------------------------------------------------
                                    344 ;	./src/main.c:15: void main(void)
                                    345 ;	-----------------------------------------
                                    346 ;	 function main
                                    347 ;	-----------------------------------------
      00008A                        348 _main:
                           000007   349 	ar7 = 0x07
                           000006   350 	ar6 = 0x06
                           000005   351 	ar5 = 0x05
                           000004   352 	ar4 = 0x04
                           000003   353 	ar3 = 0x03
                           000002   354 	ar2 = 0x02
                           000001   355 	ar1 = 0x01
                           000000   356 	ar0 = 0x00
                                    357 ;	./src/main.c:17: SDA = 1;
                                    358 ;	assignBit
      00008A D2 81            [12]  359 	setb	_P0_1
                                    360 ;	./src/main.c:18: SCL = 1;
                                    361 ;	assignBit
      00008C D2 80            [12]  362 	setb	_P0_0
                                    363 ;	./src/main.c:19: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
      00008E 12 06 81         [24]  364 	lcall	_OLED_Init
                                    365 ;	./src/main.c:20: MPU6050_INIT();
      000091 12 04 2C         [24]  366 	lcall	_MPU6050_INIT
                                    367 ;	./src/main.c:22: OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
      000094 75 1A 00         [24]  368 	mov	_OLED_SetCursor_PARM_2,#0x00
      000097 75 82 00         [24]  369 	mov	dpl,#0x00
      00009A 12 07 97         [24]  370 	lcall	_OLED_SetCursor
                                    371 ;	./src/main.c:24: OLED_SetCursor(2, 0);  
      00009D 75 1A 00         [24]  372 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000A0 75 82 02         [24]  373 	mov	dpl,#0x02
      0000A3 12 07 97         [24]  374 	lcall	_OLED_SetCursor
                                    375 ;	./src/main.c:25: OLED_DisplayString("Protractor ");
      0000A6 90 09 1B         [24]  376 	mov	dptr,#___str_0
      0000A9 75 F0 80         [24]  377 	mov	b,#0x80
      0000AC 12 07 41         [24]  378 	lcall	_OLED_DisplayString
                                    379 ;	./src/main.c:26: OLED_SetCursor(3, 0);  
      0000AF 75 1A 00         [24]  380 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000B2 75 82 03         [24]  381 	mov	dpl,#0x03
      0000B5 12 07 97         [24]  382 	lcall	_OLED_SetCursor
                                    383 ;	./src/main.c:27: OLED_DisplayString("tan = 0 ");
      0000B8 90 09 27         [24]  384 	mov	dptr,#___str_1
      0000BB 75 F0 80         [24]  385 	mov	b,#0x80
      0000BE 12 07 41         [24]  386 	lcall	_OLED_DisplayString
                                    387 ;	./src/main.c:28: delay_ms(1000);
      0000C1 90 03 E8         [24]  388 	mov	dptr,#0x03e8
      0000C4 12 04 1A         [24]  389 	lcall	_delay_ms
                                    390 ;	./src/main.c:30: while(1) {
      0000C7                        391 00111$:
                                    392 ;	./src/main.c:31: readMPU6050_GyroData(&gyro_data[0]);
      0000C7 90 00 11         [24]  393 	mov	dptr,#_gyro_data
      0000CA 75 F0 40         [24]  394 	mov	b,#0x40
      0000CD 12 05 9C         [24]  395 	lcall	_readMPU6050_GyroData
                                    396 ;	./src/main.c:33: data_buf = gyro_data[0];
      0000D0 85 11 08         [24]  397 	mov	_data_buf,(_gyro_data + 0)
      0000D3 85 12 09         [24]  398 	mov	(_data_buf + 1),(_gyro_data + 1)
                                    399 ;	./src/main.c:34: OLED_SetCursor(4, 0);
      0000D6 75 1A 00         [24]  400 	mov	_OLED_SetCursor_PARM_2,#0x00
      0000D9 75 82 04         [24]  401 	mov	dpl,#0x04
      0000DC 12 07 97         [24]  402 	lcall	_OLED_SetCursor
                                    403 ;	./src/main.c:35: if(data_buf < 0) {
      0000DF E5 09            [12]  404 	mov	a,(_data_buf + 1)
      0000E1 30 E7 13         [24]  405 	jnb	acc.7,00102$
                                    406 ;	./src/main.c:36: OLED_DisplayChar('-');
      0000E4 75 82 2D         [24]  407 	mov	dpl,#0x2d
      0000E7 12 06 F0         [24]  408 	lcall	_OLED_DisplayChar
                                    409 ;	./src/main.c:37: data_buf = data_buf * -1;
      0000EA C3               [12]  410 	clr	c
      0000EB E4               [12]  411 	clr	a
      0000EC 95 08            [12]  412 	subb	a,_data_buf
      0000EE F5 08            [12]  413 	mov	_data_buf,a
      0000F0 E4               [12]  414 	clr	a
      0000F1 95 09            [12]  415 	subb	a,(_data_buf + 1)
      0000F3 F5 09            [12]  416 	mov	(_data_buf + 1),a
      0000F5 80 06            [24]  417 	sjmp	00103$
      0000F7                        418 00102$:
                                    419 ;	./src/main.c:39: OLED_DisplayChar(' ');
      0000F7 75 82 20         [24]  420 	mov	dpl,#0x20
      0000FA 12 06 F0         [24]  421 	lcall	_OLED_DisplayChar
      0000FD                        422 00103$:
                                    423 ;	./src/main.c:42: OLED_DisplayChar(data_buf / 10000 + '0');
      0000FD 75 1B 10         [24]  424 	mov	__divsint_PARM_2,#0x10
      000100 75 1C 27         [24]  425 	mov	(__divsint_PARM_2 + 1),#0x27
      000103 85 08 82         [24]  426 	mov	dpl,_data_buf
      000106 85 09 83         [24]  427 	mov	dph,(_data_buf + 1)
      000109 12 08 DF         [24]  428 	lcall	__divsint
      00010C AE 82            [24]  429 	mov	r6,dpl
      00010E 74 30            [12]  430 	mov	a,#0x30
      000110 2E               [12]  431 	add	a,r6
      000111 F5 82            [12]  432 	mov	dpl,a
      000113 12 06 F0         [24]  433 	lcall	_OLED_DisplayChar
                                    434 ;	./src/main.c:43: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
      000116 75 1B 10         [24]  435 	mov	__modsint_PARM_2,#0x10
      000119 75 1C 27         [24]  436 	mov	(__modsint_PARM_2 + 1),#0x27
      00011C 85 08 82         [24]  437 	mov	dpl,_data_buf
      00011F 85 09 83         [24]  438 	mov	dph,(_data_buf + 1)
      000122 12 08 A9         [24]  439 	lcall	__modsint
      000125 75 1B E8         [24]  440 	mov	__divsint_PARM_2,#0xe8
      000128 75 1C 03         [24]  441 	mov	(__divsint_PARM_2 + 1),#0x03
      00012B 12 08 DF         [24]  442 	lcall	__divsint
      00012E AE 82            [24]  443 	mov	r6,dpl
      000130 74 30            [12]  444 	mov	a,#0x30
      000132 2E               [12]  445 	add	a,r6
      000133 F5 82            [12]  446 	mov	dpl,a
      000135 12 06 F0         [24]  447 	lcall	_OLED_DisplayChar
                                    448 ;	./src/main.c:44: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
      000138 75 1B E8         [24]  449 	mov	__modsint_PARM_2,#0xe8
      00013B 75 1C 03         [24]  450 	mov	(__modsint_PARM_2 + 1),#0x03
      00013E 85 08 82         [24]  451 	mov	dpl,_data_buf
      000141 85 09 83         [24]  452 	mov	dph,(_data_buf + 1)
      000144 12 08 A9         [24]  453 	lcall	__modsint
      000147 75 1B 64         [24]  454 	mov	__divsint_PARM_2,#0x64
      00014A 75 1C 00         [24]  455 	mov	(__divsint_PARM_2 + 1),#0x00
      00014D 12 08 DF         [24]  456 	lcall	__divsint
      000150 AE 82            [24]  457 	mov	r6,dpl
      000152 74 30            [12]  458 	mov	a,#0x30
      000154 2E               [12]  459 	add	a,r6
      000155 F5 82            [12]  460 	mov	dpl,a
      000157 12 06 F0         [24]  461 	lcall	_OLED_DisplayChar
                                    462 ;	./src/main.c:45: OLED_DisplayChar(data_buf % 100 / 10 + '0');
      00015A 75 1B 64         [24]  463 	mov	__modsint_PARM_2,#0x64
      00015D 75 1C 00         [24]  464 	mov	(__modsint_PARM_2 + 1),#0x00
      000160 85 08 82         [24]  465 	mov	dpl,_data_buf
      000163 85 09 83         [24]  466 	mov	dph,(_data_buf + 1)
      000166 12 08 A9         [24]  467 	lcall	__modsint
      000169 75 1B 0A         [24]  468 	mov	__divsint_PARM_2,#0x0a
      00016C 75 1C 00         [24]  469 	mov	(__divsint_PARM_2 + 1),#0x00
      00016F 12 08 DF         [24]  470 	lcall	__divsint
      000172 AE 82            [24]  471 	mov	r6,dpl
      000174 74 30            [12]  472 	mov	a,#0x30
      000176 2E               [12]  473 	add	a,r6
      000177 F5 82            [12]  474 	mov	dpl,a
      000179 12 06 F0         [24]  475 	lcall	_OLED_DisplayChar
                                    476 ;	./src/main.c:46: OLED_DisplayChar(data_buf % 10 + '0');
      00017C 75 1B 0A         [24]  477 	mov	__modsint_PARM_2,#0x0a
      00017F 75 1C 00         [24]  478 	mov	(__modsint_PARM_2 + 1),#0x00
      000182 85 08 82         [24]  479 	mov	dpl,_data_buf
      000185 85 09 83         [24]  480 	mov	dph,(_data_buf + 1)
      000188 12 08 A9         [24]  481 	lcall	__modsint
      00018B AE 82            [24]  482 	mov	r6,dpl
      00018D 74 30            [12]  483 	mov	a,#0x30
      00018F 2E               [12]  484 	add	a,r6
      000190 F5 82            [12]  485 	mov	dpl,a
      000192 12 06 F0         [24]  486 	lcall	_OLED_DisplayChar
                                    487 ;	./src/main.c:48: data_buf = gyro_data[1];
      000195 85 13 08         [24]  488 	mov	_data_buf,((_gyro_data + 0x0002) + 0)
      000198 85 14 09         [24]  489 	mov	(_data_buf + 1),((_gyro_data + 0x0002) + 1)
                                    490 ;	./src/main.c:49: OLED_SetCursor(5, 0); 
      00019B 75 1A 00         [24]  491 	mov	_OLED_SetCursor_PARM_2,#0x00
      00019E 75 82 05         [24]  492 	mov	dpl,#0x05
      0001A1 12 07 97         [24]  493 	lcall	_OLED_SetCursor
                                    494 ;	./src/main.c:50: if(data_buf < 0) {
      0001A4 E5 09            [12]  495 	mov	a,(_data_buf + 1)
      0001A6 30 E7 13         [24]  496 	jnb	acc.7,00105$
                                    497 ;	./src/main.c:51: OLED_DisplayChar('-');
      0001A9 75 82 2D         [24]  498 	mov	dpl,#0x2d
      0001AC 12 06 F0         [24]  499 	lcall	_OLED_DisplayChar
                                    500 ;	./src/main.c:52: data_buf = data_buf * -1;
      0001AF C3               [12]  501 	clr	c
      0001B0 E4               [12]  502 	clr	a
      0001B1 95 08            [12]  503 	subb	a,_data_buf
      0001B3 F5 08            [12]  504 	mov	_data_buf,a
      0001B5 E4               [12]  505 	clr	a
      0001B6 95 09            [12]  506 	subb	a,(_data_buf + 1)
      0001B8 F5 09            [12]  507 	mov	(_data_buf + 1),a
      0001BA 80 06            [24]  508 	sjmp	00106$
      0001BC                        509 00105$:
                                    510 ;	./src/main.c:54: OLED_DisplayChar(' ');
      0001BC 75 82 20         [24]  511 	mov	dpl,#0x20
      0001BF 12 06 F0         [24]  512 	lcall	_OLED_DisplayChar
      0001C2                        513 00106$:
                                    514 ;	./src/main.c:57: OLED_DisplayChar(data_buf / 10000 + '0');
      0001C2 75 1B 10         [24]  515 	mov	__divsint_PARM_2,#0x10
      0001C5 75 1C 27         [24]  516 	mov	(__divsint_PARM_2 + 1),#0x27
      0001C8 85 08 82         [24]  517 	mov	dpl,_data_buf
      0001CB 85 09 83         [24]  518 	mov	dph,(_data_buf + 1)
      0001CE 12 08 DF         [24]  519 	lcall	__divsint
      0001D1 AE 82            [24]  520 	mov	r6,dpl
      0001D3 74 30            [12]  521 	mov	a,#0x30
      0001D5 2E               [12]  522 	add	a,r6
      0001D6 F5 82            [12]  523 	mov	dpl,a
      0001D8 12 06 F0         [24]  524 	lcall	_OLED_DisplayChar
                                    525 ;	./src/main.c:58: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
      0001DB 75 1B 10         [24]  526 	mov	__modsint_PARM_2,#0x10
      0001DE 75 1C 27         [24]  527 	mov	(__modsint_PARM_2 + 1),#0x27
      0001E1 85 08 82         [24]  528 	mov	dpl,_data_buf
      0001E4 85 09 83         [24]  529 	mov	dph,(_data_buf + 1)
      0001E7 12 08 A9         [24]  530 	lcall	__modsint
      0001EA 75 1B E8         [24]  531 	mov	__divsint_PARM_2,#0xe8
      0001ED 75 1C 03         [24]  532 	mov	(__divsint_PARM_2 + 1),#0x03
      0001F0 12 08 DF         [24]  533 	lcall	__divsint
      0001F3 AE 82            [24]  534 	mov	r6,dpl
      0001F5 74 30            [12]  535 	mov	a,#0x30
      0001F7 2E               [12]  536 	add	a,r6
      0001F8 F5 82            [12]  537 	mov	dpl,a
      0001FA 12 06 F0         [24]  538 	lcall	_OLED_DisplayChar
                                    539 ;	./src/main.c:59: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
      0001FD 75 1B E8         [24]  540 	mov	__modsint_PARM_2,#0xe8
      000200 75 1C 03         [24]  541 	mov	(__modsint_PARM_2 + 1),#0x03
      000203 85 08 82         [24]  542 	mov	dpl,_data_buf
      000206 85 09 83         [24]  543 	mov	dph,(_data_buf + 1)
      000209 12 08 A9         [24]  544 	lcall	__modsint
      00020C 75 1B 64         [24]  545 	mov	__divsint_PARM_2,#0x64
      00020F 75 1C 00         [24]  546 	mov	(__divsint_PARM_2 + 1),#0x00
      000212 12 08 DF         [24]  547 	lcall	__divsint
      000215 AE 82            [24]  548 	mov	r6,dpl
      000217 74 30            [12]  549 	mov	a,#0x30
      000219 2E               [12]  550 	add	a,r6
      00021A F5 82            [12]  551 	mov	dpl,a
      00021C 12 06 F0         [24]  552 	lcall	_OLED_DisplayChar
                                    553 ;	./src/main.c:60: OLED_DisplayChar(data_buf % 100 / 10 + '0');
      00021F 75 1B 64         [24]  554 	mov	__modsint_PARM_2,#0x64
      000222 75 1C 00         [24]  555 	mov	(__modsint_PARM_2 + 1),#0x00
      000225 85 08 82         [24]  556 	mov	dpl,_data_buf
      000228 85 09 83         [24]  557 	mov	dph,(_data_buf + 1)
      00022B 12 08 A9         [24]  558 	lcall	__modsint
      00022E 75 1B 0A         [24]  559 	mov	__divsint_PARM_2,#0x0a
      000231 75 1C 00         [24]  560 	mov	(__divsint_PARM_2 + 1),#0x00
      000234 12 08 DF         [24]  561 	lcall	__divsint
      000237 AE 82            [24]  562 	mov	r6,dpl
      000239 74 30            [12]  563 	mov	a,#0x30
      00023B 2E               [12]  564 	add	a,r6
      00023C F5 82            [12]  565 	mov	dpl,a
      00023E 12 06 F0         [24]  566 	lcall	_OLED_DisplayChar
                                    567 ;	./src/main.c:61: OLED_DisplayChar(data_buf % 10 + '0');
      000241 75 1B 0A         [24]  568 	mov	__modsint_PARM_2,#0x0a
      000244 75 1C 00         [24]  569 	mov	(__modsint_PARM_2 + 1),#0x00
      000247 85 08 82         [24]  570 	mov	dpl,_data_buf
      00024A 85 09 83         [24]  571 	mov	dph,(_data_buf + 1)
      00024D 12 08 A9         [24]  572 	lcall	__modsint
      000250 AE 82            [24]  573 	mov	r6,dpl
      000252 74 30            [12]  574 	mov	a,#0x30
      000254 2E               [12]  575 	add	a,r6
      000255 F5 82            [12]  576 	mov	dpl,a
      000257 12 06 F0         [24]  577 	lcall	_OLED_DisplayChar
                                    578 ;	./src/main.c:63: data_buf = gyro_data[2];
      00025A 85 15 08         [24]  579 	mov	_data_buf,((_gyro_data + 0x0004) + 0)
      00025D 85 16 09         [24]  580 	mov	(_data_buf + 1),((_gyro_data + 0x0004) + 1)
                                    581 ;	./src/main.c:64: OLED_SetCursor(6, 0);
      000260 75 1A 00         [24]  582 	mov	_OLED_SetCursor_PARM_2,#0x00
      000263 75 82 06         [24]  583 	mov	dpl,#0x06
      000266 12 07 97         [24]  584 	lcall	_OLED_SetCursor
                                    585 ;	./src/main.c:65: if(data_buf < 0) {
      000269 E5 09            [12]  586 	mov	a,(_data_buf + 1)
      00026B 30 E7 13         [24]  587 	jnb	acc.7,00108$
                                    588 ;	./src/main.c:66: OLED_DisplayChar('-');
      00026E 75 82 2D         [24]  589 	mov	dpl,#0x2d
      000271 12 06 F0         [24]  590 	lcall	_OLED_DisplayChar
                                    591 ;	./src/main.c:67: data_buf = data_buf * -1;
      000274 C3               [12]  592 	clr	c
      000275 E4               [12]  593 	clr	a
      000276 95 08            [12]  594 	subb	a,_data_buf
      000278 F5 08            [12]  595 	mov	_data_buf,a
      00027A E4               [12]  596 	clr	a
      00027B 95 09            [12]  597 	subb	a,(_data_buf + 1)
      00027D F5 09            [12]  598 	mov	(_data_buf + 1),a
      00027F 80 06            [24]  599 	sjmp	00109$
      000281                        600 00108$:
                                    601 ;	./src/main.c:69: OLED_DisplayChar(' ');
      000281 75 82 20         [24]  602 	mov	dpl,#0x20
      000284 12 06 F0         [24]  603 	lcall	_OLED_DisplayChar
      000287                        604 00109$:
                                    605 ;	./src/main.c:73: OLED_DisplayChar(data_buf / 10000 + '0');
      000287 75 1B 10         [24]  606 	mov	__divsint_PARM_2,#0x10
      00028A 75 1C 27         [24]  607 	mov	(__divsint_PARM_2 + 1),#0x27
      00028D 85 08 82         [24]  608 	mov	dpl,_data_buf
      000290 85 09 83         [24]  609 	mov	dph,(_data_buf + 1)
      000293 12 08 DF         [24]  610 	lcall	__divsint
      000296 AE 82            [24]  611 	mov	r6,dpl
      000298 74 30            [12]  612 	mov	a,#0x30
      00029A 2E               [12]  613 	add	a,r6
      00029B F5 82            [12]  614 	mov	dpl,a
      00029D 12 06 F0         [24]  615 	lcall	_OLED_DisplayChar
                                    616 ;	./src/main.c:74: OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
      0002A0 75 1B 10         [24]  617 	mov	__modsint_PARM_2,#0x10
      0002A3 75 1C 27         [24]  618 	mov	(__modsint_PARM_2 + 1),#0x27
      0002A6 85 08 82         [24]  619 	mov	dpl,_data_buf
      0002A9 85 09 83         [24]  620 	mov	dph,(_data_buf + 1)
      0002AC 12 08 A9         [24]  621 	lcall	__modsint
      0002AF 75 1B E8         [24]  622 	mov	__divsint_PARM_2,#0xe8
      0002B2 75 1C 03         [24]  623 	mov	(__divsint_PARM_2 + 1),#0x03
      0002B5 12 08 DF         [24]  624 	lcall	__divsint
      0002B8 AE 82            [24]  625 	mov	r6,dpl
      0002BA 74 30            [12]  626 	mov	a,#0x30
      0002BC 2E               [12]  627 	add	a,r6
      0002BD F5 82            [12]  628 	mov	dpl,a
      0002BF 12 06 F0         [24]  629 	lcall	_OLED_DisplayChar
                                    630 ;	./src/main.c:75: OLED_DisplayChar(data_buf % 1000 / 100 + '0');
      0002C2 75 1B E8         [24]  631 	mov	__modsint_PARM_2,#0xe8
      0002C5 75 1C 03         [24]  632 	mov	(__modsint_PARM_2 + 1),#0x03
      0002C8 85 08 82         [24]  633 	mov	dpl,_data_buf
      0002CB 85 09 83         [24]  634 	mov	dph,(_data_buf + 1)
      0002CE 12 08 A9         [24]  635 	lcall	__modsint
      0002D1 75 1B 64         [24]  636 	mov	__divsint_PARM_2,#0x64
      0002D4 75 1C 00         [24]  637 	mov	(__divsint_PARM_2 + 1),#0x00
      0002D7 12 08 DF         [24]  638 	lcall	__divsint
      0002DA AE 82            [24]  639 	mov	r6,dpl
      0002DC 74 30            [12]  640 	mov	a,#0x30
      0002DE 2E               [12]  641 	add	a,r6
      0002DF F5 82            [12]  642 	mov	dpl,a
      0002E1 12 06 F0         [24]  643 	lcall	_OLED_DisplayChar
                                    644 ;	./src/main.c:76: OLED_DisplayChar(data_buf % 100 / 10 + '0');
      0002E4 75 1B 64         [24]  645 	mov	__modsint_PARM_2,#0x64
      0002E7 75 1C 00         [24]  646 	mov	(__modsint_PARM_2 + 1),#0x00
      0002EA 85 08 82         [24]  647 	mov	dpl,_data_buf
      0002ED 85 09 83         [24]  648 	mov	dph,(_data_buf + 1)
      0002F0 12 08 A9         [24]  649 	lcall	__modsint
      0002F3 75 1B 0A         [24]  650 	mov	__divsint_PARM_2,#0x0a
      0002F6 75 1C 00         [24]  651 	mov	(__divsint_PARM_2 + 1),#0x00
      0002F9 12 08 DF         [24]  652 	lcall	__divsint
      0002FC AE 82            [24]  653 	mov	r6,dpl
      0002FE 74 30            [12]  654 	mov	a,#0x30
      000300 2E               [12]  655 	add	a,r6
      000301 F5 82            [12]  656 	mov	dpl,a
      000303 12 06 F0         [24]  657 	lcall	_OLED_DisplayChar
                                    658 ;	./src/main.c:77: OLED_DisplayChar(data_buf % 10 + '0');
      000306 75 1B 0A         [24]  659 	mov	__modsint_PARM_2,#0x0a
      000309 75 1C 00         [24]  660 	mov	(__modsint_PARM_2 + 1),#0x00
      00030C 85 08 82         [24]  661 	mov	dpl,_data_buf
      00030F 85 09 83         [24]  662 	mov	dph,(_data_buf + 1)
      000312 12 08 A9         [24]  663 	lcall	__modsint
      000315 AE 82            [24]  664 	mov	r6,dpl
      000317 74 30            [12]  665 	mov	a,#0x30
      000319 2E               [12]  666 	add	a,r6
      00031A F5 82            [12]  667 	mov	dpl,a
      00031C 12 06 F0         [24]  668 	lcall	_OLED_DisplayChar
                                    669 ;	./src/main.c:78: delay_ms(100);
      00031F 90 00 64         [24]  670 	mov	dptr,#0x0064
      000322 12 04 1A         [24]  671 	lcall	_delay_ms
                                    672 ;	./src/main.c:80: }
      000325 02 00 C7         [24]  673 	ljmp	00111$
                                    674 	.area CSEG    (CODE)
                                    675 	.area CONST   (CODE)
                                    676 	.area CONST   (CODE)
      00091B                        677 ___str_0:
      00091B 50 72 6F 74 72 61 63   678 	.ascii "Protractor "
             74 6F 72 20
      000926 00                     679 	.db 0x00
                                    680 	.area CSEG    (CODE)
                                    681 	.area CONST   (CODE)
      000927                        682 ___str_1:
      000927 74 61 6E 20 3D 20 30   683 	.ascii "tan = 0 "
             20
      00092F 00                     684 	.db 0x00
                                    685 	.area CSEG    (CODE)
                                    686 	.area XINIT   (CODE)
                                    687 	.area CABS    (ABS,CODE)
