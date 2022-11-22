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
	.globl _draw
	.globl _Initial
	.globl _Write7219
	.globl _sendbyte
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
	.globl _num
	.globl _input
	.globl _delay_ms
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
_display_seg:
	.ds 11
_input::
	.ds 16
_num::
	.ds 18
_Write7219_PARM_2:
	.ds 1
_main_i_196608_27:
	.ds 2
_main_i_196608_29:
	.ds 2
_main_j_327680_31:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
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
;	./src/main.c:16: static unsigned char display_seg[] = {
	mov	_display_seg,#0x7e
	mov	(_display_seg + 0x0001),#0x30
	mov	(_display_seg + 0x0002),#0x6d
	mov	(_display_seg + 0x0003),#0x79
	mov	(_display_seg + 0x0004),#0x33
	mov	(_display_seg + 0x0005),#0x5b
	mov	(_display_seg + 0x0006),#0x5f
	mov	(_display_seg + 0x0007),#0x70
	mov	(_display_seg + 0x0008),#0x7f
	mov	(_display_seg + 0x0009),#0x7b
	mov	(_display_seg + 0x000a),#0x08
;	./src/main.c:30: unsigned int input[8] = {7,1,1,1,0,2,0,2};
	mov	(_input + 0),#0x07
	mov	(_input + 1),#0x00
	mov	((_input + 0x0002) + 0),#0x01
	mov	((_input + 0x0002) + 1),#0x00
	mov	((_input + 0x0004) + 0),#0x01
	mov	((_input + 0x0004) + 1),#0x00
	mov	((_input + 0x0006) + 0),#0x01
	clr	a
	mov	((_input + 0x0006) + 1),a
	mov	((_input + 0x0008) + 0),a
	mov	((_input + 0x0008) + 1),a
	mov	((_input + 0x000a) + 0),#0x02
;	1-genFromRTrack replaced	mov	((_input + 0x000a) + 1),#0x00
	mov	((_input + 0x000a) + 1),a
	mov	((_input + 0x000c) + 0),a
	mov	((_input + 0x000c) + 1),a
	mov	((_input + 0x000e) + 0),#0x02
;	1-genFromRTrack replaced	mov	((_input + 0x000e) + 1),#0x00
	mov	((_input + 0x000e) + 1),a
;	./src/main.c:31: unsigned int num[9] = {1,0,9,0,3,3,1,3,2};
	mov	(_num + 0),#0x01
;	1-genFromRTrack replaced	mov	(_num + 1),#0x00
	mov	(_num + 1),a
	mov	((_num + 0x0002) + 0),a
	mov	((_num + 0x0002) + 1),a
	mov	((_num + 0x0004) + 0),#0x09
;	1-genFromRTrack replaced	mov	((_num + 0x0004) + 1),#0x00
	mov	((_num + 0x0004) + 1),a
	mov	((_num + 0x0006) + 0),a
	mov	((_num + 0x0006) + 1),a
	mov	((_num + 0x0008) + 0),#0x03
;	1-genFromRTrack replaced	mov	((_num + 0x0008) + 1),#0x00
	mov	((_num + 0x0008) + 1),a
	mov	((_num + 0x000a) + 0),#0x03
;	1-genFromRTrack replaced	mov	((_num + 0x000a) + 1),#0x00
	mov	((_num + 0x000a) + 1),a
	mov	((_num + 0x000c) + 0),#0x01
;	1-genFromRTrack replaced	mov	((_num + 0x000c) + 1),#0x00
	mov	((_num + 0x000c) + 1),a
	mov	((_num + 0x000e) + 0),#0x03
;	1-genFromRTrack replaced	mov	((_num + 0x000e) + 1),#0x00
	mov	((_num + 0x000e) + 1),a
	mov	((_num + 0x0010) + 0),#0x02
;	1-genFromRTrack replaced	mov	((_num + 0x0010) + 1),#0x00
	mov	((_num + 0x0010) + 1),a
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
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat                       Allocated with name '_sendbyte_PARM_2'
;address                   Allocated to registers r7 
;a                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	./src/main.c:36: void sendbyte(unsigned char address,unsigned char dat){
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./src/main.c:38: for (a=0;a<8;a++)        //get last 8 bits(address)
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
;	./src/main.c:40: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:41: DOUT = ( address & 0x80);   //get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:42: address <<= 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	./src/main.c:43: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:38: for (a=0;a<8;a++)        //get last 8 bits(address)
	inc	r5
	cjne	r5,#0x00,00123$
	inc	r6
00123$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	subb	a,#0x00
	jc	00103$
;	./src/main.c:45: for (a=0;a<8;a++)      //get first 8 bits(data)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
;	./src/main.c:47: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:48: DOUT=( dat & 0x80);    //get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:49: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/main.c:50: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:45: for (a=0;a<8;a++)      //get first 8 bits(data)
	inc	r6
	cjne	r6,#0x00,00125$
	inc	r7
00125$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	jc	00105$
;	./src/main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:55: void Write7219(unsigned char address, unsigned char dat)
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/main.c:57: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:58: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	lcall	_sendbyte
;	./src/main.c:59: LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P2_1
;	./src/main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:65: void Initial(void)
;	-----------------------------------------
;	 function Initial
;	-----------------------------------------
_Initial:
;	./src/main.c:68: Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/main.c:69: Write7219(DISPLAY_TEST,0x00);
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/main.c:70: Write7219(DECODE_MODE,0x00);       //select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/main.c:71: Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/main.c:72: Write7219(INTENSITY,0x00);         //set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/main.c:73: for(i=1;i<=8;i++){
	mov	r7,#0x01
00102$:
;	./src/main.c:74: Write7219(i,0x00);   //turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:73: for(i=1;i<=8;i++){
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/main.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;mode                      Allocated to registers r6 r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:79: void draw(int mode){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:81: if(mode){
	mov	a,r6
	orl	a,r7
	jz	00115$
;	./src/main.c:82: for(i = 1;i < 9;i++){
	mov	r7,#0x01
00106$:
;	./src/main.c:83: Write7219(i, display_seg[input[i-1]]);
	mov	ar6,r7
	dec	r6
	mov	a,r6
	add	a,r6
	add	a,#_input
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	dec	r1
	mov	a,r5
	add	a,#_display_seg
	mov	r1,a
	mov	_Write7219_PARM_2,@r1
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:82: for(i = 1;i < 9;i++){
	inc	r7
	cjne	r7,#0x09,00131$
00131$:
	jc	00106$
;	./src/main.c:86: for(i = 1;i < 9;i++){
	ret
00115$:
	mov	r7,#0x01
00108$:
;	./src/main.c:87: Write7219(i, display_seg[10]);
	mov	_Write7219_PARM_2,(_display_seg + 0x000a)
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/main.c:86: for(i = 1;i < 9;i++){
	inc	r7
	cjne	r7,#0x09,00133$
00133$:
	jc	00108$
;	./src/main.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;cnt                       Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;i                         Allocated with name '_main_i_196608_27'
;i                         Allocated with name '_main_i_196608_29'
;j                         Allocated with name '_main_j_327680_31'
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:95: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:98: Initial();
	lcall	_Initial
;	./src/main.c:99: draw(1);
	mov	dptr,#0x0001
	lcall	_draw
;	./src/main.c:100: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	./src/main.c:102: while (1)
00107$:
;	./src/main.c:104: cnt = 2;
	mov	r6,#0x02
	mov	r7,#0x00
;	./src/main.c:105: for(unsigned int i=0; i<8; i++){
	mov	r4,#0x00
	mov	r5,#0x00
00110$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	subb	a,#0x00
	jnc	00101$
;	./src/main.c:106: input[i] = 10;
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_input
	mov	r0,a
	mov	@r0,#0x0a
	inc	r0
	mov	@r0,#0x00
;	./src/main.c:105: for(unsigned int i=0; i<8; i++){
	inc	r4
	cjne	r4,#0x00,00110$
	inc	r5
	sjmp	00110$
00101$:
;	./src/main.c:109: for(unsigned int i=0; i<cnt+1; i++){
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	clr	a
	mov	_main_i_196608_27,a
	mov	(_main_i_196608_27 + 1),a
00113$:
	clr	c
	mov	a,_main_i_196608_27
	subb	a,r4
	mov	a,(_main_i_196608_27 + 1)
	subb	a,r5
	jnc	00102$
;	./src/main.c:110: input[cnt-i] = num[i];
	mov	ar3,r6
	mov	r2,_main_i_196608_27
	mov	a,r3
	clr	c
	subb	a,r2
	add	a,acc
	add	a,#_input
	mov	r1,a
	mov	a,_main_i_196608_27
	add	a,_main_i_196608_27
	mov	r2,a
	mov	a,(_main_i_196608_27 + 1)
	rlc	a
	mov	a,r2
	add	a,#_num
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	dec	r1
;	./src/main.c:109: for(unsigned int i=0; i<cnt+1; i++){
	inc	_main_i_196608_27
	clr	a
	cjne	a,_main_i_196608_27,00113$
	inc	(_main_i_196608_27 + 1)
	sjmp	00113$
00102$:
;	./src/main.c:112: cnt++;
	inc	r6
	cjne	r6,#0x00,00189$
	inc	r7
00189$:
;	./src/main.c:113: draw(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_draw
;	./src/main.c:114: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:115: for (unsigned int i = 0; i < 6; i++)
	clr	a
	mov	_main_i_196608_29,a
	mov	(_main_i_196608_29 + 1),a
00119$:
	clr	c
	mov	a,_main_i_196608_29
	subb	a,#0x06
	mov	a,(_main_i_196608_29 + 1)
	subb	a,#0x00
	jnc	00104$
;	./src/main.c:118: for(unsigned int j=0; j<cnt+1; j++){
	mov	a,#0x01
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	clr	a
	mov	_main_j_327680_31,a
	mov	(_main_j_327680_31 + 1),a
00116$:
	clr	c
	mov	a,_main_j_327680_31
	subb	a,r2
	mov	a,(_main_j_327680_31 + 1)
	subb	a,r3
	jnc	00103$
;	./src/main.c:119: input[cnt-j] = num[j];
	mov	ar5,r6
	mov	r4,_main_j_327680_31
	mov	a,r5
	clr	c
	subb	a,r4
	add	a,acc
	add	a,#_input
	mov	r1,a
	mov	a,_main_j_327680_31
	add	a,_main_j_327680_31
	mov	r4,a
	mov	a,(_main_j_327680_31 + 1)
	rlc	a
	mov	a,r4
	add	a,#_num
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
;	./src/main.c:118: for(unsigned int j=0; j<cnt+1; j++){
	inc	_main_j_327680_31
	clr	a
	cjne	a,_main_j_327680_31,00116$
	inc	(_main_j_327680_31 + 1)
	sjmp	00116$
00103$:
;	./src/main.c:121: draw(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_draw
;	./src/main.c:122: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:123: cnt++;
	inc	r6
	cjne	r6,#0x00,00193$
	inc	r7
00193$:
;	./src/main.c:115: for (unsigned int i = 0; i < 6; i++)
	inc	_main_i_196608_29
	clr	a
	cjne	a,_main_i_196608_29,00119$
	inc	(_main_i_196608_29 + 1)
	sjmp	00119$
00104$:
;	./src/main.c:126: for (unsigned int j=1; j<7; j++)
	mov	r6,#0x01
	mov	r7,#0x00
00122$:
	clr	c
	mov	a,r6
	subb	a,#0x07
	mov	a,r7
	subb	a,#0x00
	jc	00195$
	ljmp	00107$
00195$:
;	./src/main.c:128: draw(j%2);
	mov	a,#0x01
	anl	a,r6
	mov	dpl,a
	mov	dph,#0x00
	push	ar7
	push	ar6
	lcall	_draw
;	./src/main.c:129: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	./src/main.c:126: for (unsigned int j=1; j<7; j++)
	inc	r6
	cjne	r6,#0x00,00122$
	inc	r7
;	./src/main.c:132: }
	sjmp	00122$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;input_ms                  Allocated to registers r6 r7 
;cnt1                      Allocated to registers r4 r5 
;cnt2                      Allocated to registers r3 
;------------------------------------------------------------
;	./src/main.c:134: void delay_ms(unsigned int input_ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:139: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	./src/main.c:141: for(cnt2 = 0; cnt2 < 90; cnt2 ++);
	mov	r3,#0x5a
00105$:
	djnz	r3,00105$
;	./src/main.c:139: for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	./src/main.c:143: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
