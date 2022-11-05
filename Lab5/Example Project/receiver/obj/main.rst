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
                                     11 	.globl _uart_isr
                                     12 	.globl _main
                                     13 	.globl _Initial
                                     14 	.globl _Write7219
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
                                    111 	.globl _received_flag
                                    112 	.globl _received_data
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _received_data::
      000008                        229 	.ds 1
      000009                        230 _received_flag::
      000009                        231 	.ds 1
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram
                                    234 ;--------------------------------------------------------
                                    235 ;--------------------------------------------------------
                                    236 ; Stack segment in internal ram
                                    237 ;--------------------------------------------------------
                                    238 	.area SSEG
      000013                        239 __start__stack:
      000013                        240 	.ds	1
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
      000000 02 00 29         [24]  286 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  287 	reti
      000004                        288 	.ds	7
      00000B 32               [24]  289 	reti
      00000C                        290 	.ds	7
      000013 32               [24]  291 	reti
      000014                        292 	.ds	7
      00001B 32               [24]  293 	reti
      00001C                        294 	.ds	7
      000023 02 00 AF         [24]  295 	ljmp	_uart_isr
                                    296 ;--------------------------------------------------------
                                    297 ; global & static initialisations
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME    (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.globl __sdcc_gsinit_startup
                                    304 	.globl __sdcc_program_startup
                                    305 	.globl __start__stack
                                    306 	.globl __mcs51_genXINIT
                                    307 	.globl __mcs51_genXRAMCLEAR
                                    308 	.globl __mcs51_genRAMCLEAR
                                    309 ;	./src/main.c:6: unsigned char received_flag = 0;
      000082 75 09 00         [24]  310 	mov	_received_flag,#0x00
                                    311 	.area GSFINAL (CODE)
      000088 02 00 26         [24]  312 	ljmp	__sdcc_program_startup
                                    313 ;--------------------------------------------------------
                                    314 ; Home
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
                                    317 	.area HOME    (CODE)
      000026                        318 __sdcc_program_startup:
      000026 02 00 8B         [24]  319 	ljmp	_main
                                    320 ;	return from main will return to caller
                                    321 ;--------------------------------------------------------
                                    322 ; code
                                    323 ;--------------------------------------------------------
                                    324 	.area CSEG    (CODE)
                                    325 ;------------------------------------------------------------
                                    326 ;Allocation info for local variables in function 'main'
                                    327 ;------------------------------------------------------------
                                    328 ;	./src/main.c:8: void main(void)
                                    329 ;	-----------------------------------------
                                    330 ;	 function main
                                    331 ;	-----------------------------------------
      00008B                        332 _main:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
                                    341 ;	./src/main.c:11: TMOD = 0x20;			// set timer1 to mode2 
      00008B 75 89 20         [24]  342 	mov	_TMOD,#0x20
                                    343 ;	./src/main.c:12: SCON = 0x50;      // set serial mode1
      00008E 75 98 50         [24]  344 	mov	_SCON,#0x50
                                    345 ;	./src/main.c:13: TH1 = 250;     		// baudrate = 9600, fosc = 11.0592MHz
      000091 75 8D FA         [24]  346 	mov	_TH1,#0xfa
                                    347 ;	./src/main.c:14: TR1 = 1;				  // enable timer = 1
                                    348 ;	assignBit
      000094 D2 8E            [12]  349 	setb	_TR1
                                    350 ;	./src/main.c:15: IE = 0x90;				// enable serial port interrupt
      000096 75 A8 90         [24]  351 	mov	_IE,#0x90
                                    352 ;	./src/main.c:17: Initial();     	  // 7-seg initialization  
      000099 12 01 56         [24]  353 	lcall	_Initial
                                    354 ;	./src/main.c:19: while(1) {
      00009C                        355 00104$:
                                    356 ;	./src/main.c:21: if (received_flag == 1) {
      00009C 74 01            [12]  357 	mov	a,#0x01
      00009E B5 09 FB         [24]  358 	cjne	a,_received_flag,00104$
                                    359 ;	./src/main.c:22: Write7219(1, received_data);
      0000A1 85 08 0A         [24]  360 	mov	_Write7219_PARM_2,_received_data
      0000A4 75 82 01         [24]  361 	mov	dpl,#0x01
      0000A7 12 00 F2         [24]  362 	lcall	_Write7219
                                    363 ;	./src/main.c:23: received_flag = 0;
      0000AA 75 09 00         [24]  364 	mov	_received_flag,#0x00
                                    365 ;	./src/main.c:26: }
      0000AD 80 ED            [24]  366 	sjmp	00104$
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'uart_isr'
                                    369 ;------------------------------------------------------------
                                    370 ;	./src/main.c:29: void uart_isr(void) __interrupt (4) 
                                    371 ;	-----------------------------------------
                                    372 ;	 function uart_isr
                                    373 ;	-----------------------------------------
      0000AF                        374 _uart_isr:
                                    375 ;	./src/main.c:31: if( RI == 1) {
                                    376 ;	./src/main.c:32: RI = 0;                  // refresh RI
                                    377 ;	assignBit
      0000AF 10 98 02         [24]  378 	jbc	_RI,00109$
      0000B2 80 06            [24]  379 	sjmp	00103$
      0000B4                        380 00109$:
                                    381 ;	./src/main.c:33: received_data = SBUF;    // receive data from SBUF
      0000B4 85 99 08         [24]  382 	mov	_received_data,_SBUF
                                    383 ;	./src/main.c:34: received_flag = 1;       // receiving finished
      0000B7 75 09 01         [24]  384 	mov	_received_flag,#0x01
      0000BA                        385 00103$:
                                    386 ;	./src/main.c:36: }
      0000BA 32               [24]  387 	reti
                                    388 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    389 ;	eliminated unneeded push/pop not_psw
                                    390 ;	eliminated unneeded push/pop dpl
                                    391 ;	eliminated unneeded push/pop dph
                                    392 ;	eliminated unneeded push/pop b
                                    393 ;	eliminated unneeded push/pop acc
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
                                    396 	.area XINIT   (CODE)
                                    397 	.area CABS    (ABS,CODE)
