                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.8 #13684 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module draw
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 	.globl _Writesingle7219
                                     13 	.globl _Write7219
                                     14 	.globl _singledraw_PARM_2
                                     15 	.globl _Initial
                                     16 	.globl _draw
                                     17 	.globl _singledraw
                                     18 	.globl _shiftdraw
                                     19 ;--------------------------------------------------------
                                     20 ; special function registers
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; special function bits
                                     26 ;--------------------------------------------------------
                                     27 	.area RSEG    (ABS,DATA)
      000000                         28 	.org 0x0000
                                     29 ;--------------------------------------------------------
                                     30 ; overlayable register banks
                                     31 ;--------------------------------------------------------
                                     32 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         33 	.ds 8
                                     34 ;--------------------------------------------------------
                                     35 ; internal ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DSEG    (DATA)
      000023                         38 _singledraw_PARM_2:
      000023                         39 	.ds 3
      000026                         40 _shiftdraw_shift_65536_21:
      000026                         41 	.ds 1
                                     42 ;--------------------------------------------------------
                                     43 ; overlayable items in internal ram
                                     44 ;--------------------------------------------------------
                                     45 ;--------------------------------------------------------
                                     46 ; indirectly addressable internal ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area ISEG    (DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; absolute internal ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area IABS    (ABS,DATA)
                                     53 	.area IABS    (ABS,DATA)
                                     54 ;--------------------------------------------------------
                                     55 ; bit data
                                     56 ;--------------------------------------------------------
                                     57 	.area BSEG    (BIT)
                                     58 ;--------------------------------------------------------
                                     59 ; paged external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area PSEG    (PAG,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; uninitialized external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XSEG    (XDATA)
                                     66 ;--------------------------------------------------------
                                     67 ; absolute external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area XABS    (ABS,XDATA)
                                     70 ;--------------------------------------------------------
                                     71 ; initialized external ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area XISEG   (XDATA)
                                     74 	.area HOME    (CODE)
                                     75 	.area GSINIT0 (CODE)
                                     76 	.area GSINIT1 (CODE)
                                     77 	.area GSINIT2 (CODE)
                                     78 	.area GSINIT3 (CODE)
                                     79 	.area GSINIT4 (CODE)
                                     80 	.area GSINIT5 (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area CSEG    (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area GSINIT  (CODE)
                                     89 	.area GSFINAL (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 ;------------------------------------------------------------
                                     92 ;Allocation info for local variables in function 'shiftdraw'
                                     93 ;------------------------------------------------------------
                                     94 ;shift                     Allocated with name '_shiftdraw_shift_65536_21'
                                     95 ;picture                   Allocated to registers r5 r6 r7 
                                     96 ;i                         Allocated to registers r4 
                                     97 ;------------------------------------------------------------
                                     98 ;	./src/draw.c:45: static char shift = 0;
      00005F 75 26 00         [24]   99 	mov	_shiftdraw_shift_65536_21,#0x00
                                    100 ;--------------------------------------------------------
                                    101 ; Home
                                    102 ;--------------------------------------------------------
                                    103 	.area HOME    (CODE)
                                    104 	.area HOME    (CODE)
                                    105 ;--------------------------------------------------------
                                    106 ; code
                                    107 ;--------------------------------------------------------
                                    108 	.area CSEG    (CODE)
                                    109 ;------------------------------------------------------------
                                    110 ;Allocation info for local variables in function 'Initial'
                                    111 ;------------------------------------------------------------
                                    112 ;i                         Allocated to registers r7 
                                    113 ;------------------------------------------------------------
                                    114 ;	./src/draw.c:6: void Initial(void)
                                    115 ;	-----------------------------------------
                                    116 ;	 function Initial
                                    117 ;	-----------------------------------------
      000163                        118 _Initial:
                           000007   119 	ar7 = 0x07
                           000006   120 	ar6 = 0x06
                           000005   121 	ar5 = 0x05
                           000004   122 	ar4 = 0x04
                           000003   123 	ar3 = 0x03
                           000002   124 	ar2 = 0x02
                           000001   125 	ar1 = 0x01
                           000000   126 	ar0 = 0x00
                                    127 ;	./src/draw.c:10: Write7219(SHUT_DOWN, 0x01);         // normal mode(0xX1)
      000163 75 20 01         [24]  128 	mov	_Write7219_PARM_2,#0x01
      000166 75 82 0C         [24]  129 	mov	dpl,#0x0c
      000169 12 00 FF         [24]  130 	lcall	_Write7219
                                    131 ;	./src/draw.c:11: Write7219(DISPLAY_TEST, 0x00); 
      00016C 75 20 00         [24]  132 	mov	_Write7219_PARM_2,#0x00
      00016F 75 82 0F         [24]  133 	mov	dpl,#0x0f
      000172 12 00 FF         [24]  134 	lcall	_Write7219
                                    135 ;	./src/draw.c:12: Write7219(DECODE_MODE, 0x00);       // select non-decode mode
      000175 75 20 00         [24]  136 	mov	_Write7219_PARM_2,#0x00
      000178 75 82 09         [24]  137 	mov	dpl,#0x09
      00017B 12 00 FF         [24]  138 	lcall	_Write7219
                                    139 ;	./src/draw.c:13: Write7219(SCAN_LIMIT, 0x07);        // use all 8 LED
      00017E 75 20 07         [24]  140 	mov	_Write7219_PARM_2,#0x07
      000181 75 82 0B         [24]  141 	mov	dpl,#0x0b
      000184 12 00 FF         [24]  142 	lcall	_Write7219
                                    143 ;	./src/draw.c:14: Write7219(INTENSITY, 0x00);         // set up intensity
      000187 75 20 00         [24]  144 	mov	_Write7219_PARM_2,#0x00
      00018A 75 82 0A         [24]  145 	mov	dpl,#0x0a
      00018D 12 00 FF         [24]  146 	lcall	_Write7219
                                    147 ;	./src/draw.c:16: for(i=1; i<=8; i++) {
      000190 7F 01            [12]  148 	mov	r7,#0x01
      000192                        149 00102$:
                                    150 ;	./src/draw.c:17: Write7219(i, 0x00);             // turn off all LED
      000192 75 20 00         [24]  151 	mov	_Write7219_PARM_2,#0x00
      000195 8F 82            [24]  152 	mov	dpl,r7
      000197 C0 07            [24]  153 	push	ar7
      000199 12 00 FF         [24]  154 	lcall	_Write7219
      00019C D0 07            [24]  155 	pop	ar7
                                    156 ;	./src/draw.c:16: for(i=1; i<=8; i++) {
      00019E 0F               [12]  157 	inc	r7
      00019F EF               [12]  158 	mov	a,r7
      0001A0 24 F7            [12]  159 	add	a,#0xff - 0x08
      0001A2 50 EE            [24]  160 	jnc	00102$
                                    161 ;	./src/draw.c:19: }
      0001A4 22               [24]  162 	ret
                                    163 ;------------------------------------------------------------
                                    164 ;Allocation info for local variables in function 'draw'
                                    165 ;------------------------------------------------------------
                                    166 ;picture                   Allocated to registers r5 r6 r7 
                                    167 ;i                         Allocated to registers r4 
                                    168 ;------------------------------------------------------------
                                    169 ;	./src/draw.c:22: void draw(unsigned char *picture)
                                    170 ;	-----------------------------------------
                                    171 ;	 function draw
                                    172 ;	-----------------------------------------
      0001A5                        173 _draw:
      0001A5 AD 82            [24]  174 	mov	r5,dpl
      0001A7 AE 83            [24]  175 	mov	r6,dph
      0001A9 AF F0            [24]  176 	mov	r7,b
                                    177 ;	./src/draw.c:26: for(i=1; i<=8; i++) {
      0001AB 7C 01            [12]  178 	mov	r4,#0x01
      0001AD                        179 00102$:
                                    180 ;	./src/draw.c:27: Write7219(i, picture[i-1]);
      0001AD 8C 02            [24]  181 	mov	ar2,r4
      0001AF 7B 00            [12]  182 	mov	r3,#0x00
      0001B1 1A               [12]  183 	dec	r2
      0001B2 BA FF 01         [24]  184 	cjne	r2,#0xff,00111$
      0001B5 1B               [12]  185 	dec	r3
      0001B6                        186 00111$:
      0001B6 EA               [12]  187 	mov	a,r2
      0001B7 2D               [12]  188 	add	a,r5
      0001B8 FA               [12]  189 	mov	r2,a
      0001B9 EB               [12]  190 	mov	a,r3
      0001BA 3E               [12]  191 	addc	a,r6
      0001BB F9               [12]  192 	mov	r1,a
      0001BC 8F 03            [24]  193 	mov	ar3,r7
      0001BE 8A 82            [24]  194 	mov	dpl,r2
      0001C0 89 83            [24]  195 	mov	dph,r1
      0001C2 8B F0            [24]  196 	mov	b,r3
      0001C4 12 02 E9         [24]  197 	lcall	__gptrget
      0001C7 F5 20            [12]  198 	mov	_Write7219_PARM_2,a
      0001C9 8C 82            [24]  199 	mov	dpl,r4
      0001CB C0 07            [24]  200 	push	ar7
      0001CD C0 06            [24]  201 	push	ar6
      0001CF C0 05            [24]  202 	push	ar5
      0001D1 C0 04            [24]  203 	push	ar4
      0001D3 12 00 FF         [24]  204 	lcall	_Write7219
      0001D6 D0 04            [24]  205 	pop	ar4
      0001D8 D0 05            [24]  206 	pop	ar5
      0001DA D0 06            [24]  207 	pop	ar6
      0001DC D0 07            [24]  208 	pop	ar7
                                    209 ;	./src/draw.c:26: for(i=1; i<=8; i++) {
      0001DE 0C               [12]  210 	inc	r4
      0001DF EC               [12]  211 	mov	a,r4
      0001E0 24 F7            [12]  212 	add	a,#0xff - 0x08
      0001E2 50 C9            [24]  213 	jnc	00102$
                                    214 ;	./src/draw.c:29: }
      0001E4 22               [24]  215 	ret
                                    216 ;------------------------------------------------------------
                                    217 ;Allocation info for local variables in function 'singledraw'
                                    218 ;------------------------------------------------------------
                                    219 ;picture                   Allocated with name '_singledraw_PARM_2'
                                    220 ;chosen                    Allocated to registers r7 
                                    221 ;i                         Allocated to registers r6 
                                    222 ;------------------------------------------------------------
                                    223 ;	./src/draw.c:32: void singledraw(unsigned char chosen,unsigned char *picture)
                                    224 ;	-----------------------------------------
                                    225 ;	 function singledraw
                                    226 ;	-----------------------------------------
      0001E5                        227 _singledraw:
      0001E5 AF 82            [24]  228 	mov	r7,dpl
                                    229 ;	./src/draw.c:36: for(i=1; i<=8; i++) {
      0001E7 7E 01            [12]  230 	mov	r6,#0x01
      0001E9                        231 00102$:
                                    232 ;	./src/draw.c:37: Writesingle7219(chosen, i, picture[i-1]);
      0001E9 8E 04            [24]  233 	mov	ar4,r6
      0001EB 7D 00            [12]  234 	mov	r5,#0x00
      0001ED 1C               [12]  235 	dec	r4
      0001EE BC FF 01         [24]  236 	cjne	r4,#0xff,00111$
      0001F1 1D               [12]  237 	dec	r5
      0001F2                        238 00111$:
      0001F2 EC               [12]  239 	mov	a,r4
      0001F3 25 23            [12]  240 	add	a,_singledraw_PARM_2
      0001F5 FC               [12]  241 	mov	r4,a
      0001F6 ED               [12]  242 	mov	a,r5
      0001F7 35 24            [12]  243 	addc	a,(_singledraw_PARM_2 + 1)
      0001F9 FD               [12]  244 	mov	r5,a
      0001FA AB 25            [24]  245 	mov	r3,(_singledraw_PARM_2 + 2)
      0001FC 8C 82            [24]  246 	mov	dpl,r4
      0001FE 8D 83            [24]  247 	mov	dph,r5
      000200 8B F0            [24]  248 	mov	b,r3
      000202 12 02 E9         [24]  249 	lcall	__gptrget
      000205 F5 22            [12]  250 	mov	_Writesingle7219_PARM_3,a
      000207 8E 21            [24]  251 	mov	_Writesingle7219_PARM_2,r6
      000209 8F 82            [24]  252 	mov	dpl,r7
      00020B C0 07            [24]  253 	push	ar7
      00020D C0 06            [24]  254 	push	ar6
      00020F 12 01 1E         [24]  255 	lcall	_Writesingle7219
      000212 D0 06            [24]  256 	pop	ar6
      000214 D0 07            [24]  257 	pop	ar7
                                    258 ;	./src/draw.c:36: for(i=1; i<=8; i++) {
      000216 0E               [12]  259 	inc	r6
      000217 EE               [12]  260 	mov	a,r6
      000218 24 F7            [12]  261 	add	a,#0xff - 0x08
      00021A 50 CD            [24]  262 	jnc	00102$
                                    263 ;	./src/draw.c:39: }
      00021C 22               [24]  264 	ret
                                    265 ;------------------------------------------------------------
                                    266 ;Allocation info for local variables in function 'shiftdraw'
                                    267 ;------------------------------------------------------------
                                    268 ;shift                     Allocated with name '_shiftdraw_shift_65536_21'
                                    269 ;picture                   Allocated to registers r5 r6 r7 
                                    270 ;i                         Allocated to registers r4 
                                    271 ;------------------------------------------------------------
                                    272 ;	./src/draw.c:42: void shiftdraw(unsigned char *picture)
                                    273 ;	-----------------------------------------
                                    274 ;	 function shiftdraw
                                    275 ;	-----------------------------------------
      00021D                        276 _shiftdraw:
      00021D AD 82            [24]  277 	mov	r5,dpl
      00021F AE 83            [24]  278 	mov	r6,dph
      000221 AF F0            [24]  279 	mov	r7,b
                                    280 ;	./src/draw.c:47: for(i=8; i>=1; i--) {
      000223 7C 08            [12]  281 	mov	r4,#0x08
      000225                        282 00104$:
                                    283 ;	./src/draw.c:48: Writesingle7219(1, i, picture[(shift-i+8) % 8]);
      000225 AA 26            [24]  284 	mov	r2,_shiftdraw_shift_65536_21
      000227 7B 00            [12]  285 	mov	r3,#0x00
      000229 8C 00            [24]  286 	mov	ar0,r4
      00022B 79 00            [12]  287 	mov	r1,#0x00
      00022D EA               [12]  288 	mov	a,r2
      00022E C3               [12]  289 	clr	c
      00022F 98               [12]  290 	subb	a,r0
      000230 FA               [12]  291 	mov	r2,a
      000231 EB               [12]  292 	mov	a,r3
      000232 99               [12]  293 	subb	a,r1
      000233 FB               [12]  294 	mov	r3,a
      000234 74 08            [12]  295 	mov	a,#0x08
      000236 2A               [12]  296 	add	a,r2
      000237 F5 82            [12]  297 	mov	dpl,a
      000239 E4               [12]  298 	clr	a
      00023A 3B               [12]  299 	addc	a,r3
      00023B F5 83            [12]  300 	mov	dph,a
      00023D 75 27 08         [24]  301 	mov	__modsint_PARM_2,#0x08
                                    302 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000240 89 28            [24]  303 	mov	(__modsint_PARM_2 + 1),r1
      000242 C0 07            [24]  304 	push	ar7
      000244 C0 06            [24]  305 	push	ar6
      000246 C0 05            [24]  306 	push	ar5
      000248 C0 04            [24]  307 	push	ar4
      00024A 12 03 05         [24]  308 	lcall	__modsint
      00024D AA 82            [24]  309 	mov	r2,dpl
      00024F AB 83            [24]  310 	mov	r3,dph
      000251 D0 04            [24]  311 	pop	ar4
      000253 D0 05            [24]  312 	pop	ar5
      000255 D0 06            [24]  313 	pop	ar6
      000257 D0 07            [24]  314 	pop	ar7
      000259 EA               [12]  315 	mov	a,r2
      00025A 2D               [12]  316 	add	a,r5
      00025B FA               [12]  317 	mov	r2,a
      00025C EB               [12]  318 	mov	a,r3
      00025D 3E               [12]  319 	addc	a,r6
      00025E F9               [12]  320 	mov	r1,a
      00025F 8F 03            [24]  321 	mov	ar3,r7
      000261 8A 82            [24]  322 	mov	dpl,r2
      000263 89 83            [24]  323 	mov	dph,r1
      000265 8B F0            [24]  324 	mov	b,r3
      000267 12 02 E9         [24]  325 	lcall	__gptrget
      00026A F5 22            [12]  326 	mov	_Writesingle7219_PARM_3,a
      00026C 8C 21            [24]  327 	mov	_Writesingle7219_PARM_2,r4
      00026E 75 82 01         [24]  328 	mov	dpl,#0x01
      000271 C0 07            [24]  329 	push	ar7
      000273 C0 06            [24]  330 	push	ar6
      000275 C0 05            [24]  331 	push	ar5
      000277 C0 04            [24]  332 	push	ar4
      000279 12 01 1E         [24]  333 	lcall	_Writesingle7219
      00027C D0 04            [24]  334 	pop	ar4
      00027E D0 05            [24]  335 	pop	ar5
      000280 D0 06            [24]  336 	pop	ar6
      000282 D0 07            [24]  337 	pop	ar7
                                    338 ;	./src/draw.c:47: for(i=8; i>=1; i--) {
      000284 1C               [12]  339 	dec	r4
      000285 BC 01 00         [24]  340 	cjne	r4,#0x01,00121$
      000288                        341 00121$:
      000288 50 9B            [24]  342 	jnc	00104$
                                    343 ;	./src/draw.c:50: shift += 1;
      00028A E5 26            [12]  344 	mov	a,_shiftdraw_shift_65536_21
      00028C 04               [12]  345 	inc	a
                                    346 ;	./src/draw.c:51: if(shift > 8) {
      00028D F5 26            [12]  347 	mov  _shiftdraw_shift_65536_21,a
      00028F 24 F7            [12]  348 	add	a,#0xff - 0x08
      000291 50 03            [24]  349 	jnc	00103$
                                    350 ;	./src/draw.c:52: shift = 0;
      000293 75 26 00         [24]  351 	mov	_shiftdraw_shift_65536_21,#0x00
      000296                        352 00103$:
                                    353 ;	./src/draw.c:55: delay_ms(1000);
      000296 90 03 E8         [24]  354 	mov	dptr,#0x03e8
                                    355 ;	./src/draw.c:56: }
      000299 02 00 F2         [24]  356 	ljmp	_delay_ms
                                    357 	.area CSEG    (CODE)
                                    358 	.area CONST   (CODE)
                                    359 	.area XINIT   (CODE)
                                    360 	.area CABS    (ABS,CODE)
