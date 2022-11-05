                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module seven_segment
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sendbyte_PARM_2
                                     12 	.globl _delay_ms
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
                                    109 	.globl _singledraw_PARM_2
                                    110 	.globl _Writesingle7219_PARM_3
                                    111 	.globl _Writesingle7219_PARM_2
                                    112 	.globl _Write7219_PARM_2
                                    113 	.globl _sendbyte
                                    114 	.globl _Write7219
                                    115 	.globl _Writesingle7219
                                    116 	.globl _Initial
                                    117 	.globl _draw
                                    118 	.globl _singledraw
                                    119 	.globl _shiftdraw
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
      00000A                        235 _Write7219_PARM_2:
      00000A                        236 	.ds 1
      00000B                        237 _Writesingle7219_PARM_2:
      00000B                        238 	.ds 1
      00000C                        239 _Writesingle7219_PARM_3:
      00000C                        240 	.ds 1
      00000D                        241 _singledraw_PARM_2:
      00000D                        242 	.ds 3
      000010                        243 _shiftdraw_shift_65536_38:
      000010                        244 	.ds 1
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable items in internal ram
                                    247 ;--------------------------------------------------------
                                    248 	.area	OSEG    (OVR,DATA)
      000011                        249 _sendbyte_PARM_2:
      000011                        250 	.ds 1
                                    251 ;--------------------------------------------------------
                                    252 ; indirectly addressable internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area ISEG    (DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area IABS    (ABS,DATA)
                                    259 	.area IABS    (ABS,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; bit data
                                    262 ;--------------------------------------------------------
                                    263 	.area BSEG    (BIT)
                                    264 ;--------------------------------------------------------
                                    265 ; paged external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area PSEG    (PAG,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; uninitialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XSEG    (XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; absolute external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XABS    (ABS,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; initialized external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XISEG   (XDATA)
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT0 (CODE)
                                    282 	.area GSINIT1 (CODE)
                                    283 	.area GSINIT2 (CODE)
                                    284 	.area GSINIT3 (CODE)
                                    285 	.area GSINIT4 (CODE)
                                    286 	.area GSINIT5 (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area CSEG    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 ;------------------------------------------------------------
                                    298 ;Allocation info for local variables in function 'shiftdraw'
                                    299 ;------------------------------------------------------------
                                    300 ;shift                     Allocated with name '_shiftdraw_shift_65536_38'
                                    301 ;picture                   Allocated to registers r5 r6 r7 
                                    302 ;i                         Allocated to registers r4 
                                    303 ;------------------------------------------------------------
                                    304 ;	./src/seven_segment.c:99: static char shift = 0;
      000085 75 10 00         [24]  305 	mov	_shiftdraw_shift_65536_38,#0x00
                                    306 ;--------------------------------------------------------
                                    307 ; Home
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area HOME    (CODE)
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'sendbyte'
                                    317 ;------------------------------------------------------------
                                    318 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    319 ;address                   Allocated to registers r7 
                                    320 ;i                         Allocated to registers r6 
                                    321 ;------------------------------------------------------------
                                    322 ;	./src/seven_segment.c:6: void sendbyte(unsigned char address, unsigned char dat)
                                    323 ;	-----------------------------------------
                                    324 ;	 function sendbyte
                                    325 ;	-----------------------------------------
      0000BB                        326 _sendbyte:
                           000007   327 	ar7 = 0x07
                           000006   328 	ar6 = 0x06
                           000005   329 	ar5 = 0x05
                           000004   330 	ar4 = 0x04
                           000003   331 	ar3 = 0x03
                           000002   332 	ar2 = 0x02
                           000001   333 	ar1 = 0x01
                           000000   334 	ar0 = 0x00
      0000BB AF 82            [24]  335 	mov	r7,dpl
                                    336 ;	./src/seven_segment.c:10: for (i=0; i<8; i++) {         // get last 8 bits(address)
      0000BD 7E 00            [12]  337 	mov	r6,#0x00
      0000BF                        338 00103$:
                                    339 ;	./src/seven_segment.c:11: CLK = 0; 
                                    340 ;	assignBit
      0000BF C2 B6            [12]  341 	clr	_P3_6
                                    342 ;	./src/seven_segment.c:12: DOUT = (address & 0x80);   // get msb and shift left
      0000C1 EF               [12]  343 	mov	a,r7
      0000C2 23               [12]  344 	rl	a
      0000C3 54 01            [12]  345 	anl	a,#0x01
                                    346 ;	assignBit
      0000C5 24 FF            [12]  347 	add	a,#0xff
      0000C7 92 B4            [24]  348 	mov	_P3_4,c
                                    349 ;	./src/seven_segment.c:13: address <<= 1; 
      0000C9 8F 05            [24]  350 	mov	ar5,r7
      0000CB ED               [12]  351 	mov	a,r5
      0000CC 2D               [12]  352 	add	a,r5
      0000CD FF               [12]  353 	mov	r7,a
                                    354 ;	./src/seven_segment.c:14: CLK = 1; 
                                    355 ;	assignBit
      0000CE D2 B6            [12]  356 	setb	_P3_6
                                    357 ;	./src/seven_segment.c:10: for (i=0; i<8; i++) {         // get last 8 bits(address)
      0000D0 0E               [12]  358 	inc	r6
      0000D1 BE 08 00         [24]  359 	cjne	r6,#0x08,00123$
      0000D4                        360 00123$:
      0000D4 40 E9            [24]  361 	jc	00103$
                                    362 ;	./src/seven_segment.c:17: for (i=0; i<8; i++) {         // get first 8 bits(data)
      0000D6 7F 00            [12]  363 	mov	r7,#0x00
      0000D8                        364 00105$:
                                    365 ;	./src/seven_segment.c:18: CLK = 0; 
                                    366 ;	assignBit
      0000D8 C2 B6            [12]  367 	clr	_P3_6
                                    368 ;	./src/seven_segment.c:19: DOUT = (dat & 0x80);       // get msb and shit left
      0000DA E5 11            [12]  369 	mov	a,_sendbyte_PARM_2
      0000DC 23               [12]  370 	rl	a
      0000DD 54 01            [12]  371 	anl	a,#0x01
                                    372 ;	assignBit
      0000DF 24 FF            [12]  373 	add	a,#0xff
      0000E1 92 B4            [24]  374 	mov	_P3_4,c
                                    375 ;	./src/seven_segment.c:20: dat <<= 1;
      0000E3 E5 11            [12]  376 	mov	a,_sendbyte_PARM_2
      0000E5 25 E0            [12]  377 	add	a,acc
      0000E7 F5 11            [12]  378 	mov	_sendbyte_PARM_2,a
                                    379 ;	./src/seven_segment.c:21: CLK = 1;
                                    380 ;	assignBit
      0000E9 D2 B6            [12]  381 	setb	_P3_6
                                    382 ;	./src/seven_segment.c:17: for (i=0; i<8; i++) {         // get first 8 bits(data)
      0000EB 0F               [12]  383 	inc	r7
      0000EC BF 08 00         [24]  384 	cjne	r7,#0x08,00125$
      0000EF                        385 00125$:
      0000EF 40 E7            [24]  386 	jc	00105$
                                    387 ;	./src/seven_segment.c:23: }
      0000F1 22               [24]  388 	ret
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'Write7219'
                                    391 ;------------------------------------------------------------
                                    392 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    393 ;address                   Allocated to registers r7 
                                    394 ;cnt                       Allocated to registers r6 
                                    395 ;------------------------------------------------------------
                                    396 ;	./src/seven_segment.c:26: void Write7219(unsigned char address, unsigned char dat)
                                    397 ;	-----------------------------------------
                                    398 ;	 function Write7219
                                    399 ;	-----------------------------------------
      0000F2                        400 _Write7219:
      0000F2 AF 82            [24]  401 	mov	r7,dpl
                                    402 ;	./src/seven_segment.c:29: LOAD = 0;
                                    403 ;	assignBit
      0000F4 C2 B5            [12]  404 	clr	_P3_5
                                    405 ;	./src/seven_segment.c:31: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      0000F6 7E 01            [12]  406 	mov	r6,#0x01
      0000F8                        407 00102$:
                                    408 ;	./src/seven_segment.c:33: sendbyte(address, dat);
      0000F8 85 0A 11         [24]  409 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0000FB 8F 82            [24]  410 	mov	dpl,r7
      0000FD C0 07            [24]  411 	push	ar7
      0000FF C0 06            [24]  412 	push	ar6
      000101 12 00 BB         [24]  413 	lcall	_sendbyte
      000104 D0 06            [24]  414 	pop	ar6
      000106 D0 07            [24]  415 	pop	ar7
                                    416 ;	./src/seven_segment.c:31: for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
      000108 0E               [12]  417 	inc	r6
      000109 EE               [12]  418 	mov	a,r6
      00010A 24 FE            [12]  419 	add	a,#0xff - 0x01
      00010C 50 EA            [24]  420 	jnc	00102$
                                    421 ;	./src/seven_segment.c:36: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
                                    422 ;	assignBit
      00010E D2 B5            [12]  423 	setb	_P3_5
                                    424 ;	./src/seven_segment.c:37: }
      000110 22               [24]  425 	ret
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'Writesingle7219'
                                    428 ;------------------------------------------------------------
                                    429 ;address                   Allocated with name '_Writesingle7219_PARM_2'
                                    430 ;dat                       Allocated with name '_Writesingle7219_PARM_3'
                                    431 ;chosen                    Allocated to registers r7 
                                    432 ;cnt                       Allocated to registers 
                                    433 ;------------------------------------------------------------
                                    434 ;	./src/seven_segment.c:40: void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat)
                                    435 ;	-----------------------------------------
                                    436 ;	 function Writesingle7219
                                    437 ;	-----------------------------------------
      000111                        438 _Writesingle7219:
      000111 AF 82            [24]  439 	mov	r7,dpl
                                    440 ;	./src/seven_segment.c:43: LOAD = 0;
                                    441 ;	assignBit
      000113 C2 B5            [12]  442 	clr	_P3_5
                                    443 ;	./src/seven_segment.c:45: for(cnt=matrixnum; cnt>chosen; cnt--) { // write data into the selected matrix
      000115 7E 01            [12]  444 	mov	r6,#0x01
      000117                        445 00104$:
      000117 C3               [12]  446 	clr	c
      000118 EF               [12]  447 	mov	a,r7
      000119 9E               [12]  448 	subb	a,r6
      00011A 50 14            [24]  449 	jnc	00101$
                                    450 ;	./src/seven_segment.c:46: sendbyte(0x00, 0x00);               // write 0 to no-op
      00011C 75 11 00         [24]  451 	mov	_sendbyte_PARM_2,#0x00
      00011F 75 82 00         [24]  452 	mov	dpl,#0x00
      000122 C0 07            [24]  453 	push	ar7
      000124 C0 06            [24]  454 	push	ar6
      000126 12 00 BB         [24]  455 	lcall	_sendbyte
      000129 D0 06            [24]  456 	pop	ar6
      00012B D0 07            [24]  457 	pop	ar7
                                    458 ;	./src/seven_segment.c:45: for(cnt=matrixnum; cnt>chosen; cnt--) { // write data into the selected matrix
      00012D 1E               [12]  459 	dec	r6
      00012E 80 E7            [24]  460 	sjmp	00104$
      000130                        461 00101$:
                                    462 ;	./src/seven_segment.c:48: sendbyte(address, dat);             // sent data to chosen led-matrix
      000130 85 0C 11         [24]  463 	mov	_sendbyte_PARM_2,_Writesingle7219_PARM_3
      000133 85 0B 82         [24]  464 	mov	dpl,_Writesingle7219_PARM_2
      000136 C0 07            [24]  465 	push	ar7
      000138 12 00 BB         [24]  466 	lcall	_sendbyte
      00013B D0 07            [24]  467 	pop	ar7
                                    468 ;	./src/seven_segment.c:50: for (cnt=chosen-1; cnt>=1; cnt--) { 
      00013D 1F               [12]  469 	dec	r7
      00013E                        470 00107$:
      00013E BF 01 00         [24]  471 	cjne	r7,#0x01,00130$
      000141                        472 00130$:
      000141 40 10            [24]  473 	jc	00102$
                                    474 ;	./src/seven_segment.c:51: sendbyte(0x00, 0x00);               // write 0 to no-op
      000143 75 11 00         [24]  475 	mov	_sendbyte_PARM_2,#0x00
      000146 75 82 00         [24]  476 	mov	dpl,#0x00
      000149 C0 07            [24]  477 	push	ar7
      00014B 12 00 BB         [24]  478 	lcall	_sendbyte
      00014E D0 07            [24]  479 	pop	ar7
                                    480 ;	./src/seven_segment.c:50: for (cnt=chosen-1; cnt>=1; cnt--) { 
      000150 1F               [12]  481 	dec	r7
      000151 80 EB            [24]  482 	sjmp	00107$
      000153                        483 00102$:
                                    484 ;	./src/seven_segment.c:54: LOAD = 1;
                                    485 ;	assignBit
      000153 D2 B5            [12]  486 	setb	_P3_5
                                    487 ;	./src/seven_segment.c:55: }
      000155 22               [24]  488 	ret
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'Initial'
                                    491 ;------------------------------------------------------------
                                    492 ;i                         Allocated to registers r7 
                                    493 ;------------------------------------------------------------
                                    494 ;	./src/seven_segment.c:60: void Initial(void)
                                    495 ;	-----------------------------------------
                                    496 ;	 function Initial
                                    497 ;	-----------------------------------------
      000156                        498 _Initial:
                                    499 ;	./src/seven_segment.c:64: Write7219(SHUT_DOWN, 0x01);         // normal mode(0xX1)
      000156 75 0A 01         [24]  500 	mov	_Write7219_PARM_2,#0x01
      000159 75 82 0C         [24]  501 	mov	dpl,#0x0c
      00015C 12 00 F2         [24]  502 	lcall	_Write7219
                                    503 ;	./src/seven_segment.c:65: Write7219(DISPLAY_TEST, 0x00); 
      00015F 75 0A 00         [24]  504 	mov	_Write7219_PARM_2,#0x00
      000162 75 82 0F         [24]  505 	mov	dpl,#0x0f
      000165 12 00 F2         [24]  506 	lcall	_Write7219
                                    507 ;	./src/seven_segment.c:66: Write7219(DECODE_MODE, 0xff);       // select non-decode mode
      000168 75 0A FF         [24]  508 	mov	_Write7219_PARM_2,#0xff
      00016B 75 82 09         [24]  509 	mov	dpl,#0x09
      00016E 12 00 F2         [24]  510 	lcall	_Write7219
                                    511 ;	./src/seven_segment.c:67: Write7219(SCAN_LIMIT, 0x07);        // use all 8 LED
      000171 75 0A 07         [24]  512 	mov	_Write7219_PARM_2,#0x07
      000174 75 82 0B         [24]  513 	mov	dpl,#0x0b
      000177 12 00 F2         [24]  514 	lcall	_Write7219
                                    515 ;	./src/seven_segment.c:68: Write7219(INTENSITY, 0x00);         // set up intensity
      00017A 75 0A 00         [24]  516 	mov	_Write7219_PARM_2,#0x00
      00017D 75 82 0A         [24]  517 	mov	dpl,#0x0a
      000180 12 00 F2         [24]  518 	lcall	_Write7219
                                    519 ;	./src/seven_segment.c:70: for(i=1; i<=8; i++) {
      000183 7F 01            [12]  520 	mov	r7,#0x01
      000185                        521 00102$:
                                    522 ;	./src/seven_segment.c:71: Write7219(i, 0x00);             // turn off all LED
      000185 75 0A 00         [24]  523 	mov	_Write7219_PARM_2,#0x00
      000188 8F 82            [24]  524 	mov	dpl,r7
      00018A C0 07            [24]  525 	push	ar7
      00018C 12 00 F2         [24]  526 	lcall	_Write7219
      00018F D0 07            [24]  527 	pop	ar7
                                    528 ;	./src/seven_segment.c:70: for(i=1; i<=8; i++) {
      000191 0F               [12]  529 	inc	r7
      000192 EF               [12]  530 	mov	a,r7
      000193 24 F7            [12]  531 	add	a,#0xff - 0x08
      000195 50 EE            [24]  532 	jnc	00102$
                                    533 ;	./src/seven_segment.c:73: }
      000197 22               [24]  534 	ret
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'draw'
                                    537 ;------------------------------------------------------------
                                    538 ;picture                   Allocated to registers r5 r6 r7 
                                    539 ;i                         Allocated to registers r4 
                                    540 ;------------------------------------------------------------
                                    541 ;	./src/seven_segment.c:76: void draw(unsigned char *picture)
                                    542 ;	-----------------------------------------
                                    543 ;	 function draw
                                    544 ;	-----------------------------------------
      000198                        545 _draw:
      000198 AD 82            [24]  546 	mov	r5,dpl
      00019A AE 83            [24]  547 	mov	r6,dph
      00019C AF F0            [24]  548 	mov	r7,b
                                    549 ;	./src/seven_segment.c:80: for(i=1; i<=8; i++) {
      00019E 7C 01            [12]  550 	mov	r4,#0x01
      0001A0                        551 00102$:
                                    552 ;	./src/seven_segment.c:81: Write7219(i, picture[i-1]);
      0001A0 8C 02            [24]  553 	mov	ar2,r4
      0001A2 7B 00            [12]  554 	mov	r3,#0x00
      0001A4 1A               [12]  555 	dec	r2
      0001A5 BA FF 01         [24]  556 	cjne	r2,#0xff,00111$
      0001A8 1B               [12]  557 	dec	r3
      0001A9                        558 00111$:
      0001A9 EA               [12]  559 	mov	a,r2
      0001AA 2D               [12]  560 	add	a,r5
      0001AB FA               [12]  561 	mov	r2,a
      0001AC EB               [12]  562 	mov	a,r3
      0001AD 3E               [12]  563 	addc	a,r6
      0001AE F9               [12]  564 	mov	r1,a
      0001AF 8F 03            [24]  565 	mov	ar3,r7
      0001B1 8A 82            [24]  566 	mov	dpl,r2
      0001B3 89 83            [24]  567 	mov	dph,r1
      0001B5 8B F0            [24]  568 	mov	b,r3
      0001B7 12 02 EE         [24]  569 	lcall	__gptrget
      0001BA F5 0A            [12]  570 	mov	_Write7219_PARM_2,a
      0001BC 8C 82            [24]  571 	mov	dpl,r4
      0001BE C0 07            [24]  572 	push	ar7
      0001C0 C0 06            [24]  573 	push	ar6
      0001C2 C0 05            [24]  574 	push	ar5
      0001C4 C0 04            [24]  575 	push	ar4
      0001C6 12 00 F2         [24]  576 	lcall	_Write7219
      0001C9 D0 04            [24]  577 	pop	ar4
      0001CB D0 05            [24]  578 	pop	ar5
      0001CD D0 06            [24]  579 	pop	ar6
      0001CF D0 07            [24]  580 	pop	ar7
                                    581 ;	./src/seven_segment.c:80: for(i=1; i<=8; i++) {
      0001D1 0C               [12]  582 	inc	r4
      0001D2 EC               [12]  583 	mov	a,r4
      0001D3 24 F7            [12]  584 	add	a,#0xff - 0x08
      0001D5 50 C9            [24]  585 	jnc	00102$
                                    586 ;	./src/seven_segment.c:83: }
      0001D7 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'singledraw'
                                    590 ;------------------------------------------------------------
                                    591 ;picture                   Allocated with name '_singledraw_PARM_2'
                                    592 ;chosen                    Allocated to registers r7 
                                    593 ;i                         Allocated to registers r6 
                                    594 ;------------------------------------------------------------
                                    595 ;	./src/seven_segment.c:86: void singledraw(unsigned char chosen,unsigned char *picture)
                                    596 ;	-----------------------------------------
                                    597 ;	 function singledraw
                                    598 ;	-----------------------------------------
      0001D8                        599 _singledraw:
      0001D8 AF 82            [24]  600 	mov	r7,dpl
                                    601 ;	./src/seven_segment.c:90: for(i=1; i<=8; i++) {
      0001DA 7E 01            [12]  602 	mov	r6,#0x01
      0001DC                        603 00102$:
                                    604 ;	./src/seven_segment.c:91: Writesingle7219(chosen, i, picture[i-1]);
      0001DC 8E 04            [24]  605 	mov	ar4,r6
      0001DE 7D 00            [12]  606 	mov	r5,#0x00
      0001E0 1C               [12]  607 	dec	r4
      0001E1 BC FF 01         [24]  608 	cjne	r4,#0xff,00111$
      0001E4 1D               [12]  609 	dec	r5
      0001E5                        610 00111$:
      0001E5 EC               [12]  611 	mov	a,r4
      0001E6 25 0D            [12]  612 	add	a,_singledraw_PARM_2
      0001E8 FC               [12]  613 	mov	r4,a
      0001E9 ED               [12]  614 	mov	a,r5
      0001EA 35 0E            [12]  615 	addc	a,(_singledraw_PARM_2 + 1)
      0001EC FD               [12]  616 	mov	r5,a
      0001ED AB 0F            [24]  617 	mov	r3,(_singledraw_PARM_2 + 2)
      0001EF 8C 82            [24]  618 	mov	dpl,r4
      0001F1 8D 83            [24]  619 	mov	dph,r5
      0001F3 8B F0            [24]  620 	mov	b,r3
      0001F5 12 02 EE         [24]  621 	lcall	__gptrget
      0001F8 F5 0C            [12]  622 	mov	_Writesingle7219_PARM_3,a
      0001FA 8E 0B            [24]  623 	mov	_Writesingle7219_PARM_2,r6
      0001FC 8F 82            [24]  624 	mov	dpl,r7
      0001FE C0 07            [24]  625 	push	ar7
      000200 C0 06            [24]  626 	push	ar6
      000202 12 01 11         [24]  627 	lcall	_Writesingle7219
      000205 D0 06            [24]  628 	pop	ar6
      000207 D0 07            [24]  629 	pop	ar7
                                    630 ;	./src/seven_segment.c:90: for(i=1; i<=8; i++) {
      000209 0E               [12]  631 	inc	r6
      00020A EE               [12]  632 	mov	a,r6
      00020B 24 F7            [12]  633 	add	a,#0xff - 0x08
      00020D 50 CD            [24]  634 	jnc	00102$
                                    635 ;	./src/seven_segment.c:93: }
      00020F 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'shiftdraw'
                                    639 ;------------------------------------------------------------
                                    640 ;shift                     Allocated with name '_shiftdraw_shift_65536_38'
                                    641 ;picture                   Allocated to registers r5 r6 r7 
                                    642 ;i                         Allocated to registers r4 
                                    643 ;------------------------------------------------------------
                                    644 ;	./src/seven_segment.c:96: void shiftdraw(unsigned char *picture)
                                    645 ;	-----------------------------------------
                                    646 ;	 function shiftdraw
                                    647 ;	-----------------------------------------
      000210                        648 _shiftdraw:
      000210 AD 82            [24]  649 	mov	r5,dpl
      000212 AE 83            [24]  650 	mov	r6,dph
      000214 AF F0            [24]  651 	mov	r7,b
                                    652 ;	./src/seven_segment.c:101: for(i=8; i>=1; i--) {
      000216 7C 08            [12]  653 	mov	r4,#0x08
      000218                        654 00104$:
                                    655 ;	./src/seven_segment.c:102: Writesingle7219(1, i, picture[(shift-i+8) % 8]);
      000218 AA 10            [24]  656 	mov	r2,_shiftdraw_shift_65536_38
      00021A 7B 00            [12]  657 	mov	r3,#0x00
      00021C 8C 00            [24]  658 	mov	ar0,r4
      00021E 79 00            [12]  659 	mov	r1,#0x00
      000220 EA               [12]  660 	mov	a,r2
      000221 C3               [12]  661 	clr	c
      000222 98               [12]  662 	subb	a,r0
      000223 FA               [12]  663 	mov	r2,a
      000224 EB               [12]  664 	mov	a,r3
      000225 99               [12]  665 	subb	a,r1
      000226 FB               [12]  666 	mov	r3,a
      000227 74 08            [12]  667 	mov	a,#0x08
      000229 2A               [12]  668 	add	a,r2
      00022A F5 82            [12]  669 	mov	dpl,a
      00022C E4               [12]  670 	clr	a
      00022D 3B               [12]  671 	addc	a,r3
      00022E F5 83            [12]  672 	mov	dph,a
      000230 75 11 08         [24]  673 	mov	__modsint_PARM_2,#0x08
                                    674 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000233 89 12            [24]  675 	mov	(__modsint_PARM_2 + 1),r1
      000235 C0 07            [24]  676 	push	ar7
      000237 C0 06            [24]  677 	push	ar6
      000239 C0 05            [24]  678 	push	ar5
      00023B C0 04            [24]  679 	push	ar4
      00023D 12 03 0A         [24]  680 	lcall	__modsint
      000240 AA 82            [24]  681 	mov	r2,dpl
      000242 AB 83            [24]  682 	mov	r3,dph
      000244 D0 04            [24]  683 	pop	ar4
      000246 D0 05            [24]  684 	pop	ar5
      000248 D0 06            [24]  685 	pop	ar6
      00024A D0 07            [24]  686 	pop	ar7
      00024C EA               [12]  687 	mov	a,r2
      00024D 2D               [12]  688 	add	a,r5
      00024E FA               [12]  689 	mov	r2,a
      00024F EB               [12]  690 	mov	a,r3
      000250 3E               [12]  691 	addc	a,r6
      000251 F9               [12]  692 	mov	r1,a
      000252 8F 03            [24]  693 	mov	ar3,r7
      000254 8A 82            [24]  694 	mov	dpl,r2
      000256 89 83            [24]  695 	mov	dph,r1
      000258 8B F0            [24]  696 	mov	b,r3
      00025A 12 02 EE         [24]  697 	lcall	__gptrget
      00025D F5 0C            [12]  698 	mov	_Writesingle7219_PARM_3,a
      00025F 8C 0B            [24]  699 	mov	_Writesingle7219_PARM_2,r4
      000261 75 82 01         [24]  700 	mov	dpl,#0x01
      000264 C0 07            [24]  701 	push	ar7
      000266 C0 06            [24]  702 	push	ar6
      000268 C0 05            [24]  703 	push	ar5
      00026A C0 04            [24]  704 	push	ar4
      00026C 12 01 11         [24]  705 	lcall	_Writesingle7219
      00026F D0 04            [24]  706 	pop	ar4
      000271 D0 05            [24]  707 	pop	ar5
      000273 D0 06            [24]  708 	pop	ar6
      000275 D0 07            [24]  709 	pop	ar7
                                    710 ;	./src/seven_segment.c:101: for(i=8; i>=1; i--) {
      000277 1C               [12]  711 	dec	r4
      000278 BC 01 00         [24]  712 	cjne	r4,#0x01,00121$
      00027B                        713 00121$:
      00027B 50 9B            [24]  714 	jnc	00104$
                                    715 ;	./src/seven_segment.c:104: shift += 1;
      00027D E5 10            [12]  716 	mov	a,_shiftdraw_shift_65536_38
      00027F 04               [12]  717 	inc	a
                                    718 ;	./src/seven_segment.c:105: if(shift > 8) {
      000280 F5 10            [12]  719 	mov  _shiftdraw_shift_65536_38,a
      000282 24 F7            [12]  720 	add	a,#0xff - 0x08
      000284 50 03            [24]  721 	jnc	00103$
                                    722 ;	./src/seven_segment.c:106: shift = 0;
      000286 75 10 00         [24]  723 	mov	_shiftdraw_shift_65536_38,#0x00
      000289                        724 00103$:
                                    725 ;	./src/seven_segment.c:109: delay_ms(1000);
      000289 90 03 E8         [24]  726 	mov	dptr,#0x03e8
                                    727 ;	./src/seven_segment.c:110: }
      00028C 02 02 8F         [24]  728 	ljmp	_delay_ms
                                    729 	.area CSEG    (CODE)
                                    730 	.area CONST   (CODE)
                                    731 	.area XINIT   (CODE)
                                    732 	.area CABS    (ABS,CODE)
