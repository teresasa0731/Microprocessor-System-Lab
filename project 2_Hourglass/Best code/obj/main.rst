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
                                     11 	.globl _sendbyte_PARM_4
                                     12 	.globl _sendbyte_PARM_3
                                     13 	.globl _sendbyte_PARM_2
                                     14 	.globl _main
                                     15 	.globl _Time
                                     16 	.globl _call
                                     17 	.globl _shift
                                     18 	.globl _sendbyte
                                     19 	.globl _MPU6050_INIT
                                     20 	.globl _Single_ReadI2C
                                     21 	.globl _Single_WriteI2C
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _Gscale
                                    119 	.globl _Ascale
                                    120 	.globl _ud
                                    121 	.globl _cnt
                                    122 	.globl _accel
                                    123 	.globl _m
                                    124 	.globl _m_1
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable bit register bank
                                    238 ;--------------------------------------------------------
                                    239 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        240 bits:
      000021                        241 	.ds 1
                           008000   242 	b0 = bits[0]
                           008100   243 	b1 = bits[1]
                           008200   244 	b2 = bits[2]
                           008300   245 	b3 = bits[3]
                           008400   246 	b4 = bits[4]
                           008500   247 	b5 = bits[5]
                           008600   248 	b6 = bits[6]
                           008700   249 	b7 = bits[7]
                                    250 ;--------------------------------------------------------
                                    251 ; internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area DSEG    (DATA)
      000022                        254 _m_1::
      000022                        255 	.ds 20
      000036                        256 _m::
      000036                        257 	.ds 20
      00004A                        258 _accel::
      00004A                        259 	.ds 2
      00004C                        260 _cnt::
      00004C                        261 	.ds 2
      00004E                        262 _ud::
      00004E                        263 	.ds 2
      000050                        264 _Ascale::
      000050                        265 	.ds 1
      000051                        266 _Gscale::
      000051                        267 	.ds 1
                                    268 ;--------------------------------------------------------
                                    269 ; overlayable items in internal ram
                                    270 ;--------------------------------------------------------
                                    271 	.area	OSEG    (OVR,DATA)
      00000B                        272 _sendbyte_PARM_2:
      00000B                        273 	.ds 1
      00000C                        274 _sendbyte_PARM_3:
      00000C                        275 	.ds 1
      00000D                        276 _sendbyte_PARM_4:
      00000D                        277 	.ds 1
                                    278 	.area	OSEG    (OVR,DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; Stack segment in internal ram
                                    281 ;--------------------------------------------------------
                                    282 	.area SSEG
      000052                        283 __start__stack:
      000052                        284 	.ds	1
                                    285 
                                    286 ;--------------------------------------------------------
                                    287 ; indirectly addressable internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area ISEG    (DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; absolute internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area IABS    (ABS,DATA)
                                    294 	.area IABS    (ABS,DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; bit data
                                    297 ;--------------------------------------------------------
                                    298 	.area BSEG    (BIT)
                                    299 ;--------------------------------------------------------
                                    300 ; paged external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area PSEG    (PAG,XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; uninitialized external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XSEG    (XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; absolute external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XABS    (ABS,XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; initialized external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XISEG   (XDATA)
                                    315 	.area HOME    (CODE)
                                    316 	.area GSINIT0 (CODE)
                                    317 	.area GSINIT1 (CODE)
                                    318 	.area GSINIT2 (CODE)
                                    319 	.area GSINIT3 (CODE)
                                    320 	.area GSINIT4 (CODE)
                                    321 	.area GSINIT5 (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.area GSFINAL (CODE)
                                    324 	.area CSEG    (CODE)
                                    325 ;--------------------------------------------------------
                                    326 ; interrupt vector
                                    327 ;--------------------------------------------------------
                                    328 	.area HOME    (CODE)
      000000                        329 __interrupt_vect:
      000000 02 00 11         [24]  330 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  331 	reti
      000004                        332 	.ds	7
      00000B 02 02 1F         [24]  333 	ljmp	_Time
                                    334 ;--------------------------------------------------------
                                    335 ; global & static initialisations
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.area GSFINAL (CODE)
                                    340 	.area GSINIT  (CODE)
                                    341 	.globl __sdcc_gsinit_startup
                                    342 	.globl __sdcc_program_startup
                                    343 	.globl __start__stack
                                    344 	.globl __mcs51_genXINIT
                                    345 	.globl __mcs51_genXRAMCLEAR
                                    346 	.globl __mcs51_genRAMCLEAR
                                    347 ;	./src/main.c:13: unsigned char m_1[20], m[20] = {0,255,255,255,255,255,255,255,255};
      00006A 75 36 00         [24]  348 	mov	_m,#0x00
      00006D 75 37 FF         [24]  349 	mov	(_m + 0x0001),#0xff
      000070 75 38 FF         [24]  350 	mov	(_m + 0x0002),#0xff
      000073 75 39 FF         [24]  351 	mov	(_m + 0x0003),#0xff
      000076 75 3A FF         [24]  352 	mov	(_m + 0x0004),#0xff
      000079 75 3B FF         [24]  353 	mov	(_m + 0x0005),#0xff
      00007C 75 3C FF         [24]  354 	mov	(_m + 0x0006),#0xff
      00007F 75 3D FF         [24]  355 	mov	(_m + 0x0007),#0xff
      000082 75 3E FF         [24]  356 	mov	(_m + 0x0008),#0xff
                                    357 ;	./src/main.c:14: int accel, cnt = 0, ud;
      000085 E4               [12]  358 	clr	a
      000086 F5 4C            [12]  359 	mov	_cnt,a
      000088 F5 4D            [12]  360 	mov	(_cnt + 1),a
                                    361 ;	./src/main.c:18: uint8_t Ascale = AFS_2G;
                                    362 ;	1-genFromRTrack replaced	mov	_Ascale,#0x00
      00008A F5 50            [12]  363 	mov	_Ascale,a
                                    364 ;	./src/main.c:19: uint8_t Gscale = GFS_500DPS;
      00008C 75 51 01         [24]  365 	mov	_Gscale,#0x01
                                    366 	.area GSFINAL (CODE)
      00008F 02 00 0E         [24]  367 	ljmp	__sdcc_program_startup
                                    368 ;--------------------------------------------------------
                                    369 ; Home
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area HOME    (CODE)
      00000E                        373 __sdcc_program_startup:
      00000E 02 04 80         [24]  374 	ljmp	_main
                                    375 ;	return from main will return to caller
                                    376 ;--------------------------------------------------------
                                    377 ; code
                                    378 ;--------------------------------------------------------
                                    379 	.area CSEG    (CODE)
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'MPU6050_INIT'
                                    382 ;------------------------------------------------------------
                                    383 ;i                         Allocated to registers r6 r7 
                                    384 ;mpu                       Allocated to registers 
                                    385 ;------------------------------------------------------------
                                    386 ;	./src/main.c:21: void MPU6050_INIT(void) 
                                    387 ;	-----------------------------------------
                                    388 ;	 function MPU6050_INIT
                                    389 ;	-----------------------------------------
      000092                        390 _MPU6050_INIT:
                           000007   391 	ar7 = 0x07
                           000006   392 	ar6 = 0x06
                           000005   393 	ar5 = 0x05
                           000004   394 	ar4 = 0x04
                           000003   395 	ar3 = 0x03
                           000002   396 	ar2 = 0x02
                           000001   397 	ar1 = 0x01
                           000000   398 	ar0 = 0x00
                                    399 ;	./src/main.c:26: for (i = 0; i < 900; i++);
      000092 7E 84            [12]  400 	mov	r6,#0x84
      000094 7F 03            [12]  401 	mov	r7,#0x03
      000096                        402 00105$:
      000096 1E               [12]  403 	dec	r6
      000097 BE FF 01         [24]  404 	cjne	r6,#0xff,00133$
      00009A 1F               [12]  405 	dec	r7
      00009B                        406 00133$:
      00009B EE               [12]  407 	mov	a,r6
      00009C 4F               [12]  408 	orl	a,r7
                                    409 ;	./src/main.c:27: Single_WriteI2C(208, 0x6B, 0);
      00009D 70 F7            [24]  410 	jnz	00105$
      00009F 75 08 6B         [24]  411 	mov	_Single_WriteI2C_PARM_2,#0x6b
      0000A2 F5 09            [12]  412 	mov	_Single_WriteI2C_PARM_3,a
      0000A4 75 82 D0         [24]  413 	mov	dpl,#0xd0
      0000A7 12 05 7E         [24]  414 	lcall	_Single_WriteI2C
                                    415 ;	./src/main.c:28: for (i = 0; i < 900; i++);
      0000AA 7E 84            [12]  416 	mov	r6,#0x84
      0000AC 7F 03            [12]  417 	mov	r7,#0x03
      0000AE                        418 00108$:
      0000AE 1E               [12]  419 	dec	r6
      0000AF BE FF 01         [24]  420 	cjne	r6,#0xff,00135$
      0000B2 1F               [12]  421 	dec	r7
      0000B3                        422 00135$:
      0000B3 EE               [12]  423 	mov	a,r6
      0000B4 4F               [12]  424 	orl	a,r7
      0000B5 70 F7            [24]  425 	jnz	00108$
                                    426 ;	./src/main.c:29: Single_WriteI2C(208, 0x68, 7);
      0000B7 75 08 68         [24]  427 	mov	_Single_WriteI2C_PARM_2,#0x68
      0000BA 75 09 07         [24]  428 	mov	_Single_WriteI2C_PARM_3,#0x07
      0000BD 75 82 D0         [24]  429 	mov	dpl,#0xd0
      0000C0 12 05 7E         [24]  430 	lcall	_Single_WriteI2C
                                    431 ;	./src/main.c:30: Single_WriteI2C(208, 0x6B, 1);
      0000C3 75 08 6B         [24]  432 	mov	_Single_WriteI2C_PARM_2,#0x6b
      0000C6 75 09 01         [24]  433 	mov	_Single_WriteI2C_PARM_3,#0x01
      0000C9 75 82 D0         [24]  434 	mov	dpl,#0xd0
      0000CC 12 05 7E         [24]  435 	lcall	_Single_WriteI2C
                                    436 ;	./src/main.c:31: Single_WriteI2C(208, 0x1D, 3); 
      0000CF 75 08 1D         [24]  437 	mov	_Single_WriteI2C_PARM_2,#0x1d
      0000D2 75 09 03         [24]  438 	mov	_Single_WriteI2C_PARM_3,#0x03
      0000D5 75 82 D0         [24]  439 	mov	dpl,#0xd0
      0000D8 12 05 7E         [24]  440 	lcall	_Single_WriteI2C
                                    441 ;	./src/main.c:32: Single_WriteI2C(208, 0x19, 0);
      0000DB 75 08 19         [24]  442 	mov	_Single_WriteI2C_PARM_2,#0x19
      0000DE 75 09 00         [24]  443 	mov	_Single_WriteI2C_PARM_3,#0x00
      0000E1 75 82 D0         [24]  444 	mov	dpl,#0xd0
      0000E4 12 05 7E         [24]  445 	lcall	_Single_WriteI2C
                                    446 ;	./src/main.c:33: mpu = (Gscale << 3) | 0x00;
      0000E7 E5 51            [12]  447 	mov	a,_Gscale
      0000E9 C4               [12]  448 	swap	a
      0000EA 03               [12]  449 	rr	a
      0000EB 54 F8            [12]  450 	anl	a,#0xf8
      0000ED F5 09            [12]  451 	mov	_Single_WriteI2C_PARM_3,a
                                    452 ;	./src/main.c:34: Single_WriteI2C(208, 0x1B, mpu);
      0000EF 75 08 1B         [24]  453 	mov	_Single_WriteI2C_PARM_2,#0x1b
      0000F2 75 82 D0         [24]  454 	mov	dpl,#0xd0
      0000F5 12 05 7E         [24]  455 	lcall	_Single_WriteI2C
                                    456 ;	./src/main.c:35: mpu = (Ascale << 3);
      0000F8 E5 50            [12]  457 	mov	a,_Ascale
      0000FA C4               [12]  458 	swap	a
      0000FB 03               [12]  459 	rr	a
      0000FC 54 F8            [12]  460 	anl	a,#0xf8
      0000FE F5 09            [12]  461 	mov	_Single_WriteI2C_PARM_3,a
                                    462 ;	./src/main.c:36: Single_WriteI2C(208, 0x1C, mpu);
      000100 75 08 1C         [24]  463 	mov	_Single_WriteI2C_PARM_2,#0x1c
      000103 75 82 D0         [24]  464 	mov	dpl,#0xd0
      000106 12 05 7E         [24]  465 	lcall	_Single_WriteI2C
                                    466 ;	./src/main.c:38: Single_WriteI2C(208, 0x1D, mpu);
      000109 75 08 1D         [24]  467 	mov	_Single_WriteI2C_PARM_2,#0x1d
      00010C 75 09 03         [24]  468 	mov	_Single_WriteI2C_PARM_3,#0x03
      00010F 75 82 D0         [24]  469 	mov	dpl,#0xd0
      000112 12 05 7E         [24]  470 	lcall	_Single_WriteI2C
                                    471 ;	./src/main.c:39: Single_WriteI2C(208, 0x37, 34);
      000115 75 08 37         [24]  472 	mov	_Single_WriteI2C_PARM_2,#0x37
      000118 75 09 22         [24]  473 	mov	_Single_WriteI2C_PARM_3,#0x22
      00011B 75 82 D0         [24]  474 	mov	dpl,#0xd0
      00011E 12 05 7E         [24]  475 	lcall	_Single_WriteI2C
                                    476 ;	./src/main.c:40: Single_WriteI2C(208, 0x38, 0);
      000121 75 08 38         [24]  477 	mov	_Single_WriteI2C_PARM_2,#0x38
      000124 75 09 00         [24]  478 	mov	_Single_WriteI2C_PARM_3,#0x00
      000127 75 82 D0         [24]  479 	mov	dpl,#0xd0
                                    480 ;	./src/main.c:41: }
      00012A 02 05 7E         [24]  481 	ljmp	_Single_WriteI2C
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'sendbyte'
                                    484 ;------------------------------------------------------------
                                    485 ;dat_1                     Allocated with name '_sendbyte_PARM_2'
                                    486 ;add_2                     Allocated with name '_sendbyte_PARM_3'
                                    487 ;dat_2                     Allocated with name '_sendbyte_PARM_4'
                                    488 ;add_1                     Allocated to registers r7 
                                    489 ;i                         Allocated to registers r5 
                                    490 ;j                         Allocated to registers r6 
                                    491 ;------------------------------------------------------------
                                    492 ;	./src/main.c:43: void sendbyte(char add_1, char dat_1, char add_2, char dat_2) 
                                    493 ;	-----------------------------------------
                                    494 ;	 function sendbyte
                                    495 ;	-----------------------------------------
      00012D                        496 _sendbyte:
      00012D AF 82            [24]  497 	mov	r7,dpl
                                    498 ;	./src/main.c:46: LOAD = 0;
                                    499 ;	assignBit
      00012F C2 A1            [12]  500 	clr	_P2_1
                                    501 ;	./src/main.c:47: for (j = 0; j < 4; j++) {
      000131 7E 00            [12]  502 	mov	r6,#0x00
      000133                        503 00105$:
                                    504 ;	./src/main.c:48: for (i = 128; i > 0; i >>= 1) {
      000133 7D 80            [12]  505 	mov	r5,#0x80
      000135                        506 00103$:
                                    507 ;	./src/main.c:49: CLK = 0;
                                    508 ;	assignBit
      000135 C2 A0            [12]  509 	clr	_P2_0
                                    510 ;	./src/main.c:50: DIN = (add_2 & i);
      000137 ED               [12]  511 	mov	a,r5
      000138 55 0C            [12]  512 	anl	a,_sendbyte_PARM_3
                                    513 ;	assignBit
      00013A 24 FF            [12]  514 	add	a,#0xff
      00013C 92 A2            [24]  515 	mov	_P2_2,c
                                    516 ;	./src/main.c:51: CLK = 1;
                                    517 ;	assignBit
      00013E D2 A0            [12]  518 	setb	_P2_0
                                    519 ;	./src/main.c:48: for (i = 128; i > 0; i >>= 1) {
      000140 ED               [12]  520 	mov	a,r5
      000141 C3               [12]  521 	clr	c
      000142 13               [12]  522 	rrc	a
      000143 FD               [12]  523 	mov	r5,a
      000144 70 EF            [24]  524 	jnz	00103$
                                    525 ;	./src/main.c:52: } add_2 = dat_2; dat_2 = add_1; add_1 = dat_1;
      000146 85 0D 0C         [24]  526 	mov	_sendbyte_PARM_3,_sendbyte_PARM_4
      000149 8F 0D            [24]  527 	mov	_sendbyte_PARM_4,r7
      00014B AF 0B            [24]  528 	mov	r7,_sendbyte_PARM_2
                                    529 ;	./src/main.c:47: for (j = 0; j < 4; j++) {
      00014D 0E               [12]  530 	inc	r6
      00014E BE 04 00         [24]  531 	cjne	r6,#0x04,00129$
      000151                        532 00129$:
      000151 40 E0            [24]  533 	jc	00105$
                                    534 ;	./src/main.c:53: } LOAD = 1;
                                    535 ;	assignBit
      000153 D2 A1            [12]  536 	setb	_P2_1
                                    537 ;	./src/main.c:54: }
      000155 22               [24]  538 	ret
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'shift'
                                    541 ;------------------------------------------------------------
                                    542 ;i                         Allocated to registers r6 
                                    543 ;------------------------------------------------------------
                                    544 ;	./src/main.c:56: void shift(void) 
                                    545 ;	-----------------------------------------
                                    546 ;	 function shift
                                    547 ;	-----------------------------------------
      000156                        548 _shift:
                                    549 ;	./src/main.c:59: for (i = (17*ud+19)>>1; ud != 0 && i != (-19*ud+19)>>1; i -= ud)
      000156 85 4E 0B         [24]  550 	mov	__mulint_PARM_2,_ud
      000159 85 4F 0C         [24]  551 	mov	(__mulint_PARM_2 + 1),(_ud + 1)
      00015C 90 00 11         [24]  552 	mov	dptr,#0x0011
      00015F 12 05 D5         [24]  553 	lcall	__mulint
      000162 E5 82            [12]  554 	mov	a,dpl
      000164 85 83 F0         [24]  555 	mov	b,dph
      000167 24 13            [12]  556 	add	a,#0x13
      000169 FE               [12]  557 	mov	r6,a
      00016A E4               [12]  558 	clr	a
      00016B 35 F0            [12]  559 	addc	a,b
      00016D A2 E7            [12]  560 	mov	c,acc.7
      00016F 13               [12]  561 	rrc	a
      000170 CE               [12]  562 	xch	a,r6
      000171 13               [12]  563 	rrc	a
      000172 CE               [12]  564 	xch	a,r6
      000173 FF               [12]  565 	mov	r7,a
      000174                        566 00107$:
      000174 E5 4E            [12]  567 	mov	a,_ud
      000176 45 4F            [12]  568 	orl	a,(_ud + 1)
      000178 70 01            [24]  569 	jnz	00127$
      00017A 22               [24]  570 	ret
      00017B                        571 00127$:
      00017B 85 4E 0B         [24]  572 	mov	__mulint_PARM_2,_ud
      00017E 85 4F 0C         [24]  573 	mov	(__mulint_PARM_2 + 1),(_ud + 1)
      000181 90 FF ED         [24]  574 	mov	dptr,#0xffed
      000184 C0 06            [24]  575 	push	ar6
      000186 12 05 D5         [24]  576 	lcall	__mulint
      000189 E5 82            [12]  577 	mov	a,dpl
      00018B 85 83 F0         [24]  578 	mov	b,dph
      00018E D0 06            [24]  579 	pop	ar6
      000190 24 13            [12]  580 	add	a,#0x13
      000192 FD               [12]  581 	mov	r5,a
      000193 E4               [12]  582 	clr	a
      000194 35 F0            [12]  583 	addc	a,b
      000196 A2 E7            [12]  584 	mov	c,acc.7
      000198 13               [12]  585 	rrc	a
      000199 CD               [12]  586 	xch	a,r5
      00019A 13               [12]  587 	rrc	a
      00019B CD               [12]  588 	xch	a,r5
      00019C FF               [12]  589 	mov	r7,a
      00019D 8E 03            [24]  590 	mov	ar3,r6
      00019F 7C 00            [12]  591 	mov	r4,#0x00
      0001A1 EB               [12]  592 	mov	a,r3
      0001A2 B5 05 05         [24]  593 	cjne	a,ar5,00128$
      0001A5 EC               [12]  594 	mov	a,r4
      0001A6 B5 07 01         [24]  595 	cjne	a,ar7,00128$
      0001A9 22               [24]  596 	ret
      0001AA                        597 00128$:
                                    598 ;	./src/main.c:60: if (i > 10 || i < 9) { m_1[i] = m_1[i + ud] & m[i];
      0001AA EE               [12]  599 	mov	a,r6
      0001AB 24 F5            [12]  600 	add	a,#0xff - 0x0a
      0001AD 40 05            [24]  601 	jc	00101$
      0001AF BE 09 00         [24]  602 	cjne	r6,#0x09,00130$
      0001B2                        603 00130$:
      0001B2 50 2D            [24]  604 	jnc	00108$
      0001B4                        605 00101$:
      0001B4 EE               [12]  606 	mov	a,r6
      0001B5 24 22            [12]  607 	add	a,#_m_1
      0001B7 F9               [12]  608 	mov	r1,a
      0001B8 AF 4E            [24]  609 	mov	r7,_ud
      0001BA 8E 05            [24]  610 	mov	ar5,r6
      0001BC EF               [12]  611 	mov	a,r7
      0001BD 2D               [12]  612 	add	a,r5
      0001BE 24 22            [12]  613 	add	a,#_m_1
      0001C0 F8               [12]  614 	mov	r0,a
      0001C1 86 07            [24]  615 	mov	ar7,@r0
      0001C3 EE               [12]  616 	mov	a,r6
      0001C4 24 36            [12]  617 	add	a,#_m
      0001C6 F8               [12]  618 	mov	r0,a
      0001C7 E6               [12]  619 	mov	a,@r0
      0001C8 5F               [12]  620 	anl	a,r7
      0001C9 F7               [12]  621 	mov	@r1,a
                                    622 ;	./src/main.c:61: m[i] = (m_1[i + ud] & m[i]) | m[i - ud]; }
      0001CA E5 4E            [12]  623 	mov	a,_ud
      0001CC FF               [12]  624 	mov	r7,a
      0001CD 2D               [12]  625 	add	a,r5
      0001CE 24 22            [12]  626 	add	a,#_m_1
      0001D0 F9               [12]  627 	mov	r1,a
      0001D1 87 04            [24]  628 	mov	ar4,@r1
      0001D3 E6               [12]  629 	mov	a,@r0
      0001D4 FB               [12]  630 	mov	r3,a
      0001D5 52 04            [12]  631 	anl	ar4,a
      0001D7 ED               [12]  632 	mov	a,r5
      0001D8 C3               [12]  633 	clr	c
      0001D9 9F               [12]  634 	subb	a,r7
      0001DA 24 36            [12]  635 	add	a,#_m
      0001DC F9               [12]  636 	mov	r1,a
      0001DD E7               [12]  637 	mov	a,@r1
      0001DE FF               [12]  638 	mov	r7,a
      0001DF 4C               [12]  639 	orl	a,r4
      0001E0 F6               [12]  640 	mov	@r0,a
      0001E1                        641 00108$:
                                    642 ;	./src/main.c:59: for (i = (17*ud+19)>>1; ud != 0 && i != (-19*ud+19)>>1; i -= ud)
      0001E1 AF 4E            [24]  643 	mov	r7,_ud
      0001E3 8E 05            [24]  644 	mov	ar5,r6
      0001E5 ED               [12]  645 	mov	a,r5
      0001E6 C3               [12]  646 	clr	c
      0001E7 9F               [12]  647 	subb	a,r7
      0001E8 FE               [12]  648 	mov	r6,a
                                    649 ;	./src/main.c:62: }
      0001E9 02 01 74         [24]  650 	ljmp	00107$
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'call'
                                    653 ;------------------------------------------------------------
                                    654 ;j                         Allocated to registers r6 r7 
                                    655 ;k                         Allocated to registers r4 r5 
                                    656 ;------------------------------------------------------------
                                    657 ;	./src/main.c:64: void call(void) 
                                    658 ;	-----------------------------------------
                                    659 ;	 function call
                                    660 ;	-----------------------------------------
      0001EC                        661 _call:
                                    662 ;	./src/main.c:67: for (j = 0; j < 100; j++) { 
      0001EC 7E 00            [12]  663 	mov	r6,#0x00
      0001EE 7F 00            [12]  664 	mov	r7,#0x00
      0001F0                        665 00110$:
                                    666 ;	./src/main.c:68: P3_7 = 0; for (k = 0; k < 100; k++);
                                    667 ;	assignBit
      0001F0 C2 B7            [12]  668 	clr	_P3_7
      0001F2 7C 64            [12]  669 	mov	r4,#0x64
      0001F4 7D 00            [12]  670 	mov	r5,#0x00
      0001F6                        671 00106$:
      0001F6 1C               [12]  672 	dec	r4
      0001F7 BC FF 01         [24]  673 	cjne	r4,#0xff,00137$
      0001FA 1D               [12]  674 	dec	r5
      0001FB                        675 00137$:
      0001FB EC               [12]  676 	mov	a,r4
      0001FC 4D               [12]  677 	orl	a,r5
      0001FD 70 F7            [24]  678 	jnz	00106$
                                    679 ;	./src/main.c:69: P3_7 = 1; for (k = 0; k < 100; k++);
                                    680 ;	assignBit
      0001FF D2 B7            [12]  681 	setb	_P3_7
      000201 7C 64            [12]  682 	mov	r4,#0x64
      000203 7D 00            [12]  683 	mov	r5,#0x00
      000205                        684 00109$:
      000205 1C               [12]  685 	dec	r4
      000206 BC FF 01         [24]  686 	cjne	r4,#0xff,00139$
      000209 1D               [12]  687 	dec	r5
      00020A                        688 00139$:
      00020A EC               [12]  689 	mov	a,r4
      00020B 4D               [12]  690 	orl	a,r5
      00020C 70 F7            [24]  691 	jnz	00109$
                                    692 ;	./src/main.c:67: for (j = 0; j < 100; j++) { 
      00020E 0E               [12]  693 	inc	r6
      00020F BE 00 01         [24]  694 	cjne	r6,#0x00,00141$
      000212 0F               [12]  695 	inc	r7
      000213                        696 00141$:
      000213 C3               [12]  697 	clr	c
      000214 EE               [12]  698 	mov	a,r6
      000215 94 64            [12]  699 	subb	a,#0x64
      000217 EF               [12]  700 	mov	a,r7
      000218 64 80            [12]  701 	xrl	a,#0x80
      00021A 94 80            [12]  702 	subb	a,#0x80
      00021C 40 D2            [24]  703 	jc	00110$
                                    704 ;	./src/main.c:71: }
      00021E 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'Time'
                                    708 ;------------------------------------------------------------
                                    709 ;i                         Allocated to registers r7 
                                    710 ;j                         Allocated to registers r6 
                                    711 ;------------------------------------------------------------
                                    712 ;	./src/main.c:73: void Time(void) __interrupt (1) 
                                    713 ;	-----------------------------------------
                                    714 ;	 function Time
                                    715 ;	-----------------------------------------
      00021F                        716 _Time:
      00021F C0 21            [24]  717 	push	bits
      000221 C0 E0            [24]  718 	push	acc
      000223 C0 F0            [24]  719 	push	b
      000225 C0 82            [24]  720 	push	dpl
      000227 C0 83            [24]  721 	push	dph
      000229 C0 07            [24]  722 	push	(0+7)
      00022B C0 06            [24]  723 	push	(0+6)
      00022D C0 05            [24]  724 	push	(0+5)
      00022F C0 04            [24]  725 	push	(0+4)
      000231 C0 03            [24]  726 	push	(0+3)
      000233 C0 02            [24]  727 	push	(0+2)
      000235 C0 01            [24]  728 	push	(0+1)
      000237 C0 00            [24]  729 	push	(0+0)
      000239 C0 D0            [24]  730 	push	psw
      00023B 75 D0 00         [24]  731 	mov	psw,#0x00
                                    732 ;	./src/main.c:76: TH0 = (15536) >> 8;
      00023E 75 8C 3C         [24]  733 	mov	_TH0,#0x3c
                                    734 ;	./src/main.c:77: TL0 = (15536) % 256;
      000241 75 8A B0         [24]  735 	mov	_TL0,#0xb0
                                    736 ;	./src/main.c:79: accel = (int)(((int)Single_ReadI2C(208, Y_H) << 8) | Single_ReadI2C(208, Y_L));
      000244 75 0A 3D         [24]  737 	mov	_Single_ReadI2C_PARM_2,#0x3d
      000247 75 82 D0         [24]  738 	mov	dpl,#0xd0
      00024A 12 05 9B         [24]  739 	lcall	_Single_ReadI2C
      00024D AE 82            [24]  740 	mov	r6,dpl
      00024F 7F 00            [12]  741 	mov	r7,#0x00
      000251 75 0A 3E         [24]  742 	mov	_Single_ReadI2C_PARM_2,#0x3e
      000254 75 82 D0         [24]  743 	mov	dpl,#0xd0
      000257 C0 07            [24]  744 	push	ar7
      000259 C0 06            [24]  745 	push	ar6
      00025B 12 05 9B         [24]  746 	lcall	_Single_ReadI2C
      00025E AD 82            [24]  747 	mov	r5,dpl
      000260 D0 06            [24]  748 	pop	ar6
      000262 D0 07            [24]  749 	pop	ar7
      000264 7C 00            [12]  750 	mov	r4,#0x00
      000266 ED               [12]  751 	mov	a,r5
      000267 4F               [12]  752 	orl	a,r7
      000268 F5 4A            [12]  753 	mov	_accel,a
      00026A EC               [12]  754 	mov	a,r4
      00026B 4E               [12]  755 	orl	a,r6
      00026C F5 4B            [12]  756 	mov	(_accel + 1),a
                                    757 ;	./src/main.c:80: ud = 0;
      00026E E4               [12]  758 	clr	a
      00026F F5 4E            [12]  759 	mov	_ud,a
      000271 F5 4F            [12]  760 	mov	(_ud + 1),a
                                    761 ;	./src/main.c:81: if (accel > 5000) {ud = 1; m_1[9] = m_1[19] = 255; m[0] = m[10] = 0;}
      000273 C3               [12]  762 	clr	c
      000274 74 88            [12]  763 	mov	a,#0x88
      000276 95 4A            [12]  764 	subb	a,_accel
      000278 74 93            [12]  765 	mov	a,#(0x13 ^ 0x80)
      00027A 85 4B F0         [24]  766 	mov	b,(_accel + 1)
      00027D 63 F0 80         [24]  767 	xrl	b,#0x80
      000280 95 F0            [12]  768 	subb	a,b
      000282 50 12            [24]  769 	jnc	00102$
      000284 75 4E 01         [24]  770 	mov	_ud,#0x01
      000287 75 4F 00         [24]  771 	mov	(_ud + 1),#0x00
      00028A 75 35 FF         [24]  772 	mov	(_m_1 + 0x0013),#0xff
      00028D 75 2B FF         [24]  773 	mov	(_m_1 + 0x0009),#0xff
      000290 75 40 00         [24]  774 	mov	(_m + 0x000a),#0x00
      000293 75 36 00         [24]  775 	mov	_m,#0x00
      000296                        776 00102$:
                                    777 ;	./src/main.c:82: if (accel < -5000) {ud = -1; m[9] = m[19] = 0; m_1[0] = m_1[10] = 255;}
      000296 C3               [12]  778 	clr	c
      000297 E5 4A            [12]  779 	mov	a,_accel
      000299 94 78            [12]  780 	subb	a,#0x78
      00029B E5 4B            [12]  781 	mov	a,(_accel + 1)
      00029D 64 80            [12]  782 	xrl	a,#0x80
      00029F 94 6C            [12]  783 	subb	a,#0x6c
      0002A1 50 12            [24]  784 	jnc	00104$
      0002A3 75 4E FF         [24]  785 	mov	_ud,#0xff
      0002A6 75 4F FF         [24]  786 	mov	(_ud + 1),#0xff
      0002A9 75 49 00         [24]  787 	mov	(_m + 0x0013),#0x00
      0002AC 75 3F 00         [24]  788 	mov	(_m + 0x0009),#0x00
      0002AF 75 2C FF         [24]  789 	mov	(_m_1 + 0x000a),#0xff
      0002B2 75 22 FF         [24]  790 	mov	_m_1,#0xff
      0002B5                        791 00104$:
                                    792 ;	./src/main.c:83: if (cnt % 10 == 0) {
      0002B5 75 0B 0A         [24]  793 	mov	__modsint_PARM_2,#0x0a
      0002B8 75 0C 00         [24]  794 	mov	(__modsint_PARM_2 + 1),#0x00
      0002BB 85 4C 82         [24]  795 	mov	dpl,_cnt
      0002BE 85 4D 83         [24]  796 	mov	dph,(_cnt + 1)
      0002C1 12 06 3F         [24]  797 	lcall	__modsint
      0002C4 E5 82            [12]  798 	mov	a,dpl
      0002C6 85 83 F0         [24]  799 	mov	b,dph
      0002C9 45 F0            [12]  800 	orl	a,b
      0002CB 60 03            [24]  801 	jz	00288$
      0002CD 02 04 2A         [24]  802 	ljmp	00131$
      0002D0                        803 00288$:
                                    804 ;	./src/main.c:84: if (cnt % 40 == 0 && m[8] << 7 && ud == 1) {m[8] -= 1; m[11] += 128;}
      0002D0 75 0B 28         [24]  805 	mov	__modsint_PARM_2,#0x28
      0002D3 75 0C 00         [24]  806 	mov	(__modsint_PARM_2 + 1),#0x00
      0002D6 85 4C 82         [24]  807 	mov	dpl,_cnt
      0002D9 85 4D 83         [24]  808 	mov	dph,(_cnt + 1)
      0002DC 12 06 3F         [24]  809 	lcall	__modsint
      0002DF E5 82            [12]  810 	mov	a,dpl
      0002E1 85 83 F0         [24]  811 	mov	b,dph
      0002E4 45 F0            [12]  812 	orl	a,b
      0002E6 70 2A            [24]  813 	jnz	00106$
      0002E8 AF 3E            [24]  814 	mov	r7,(_m + 0x0008)
      0002EA 8F 05            [24]  815 	mov	ar5,r7
      0002EC E4               [12]  816 	clr	a
      0002ED 54 01            [12]  817 	anl	a,#0x01
      0002EF A2 E0            [12]  818 	mov	c,acc.0
      0002F1 CD               [12]  819 	xch	a,r5
      0002F2 13               [12]  820 	rrc	a
      0002F3 CD               [12]  821 	xch	a,r5
      0002F4 13               [12]  822 	rrc	a
      0002F5 CD               [12]  823 	xch	a,r5
      0002F6 FE               [12]  824 	mov	r6,a
      0002F7 4D               [12]  825 	orl	a,r5
      0002F8 60 18            [24]  826 	jz	00106$
      0002FA 74 01            [12]  827 	mov	a,#0x01
      0002FC B5 4E 06         [24]  828 	cjne	a,_ud,00291$
      0002FF 14               [12]  829 	dec	a
      000300 B5 4F 02         [24]  830 	cjne	a,(_ud + 1),00291$
      000303 80 02            [24]  831 	sjmp	00292$
      000305                        832 00291$:
      000305 80 0B            [24]  833 	sjmp	00106$
      000307                        834 00292$:
      000307 EF               [12]  835 	mov	a,r7
      000308 14               [12]  836 	dec	a
      000309 F5 3E            [12]  837 	mov	(_m + 0x0008),a
      00030B AF 41            [24]  838 	mov	r7,(_m + 0x000b)
      00030D 74 80            [12]  839 	mov	a,#0x80
      00030F 2F               [12]  840 	add	a,r7
      000310 F5 41            [12]  841 	mov	(_m + 0x000b),a
      000312                        842 00106$:
                                    843 ;	./src/main.c:85: if (cnt % 40 == 0 && m[11] >> 7 && ud == -1) {m[11] -= 128; m[8] += 1;}
      000312 75 0B 28         [24]  844 	mov	__modsint_PARM_2,#0x28
      000315 75 0C 00         [24]  845 	mov	(__modsint_PARM_2 + 1),#0x00
      000318 85 4C 82         [24]  846 	mov	dpl,_cnt
      00031B 85 4D 83         [24]  847 	mov	dph,(_cnt + 1)
      00031E 12 06 3F         [24]  848 	lcall	__modsint
      000321 E5 82            [12]  849 	mov	a,dpl
      000323 85 83 F0         [24]  850 	mov	b,dph
      000326 45 F0            [12]  851 	orl	a,b
      000328 70 1C            [24]  852 	jnz	00163$
      00032A E5 41            [12]  853 	mov	a,(_m + 0x000b)
      00032C FF               [12]  854 	mov	r7,a
      00032D 23               [12]  855 	rl	a
      00032E 54 01            [12]  856 	anl	a,#0x01
      000330 FE               [12]  857 	mov	r6,a
      000331 60 13            [24]  858 	jz	00163$
      000333 74 FF            [12]  859 	mov	a,#0xff
      000335 B5 4E 0E         [24]  860 	cjne	a,_ud,00163$
      000338 B5 4F 0B         [24]  861 	cjne	a,(_ud + 1),00163$
      00033B EF               [12]  862 	mov	a,r7
      00033C 24 80            [12]  863 	add	a,#0x80
      00033E F5 41            [12]  864 	mov	(_m + 0x000b),a
      000340 E5 3E            [12]  865 	mov	a,(_m + 0x0008)
      000342 FF               [12]  866 	mov	r7,a
      000343 04               [12]  867 	inc	a
      000344 F5 3E            [12]  868 	mov	(_m + 0x0008),a
                                    869 ;	./src/main.c:86: for (i = 1; i < 9; i++) sendbyte(i, m[i], i, m[i + 10]);
      000346                        870 00163$:
      000346 7F 01            [12]  871 	mov	r7,#0x01
      000348                        872 00138$:
      000348 EF               [12]  873 	mov	a,r7
      000349 24 36            [12]  874 	add	a,#_m
      00034B F9               [12]  875 	mov	r1,a
      00034C 87 0B            [24]  876 	mov	_sendbyte_PARM_2,@r1
      00034E 8F 06            [24]  877 	mov	ar6,r7
      000350 74 0A            [12]  878 	mov	a,#0x0a
      000352 2E               [12]  879 	add	a,r6
      000353 24 36            [12]  880 	add	a,#_m
      000355 F9               [12]  881 	mov	r1,a
      000356 87 0D            [24]  882 	mov	_sendbyte_PARM_4,@r1
      000358 8F 0C            [24]  883 	mov	_sendbyte_PARM_3,r7
      00035A 8F 82            [24]  884 	mov	dpl,r7
      00035C C0 07            [24]  885 	push	ar7
      00035E 12 01 2D         [24]  886 	lcall	_sendbyte
      000361 D0 07            [24]  887 	pop	ar7
      000363 0F               [12]  888 	inc	r7
      000364 BF 09 00         [24]  889 	cjne	r7,#0x09,00297$
      000367                        890 00297$:
      000367 40 DF            [24]  891 	jc	00138$
                                    892 ;	./src/main.c:88: if (cnt % 30 == 0 || cnt % 50 == 0) shift();
      000369 75 0B 1E         [24]  893 	mov	__modsint_PARM_2,#0x1e
      00036C 75 0C 00         [24]  894 	mov	(__modsint_PARM_2 + 1),#0x00
      00036F 85 4C 82         [24]  895 	mov	dpl,_cnt
      000372 85 4D 83         [24]  896 	mov	dph,(_cnt + 1)
      000375 12 06 3F         [24]  897 	lcall	__modsint
      000378 E5 82            [12]  898 	mov	a,dpl
      00037A 85 83 F0         [24]  899 	mov	b,dph
      00037D 45 F0            [12]  900 	orl	a,b
      00037F 60 18            [24]  901 	jz	00114$
      000381 75 0B 32         [24]  902 	mov	__modsint_PARM_2,#0x32
      000384 75 0C 00         [24]  903 	mov	(__modsint_PARM_2 + 1),#0x00
      000387 85 4C 82         [24]  904 	mov	dpl,_cnt
      00038A 85 4D 83         [24]  905 	mov	dph,(_cnt + 1)
      00038D 12 06 3F         [24]  906 	lcall	__modsint
      000390 E5 82            [12]  907 	mov	a,dpl
      000392 85 83 F0         [24]  908 	mov	b,dph
      000395 45 F0            [12]  909 	orl	a,b
      000397 70 03            [24]  910 	jnz	00173$
      000399                        911 00114$:
      000399 12 01 56         [24]  912 	lcall	_shift
                                    913 ;	./src/main.c:89: for (i = 1; i < 19; i++) {
      00039C                        914 00173$:
      00039C 7F 01            [12]  915 	mov	r7,#0x01
      00039E                        916 00146$:
                                    917 ;	./src/main.c:90: if (ud == 1) { for (j = 1; (m[i] & j) > 0; j <<= 1); m[i] = m[i] >> 1  | (j - 1);
      00039E 74 01            [12]  918 	mov	a,#0x01
      0003A0 B5 4E 06         [24]  919 	cjne	a,_ud,00301$
      0003A3 14               [12]  920 	dec	a
      0003A4 B5 4F 02         [24]  921 	cjne	a,(_ud + 1),00301$
      0003A7 80 02            [24]  922 	sjmp	00302$
      0003A9                        923 00301$:
      0003A9 80 1D            [24]  924 	sjmp	00124$
      0003AB                        925 00302$:
      0003AB 7E 01            [12]  926 	mov	r6,#0x01
      0003AD EF               [12]  927 	mov	a,r7
      0003AE 24 36            [12]  928 	add	a,#_m
      0003B0 F9               [12]  929 	mov	r1,a
      0003B1                        930 00141$:
      0003B1 87 05            [24]  931 	mov	ar5,@r1
      0003B3 EE               [12]  932 	mov	a,r6
      0003B4 5D               [12]  933 	anl	a,r5
      0003B5 60 07            [24]  934 	jz	00117$
      0003B7 8E 04            [24]  935 	mov	ar4,r6
      0003B9 EC               [12]  936 	mov	a,r4
      0003BA 2C               [12]  937 	add	a,r4
      0003BB FE               [12]  938 	mov	r6,a
      0003BC 80 F3            [24]  939 	sjmp	00141$
      0003BE                        940 00117$:
      0003BE ED               [12]  941 	mov	a,r5
      0003BF C3               [12]  942 	clr	c
      0003C0 13               [12]  943 	rrc	a
      0003C1 FD               [12]  944 	mov	r5,a
      0003C2 EE               [12]  945 	mov	a,r6
      0003C3 14               [12]  946 	dec	a
      0003C4 4D               [12]  947 	orl	a,r5
      0003C5 F7               [12]  948 	mov	@r1,a
      0003C6 80 29            [24]  949 	sjmp	00147$
      0003C8                        950 00124$:
                                    951 ;	./src/main.c:91: } else if (ud == -1) { for (j = 128; (m[i] & j) > 0; j >>= 1); if (j != 0) m[i] = (m[i] << 1) | (128 - j) << 1; }
      0003C8 74 FF            [12]  952 	mov	a,#0xff
      0003CA B5 4E 24         [24]  953 	cjne	a,_ud,00147$
      0003CD B5 4F 21         [24]  954 	cjne	a,(_ud + 1),00147$
      0003D0 7E 80            [12]  955 	mov	r6,#0x80
      0003D2 EF               [12]  956 	mov	a,r7
      0003D3 24 36            [12]  957 	add	a,#_m
      0003D5 F9               [12]  958 	mov	r1,a
      0003D6                        959 00144$:
      0003D6 87 05            [24]  960 	mov	ar5,@r1
      0003D8 EE               [12]  961 	mov	a,r6
      0003D9 5D               [12]  962 	anl	a,r5
      0003DA 60 06            [24]  963 	jz	00118$
      0003DC EE               [12]  964 	mov	a,r6
      0003DD C3               [12]  965 	clr	c
      0003DE 13               [12]  966 	rrc	a
      0003DF FE               [12]  967 	mov	r6,a
      0003E0 80 F4            [24]  968 	sjmp	00144$
      0003E2                        969 00118$:
      0003E2 EE               [12]  970 	mov	a,r6
      0003E3 60 0C            [24]  971 	jz	00147$
      0003E5 ED               [12]  972 	mov	a,r5
      0003E6 2D               [12]  973 	add	a,r5
      0003E7 FD               [12]  974 	mov	r5,a
      0003E8 74 80            [12]  975 	mov	a,#0x80
      0003EA C3               [12]  976 	clr	c
      0003EB 9E               [12]  977 	subb	a,r6
      0003EC 25 E0            [12]  978 	add	a,acc
      0003EE FE               [12]  979 	mov	r6,a
      0003EF 4D               [12]  980 	orl	a,r5
      0003F0 F7               [12]  981 	mov	@r1,a
      0003F1                        982 00147$:
                                    983 ;	./src/main.c:89: for (i = 1; i < 19; i++) {
      0003F1 0F               [12]  984 	inc	r7
      0003F2 BF 13 00         [24]  985 	cjne	r7,#0x13,00308$
      0003F5                        986 00308$:
      0003F5 40 A7            [24]  987 	jc	00146$
                                    988 ;	./src/main.c:93: if (cnt % 30 != 0 && cnt % 50 != 0) shift();
      0003F7 75 0B 1E         [24]  989 	mov	__modsint_PARM_2,#0x1e
      0003FA 75 0C 00         [24]  990 	mov	(__modsint_PARM_2 + 1),#0x00
      0003FD 85 4C 82         [24]  991 	mov	dpl,_cnt
      000400 85 4D 83         [24]  992 	mov	dph,(_cnt + 1)
      000403 12 06 3F         [24]  993 	lcall	__modsint
      000406 E5 82            [12]  994 	mov	a,dpl
      000408 85 83 F0         [24]  995 	mov	b,dph
      00040B 45 F0            [12]  996 	orl	a,b
      00040D 60 1B            [24]  997 	jz	00131$
      00040F 75 0B 32         [24]  998 	mov	__modsint_PARM_2,#0x32
      000412 75 0C 00         [24]  999 	mov	(__modsint_PARM_2 + 1),#0x00
      000415 85 4C 82         [24] 1000 	mov	dpl,_cnt
      000418 85 4D 83         [24] 1001 	mov	dph,(_cnt + 1)
      00041B 12 06 3F         [24] 1002 	lcall	__modsint
      00041E E5 82            [12] 1003 	mov	a,dpl
      000420 85 83 F0         [24] 1004 	mov	b,dph
      000423 45 F0            [12] 1005 	orl	a,b
      000425 60 03            [24] 1006 	jz	00131$
      000427 12 01 56         [24] 1007 	lcall	_shift
      00042A                       1008 00131$:
                                   1009 ;	./src/main.c:95: if (++cnt == 2560 || cnt == 2570 || cnt == 2580) call();
      00042A 05 4C            [12] 1010 	inc	_cnt
      00042C E4               [12] 1011 	clr	a
      00042D B5 4C 02         [24] 1012 	cjne	a,_cnt,00312$
      000430 05 4D            [12] 1013 	inc	(_cnt + 1)
      000432                       1014 00312$:
      000432 E4               [12] 1015 	clr	a
      000433 B5 4C 07         [24] 1016 	cjne	a,_cnt,00313$
      000436 74 0A            [12] 1017 	mov	a,#0x0a
      000438 B5 4D 02         [24] 1018 	cjne	a,(_cnt + 1),00313$
      00043B 80 14            [24] 1019 	sjmp	00132$
      00043D                       1020 00313$:
      00043D 74 0A            [12] 1021 	mov	a,#0x0a
      00043F B5 4C 05         [24] 1022 	cjne	a,_cnt,00314$
      000442 B5 4D 02         [24] 1023 	cjne	a,(_cnt + 1),00314$
      000445 80 0A            [24] 1024 	sjmp	00132$
      000447                       1025 00314$:
      000447 74 14            [12] 1026 	mov	a,#0x14
      000449 B5 4C 08         [24] 1027 	cjne	a,_cnt,00133$
      00044C 74 0A            [12] 1028 	mov	a,#0x0a
      00044E B5 4D 03         [24] 1029 	cjne	a,(_cnt + 1),00133$
      000451                       1030 00132$:
      000451 12 01 EC         [24] 1031 	lcall	_call
      000454                       1032 00133$:
                                   1033 ;	./src/main.c:97: if (cnt == 2580) cnt = 0;
      000454 74 14            [12] 1034 	mov	a,#0x14
      000456 B5 4C 0A         [24] 1035 	cjne	a,_cnt,00148$
      000459 74 0A            [12] 1036 	mov	a,#0x0a
      00045B B5 4D 05         [24] 1037 	cjne	a,(_cnt + 1),00148$
      00045E E4               [12] 1038 	clr	a
      00045F F5 4C            [12] 1039 	mov	_cnt,a
      000461 F5 4D            [12] 1040 	mov	(_cnt + 1),a
      000463                       1041 00148$:
                                   1042 ;	./src/main.c:98: }
      000463 D0 D0            [24] 1043 	pop	psw
      000465 D0 00            [24] 1044 	pop	(0+0)
      000467 D0 01            [24] 1045 	pop	(0+1)
      000469 D0 02            [24] 1046 	pop	(0+2)
      00046B D0 03            [24] 1047 	pop	(0+3)
      00046D D0 04            [24] 1048 	pop	(0+4)
      00046F D0 05            [24] 1049 	pop	(0+5)
      000471 D0 06            [24] 1050 	pop	(0+6)
      000473 D0 07            [24] 1051 	pop	(0+7)
      000475 D0 83            [24] 1052 	pop	dph
      000477 D0 82            [24] 1053 	pop	dpl
      000479 D0 F0            [24] 1054 	pop	b
      00047B D0 E0            [24] 1055 	pop	acc
      00047D D0 21            [24] 1056 	pop	bits
      00047F 32               [24] 1057 	reti
                                   1058 ;------------------------------------------------------------
                                   1059 ;Allocation info for local variables in function 'main'
                                   1060 ;------------------------------------------------------------
                                   1061 ;	./src/main.c:100: void main(void) 
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function main
                                   1064 ;	-----------------------------------------
      000480                       1065 _main:
                                   1066 ;	./src/main.c:102: sendbyte(12,1,12,1);
      000480 75 0B 01         [24] 1067 	mov	_sendbyte_PARM_2,#0x01
      000483 75 0C 0C         [24] 1068 	mov	_sendbyte_PARM_3,#0x0c
      000486 75 0D 01         [24] 1069 	mov	_sendbyte_PARM_4,#0x01
      000489 75 82 0C         [24] 1070 	mov	dpl,#0x0c
      00048C 12 01 2D         [24] 1071 	lcall	_sendbyte
                                   1072 ;	./src/main.c:103: sendbyte(15,0,15,0);
      00048F 75 0B 00         [24] 1073 	mov	_sendbyte_PARM_2,#0x00
      000492 75 0C 0F         [24] 1074 	mov	_sendbyte_PARM_3,#0x0f
      000495 75 0D 00         [24] 1075 	mov	_sendbyte_PARM_4,#0x00
      000498 75 82 0F         [24] 1076 	mov	dpl,#0x0f
      00049B 12 01 2D         [24] 1077 	lcall	_sendbyte
                                   1078 ;	./src/main.c:104: sendbyte(9,0,9,0);
      00049E 75 0B 00         [24] 1079 	mov	_sendbyte_PARM_2,#0x00
      0004A1 75 0C 09         [24] 1080 	mov	_sendbyte_PARM_3,#0x09
      0004A4 75 0D 00         [24] 1081 	mov	_sendbyte_PARM_4,#0x00
      0004A7 75 82 09         [24] 1082 	mov	dpl,#0x09
      0004AA 12 01 2D         [24] 1083 	lcall	_sendbyte
                                   1084 ;	./src/main.c:105: sendbyte(11,7,11,7);
      0004AD 75 0B 07         [24] 1085 	mov	_sendbyte_PARM_2,#0x07
      0004B0 75 0C 0B         [24] 1086 	mov	_sendbyte_PARM_3,#0x0b
      0004B3 75 0D 07         [24] 1087 	mov	_sendbyte_PARM_4,#0x07
      0004B6 75 82 0B         [24] 1088 	mov	dpl,#0x0b
      0004B9 12 01 2D         [24] 1089 	lcall	_sendbyte
                                   1090 ;	./src/main.c:106: sendbyte(10,0,10,0);
      0004BC 75 0B 00         [24] 1091 	mov	_sendbyte_PARM_2,#0x00
      0004BF 75 0C 0A         [24] 1092 	mov	_sendbyte_PARM_3,#0x0a
      0004C2 75 0D 00         [24] 1093 	mov	_sendbyte_PARM_4,#0x00
      0004C5 75 82 0A         [24] 1094 	mov	dpl,#0x0a
      0004C8 12 01 2D         [24] 1095 	lcall	_sendbyte
                                   1096 ;	./src/main.c:107: MPU6050_INIT();
      0004CB 12 00 92         [24] 1097 	lcall	_MPU6050_INIT
                                   1098 ;	./src/main.c:108: TMOD = 0x01;
      0004CE 75 89 01         [24] 1099 	mov	_TMOD,#0x01
                                   1100 ;	./src/main.c:109: TH0 = (15536) >> 8;
      0004D1 75 8C 3C         [24] 1101 	mov	_TH0,#0x3c
                                   1102 ;	./src/main.c:110: TL0 = (15536) % 256;
      0004D4 75 8A B0         [24] 1103 	mov	_TL0,#0xb0
                                   1104 ;	./src/main.c:111: ET0 = EA = TR0 = 1;
                                   1105 ;	assignBit
      0004D7 D2 8C            [12] 1106 	setb	_TR0
                                   1107 ;	assignBit
      0004D9 A2 8C            [12] 1108 	mov	c,_TR0
      0004DB 92 AF            [24] 1109 	mov	_EA,c
                                   1110 ;	assignBit
      0004DD A2 AF            [12] 1111 	mov	c,_EA
      0004DF 92 A9            [24] 1112 	mov	_ET0,c
                                   1113 ;	./src/main.c:112: while(1);
      0004E1                       1114 00102$:
                                   1115 ;	./src/main.c:113: }
      0004E1 80 FE            [24] 1116 	sjmp	00102$
                                   1117 	.area CSEG    (CODE)
                                   1118 	.area CONST   (CODE)
                                   1119 	.area XINIT   (CODE)
                                   1120 	.area CABS    (ABS,CODE)
