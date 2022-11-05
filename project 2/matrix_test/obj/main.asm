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
	.globl _T0_isr
	.globl _setUp
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
	.globl _Writesingle7219_PARM_3
	.globl _Writesingle7219_PARM_2
	.globl _patt
	.globl _state
	.globl _cnt2
	.globl _upper
	.globl _cnt
	.globl _FLAG
	.globl _idx_l
	.globl _idx_u
	.globl _cur_l
	.globl _cur_u
	.globl _patt_2
	.globl _patt_1
	.globl _Initial
	.globl _sendbyte
	.globl _Writesingle7219
	.globl _draw
	.globl _upperFall
	.globl _upperDown
	.globl _lowerFall
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_fallPattern:
	.ds 8
_patt_1::
	.ds 8
_patt_2::
	.ds 8
_cur_u::
	.ds 2
_cur_l::
	.ds 2
_idx_u::
	.ds 2
_idx_l::
	.ds 2
_FLAG::
	.ds 2
_cnt::
	.ds 2
_upper::
	.ds 2
_cnt2::
	.ds 2
_state::
	.ds 1
_patt::
	.ds 1
_Writesingle7219_PARM_2:
	.ds 1
_Writesingle7219_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
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
	reti
	.ds	7
	ljmp	_T0_isr
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
;	./src/main.c:32: static unsigned char fallPattern[8] = {0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01};
	mov	_fallPattern,#0x80
	mov	(_fallPattern + 0x0001),#0x40
	mov	(_fallPattern + 0x0002),#0x20
	mov	(_fallPattern + 0x0003),#0x10
	mov	(_fallPattern + 0x0004),#0x08
	mov	(_fallPattern + 0x0005),#0x04
	mov	(_fallPattern + 0x0006),#0x02
	mov	(_fallPattern + 0x0007),#0x01
;	./src/main.c:35: int cur_u,cur_l,idx_u,idx_l,FLAG = 0;
	clr	a
	mov	_FLAG,a
	mov	(_FLAG + 1),a
;	./src/main.c:36: int cnt = 0, upper = 0, cnt2 = 0;
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:36: STATES state[1];
	mov	_upper,a
	mov	(_upper + 1),a
;	./src/main.c:36: int cnt = 0, upper = 0, cnt2 = 0;
	mov	_cnt2,a
	mov	(_cnt2 + 1),a
;	./src/main.c:38: unsigned char patt = 0x80;
	mov	_patt,#0x80
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
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:49: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:52: for(a=1;a<=2;a++){
	mov	r7,#0x01
00105$:
;	./src/main.c:53: Writesingle7219(a,SHUT_DOWN, 0x01);          // normal mode(0xX1)
	mov	_Writesingle7219_PARM_2,#0x0c
	mov	_Writesingle7219_PARM_3,#0x01
	mov	dpl,r7
	push	ar7
	lcall	_Writesingle7219
	pop	ar7
;	./src/main.c:54: Writesingle7219(a,DISPLAY_TEST, 0x00); 
	mov	_Writesingle7219_PARM_2,#0x0f
	mov	_Writesingle7219_PARM_3,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Writesingle7219
	pop	ar7
;	./src/main.c:55: Writesingle7219(a,DECODE_MODE, 0x00);        // select non-decode mode
	mov	_Writesingle7219_PARM_2,#0x09
	mov	_Writesingle7219_PARM_3,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Writesingle7219
	pop	ar7
;	./src/main.c:56: Writesingle7219(a,SCAN_LIMIT, 0x07);         // use all 8 LED
	mov	_Writesingle7219_PARM_2,#0x0b
	mov	_Writesingle7219_PARM_3,#0x07
	mov	dpl,r7
	push	ar7
	lcall	_Writesingle7219
	pop	ar7
;	./src/main.c:57: Writesingle7219(a,INTENSITY, 0x00);          // set up intensity
	mov	_Writesingle7219_PARM_2,#0x0a
	mov	_Writesingle7219_PARM_3,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Writesingle7219
	pop	ar7
;	./src/main.c:59: for(i=1; i<=8; i++) { 
	mov	r6,#0x01
00103$:
;	./src/main.c:60: Writesingle7219(a,i, 0x00);              // turn off all LED
	mov	_Writesingle7219_PARM_2,r6
	mov	_Writesingle7219_PARM_3,#0x00
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_Writesingle7219
	pop	ar6
	pop	ar7
;	./src/main.c:59: for(i=1; i<=8; i++) { 
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00103$
;	./src/main.c:52: for(a=1;a<=2;a++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x02
	jnc	00105$
;	./src/main.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat                       Allocated with name '_sendbyte_PARM_2'
;address                   Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:67: void sendbyte(unsigned char address, unsigned char dat) {
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	mov	r7,dpl
;	./src/main.c:70: for (i=0; i<8; i++) {       // get last 8 bits(address)
	mov	r6,#0x00
00103$:
;	./src/main.c:71: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:72: DOUT = (address & 0x80); // get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:73: address <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/main.c:74: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:70: for (i=0; i<8; i++) {       // get last 8 bits(address)
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00103$
;	./src/main.c:77: for (i=0; i<8; i++) {     	// get first 8 bits(data)
	mov	r7,#0x00
00105$:
;	./src/main.c:78: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:79: DOUT = (dat & 0x80);    	// get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:80: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:81: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:77: for (i=0; i<8; i++) {     	// get first 8 bits(data)
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/main.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Writesingle7219'
;------------------------------------------------------------
;address                   Allocated with name '_Writesingle7219_PARM_2'
;dat                       Allocated with name '_Writesingle7219_PARM_3'
;chosen                    Allocated to registers r7 
;cnt                       Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:88: void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Writesingle7219
;	-----------------------------------------
_Writesingle7219:
	mov	r7,dpl
;	./src/main.c:91: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:92: for(cnt=matrixnum; cnt>chosen; cnt--) { //write data into the selected matrix
	mov	r6,#0x02
00104$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00101$
;	./src/main.c:93: sendbyte(0x00, 0x00);               //write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/main.c:92: for(cnt=matrixnum; cnt>chosen; cnt--) { //write data into the selected matrix
	dec	r6
	sjmp	00104$
00101$:
;	./src/main.c:95: sendbyte(address, dat);             //sent data to chosen led-matrix
	mov	_sendbyte_PARM_2,_Writesingle7219_PARM_3
	mov	dpl,_Writesingle7219_PARM_2
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/main.c:97: for (cnt=chosen-1; cnt>=1; cnt--) {
	dec	r7
00107$:
	cjne	r7,#0x01,00130$
00130$:
	jc	00102$
;	./src/main.c:98: sendbyte(0x00, 0x00);               //write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/main.c:97: for (cnt=chosen-1; cnt>=1; cnt--) {
	dec	r7
	sjmp	00107$
00102$:
;	./src/main.c:101: LOAD=1;
;	assignBit
	setb	_P2_1
;	./src/main.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:105: void draw(void){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
;	./src/main.c:108: for(i=1; i<=8; i++) {
	mov	r7,#0x01
00102$:
;	./src/main.c:109: Writesingle7219(1, i, patt_1[i-1]);
	mov	ar6,r7
	dec	r6
	mov	a,r6
	add	a,#_patt_1
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,r7
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_Writesingle7219
	pop	ar6
	pop	ar7
;	./src/main.c:110: Writesingle7219(2, i, patt_2[i-1]);
	mov	a,r6
	add	a,#_patt_2
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,r7
	mov	dpl,#0x02
	push	ar7
	lcall	_Writesingle7219
	pop	ar7
;	./src/main.c:108: for(i=1; i<=8; i++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'upperFall'
;------------------------------------------------------------
;MODE                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:114: void upperFall(unsigned int MODE){
;	-----------------------------------------
;	 function upperFall
;	-----------------------------------------
_upperFall:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:115: switch (MODE)
	cjne	r6,#0x00,00127$
	cjne	r7,#0x00,00127$
	sjmp	00101$
00127$:
;	./src/main.c:117: case 0:
	cjne	r6,#0x01,00109$
	cjne	r7,#0x00,00109$
	sjmp	00104$
00101$:
;	./src/main.c:118: patt_1[7] -= 1;
	mov	a,(_patt_1 + 0x0007)
	mov	r7,a
	dec	a
;	./src/main.c:119: if(patt_1[7] == 0x00){
	mov	(_patt_1 + 0x0007),a
	jnz	00109$
;	./src/main.c:120: state[0].END = 1;
	mov	r0,#_state
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	./src/main.c:122: break;
;	./src/main.c:123: case 1:
	ret
00104$:
;	./src/main.c:124: patt_1[7] <<= 1;
	mov	a,(_patt_1 + 0x0007)
	add	a,(_patt_1 + 0x0007)
	mov	r7,a
;	./src/main.c:125: if(patt_1[7] == 0x00){
	mov	a,r7
	mov	(_patt_1 + 0x0007),a
	jnz	00109$
;	./src/main.c:126: state[0].END = 1;
	mov	r0,#_state
	mov	a,@r0
	orl	a,#0x02
	mov	@r0,a
;	./src/main.c:131: }
00109$:
;	./src/main.c:132: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'upperDown'
;------------------------------------------------------------
;	./src/main.c:134: void upperDown(void){
;	-----------------------------------------
;	 function upperDown
;	-----------------------------------------
_upperDown:
;	./src/main.c:135: patt_1[7] += 1;
	mov	a,(_patt_1 + 0x0007)
	inc	a
	mov	(_patt_1 + 0x0007),a
;	./src/main.c:136: if(state[0].INV == 0){
	mov	r0,#_state
	mov	a,@r0
	jb	acc.3,00108$
;	./src/main.c:137: patt_1[cur_u] >>= 1;
	mov	a,_cur_u
	add	a,#_patt_1
	mov	r1,a
	mov	a,@r1
	clr	c
	rrc	a
	mov	r7,a
	mov	@r1,a
;	./src/main.c:138: cur_u += 1;
	inc	_cur_u
	clr	a
	cjne	a,_cur_u,00129$
	inc	(_cur_u + 1)
00129$:
;	./src/main.c:139: if(cur_u == idx_u){
	mov	a,_idx_u
	cjne	a,_cur_u,00102$
	mov	a,(_idx_u + 1)
	cjne	a,(_cur_u + 1),00102$
;	./src/main.c:140: idx_u += 1;
	inc	_idx_u
	clr	a
	cjne	a,_idx_u,00132$
	inc	(_idx_u + 1)
00132$:
;	./src/main.c:141: cur_u = 0;
	clr	a
	mov	_cur_u,a
	mov	(_cur_u + 1),a
00102$:
;	./src/main.c:143: if(idx_u == 9){
	mov	a,#0x09
	cjne	a,_idx_u,00133$
	clr	a
	cjne	a,(_idx_u + 1),00133$
	sjmp	00134$
00133$:
	ret
00134$:
;	./src/main.c:144: state[0].INV = 1;
	mov	r0,#_state
	mov	a,@r0
	orl	a,#0x08
	mov	@r0,a
;	./src/main.c:145: idx_u = 1;
	mov	_idx_u,#0x01
	mov	(_idx_u + 1),#0x00
;	./src/main.c:146: cur_u = idx_u;
	mov	_cur_u,#0x01
	mov	(_cur_u + 1),#0x00
	ret
00108$:
;	./src/main.c:149: patt_1[cur_u] >>= 1;
	mov	a,_cur_u
	add	a,#_patt_1
	mov	r1,a
	mov	a,@r1
	clr	c
	rrc	a
	mov	r7,a
	mov	@r1,a
;	./src/main.c:150: cur_u += 1;
	inc	_cur_u
	clr	a
	cjne	a,_cur_u,00135$
	inc	(_cur_u + 1)
00135$:
;	./src/main.c:151: if(cur_u == 8){
	mov	a,#0x08
	cjne	a,_cur_u,00136$
	clr	a
	cjne	a,(_cur_u + 1),00136$
	sjmp	00137$
00136$:
	ret
00137$:
;	./src/main.c:152: idx_u += 1;
	inc	_idx_u
	clr	a
	cjne	a,_idx_u,00138$
	inc	(_idx_u + 1)
00138$:
;	./src/main.c:153: cur_u = idx_u;
	mov	_cur_u,_idx_u
	mov	(_cur_u + 1),(_idx_u + 1)
;	./src/main.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lowerFall'
;------------------------------------------------------------
;MODE                      Allocated to registers 
;i                         Allocated to registers 
;BUF                       Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:158: void lowerFall(unsigned int MODE){
;	-----------------------------------------
;	 function lowerFall
;	-----------------------------------------
_lowerFall:
;	./src/main.c:161: led = ~(0x01 << cur_l);
	mov	r7,_cur_l
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00169$
00167$:
	add	a,acc
00169$:
	djnz	b,00167$
	mov	r6,a
	cpl	a
	mov	_P1,a
;	./src/main.c:163: if (BUF = fallPattern[cur_l-1])
	mov	a,r7
	dec	a
	add	a,#_fallPattern
	mov	r1,a
	mov	a,@r1
	jz	00102$
;	./src/main.c:165: FLAG = 1;
	mov	_FLAG,#0x01
	mov	(_FLAG + 1),#0x00
00102$:
;	./src/main.c:167: for (i = cur_l - 1; i > 0 ; i--){
	dec	r7
00120$:
	mov	a,r7
	jz	00106$
;	./src/main.c:168: if(FLAG == 0){
	mov	a,_FLAG
	orl	a,(_FLAG + 1)
	jnz	00104$
;	./src/main.c:169: patt_2[i] += patt_2[i-1] >> 1;
	mov	a,r7
	add	a,#_patt_2
	mov	r1,a
	mov	ar6,@r1
	mov	ar5,r7
	mov	a,r5
	dec	a
	add	a,#_patt_2
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	r5,a
	add	a,r6
	mov	@r1,a
	sjmp	00121$
00104$:
;	./src/main.c:171: patt_2[i] = patt_2[i-1] >> 1;
	mov	a,r7
	add	a,#_patt_2
	mov	r1,a
	mov	ar6,r7
	mov	a,r6
	dec	a
	add	a,#_patt_2
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	r6,a
	mov	@r1,a
00121$:
;	./src/main.c:167: for (i = cur_l - 1; i > 0 ; i--){
	dec	r7
	sjmp	00120$
00106$:
;	./src/main.c:176: if(FLAG){
	mov	a,_FLAG
	orl	a,(_FLAG + 1)
	jnz	00173$
	ljmp	00118$
00173$:
;	./src/main.c:177: if(idx_l == 0){
	mov	a,_idx_l
	orl	a,(_idx_l + 1)
	jnz	00115$
;	./src/main.c:178: cur_l -= 1;
	dec	_cur_l
	mov	a,#0xff
	cjne	a,_cur_l,00175$
	dec	(_cur_l + 1)
00175$:
;	./src/main.c:179: idx_l = 9 - cur_l;
	mov	a,#0x09
	clr	c
	subb	a,_cur_l
	mov	_idx_l,a
	clr	a
	subb	a,(_cur_l + 1)
	mov	(_idx_l + 1),a
;	./src/main.c:180: FLAG = 0;
	clr	a
	mov	_FLAG,a
	mov	(_FLAG + 1),a
	sjmp	00116$
00115$:
;	./src/main.c:181: }else if(patt_2[cur_l-1] == fallPattern[cur_l-1] && cur_l != 8){
	mov	a,_cur_l
	mov	r7,a
	dec	a
	mov	r6,a
	add	a,#_patt_2
	mov	r1,a
	mov	ar5,@r1
	mov	a,r6
	add	a,#_fallPattern
	mov	r1,a
	mov	ar6,@r1
	mov	a,r5
	cjne	a,ar6,00111$
	mov	a,#0x08
	cjne	a,_cur_l,00178$
	clr	a
	cjne	a,(_cur_l + 1),00178$
	sjmp	00111$
00178$:
;	./src/main.c:182: patt_2[cur_l+idx_l-2] = patt_2[cur_l+idx_l-2] | fallPattern[8-idx_l];
	mov	a,_idx_l
	mov	r6,a
	add	a,r7
	add	a,#0xfe
	add	a,#_patt_2
	mov	r1,a
	mov	ar7,@r1
	mov	a,#0x08
	clr	c
	subb	a,r6
	add	a,#_fallPattern
	mov	r0,a
	mov	a,@r0
	mov	r6,a
	orl	a,r7
	mov	@r1,a
;	./src/main.c:189: idx_l -= 1;
	dec	_idx_l
	mov	a,#0xff
	cjne	a,_idx_l,00179$
	dec	(_idx_l + 1)
00179$:
	sjmp	00116$
00111$:
;	./src/main.c:190: }else if(patt_2[7] == 0x01 && cur_l == 8){
	mov	a,#0x01
	cjne	a,(_patt_2 + 0x0007),00116$
	mov	a,#0x08
	cjne	a,_cur_l,00182$
	clr	a
	cjne	a,(_cur_l + 1),00182$
	sjmp	00183$
00182$:
	sjmp	00116$
00183$:
;	./src/main.c:191: cur_l -= 1;
	dec	_cur_l
	mov	a,#0xff
	cjne	a,_cur_l,00184$
	dec	(_cur_l + 1)
00184$:
;	./src/main.c:192: idx_l = 9 - cur_l;
	mov	a,#0x09
	clr	c
	subb	a,_cur_l
	mov	_idx_l,a
	clr	a
	subb	a,(_cur_l + 1)
	mov	(_idx_l + 1),a
00116$:
;	./src/main.c:194: FLAG = 0;
	clr	a
	mov	_FLAG,a
	mov	(_FLAG + 1),a
00118$:
;	./src/main.c:197: patt_2[0] = 0x00;
	mov	_patt_2,#0x00
;	./src/main.c:198: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUp'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:200: void setUp(){
;	-----------------------------------------
;	 function setUp
;	-----------------------------------------
_setUp:
;	./src/main.c:202: state[0].MODE = 0; //test for now
;	./src/main.c:203: state[0].END = 0;
;	./src/main.c:204: state[0].INV = 0;
;	./src/main.c:205: state[0].ACTIVE = 0;
	mov	r0,#_state
	mov	a,@r0
	anl	a,#0xfb&0xfd&0xf7&0xfe
	mov	@r0,a
;	./src/main.c:206: if(state[0].MODE == 0)
	mov	r0,#_state
	mov	a,@r0
	jb	acc.2,00115$
;	./src/main.c:208: for(a=0;a<8;a++){
	mov	r7,#0x00
00106$:
;	./src/main.c:209: patt_1[a] = 0xFF;
	mov	a,r7
	add	a,#_patt_1
	mov	r0,a
	mov	@r0,#0xff
;	./src/main.c:210: patt_2[a] = 0x00;
	mov	a,r7
	add	a,#_patt_2
	mov	r0,a
;	./src/main.c:211: cur_u = 0;
	clr	a
	mov	@r0,a
	mov	_cur_u,a
	mov	(_cur_u + 1),a
;	./src/main.c:212: cur_l = 8;
	mov	_cur_l,#0x08
;	1-genFromRTrack replaced	mov	(_cur_l + 1),#0x00
	mov	(_cur_l + 1),a
;	./src/main.c:213: idx_u = 1;
	mov	_idx_u,#0x01
;	1-genFromRTrack replaced	mov	(_idx_u + 1),#0x00
	mov	(_idx_u + 1),a
;	./src/main.c:214: idx_l = 1;
	mov	_idx_l,#0x01
;	1-genFromRTrack replaced	mov	(_idx_l + 1),#0x00
	mov	(_idx_l + 1),a
;	./src/main.c:208: for(a=0;a<8;a++){
	inc	r7
	cjne	r7,#0x08,00131$
00131$:
	jc	00106$
;	./src/main.c:217: for(a=0;a<8;a++){
	ret
00115$:
	mov	r7,#0x00
00108$:
;	./src/main.c:218: patt_1[a] = 0x00;
	mov	a,r7
	add	a,#_patt_1
	mov	r0,a
	mov	@r0,#0x00
;	./src/main.c:219: patt_2[a] = 0xFF;
	mov	a,r7
	add	a,#_patt_2
	mov	r0,a
	mov	@r0,#0xff
;	./src/main.c:217: for(a=0;a<8;a++){
	inc	r7
	cjne	r7,#0x08,00133$
00133$:
	jc	00108$
;	./src/main.c:222: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:224: void T0_isr(void) __interrupt (1)			// Interrupt routine w/ priority 1
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./src/main.c:228: TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:229: TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	mov	_TL0,#0x18
;	./src/main.c:231: cnt++;								// Count each interruption
	inc	_cnt
	clr	a
	cjne	a,_cnt,00147$
	inc	(_cnt + 1)
00147$:
;	./src/main.c:232: cnt2++;
	inc	_cnt2
	clr	a
	cjne	a,_cnt2,00148$
	inc	(_cnt2 + 1)
00148$:
;	./src/main.c:233: if(cnt >= 1000) {			// 1000 interruptions = 1000ms = 1s
	clr	c
	mov	a,_cnt
	subb	a,#0xe8
	mov	a,(_cnt + 1)
	xrl	a,#0x80
	subb	a,#0x83
	jc	00108$
;	./src/main.c:234: state[0].ACTIVE = 1;
	mov	r0,#_state
	mov	a,@r0
	orl	a,#0x01
	mov	@r0,a
;	./src/main.c:235: cnt = 0;						// Reset count
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:237: if(state[0].END == 0){
	mov	r0,#_state
	mov	a,@r0
	jb	acc.1,00105$
;	./src/main.c:238: if(state[0].UPPER == 0){
	mov	r0,#_state
	mov	a,@r0
	jb	acc.4,00102$
;	./src/main.c:239: upperFall(state[0].MODE);
	mov	r0,#_state
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x01
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_upperFall
;	./src/main.c:240: state[0].UPPER = 1;
;	./src/main.c:241: state[0].FALL = 1;
	mov	r0,#_state
	mov	a,@r0
	orl	a,#0x10|0x20
	mov	@r0,a
	sjmp	00108$
00102$:
;	./src/main.c:243: upperDown();
	lcall	_upperDown
;	./src/main.c:244: state[0].UPPER = 0;
	mov	r0,#_state
	mov	a,@r0
	anl	a,#0xef
	mov	@r0,a
	sjmp	00108$
00105$:
;	./src/main.c:247: led = ~patt;
	mov	a,_patt
	cpl	a
	mov	_P1,a
00108$:
;	./src/main.c:251: if(cnt2 >= 500 && state[0].ACTIVE){
	clr	c
	mov	a,_cnt2
	subb	a,#0xf4
	mov	a,(_cnt2 + 1)
	xrl	a,#0x80
	subb	a,#0x81
	jc	00117$
	mov	r0,#_state
	mov	a,@r0
	jnb	acc.0,00117$
;	./src/main.c:252: if(state[0].END == 0){
	mov	r0,#_state
	mov	a,@r0
	jb	acc.1,00112$
;	./src/main.c:253: if(state[0].FALL){
	mov	r0,#_state
	mov	a,@r0
	jnb	acc.5,00110$
;	./src/main.c:254: patt_2[0] = 0x80;
	mov	_patt_2,#0x80
;	./src/main.c:255: state[0].FALL = 0;
	mov	r0,#_state
	mov	a,@r0
	anl	a,#0xdf
	mov	@r0,a
00110$:
;	./src/main.c:257: lowerFall(state[0].MODE);
	mov	r0,#_state
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x01
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_lowerFall
	sjmp	00113$
00112$:
;	./src/main.c:259: lowerFall(state[0].MODE);
	mov	r0,#_state
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x01
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_lowerFall
;	./src/main.c:260: led = ~(patt+0x40);
	mov	r7,_patt
	mov	a,#0x40
	add	a,r7
	mov	r7,a
	cpl	a
	mov	_P1,a
00113$:
;	./src/main.c:263: draw();
	lcall	_draw
;	./src/main.c:264: cnt2 = 0;
	clr	a
	mov	_cnt2,a
	mov	(_cnt2 + 1),a
00117$:
;	./src/main.c:267: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	./src/main.c:271: int main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:273: Initial();
	lcall	_Initial
;	./src/main.c:274: setUp();
	lcall	_setUp
;	./src/main.c:276: TMOD = 0x01;						  // Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:277: TH0 = (65536-1000) / 256; // Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:278: TL0 = (65536-1000) % 256; // Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:279: ET0 = 1;				          // Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:280: EA = 1;								    // Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:281: TR0 = 1;							    // Start Timer 0
;	assignBit
	setb	_TR0
;	./src/main.c:283: while (1);
00102$:
;	./src/main.c:285: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
