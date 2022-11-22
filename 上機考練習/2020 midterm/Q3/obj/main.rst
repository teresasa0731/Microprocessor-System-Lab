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
                                     12 	.globl _buzzer_Mi
                                     13 	.globl _buzzer_Re
                                     14 	.globl _buzzer_Do
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
                                    111 	.globl _stable_cnt_Mi
                                    112 	.globl _stable_stage_Mi
                                    113 	.globl _stable_cnt_Re
                                    114 	.globl _stable_stage_Re
                                    115 	.globl _stable_cnt_Do
                                    116 	.globl _stable_stage_Do
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
      000008                        232 _stable_stage_Do::
      000008                        233 	.ds 2
      00000A                        234 _stable_cnt_Do::
      00000A                        235 	.ds 2
      00000C                        236 _stable_stage_Re::
      00000C                        237 	.ds 2
      00000E                        238 _stable_cnt_Re::
      00000E                        239 	.ds 2
      000010                        240 _stable_stage_Mi::
      000010                        241 	.ds 2
      000012                        242 _stable_cnt_Mi::
      000012                        243 	.ds 2
                                    244 ;--------------------------------------------------------
                                    245 ; overlayable items in internal ram
                                    246 ;--------------------------------------------------------
                                    247 ;--------------------------------------------------------
                                    248 ; Stack segment in internal ram
                                    249 ;--------------------------------------------------------
                                    250 	.area SSEG
      000014                        251 __start__stack:
      000014                        252 	.ds	1
                                    253 
                                    254 ;--------------------------------------------------------
                                    255 ; indirectly addressable internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area ISEG    (DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area IABS    (ABS,DATA)
                                    262 	.area IABS    (ABS,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; bit data
                                    265 ;--------------------------------------------------------
                                    266 	.area BSEG    (BIT)
                                    267 ;--------------------------------------------------------
                                    268 ; paged external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area PSEG    (PAG,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; uninitialized external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XSEG    (XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XABS    (ABS,XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; initialized external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XISEG   (XDATA)
                                    283 	.area HOME    (CODE)
                                    284 	.area GSINIT0 (CODE)
                                    285 	.area GSINIT1 (CODE)
                                    286 	.area GSINIT2 (CODE)
                                    287 	.area GSINIT3 (CODE)
                                    288 	.area GSINIT4 (CODE)
                                    289 	.area GSINIT5 (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area CSEG    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; interrupt vector
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
      000000                        297 __interrupt_vect:
      000000 02 00 06         [24]  298 	ljmp	__sdcc_gsinit_startup
                                    299 ;--------------------------------------------------------
                                    300 ; global & static initialisations
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.area GSFINAL (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.globl __sdcc_gsinit_startup
                                    307 	.globl __sdcc_program_startup
                                    308 	.globl __start__stack
                                    309 	.globl __mcs51_genXINIT
                                    310 	.globl __mcs51_genXRAMCLEAR
                                    311 	.globl __mcs51_genRAMCLEAR
                                    312 ;	./src/main.c:13: int stable_stage_Do = 0;
      00005F E4               [12]  313 	clr	a
      000060 F5 08            [12]  314 	mov	_stable_stage_Do,a
      000062 F5 09            [12]  315 	mov	(_stable_stage_Do + 1),a
                                    316 ;	./src/main.c:14: int stable_cnt_Do = 0;
      000064 F5 0A            [12]  317 	mov	_stable_cnt_Do,a
      000066 F5 0B            [12]  318 	mov	(_stable_cnt_Do + 1),a
                                    319 ;	./src/main.c:15: int stable_stage_Re = 0;
      000068 F5 0C            [12]  320 	mov	_stable_stage_Re,a
      00006A F5 0D            [12]  321 	mov	(_stable_stage_Re + 1),a
                                    322 ;	./src/main.c:16: int stable_cnt_Re = 0;
      00006C F5 0E            [12]  323 	mov	_stable_cnt_Re,a
      00006E F5 0F            [12]  324 	mov	(_stable_cnt_Re + 1),a
                                    325 ;	./src/main.c:17: int stable_stage_Mi = 0;
      000070 F5 10            [12]  326 	mov	_stable_stage_Mi,a
      000072 F5 11            [12]  327 	mov	(_stable_stage_Mi + 1),a
                                    328 ;	./src/main.c:18: int stable_cnt_Mi = 0;
      000074 F5 12            [12]  329 	mov	_stable_cnt_Mi,a
      000076 F5 13            [12]  330 	mov	(_stable_cnt_Mi + 1),a
                                    331 	.area GSFINAL (CODE)
      000078 02 00 03         [24]  332 	ljmp	__sdcc_program_startup
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
      000003                        338 __sdcc_program_startup:
      000003 02 00 7B         [24]  339 	ljmp	_main
                                    340 ;	return from main will return to caller
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'main'
                                    347 ;------------------------------------------------------------
                                    348 ;	./src/main.c:21: int main(void) {
                                    349 ;	-----------------------------------------
                                    350 ;	 function main
                                    351 ;	-----------------------------------------
      00007B                        352 _main:
                           000007   353 	ar7 = 0x07
                           000006   354 	ar6 = 0x06
                           000005   355 	ar5 = 0x05
                           000004   356 	ar4 = 0x04
                           000003   357 	ar3 = 0x03
                           000002   358 	ar2 = 0x02
                           000001   359 	ar1 = 0x01
                           000000   360 	ar0 = 0x00
                                    361 ;	./src/main.c:23: while(1) {
      00007B                        362 00156$:
                                    363 ;	./src/main.c:28: if((PB2 == 0) && (stable_stage_Do == 1)) {
      00007B 20 B3 36         [24]  364 	jb	_INT1,00114$
      00007E 74 01            [12]  365 	mov	a,#0x01
      000080 B5 08 06         [24]  366 	cjne	a,_stable_stage_Do,00273$
      000083 14               [12]  367 	dec	a
      000084 B5 09 02         [24]  368 	cjne	a,(_stable_stage_Do + 1),00273$
      000087 80 02            [24]  369 	sjmp	00274$
      000089                        370 00273$:
      000089 80 29            [24]  371 	sjmp	00114$
      00008B                        372 00274$:
                                    373 ;	./src/main.c:29: if(stable_cnt_Do < scan_cnt) {
      00008B C3               [12]  374 	clr	c
      00008C E5 0A            [12]  375 	mov	a,_stable_cnt_Do
      00008E 94 0A            [12]  376 	subb	a,#0x0a
      000090 E5 0B            [12]  377 	mov	a,(_stable_cnt_Do + 1)
      000092 64 80            [12]  378 	xrl	a,#0x80
      000094 94 80            [12]  379 	subb	a,#0x80
      000096 50 54            [24]  380 	jnc	00115$
                                    381 ;	./src/main.c:30: stable_cnt_Do ++;
      000098 05 0A            [12]  382 	inc	_stable_cnt_Do
      00009A E4               [12]  383 	clr	a
      00009B B5 0A 02         [24]  384 	cjne	a,_stable_cnt_Do,00276$
      00009E 05 0B            [12]  385 	inc	(_stable_cnt_Do + 1)
      0000A0                        386 00276$:
                                    387 ;	./src/main.c:31: if(stable_cnt_Do == scan_cnt) {
      0000A0 74 0A            [12]  388 	mov	a,#0x0a
      0000A2 B5 0A 06         [24]  389 	cjne	a,_stable_cnt_Do,00277$
      0000A5 E4               [12]  390 	clr	a
      0000A6 B5 0B 02         [24]  391 	cjne	a,(_stable_cnt_Do + 1),00277$
      0000A9 80 02            [24]  392 	sjmp	00278$
      0000AB                        393 00277$:
      0000AB 80 3F            [24]  394 	sjmp	00115$
      0000AD                        395 00278$:
                                    396 ;	./src/main.c:32: stable_stage_Do = 0;
      0000AD E4               [12]  397 	clr	a
      0000AE F5 08            [12]  398 	mov	_stable_stage_Do,a
      0000B0 F5 09            [12]  399 	mov	(_stable_stage_Do + 1),a
      0000B2 80 38            [24]  400 	sjmp	00115$
      0000B4                        401 00114$:
                                    402 ;	./src/main.c:36: else if((PB2 == 1) && (stable_stage_Do == 0)) {
      0000B4 30 B3 30         [24]  403 	jnb	_INT1,00110$
      0000B7 E5 08            [12]  404 	mov	a,_stable_stage_Do
      0000B9 45 09            [12]  405 	orl	a,(_stable_stage_Do + 1)
      0000BB 70 2A            [24]  406 	jnz	00110$
                                    407 ;	./src/main.c:37: if(stable_cnt_Do < scan_cnt) {
      0000BD C3               [12]  408 	clr	c
      0000BE E5 0A            [12]  409 	mov	a,_stable_cnt_Do
      0000C0 94 0A            [12]  410 	subb	a,#0x0a
      0000C2 E5 0B            [12]  411 	mov	a,(_stable_cnt_Do + 1)
      0000C4 64 80            [12]  412 	xrl	a,#0x80
      0000C6 94 80            [12]  413 	subb	a,#0x80
      0000C8 50 22            [24]  414 	jnc	00115$
                                    415 ;	./src/main.c:38: stable_cnt_Do ++;
      0000CA 05 0A            [12]  416 	inc	_stable_cnt_Do
      0000CC E4               [12]  417 	clr	a
      0000CD B5 0A 02         [24]  418 	cjne	a,_stable_cnt_Do,00282$
      0000D0 05 0B            [12]  419 	inc	(_stable_cnt_Do + 1)
      0000D2                        420 00282$:
                                    421 ;	./src/main.c:39: if(stable_cnt_Do == scan_cnt) {
      0000D2 74 0A            [12]  422 	mov	a,#0x0a
      0000D4 B5 0A 06         [24]  423 	cjne	a,_stable_cnt_Do,00283$
      0000D7 E4               [12]  424 	clr	a
      0000D8 B5 0B 02         [24]  425 	cjne	a,(_stable_cnt_Do + 1),00283$
      0000DB 80 02            [24]  426 	sjmp	00284$
      0000DD                        427 00283$:
      0000DD 80 0D            [24]  428 	sjmp	00115$
      0000DF                        429 00284$:
                                    430 ;	./src/main.c:40: stable_stage_Do = 1;
      0000DF 75 08 01         [24]  431 	mov	_stable_stage_Do,#0x01
      0000E2 75 09 00         [24]  432 	mov	(_stable_stage_Do + 1),#0x00
      0000E5 80 05            [24]  433 	sjmp	00115$
      0000E7                        434 00110$:
                                    435 ;	./src/main.c:44: stable_cnt_Do = 0;
      0000E7 E4               [12]  436 	clr	a
      0000E8 F5 0A            [12]  437 	mov	_stable_cnt_Do,a
      0000EA F5 0B            [12]  438 	mov	(_stable_cnt_Do + 1),a
      0000EC                        439 00115$:
                                    440 ;	./src/main.c:48: if((PB3 == 0) && (stable_stage_Re == 1)) {
      0000EC 20 A0 36         [24]  441 	jb	_P2_0,00130$
      0000EF 74 01            [12]  442 	mov	a,#0x01
      0000F1 B5 0C 06         [24]  443 	cjne	a,_stable_stage_Re,00286$
      0000F4 14               [12]  444 	dec	a
      0000F5 B5 0D 02         [24]  445 	cjne	a,(_stable_stage_Re + 1),00286$
      0000F8 80 02            [24]  446 	sjmp	00287$
      0000FA                        447 00286$:
      0000FA 80 29            [24]  448 	sjmp	00130$
      0000FC                        449 00287$:
                                    450 ;	./src/main.c:49: if(stable_cnt_Re < scan_cnt) {
      0000FC C3               [12]  451 	clr	c
      0000FD E5 0E            [12]  452 	mov	a,_stable_cnt_Re
      0000FF 94 0A            [12]  453 	subb	a,#0x0a
      000101 E5 0F            [12]  454 	mov	a,(_stable_cnt_Re + 1)
      000103 64 80            [12]  455 	xrl	a,#0x80
      000105 94 80            [12]  456 	subb	a,#0x80
      000107 50 54            [24]  457 	jnc	00131$
                                    458 ;	./src/main.c:50: stable_cnt_Re ++;
      000109 05 0E            [12]  459 	inc	_stable_cnt_Re
      00010B E4               [12]  460 	clr	a
      00010C B5 0E 02         [24]  461 	cjne	a,_stable_cnt_Re,00289$
      00010F 05 0F            [12]  462 	inc	(_stable_cnt_Re + 1)
      000111                        463 00289$:
                                    464 ;	./src/main.c:51: if(stable_cnt_Re == scan_cnt) {
      000111 74 0A            [12]  465 	mov	a,#0x0a
      000113 B5 0E 06         [24]  466 	cjne	a,_stable_cnt_Re,00290$
      000116 E4               [12]  467 	clr	a
      000117 B5 0F 02         [24]  468 	cjne	a,(_stable_cnt_Re + 1),00290$
      00011A 80 02            [24]  469 	sjmp	00291$
      00011C                        470 00290$:
      00011C 80 3F            [24]  471 	sjmp	00131$
      00011E                        472 00291$:
                                    473 ;	./src/main.c:52: stable_stage_Re = 0;
      00011E E4               [12]  474 	clr	a
      00011F F5 0C            [12]  475 	mov	_stable_stage_Re,a
      000121 F5 0D            [12]  476 	mov	(_stable_stage_Re + 1),a
      000123 80 38            [24]  477 	sjmp	00131$
      000125                        478 00130$:
                                    479 ;	./src/main.c:56: else if((PB3 == 1) && (stable_stage_Re == 0)) {
      000125 30 A0 30         [24]  480 	jnb	_P2_0,00126$
      000128 E5 0C            [12]  481 	mov	a,_stable_stage_Re
      00012A 45 0D            [12]  482 	orl	a,(_stable_stage_Re + 1)
      00012C 70 2A            [24]  483 	jnz	00126$
                                    484 ;	./src/main.c:57: if(stable_cnt_Re < scan_cnt) {
      00012E C3               [12]  485 	clr	c
      00012F E5 0E            [12]  486 	mov	a,_stable_cnt_Re
      000131 94 0A            [12]  487 	subb	a,#0x0a
      000133 E5 0F            [12]  488 	mov	a,(_stable_cnt_Re + 1)
      000135 64 80            [12]  489 	xrl	a,#0x80
      000137 94 80            [12]  490 	subb	a,#0x80
      000139 50 22            [24]  491 	jnc	00131$
                                    492 ;	./src/main.c:58: stable_cnt_Re ++;
      00013B 05 0E            [12]  493 	inc	_stable_cnt_Re
      00013D E4               [12]  494 	clr	a
      00013E B5 0E 02         [24]  495 	cjne	a,_stable_cnt_Re,00295$
      000141 05 0F            [12]  496 	inc	(_stable_cnt_Re + 1)
      000143                        497 00295$:
                                    498 ;	./src/main.c:59: if(stable_cnt_Re == scan_cnt) {
      000143 74 0A            [12]  499 	mov	a,#0x0a
      000145 B5 0E 06         [24]  500 	cjne	a,_stable_cnt_Re,00296$
      000148 E4               [12]  501 	clr	a
      000149 B5 0F 02         [24]  502 	cjne	a,(_stable_cnt_Re + 1),00296$
      00014C 80 02            [24]  503 	sjmp	00297$
      00014E                        504 00296$:
      00014E 80 0D            [24]  505 	sjmp	00131$
      000150                        506 00297$:
                                    507 ;	./src/main.c:60: stable_stage_Re = 1;
      000150 75 0C 01         [24]  508 	mov	_stable_stage_Re,#0x01
      000153 75 0D 00         [24]  509 	mov	(_stable_stage_Re + 1),#0x00
      000156 80 05            [24]  510 	sjmp	00131$
      000158                        511 00126$:
                                    512 ;	./src/main.c:64: stable_cnt_Re = 0;
      000158 E4               [12]  513 	clr	a
      000159 F5 0E            [12]  514 	mov	_stable_cnt_Re,a
      00015B F5 0F            [12]  515 	mov	(_stable_cnt_Re + 1),a
      00015D                        516 00131$:
                                    517 ;	./src/main.c:68: if((PB4 == 0) && (stable_stage_Mi == 1)) {
      00015D 20 A1 36         [24]  518 	jb	_P2_1,00146$
      000160 74 01            [12]  519 	mov	a,#0x01
      000162 B5 10 06         [24]  520 	cjne	a,_stable_stage_Mi,00299$
      000165 14               [12]  521 	dec	a
      000166 B5 11 02         [24]  522 	cjne	a,(_stable_stage_Mi + 1),00299$
      000169 80 02            [24]  523 	sjmp	00300$
      00016B                        524 00299$:
      00016B 80 29            [24]  525 	sjmp	00146$
      00016D                        526 00300$:
                                    527 ;	./src/main.c:69: if(stable_cnt_Mi < scan_cnt) {
      00016D C3               [12]  528 	clr	c
      00016E E5 12            [12]  529 	mov	a,_stable_cnt_Mi
      000170 94 0A            [12]  530 	subb	a,#0x0a
      000172 E5 13            [12]  531 	mov	a,(_stable_cnt_Mi + 1)
      000174 64 80            [12]  532 	xrl	a,#0x80
      000176 94 80            [12]  533 	subb	a,#0x80
      000178 50 54            [24]  534 	jnc	00147$
                                    535 ;	./src/main.c:70: stable_cnt_Mi ++;
      00017A 05 12            [12]  536 	inc	_stable_cnt_Mi
      00017C E4               [12]  537 	clr	a
      00017D B5 12 02         [24]  538 	cjne	a,_stable_cnt_Mi,00302$
      000180 05 13            [12]  539 	inc	(_stable_cnt_Mi + 1)
      000182                        540 00302$:
                                    541 ;	./src/main.c:71: if(stable_cnt_Mi == scan_cnt) {
      000182 74 0A            [12]  542 	mov	a,#0x0a
      000184 B5 12 06         [24]  543 	cjne	a,_stable_cnt_Mi,00303$
      000187 E4               [12]  544 	clr	a
      000188 B5 13 02         [24]  545 	cjne	a,(_stable_cnt_Mi + 1),00303$
      00018B 80 02            [24]  546 	sjmp	00304$
      00018D                        547 00303$:
      00018D 80 3F            [24]  548 	sjmp	00147$
      00018F                        549 00304$:
                                    550 ;	./src/main.c:72: stable_stage_Mi = 0;
      00018F E4               [12]  551 	clr	a
      000190 F5 10            [12]  552 	mov	_stable_stage_Mi,a
      000192 F5 11            [12]  553 	mov	(_stable_stage_Mi + 1),a
      000194 80 38            [24]  554 	sjmp	00147$
      000196                        555 00146$:
                                    556 ;	./src/main.c:76: else if((PB4 == 1) && (stable_stage_Mi == 0)) {
      000196 30 A1 30         [24]  557 	jnb	_P2_1,00142$
      000199 E5 10            [12]  558 	mov	a,_stable_stage_Mi
      00019B 45 11            [12]  559 	orl	a,(_stable_stage_Mi + 1)
      00019D 70 2A            [24]  560 	jnz	00142$
                                    561 ;	./src/main.c:77: if(stable_cnt_Mi < scan_cnt) {
      00019F C3               [12]  562 	clr	c
      0001A0 E5 12            [12]  563 	mov	a,_stable_cnt_Mi
      0001A2 94 0A            [12]  564 	subb	a,#0x0a
      0001A4 E5 13            [12]  565 	mov	a,(_stable_cnt_Mi + 1)
      0001A6 64 80            [12]  566 	xrl	a,#0x80
      0001A8 94 80            [12]  567 	subb	a,#0x80
      0001AA 50 22            [24]  568 	jnc	00147$
                                    569 ;	./src/main.c:78: stable_cnt_Mi ++;
      0001AC 05 12            [12]  570 	inc	_stable_cnt_Mi
      0001AE E4               [12]  571 	clr	a
      0001AF B5 12 02         [24]  572 	cjne	a,_stable_cnt_Mi,00308$
      0001B2 05 13            [12]  573 	inc	(_stable_cnt_Mi + 1)
      0001B4                        574 00308$:
                                    575 ;	./src/main.c:79: if(stable_cnt_Mi == scan_cnt) {
      0001B4 74 0A            [12]  576 	mov	a,#0x0a
      0001B6 B5 12 06         [24]  577 	cjne	a,_stable_cnt_Mi,00309$
      0001B9 E4               [12]  578 	clr	a
      0001BA B5 13 02         [24]  579 	cjne	a,(_stable_cnt_Mi + 1),00309$
      0001BD 80 02            [24]  580 	sjmp	00310$
      0001BF                        581 00309$:
      0001BF 80 0D            [24]  582 	sjmp	00147$
      0001C1                        583 00310$:
                                    584 ;	./src/main.c:80: stable_stage_Mi = 1;
      0001C1 75 10 01         [24]  585 	mov	_stable_stage_Mi,#0x01
      0001C4 75 11 00         [24]  586 	mov	(_stable_stage_Mi + 1),#0x00
      0001C7 80 05            [24]  587 	sjmp	00147$
      0001C9                        588 00142$:
                                    589 ;	./src/main.c:84: stable_cnt_Mi = 0;
      0001C9 E4               [12]  590 	clr	a
      0001CA F5 12            [12]  591 	mov	_stable_cnt_Mi,a
      0001CC F5 13            [12]  592 	mov	(_stable_cnt_Mi + 1),a
      0001CE                        593 00147$:
                                    594 ;	./src/main.c:91: if(stable_stage_Do == 0)
      0001CE E5 08            [12]  595 	mov	a,_stable_stage_Do
      0001D0 45 09            [12]  596 	orl	a,(_stable_stage_Do + 1)
      0001D2 70 0E            [24]  597 	jnz	00150$
                                    598 ;	./src/main.c:93: P1_7 = 0;
                                    599 ;	assignBit
      0001D4 C2 97            [12]  600 	clr	_P1_7
                                    601 ;	./src/main.c:95: P3_7 = 1;
                                    602 ;	assignBit
      0001D6 D2 B7            [12]  603 	setb	_P3_7
                                    604 ;	./src/main.c:96: buzzer_Do();
      0001D8 12 02 10         [24]  605 	lcall	_buzzer_Do
                                    606 ;	./src/main.c:97: P3_7 = 0;
                                    607 ;	assignBit
      0001DB C2 B7            [12]  608 	clr	_P3_7
                                    609 ;	./src/main.c:98: buzzer_Do();
      0001DD 12 02 10         [24]  610 	lcall	_buzzer_Do
                                    611 ;	./src/main.c:100: P1_7 = 1;
                                    612 ;	assignBit
      0001E0 D2 97            [12]  613 	setb	_P1_7
      0001E2                        614 00150$:
                                    615 ;	./src/main.c:102: if(stable_stage_Re == 0)
      0001E2 E5 0C            [12]  616 	mov	a,_stable_stage_Re
      0001E4 45 0D            [12]  617 	orl	a,(_stable_stage_Re + 1)
      0001E6 70 0E            [24]  618 	jnz	00152$
                                    619 ;	./src/main.c:104: P1_5 = 0;
                                    620 ;	assignBit
      0001E8 C2 95            [12]  621 	clr	_P1_5
                                    622 ;	./src/main.c:106: P3_7 = 1;
                                    623 ;	assignBit
      0001EA D2 B7            [12]  624 	setb	_P3_7
                                    625 ;	./src/main.c:107: buzzer_Re();
      0001EC 12 02 1E         [24]  626 	lcall	_buzzer_Re
                                    627 ;	./src/main.c:108: P3_7 = 0;
                                    628 ;	assignBit
      0001EF C2 B7            [12]  629 	clr	_P3_7
                                    630 ;	./src/main.c:109: buzzer_Re();
      0001F1 12 02 1E         [24]  631 	lcall	_buzzer_Re
                                    632 ;	./src/main.c:111: P1_5 = 1;
                                    633 ;	assignBit
      0001F4 D2 95            [12]  634 	setb	_P1_5
      0001F6                        635 00152$:
                                    636 ;	./src/main.c:113: if(stable_stage_Mi == 0)
      0001F6 E5 10            [12]  637 	mov	a,_stable_stage_Mi
      0001F8 45 11            [12]  638 	orl	a,(_stable_stage_Mi + 1)
      0001FA 60 03            [24]  639 	jz	00313$
      0001FC 02 00 7B         [24]  640 	ljmp	00156$
      0001FF                        641 00313$:
                                    642 ;	./src/main.c:115: P1_3 = 0;
                                    643 ;	assignBit
      0001FF C2 93            [12]  644 	clr	_P1_3
                                    645 ;	./src/main.c:117: P3_7 = 1;
                                    646 ;	assignBit
      000201 D2 B7            [12]  647 	setb	_P3_7
                                    648 ;	./src/main.c:118: buzzer_Mi();
      000203 12 02 2B         [24]  649 	lcall	_buzzer_Mi
                                    650 ;	./src/main.c:119: P3_7 = 0;
                                    651 ;	assignBit
      000206 C2 B7            [12]  652 	clr	_P3_7
                                    653 ;	./src/main.c:120: buzzer_Mi();
      000208 12 02 2B         [24]  654 	lcall	_buzzer_Mi
                                    655 ;	./src/main.c:122: P1_3 = 1;
                                    656 ;	assignBit
      00020B D2 93            [12]  657 	setb	_P1_3
                                    658 ;	./src/main.c:125: }
      00020D 02 00 7B         [24]  659 	ljmp	00156$
                                    660 	.area CSEG    (CODE)
                                    661 	.area CONST   (CODE)
                                    662 	.area XINIT   (CODE)
                                    663 	.area CABS    (ABS,CODE)
