;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sendbyte_PARM_2
	.globl _main
	.globl _move
	.globl _getPositionPattern
	.globl _delay_ms
	.globl _readMPU6050_AccelData
	.globl _MPU6050_INIT
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Write7219_PARM_2
	.globl _accel_data
	.globl _i
	.globl _data_buf
	.globl _m
	.globl _p
	.globl _patt
	.globl _state
	.globl _picture
	.globl _draw
	.globl _sendbyte
	.globl _Write7219
	.globl _Initial
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_MAP:
	.ds 8
_picture::
	.ds 8
_state::
	.ds 4
_patt::
	.ds 4
_p::
	.ds 1
_m::
	.ds 2
_data_buf::
	.ds 2
_i::
	.ds 1
_accel_data::
	.ds 6
_Write7219_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	./src/main.c:25: static unsigned char MAP[8] = {0x07,0xF7,0xF7,0xF7,0xF7,0xF7,0xF7,0xF0};
	mov	_MAP,#0x07
	mov	(_MAP + 0x0001),#0xf7
	mov	(_MAP + 0x0002),#0xf7
	mov	(_MAP + 0x0003),#0xf7
	mov	(_MAP + 0x0004),#0xf7
	mov	(_MAP + 0x0005),#0xf7
	mov	(_MAP + 0x0006),#0xf7
	mov	(_MAP + 0x0007),#0xf0
;	./src/main.c:26: unsigned char picture[8] = {0x07,0xF7,0xF7,0xF7,0xF7,0xF7,0xF7,0xF0};
	mov	_picture,#0x07
	mov	(_picture + 0x0001),#0xf7
	mov	(_picture + 0x0002),#0xf7
	mov	(_picture + 0x0003),#0xf7
	mov	(_picture + 0x0004),#0xf7
	mov	(_picture + 0x0005),#0xf7
	mov	(_picture + 0x0006),#0xf7
	mov	(_picture + 0x0007),#0xf0
;	./src/main.c:27: int state[2] = {7,0},patt[2];
	mov	(_state + 0),#0x07
	clr	a
	mov	(_state + 1),a
	mov	((_state + 0x0002) + 0),a
	mov	((_state + 0x0002) + 1),a
;	./src/main.c:28: unsigned char p = 0x01;
	mov	_p,#0x01
;	./src/main.c:29: unsigned int m = 0;
	mov	_m,a
	mov	(_m + 1),a
;	./src/main.c:32: char i = 0;
;	1-genFromRTrack replaced	mov	_i,#0x00
	mov	_i,a
;	./src/main.c:34: int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
	mov	(_accel_data + 0),a
	mov	(_accel_data + 1),a
	mov	((_accel_data + 0x0002) + 0),a
	mov	((_accel_data + 0x0002) + 1),a
	mov	((_accel_data + 0x0004) + 0),a
	mov	((_accel_data + 0x0004) + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:38: void draw(void)
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:42: for(i=1; i<=8; i++) {
	mov	r7,#0x01
00102$:
;	./src/main.c:43: Write7219(i, picture[i-1]);
	mov	ar6,r7
	mov	a,r6
	dec	a
	add	a,#_picture
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:42: for(i=1; i<=8; i++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat                       Allocated with name '_sendbyte_PARM_2'
;address                   Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:48: void sendbyte(unsigned char address, unsigned char dat) {
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	mov	r7,dpl
;	./src/main.c:51: for (i=0; i<8; i++) {       // get last 8 bits(address)
	mov	r6,#0x00
00103$:
;	./src/main.c:52: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:53: DIN = (address & 0x80); // get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:54: address <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/main.c:55: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:51: for (i=0; i<8; i++) {       // get last 8 bits(address)
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00103$
;	./src/main.c:58: for (i=0; i<8; i++) {     	// get first 8 bits(data)
	mov	r7,#0x00
00105$:
;	./src/main.c:59: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:60: DIN = (dat & 0x80);    	// get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:61: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:62: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:58: for (i=0; i<8; i++) {     	// get first 8 bits(data)
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:67: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
;	./src/main.c:69: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:70: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	lcall	_sendbyte
;	./src/main.c:71: LOAD=1;
;	assignBit
	setb	_P2_1
;	./src/main.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getPositionPattern'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:74: void getPositionPattern(void){
;	-----------------------------------------
;	 function getPositionPattern
;	-----------------------------------------
_getPositionPattern:
;	./src/main.c:75: for(unsigned int i=0; i<8; i++){
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
;	./src/main.c:76: picture[i] = MAP[i];
	mov	a,r6
	add	a,#_picture
	mov	r1,a
	mov	a,r6
	add	a,#_MAP
	mov	r0,a
	mov	ar5,@r0
	mov	@r1,ar5
;	./src/main.c:75: for(unsigned int i=0; i<8; i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	./src/main.c:78: picture[state[0]] = picture[state[0]] | (0x01 << state[1]);
	mov	a,_state
	add	a,#_picture
	mov	r1,a
	mov	ar7,@r1
	mov	b,(_state + 0x0002)
	inc	b
	mov	a,#0x01
	sjmp	00120$
00118$:
	add	a,acc
00120$:
	djnz	b,00118$
	orl	a,r7
	mov	@r1,a
;	./src/main.c:80: led = ~p;
	mov	a,_p
	cpl	a
	mov	_P1,a
;	./src/main.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move'
;------------------------------------------------------------
;mode                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:83: void move(unsigned int mode){
;	-----------------------------------------
;	 function move
;	-----------------------------------------
_move:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:84: switch (mode)
	cjne	r6,#0x00,00157$
	cjne	r7,#0x00,00157$
	sjmp	00101$
00157$:
	cjne	r6,#0x01,00158$
	cjne	r7,#0x00,00158$
	ljmp	00111$
00158$:
	ret
;	./src/main.c:86: case 0:  //go down
00101$:
;	./src/main.c:87: if(m<3){
	clr	c
	mov	a,_m
	subb	a,#0x03
	mov	a,(_m + 1)
	subb	a,#0x00
	jnc	00109$
;	./src/main.c:88: state[0] = 7;
	mov	(_state + 0),#0x07
	mov	(_state + 1),#0x00
;	./src/main.c:89: state[1]--;
	mov	r6,((_state + 0x0002) + 0)
	mov	r7,((_state + 0x0002) + 1)
	dec	r6
	cjne	r6,#0xff,00160$
	dec	r7
00160$:
	mov	((_state + 0x0002) + 0),r6
	mov	((_state + 0x0002) + 1),r7
	sjmp	00110$
00109$:
;	./src/main.c:90: }else if(m<10){
	clr	c
	mov	a,_m
	subb	a,#0x0a
	mov	a,(_m + 1)
	subb	a,#0x00
	jnc	00106$
;	./src/main.c:91: state[0]--;
	mov	r6,(_state + 0)
	mov	r7,(_state + 1)
	dec	r6
	cjne	r6,#0xff,00162$
	dec	r7
00162$:
	mov	(_state + 0),r6
	mov	(_state + 1),r7
;	./src/main.c:92: state[1] = 3;
	mov	((_state + 0x0002) + 0),#0x03
	mov	((_state + 0x0002) + 1),#0x00
	sjmp	00110$
00106$:
;	./src/main.c:93: }else if(m<14){
	clr	c
	mov	a,_m
	subb	a,#0x0e
	mov	a,(_m + 1)
	subb	a,#0x00
	jnc	00103$
;	./src/main.c:94: state[0] = 0;
	clr	a
	mov	(_state + 0),a
	mov	(_state + 1),a
;	./src/main.c:95: state[1]--;
	mov	r6,((_state + 0x0002) + 0)
	mov	r7,((_state + 0x0002) + 1)
	dec	r6
	cjne	r6,#0xff,00164$
	dec	r7
00164$:
	mov	((_state + 0x0002) + 0),r6
	mov	((_state + 0x0002) + 1),r7
	sjmp	00110$
00103$:
;	./src/main.c:97: state[0] = 0;
	clr	a
	mov	(_state + 0),a
	mov	(_state + 1),a
;	./src/main.c:98: state[1] = 7;
	mov	((_state + 0x0002) + 0),#0x07
;	1-genFromRTrack replaced	mov	((_state + 0x0002) + 1),#0x00
	mov	((_state + 0x0002) + 1),a
00110$:
;	./src/main.c:100: m--;
	dec	_m
	mov	a,#0xff
	cjne	a,_m,00165$
	dec	(_m + 1)
00165$:
;	./src/main.c:101: break;
;	./src/main.c:102: case 1:
	ret
00111$:
;	./src/main.c:103: if(m<3){
	clr	c
	mov	a,_m
	subb	a,#0x03
	mov	a,(_m + 1)
	subb	a,#0x00
	jnc	00119$
;	./src/main.c:104: state[0] = 7;
	mov	(_state + 0),#0x07
	mov	(_state + 1),#0x00
;	./src/main.c:105: state[1] ++;
	mov	r6,((_state + 0x0002) + 0)
	mov	r7,((_state + 0x0002) + 1)
	inc	r6
	cjne	r6,#0x00,00167$
	inc	r7
00167$:
	mov	((_state + 0x0002) + 0),r6
	mov	((_state + 0x0002) + 1),r7
	sjmp	00120$
00119$:
;	./src/main.c:106: }else if(m<10){
	clr	c
	mov	a,_m
	subb	a,#0x0a
	mov	a,(_m + 1)
	subb	a,#0x00
	jnc	00116$
;	./src/main.c:107: state[0] --;
	mov	r6,(_state + 0)
	mov	r7,(_state + 1)
	dec	r6
	cjne	r6,#0xff,00169$
	dec	r7
00169$:
	mov	(_state + 0),r6
	mov	(_state + 1),r7
;	./src/main.c:108: state[1] = 3;
	mov	((_state + 0x0002) + 0),#0x03
	mov	((_state + 0x0002) + 1),#0x00
	sjmp	00120$
00116$:
;	./src/main.c:109: }else if(m<14){
	clr	c
	mov	a,_m
	subb	a,#0x0e
	mov	a,(_m + 1)
	subb	a,#0x00
	jnc	00113$
;	./src/main.c:110: state[0] = 0;
	clr	a
	mov	(_state + 0),a
	mov	(_state + 1),a
;	./src/main.c:111: state[1] ++;;
	mov	r6,((_state + 0x0002) + 0)
	mov	r7,((_state + 0x0002) + 1)
	inc	r6
	cjne	r6,#0x00,00171$
	inc	r7
00171$:
	mov	((_state + 0x0002) + 0),r6
	mov	((_state + 0x0002) + 1),r7
	sjmp	00120$
00113$:
;	./src/main.c:113: state[0] = 7;
	mov	(_state + 0),#0x07
;	./src/main.c:114: state[1] = 0;
	clr	a
	mov	(_state + 1),a
	mov	((_state + 0x0002) + 0),a
	mov	((_state + 0x0002) + 1),a
00120$:
;	./src/main.c:116: m++;
	inc	_m
	clr	a
	cjne	a,_m,00172$
	inc	(_m + 1)
00172$:
;	./src/main.c:120: }
;	./src/main.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;delta_x                   Allocated to registers r6 r7 
;delta_y                   Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:124: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:126: Initial();
	lcall	_Initial
;	./src/main.c:127: draw();
	lcall	_draw
;	./src/main.c:128: getPositionPattern();	
	lcall	_getPositionPattern
;	./src/main.c:129: draw();
	lcall	_draw
;	./src/main.c:130: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/main.c:131: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/main.c:132: MPU6050_INIT();
	lcall	_MPU6050_INIT
;	./src/main.c:134: while(1) {
00115$:
;	./src/main.c:136: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	./src/main.c:137: readMPU6050_AccelData(&accel_data[0]);
	mov	dptr,#_accel_data
	mov	b,#0x40
	lcall	_readMPU6050_AccelData
;	./src/main.c:138: delta_x = accel_data[0];
	mov	r6,(_accel_data + 0)
	mov	r7,(_accel_data + 1)
;	./src/main.c:139: delta_y = accel_data[1];
	mov	r4,((_accel_data + 0x0002) + 0)
	mov	r5,((_accel_data + 0x0002) + 1)
;	./src/main.c:141: if((delta_x>1000) || (delta_y<-1000)){
	clr	c
	mov	a,#0xe8
	subb	a,r6
	mov	a,#(0x03 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00105$
	mov	a,r4
	subb	a,#0x18
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x7c
	jnc	00106$
00105$:
;	./src/main.c:142: move(1);
	mov	dptr,#0x0001
	lcall	_move
;	./src/main.c:143: getPositionPattern();	
	lcall	_getPositionPattern
;	./src/main.c:144: draw();
	lcall	_draw
	sjmp	00107$
00106$:
;	./src/main.c:145: }else if((delta_x<-1000) || (delta_y>1000)){
	clr	c
	mov	a,r6
	subb	a,#0x18
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7c
	jc	00101$
	mov	a,#0xe8
	subb	a,r4
	mov	a,#(0x03 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
00101$:
;	./src/main.c:146: move(0);
	mov	dptr,#0x0000
	lcall	_move
;	./src/main.c:147: getPositionPattern();	
	lcall	_getPositionPattern
;	./src/main.c:148: draw();
	lcall	_draw
	sjmp	00107$
00102$:
;	./src/main.c:150: getPositionPattern();	
	lcall	_getPositionPattern
;	./src/main.c:151: draw();
	lcall	_draw
00107$:
;	./src/main.c:153: if(m == 0)
	mov	a,_m
	orl	a,(_m + 1)
;	./src/main.c:154: m = 14;
	jnz	00112$
	mov	_m,#0x0e
	mov	(_m + 1),a
	ljmp	00115$
00112$:
;	./src/main.c:155: else if(m == 14)
	mov	a,#0x0e
	cjne	a,_m,00144$
	clr	a
	cjne	a,(_m + 1),00144$
	sjmp	00145$
00144$:
	ljmp	00115$
00145$:
;	./src/main.c:156: m = 0;
	clr	a
	mov	_m,a
	mov	(_m + 1),a
;	./src/main.c:159: }
	ljmp	00115$
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:162: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:165: Write7219(SHUT_DOWN, 0x01);          // normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:166: Write7219(DISPLAY_TEST, 0x00); 
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:167: Write7219(DECODE_MODE, 0x00);        // select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:168: Write7219(SCAN_LIMIT, 0x07);         // use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:169: Write7219(INTENSITY, 0x00);          // set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:171: for(i=1; i<=8; i++) { 
	mov	r7,#0x01
00102$:
;	./src/main.c:172: Write7219(i, 0x00);              // turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:171: for(i=1; i<=8; i++) { 
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:174: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
