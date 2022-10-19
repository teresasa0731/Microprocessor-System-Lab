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
                                     13 	.globl _readMPU6050_AccelData
                                     14 	.globl _MPU6050_INIT
                                     15 	.globl _OLED_SetCursor
                                     16 	.globl _OLED_Clear
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
      000017                        243 _main_pre_location_65536_33:
      000017                        244 	.ds 4
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable items in internal ram
                                    247 ;--------------------------------------------------------
                                    248 ;--------------------------------------------------------
                                    249 ; Stack segment in internal ram
                                    250 ;--------------------------------------------------------
                                    251 	.area SSEG
      000039                        252 __start__stack:
      000039                        253 	.ds	1
                                    254 
                                    255 ;--------------------------------------------------------
                                    256 ; indirectly addressable internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area ISEG    (DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area IABS    (ABS,DATA)
                                    263 	.area IABS    (ABS,DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; bit data
                                    266 ;--------------------------------------------------------
                                    267 	.area BSEG    (BIT)
                                    268 ;--------------------------------------------------------
                                    269 ; paged external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area PSEG    (PAG,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; uninitialized external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XSEG    (XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; absolute external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XABS    (ABS,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; initialized external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XISEG   (XDATA)
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT0 (CODE)
                                    286 	.area GSINIT1 (CODE)
                                    287 	.area GSINIT2 (CODE)
                                    288 	.area GSINIT3 (CODE)
                                    289 	.area GSINIT4 (CODE)
                                    290 	.area GSINIT5 (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area CSEG    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; interrupt vector
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
      000000                        298 __interrupt_vect:
      000000 02 00 06         [24]  299 	ljmp	__sdcc_gsinit_startup
                                    300 ;--------------------------------------------------------
                                    301 ; global & static initialisations
                                    302 ;--------------------------------------------------------
                                    303 	.area HOME    (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.area GSFINAL (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.globl __sdcc_gsinit_startup
                                    308 	.globl __sdcc_program_startup
                                    309 	.globl __start__stack
                                    310 	.globl __mcs51_genXINIT
                                    311 	.globl __mcs51_genXRAMCLEAR
                                    312 	.globl __mcs51_genRAMCLEAR
                                    313 ;	./src/main.c:34: char i = 0;
      00005F 75 0A 00         [24]  314 	mov	_i,#0x00
                                    315 ;	./src/main.c:36: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
      000062 E4               [12]  316 	clr	a
      000063 F5 0B            [12]  317 	mov	(_accel_data + 0),a
      000065 F5 0C            [12]  318 	mov	(_accel_data + 1),a
      000067 F5 0D            [12]  319 	mov	((_accel_data + 0x0002) + 0),a
      000069 F5 0E            [12]  320 	mov	((_accel_data + 0x0002) + 1),a
      00006B F5 0F            [12]  321 	mov	((_accel_data + 0x0004) + 0),a
      00006D F5 10            [12]  322 	mov	((_accel_data + 0x0004) + 1),a
                                    323 ;	./src/main.c:37: int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output
      00006F F5 11            [12]  324 	mov	(_gyro_data + 0),a
      000071 F5 12            [12]  325 	mov	(_gyro_data + 1),a
      000073 F5 13            [12]  326 	mov	((_gyro_data + 0x0002) + 0),a
      000075 F5 14            [12]  327 	mov	((_gyro_data + 0x0002) + 1),a
      000077 F5 15            [12]  328 	mov	((_gyro_data + 0x0004) + 0),a
      000079 F5 16            [12]  329 	mov	((_gyro_data + 0x0004) + 1),a
                                    330 	.area GSFINAL (CODE)
      000087 02 00 03         [24]  331 	ljmp	__sdcc_program_startup
                                    332 ;--------------------------------------------------------
                                    333 ; Home
                                    334 ;--------------------------------------------------------
                                    335 	.area HOME    (CODE)
                                    336 	.area HOME    (CODE)
      000003                        337 __sdcc_program_startup:
      000003 02 00 8A         [24]  338 	ljmp	_main
                                    339 ;	return from main will return to caller
                                    340 ;--------------------------------------------------------
                                    341 ; code
                                    342 ;--------------------------------------------------------
                                    343 	.area CSEG    (CODE)
                                    344 ;------------------------------------------------------------
                                    345 ;Allocation info for local variables in function 'main'
                                    346 ;------------------------------------------------------------
                                    347 ;pre_location              Allocated with name '_main_pre_location_65536_33'
                                    348 ;delta_x                   Allocated to registers 
                                    349 ;delta_y                   Allocated to registers r6 r7 
                                    350 ;------------------------------------------------------------
                                    351 ;	./src/main.c:41: void main(void)
                                    352 ;	-----------------------------------------
                                    353 ;	 function main
                                    354 ;	-----------------------------------------
      00008A                        355 _main:
                           000007   356 	ar7 = 0x07
                           000006   357 	ar6 = 0x06
                           000005   358 	ar5 = 0x05
                           000004   359 	ar4 = 0x04
                           000003   360 	ar3 = 0x03
                           000002   361 	ar2 = 0x02
                           000001   362 	ar1 = 0x01
                           000000   363 	ar0 = 0x00
                                    364 ;	./src/main.c:43: unsigned int pre_location[2] = {4,52};
      00008A 75 17 04         [24]  365 	mov	(_main_pre_location_65536_33 + 0),#0x04
      00008D 75 18 00         [24]  366 	mov	(_main_pre_location_65536_33 + 1),#0x00
      000090 75 19 34         [24]  367 	mov	((_main_pre_location_65536_33 + 0x0002) + 0),#0x34
      000093 75 1A 00         [24]  368 	mov	((_main_pre_location_65536_33 + 0x0002) + 1),#0x00
                                    369 ;	./src/main.c:44: SDA = 1;
                                    370 ;	assignBit
      000096 D2 81            [12]  371 	setb	_P0_1
                                    372 ;	./src/main.c:45: SCL = 1;
                                    373 ;	assignBit
      000098 D2 80            [12]  374 	setb	_P0_0
                                    375 ;	./src/main.c:46: OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
      00009A 12 04 F9         [24]  376 	lcall	_OLED_Init
                                    377 ;	./src/main.c:47: MPU6050_INIT();
      00009D 12 02 A4         [24]  378 	lcall	_MPU6050_INIT
                                    379 ;	./src/main.c:49: OLED_SetCursor(4,50);
      0000A0 75 1E 32         [24]  380 	mov	_OLED_SetCursor_PARM_2,#0x32
      0000A3 75 82 04         [24]  381 	mov	dpl,#0x04
      0000A6 12 06 40         [24]  382 	lcall	_OLED_SetCursor
                                    383 ;	./src/main.c:50: OLED_DisplayString("START");
      0000A9 90 07 41         [24]  384 	mov	dptr,#___str_0
      0000AC 75 F0 80         [24]  385 	mov	b,#0x80
      0000AF 12 05 EA         [24]  386 	lcall	_OLED_DisplayString
                                    387 ;	./src/main.c:51: delay_ms(1000);
      0000B2 90 03 E8         [24]  388 	mov	dptr,#0x03e8
      0000B5 12 02 92         [24]  389 	lcall	_delay_ms
                                    390 ;	./src/main.c:52: OLED_Clear();
      0000B8 12 06 15         [24]  391 	lcall	_OLED_Clear
                                    392 ;	./src/main.c:53: OLED_SetCursor(4,52);
      0000BB 75 1E 34         [24]  393 	mov	_OLED_SetCursor_PARM_2,#0x34
      0000BE 75 82 04         [24]  394 	mov	dpl,#0x04
      0000C1 12 06 40         [24]  395 	lcall	_OLED_SetCursor
                                    396 ;	./src/main.c:54: OLED_DisplayChar('0');
      0000C4 75 82 30         [24]  397 	mov	dpl,#0x30
      0000C7 12 05 68         [24]  398 	lcall	_OLED_DisplayChar
                                    399 ;	./src/main.c:56: while(1) {
      0000CA                        400 00112$:
                                    401 ;	./src/main.c:59: readMPU6050_AccelData(&accel_data[0]);
      0000CA 90 00 0B         [24]  402 	mov	dptr,#_accel_data
      0000CD 75 F0 40         [24]  403 	mov	b,#0x40
      0000D0 12 03 41         [24]  404 	lcall	_readMPU6050_AccelData
                                    405 ;	./src/main.c:61: delta_x = accel_data[0];
      0000D3 85 0B 82         [24]  406 	mov	dpl,(_accel_data + 0)
      0000D6 85 0C 83         [24]  407 	mov	dph,(_accel_data + 1)
                                    408 ;	./src/main.c:62: delta_y = accel_data[1];
      0000D9 AE 0D            [24]  409 	mov	r6,((_accel_data + 0x0002) + 0)
      0000DB AF 0E            [24]  410 	mov	r7,((_accel_data + 0x0002) + 1)
                                    411 ;	./src/main.c:65: pre_location[0]  = pre_location[0]+delta_x/5000;
      0000DD AC 17            [24]  412 	mov	r4,(_main_pre_location_65536_33 + 0)
      0000DF AD 18            [24]  413 	mov	r5,(_main_pre_location_65536_33 + 1)
      0000E1 75 37 88         [24]  414 	mov	__divsint_PARM_2,#0x88
      0000E4 75 38 13         [24]  415 	mov	(__divsint_PARM_2 + 1),#0x13
      0000E7 C0 07            [24]  416 	push	ar7
      0000E9 C0 06            [24]  417 	push	ar6
      0000EB C0 05            [24]  418 	push	ar5
      0000ED C0 04            [24]  419 	push	ar4
      0000EF 12 07 05         [24]  420 	lcall	__divsint
      0000F2 AA 82            [24]  421 	mov	r2,dpl
      0000F4 AB 83            [24]  422 	mov	r3,dph
      0000F6 D0 04            [24]  423 	pop	ar4
      0000F8 D0 05            [24]  424 	pop	ar5
      0000FA D0 06            [24]  425 	pop	ar6
      0000FC D0 07            [24]  426 	pop	ar7
      0000FE EA               [12]  427 	mov	a,r2
      0000FF 2C               [12]  428 	add	a,r4
      000100 FC               [12]  429 	mov	r4,a
      000101 EB               [12]  430 	mov	a,r3
      000102 3D               [12]  431 	addc	a,r5
      000103 FD               [12]  432 	mov	r5,a
      000104 8C 17            [24]  433 	mov	(_main_pre_location_65536_33 + 0),r4
      000106 8D 18            [24]  434 	mov	(_main_pre_location_65536_33 + 1),r5
                                    435 ;	./src/main.c:66: pre_location[1]  = pre_location[1]+delta_y/1000;
      000108 AA 19            [24]  436 	mov	r2,((_main_pre_location_65536_33 + 0x0002) + 0)
      00010A AB 1A            [24]  437 	mov	r3,((_main_pre_location_65536_33 + 0x0002) + 1)
      00010C 75 37 E8         [24]  438 	mov	__divsint_PARM_2,#0xe8
      00010F 75 38 03         [24]  439 	mov	(__divsint_PARM_2 + 1),#0x03
      000112 8E 82            [24]  440 	mov	dpl,r6
      000114 8F 83            [24]  441 	mov	dph,r7
      000116 C0 05            [24]  442 	push	ar5
      000118 C0 04            [24]  443 	push	ar4
      00011A C0 03            [24]  444 	push	ar3
      00011C C0 02            [24]  445 	push	ar2
      00011E 12 07 05         [24]  446 	lcall	__divsint
      000121 AE 82            [24]  447 	mov	r6,dpl
      000123 AF 83            [24]  448 	mov	r7,dph
      000125 D0 02            [24]  449 	pop	ar2
      000127 D0 03            [24]  450 	pop	ar3
      000129 D0 04            [24]  451 	pop	ar4
      00012B D0 05            [24]  452 	pop	ar5
      00012D EE               [12]  453 	mov	a,r6
      00012E 2A               [12]  454 	add	a,r2
      00012F FA               [12]  455 	mov	r2,a
      000130 EF               [12]  456 	mov	a,r7
      000131 3B               [12]  457 	addc	a,r3
      000132 FB               [12]  458 	mov	r3,a
      000133 8A 19            [24]  459 	mov	((_main_pre_location_65536_33 + 0x0002) + 0),r2
      000135 8B 1A            [24]  460 	mov	((_main_pre_location_65536_33 + 0x0002) + 1),r3
                                    461 ;	./src/main.c:68: if(pre_location[0]<=1)pre_location[0] = 1;
      000137 C3               [12]  462 	clr	c
      000138 74 01            [12]  463 	mov	a,#0x01
      00013A 9C               [12]  464 	subb	a,r4
      00013B E4               [12]  465 	clr	a
      00013C 9D               [12]  466 	subb	a,r5
      00013D 40 08            [24]  467 	jc	00104$
      00013F 75 17 01         [24]  468 	mov	(_main_pre_location_65536_33 + 0),#0x01
      000142 75 18 00         [24]  469 	mov	(_main_pre_location_65536_33 + 1),#0x00
      000145 80 10            [24]  470 	sjmp	00105$
      000147                        471 00104$:
                                    472 ;	./src/main.c:69: else if (pre_location[0]>7)pre_location[0] = 7;
      000147 C3               [12]  473 	clr	c
      000148 74 07            [12]  474 	mov	a,#0x07
      00014A 95 17            [12]  475 	subb	a,_main_pre_location_65536_33
      00014C E4               [12]  476 	clr	a
      00014D 95 18            [12]  477 	subb	a,(_main_pre_location_65536_33 + 1)
      00014F 50 06            [24]  478 	jnc	00105$
      000151 75 17 07         [24]  479 	mov	(_main_pre_location_65536_33 + 0),#0x07
      000154 75 18 00         [24]  480 	mov	(_main_pre_location_65536_33 + 1),#0x00
      000157                        481 00105$:
                                    482 ;	./src/main.c:71: if(pre_location[1]<=8)pre_location[1] = 8;
      000157 C3               [12]  483 	clr	c
      000158 74 08            [12]  484 	mov	a,#0x08
      00015A 95 19            [12]  485 	subb	a,(_main_pre_location_65536_33 + 0x0002)
      00015C E4               [12]  486 	clr	a
      00015D 95 1A            [12]  487 	subb	a,((_main_pre_location_65536_33 + 0x0002) + 1)
      00015F 40 08            [24]  488 	jc	00109$
      000161 75 19 08         [24]  489 	mov	((_main_pre_location_65536_33 + 0x0002) + 0),#0x08
      000164 75 1A 00         [24]  490 	mov	((_main_pre_location_65536_33 + 0x0002) + 1),#0x00
      000167 80 10            [24]  491 	sjmp	00110$
      000169                        492 00109$:
                                    493 ;	./src/main.c:72: else if (pre_location[1]>126)pre_location[1] = 123;
      000169 C3               [12]  494 	clr	c
      00016A 74 7E            [12]  495 	mov	a,#0x7e
      00016C 95 19            [12]  496 	subb	a,(_main_pre_location_65536_33 + 0x0002)
      00016E E4               [12]  497 	clr	a
      00016F 95 1A            [12]  498 	subb	a,((_main_pre_location_65536_33 + 0x0002) + 1)
      000171 50 06            [24]  499 	jnc	00110$
      000173 75 19 7B         [24]  500 	mov	((_main_pre_location_65536_33 + 0x0002) + 0),#0x7b
      000176 75 1A 00         [24]  501 	mov	((_main_pre_location_65536_33 + 0x0002) + 1),#0x00
      000179                        502 00110$:
                                    503 ;	./src/main.c:74: OLED_SetCursor(pre_location[0], pre_location[1]);
      000179 85 17 82         [24]  504 	mov	dpl,_main_pre_location_65536_33
      00017C 85 19 1E         [24]  505 	mov	_OLED_SetCursor_PARM_2,(_main_pre_location_65536_33 + 0x0002)
      00017F 12 06 40         [24]  506 	lcall	_OLED_SetCursor
                                    507 ;	./src/main.c:75: OLED_DisplayChar('0');
      000182 75 82 30         [24]  508 	mov	dpl,#0x30
      000185 12 05 68         [24]  509 	lcall	_OLED_DisplayChar
                                    510 ;	./src/main.c:76: delay_ms(50);
      000188 90 00 32         [24]  511 	mov	dptr,#0x0032
      00018B 12 02 92         [24]  512 	lcall	_delay_ms
                                    513 ;	./src/main.c:77: OLED_SetCursor(pre_location[0], pre_location[1]);
      00018E 85 17 82         [24]  514 	mov	dpl,_main_pre_location_65536_33
      000191 85 19 1E         [24]  515 	mov	_OLED_SetCursor_PARM_2,(_main_pre_location_65536_33 + 0x0002)
      000194 12 06 40         [24]  516 	lcall	_OLED_SetCursor
                                    517 ;	./src/main.c:78: OLED_DisplayChar(' ');
      000197 75 82 20         [24]  518 	mov	dpl,#0x20
      00019A 12 05 68         [24]  519 	lcall	_OLED_DisplayChar
                                    520 ;	./src/main.c:80: }
      00019D 02 00 CA         [24]  521 	ljmp	00112$
                                    522 	.area CSEG    (CODE)
                                    523 	.area CONST   (CODE)
                                    524 	.area CONST   (CODE)
      000741                        525 ___str_0:
      000741 53 54 41 52 54         526 	.ascii "START"
      000746 00                     527 	.db 0x00
                                    528 	.area CSEG    (CODE)
                                    529 	.area XINIT   (CODE)
                                    530 	.area CABS    (ABS,CODE)
