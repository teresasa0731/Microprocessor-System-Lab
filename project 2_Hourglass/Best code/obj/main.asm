;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sendbyte_PARM_4
	.globl _sendbyte_PARM_3
	.globl _sendbyte_PARM_2
	.globl _main
	.globl _Time
	.globl _call
	.globl _shift
	.globl _sendbyte
	.globl _MPU6050_INIT
	.globl _Single_ReadI2C
	.globl _Single_WriteI2C
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
	.globl _Gscale
	.globl _Ascale
	.globl _ud
	.globl _cnt
	.globl _accel
	.globl _m
	.globl _m_1
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
_m_1::
	.ds 20
_m::
	.ds 20
_accel::
	.ds 2
_cnt::
	.ds 2
_ud::
	.ds 2
_Ascale::
	.ds 1
_Gscale::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
_sendbyte_PARM_3:
	.ds 1
_sendbyte_PARM_4:
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
	reti
	.ds	7
	ljmp	_Time
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
;	./src/main.c:13: unsigned char m_1[20], m[20] = {0,255,255,255,255,255,255,255,255};
	mov	_m,#0x00
	mov	(_m + 0x0001),#0xff
	mov	(_m + 0x0002),#0xff
	mov	(_m + 0x0003),#0xff
	mov	(_m + 0x0004),#0xff
	mov	(_m + 0x0005),#0xff
	mov	(_m + 0x0006),#0xff
	mov	(_m + 0x0007),#0xff
	mov	(_m + 0x0008),#0xff
;	./src/main.c:14: int accel, cnt = 0, ud;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	./src/main.c:18: uint8_t Ascale = AFS_2G;
;	1-genFromRTrack replaced	mov	_Ascale,#0x00
	mov	_Ascale,a
;	./src/main.c:19: uint8_t Gscale = GFS_500DPS;
	mov	_Gscale,#0x01
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
;Allocation info for local variables in function 'MPU6050_INIT'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;mpu                       Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:21: void MPU6050_INIT(void) 
;	-----------------------------------------
;	 function MPU6050_INIT
;	-----------------------------------------
_MPU6050_INIT:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:26: for (i = 0; i < 900; i++);
	mov	r6,#0x84
	mov	r7,#0x03
00105$:
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	mov	a,r6
	orl	a,r7
;	./src/main.c:27: Single_WriteI2C(208, 0x6B, 0);
	jnz	00105$
	mov	_Single_WriteI2C_PARM_2,#0x6b
	mov	_Single_WriteI2C_PARM_3,a
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:28: for (i = 0; i < 900; i++);
	mov	r6,#0x84
	mov	r7,#0x03
00108$:
	dec	r6
	cjne	r6,#0xff,00135$
	dec	r7
00135$:
	mov	a,r6
	orl	a,r7
	jnz	00108$
;	./src/main.c:29: Single_WriteI2C(208, 0x68, 7);
	mov	_Single_WriteI2C_PARM_2,#0x68
	mov	_Single_WriteI2C_PARM_3,#0x07
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:30: Single_WriteI2C(208, 0x6B, 1);
	mov	_Single_WriteI2C_PARM_2,#0x6b
	mov	_Single_WriteI2C_PARM_3,#0x01
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:31: Single_WriteI2C(208, 0x1D, 3); 
	mov	_Single_WriteI2C_PARM_2,#0x1d
	mov	_Single_WriteI2C_PARM_3,#0x03
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:32: Single_WriteI2C(208, 0x19, 0);
	mov	_Single_WriteI2C_PARM_2,#0x19
	mov	_Single_WriteI2C_PARM_3,#0x00
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:33: mpu = (Gscale << 3) | 0x00;
	mov	a,_Gscale
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_Single_WriteI2C_PARM_3,a
;	./src/main.c:34: Single_WriteI2C(208, 0x1B, mpu);
	mov	_Single_WriteI2C_PARM_2,#0x1b
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:35: mpu = (Ascale << 3);
	mov	a,_Ascale
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_Single_WriteI2C_PARM_3,a
;	./src/main.c:36: Single_WriteI2C(208, 0x1C, mpu);
	mov	_Single_WriteI2C_PARM_2,#0x1c
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:38: Single_WriteI2C(208, 0x1D, mpu);
	mov	_Single_WriteI2C_PARM_2,#0x1d
	mov	_Single_WriteI2C_PARM_3,#0x03
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:39: Single_WriteI2C(208, 0x37, 34);
	mov	_Single_WriteI2C_PARM_2,#0x37
	mov	_Single_WriteI2C_PARM_3,#0x22
	mov	dpl,#0xd0
	lcall	_Single_WriteI2C
;	./src/main.c:40: Single_WriteI2C(208, 0x38, 0);
	mov	_Single_WriteI2C_PARM_2,#0x38
	mov	_Single_WriteI2C_PARM_3,#0x00
	mov	dpl,#0xd0
;	./src/main.c:41: }
	ljmp	_Single_WriteI2C
;------------------------------------------------------------
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat_1                     Allocated with name '_sendbyte_PARM_2'
;add_2                     Allocated with name '_sendbyte_PARM_3'
;dat_2                     Allocated with name '_sendbyte_PARM_4'
;add_1                     Allocated to registers r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:43: void sendbyte(char add_1, char dat_1, char add_2, char dat_2) 
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	mov	r7,dpl
;	./src/main.c:46: LOAD = 0;
;	assignBit
	clr	_P2_1
;	./src/main.c:47: for (j = 0; j < 4; j++) {
	mov	r6,#0x00
00105$:
;	./src/main.c:48: for (i = 128; i > 0; i >>= 1) {
	mov	r5,#0x80
00103$:
;	./src/main.c:49: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/main.c:50: DIN = (add_2 & i);
	mov	a,r5
	anl	a,_sendbyte_PARM_3
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	./src/main.c:51: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/main.c:48: for (i = 128; i > 0; i >>= 1) {
	mov	a,r5
	clr	c
	rrc	a
	mov	r5,a
	jnz	00103$
;	./src/main.c:52: } add_2 = dat_2; dat_2 = add_1; add_1 = dat_1;
	mov	_sendbyte_PARM_3,_sendbyte_PARM_4
	mov	_sendbyte_PARM_4,r7
	mov	r7,_sendbyte_PARM_2
;	./src/main.c:47: for (j = 0; j < 4; j++) {
	inc	r6
	cjne	r6,#0x04,00129$
00129$:
	jc	00105$
;	./src/main.c:53: } LOAD = 1;
;	assignBit
	setb	_P2_1
;	./src/main.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'shift'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:56: void shift(void) 
;	-----------------------------------------
;	 function shift
;	-----------------------------------------
_shift:
;	./src/main.c:59: for (i = (17*ud+19)>>1; ud != 0 && i != (-19*ud+19)>>1; i -= ud)
	mov	__mulint_PARM_2,_ud
	mov	(__mulint_PARM_2 + 1),(_ud + 1)
	mov	dptr,#0x0011
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	add	a,#0x13
	mov	r6,a
	clr	a
	addc	a,b
	mov	c,acc.7
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
00107$:
	mov	a,_ud
	orl	a,(_ud + 1)
	jnz	00127$
	ret
00127$:
	mov	__mulint_PARM_2,_ud
	mov	(__mulint_PARM_2 + 1),(_ud + 1)
	mov	dptr,#0xffed
	push	ar6
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	add	a,#0x13
	mov	r5,a
	clr	a
	addc	a,b
	mov	c,acc.7
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r7,a
	mov	ar3,r6
	mov	r4,#0x00
	mov	a,r3
	cjne	a,ar5,00128$
	mov	a,r4
	cjne	a,ar7,00128$
	ret
00128$:
;	./src/main.c:60: if (i > 10 || i < 9) { m_1[i] = m_1[i + ud] & m[i];
	mov	a,r6
	add	a,#0xff - 0x0a
	jc	00101$
	cjne	r6,#0x09,00130$
00130$:
	jnc	00108$
00101$:
	mov	a,r6
	add	a,#_m_1
	mov	r1,a
	mov	r7,_ud
	mov	ar5,r6
	mov	a,r7
	add	a,r5
	add	a,#_m_1
	mov	r0,a
	mov	ar7,@r0
	mov	a,r6
	add	a,#_m
	mov	r0,a
	mov	a,@r0
	anl	a,r7
	mov	@r1,a
;	./src/main.c:61: m[i] = (m_1[i + ud] & m[i]) | m[i - ud]; }
	mov	a,_ud
	mov	r7,a
	add	a,r5
	add	a,#_m_1
	mov	r1,a
	mov	ar4,@r1
	mov	a,@r0
	mov	r3,a
	anl	ar4,a
	mov	a,r5
	clr	c
	subb	a,r7
	add	a,#_m
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	orl	a,r4
	mov	@r0,a
00108$:
;	./src/main.c:59: for (i = (17*ud+19)>>1; ud != 0 && i != (-19*ud+19)>>1; i -= ud)
	mov	r7,_ud
	mov	ar5,r6
	mov	a,r5
	clr	c
	subb	a,r7
	mov	r6,a
;	./src/main.c:62: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'call'
;------------------------------------------------------------
;j                         Allocated to registers r6 r7 
;k                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	./src/main.c:64: void call(void) 
;	-----------------------------------------
;	 function call
;	-----------------------------------------
_call:
;	./src/main.c:67: for (j = 0; j < 100; j++) { 
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
;	./src/main.c:68: P3_7 = 0; for (k = 0; k < 100; k++);
;	assignBit
	clr	_P3_7
	mov	r4,#0x64
	mov	r5,#0x00
00106$:
	dec	r4
	cjne	r4,#0xff,00137$
	dec	r5
00137$:
	mov	a,r4
	orl	a,r5
	jnz	00106$
;	./src/main.c:69: P3_7 = 1; for (k = 0; k < 100; k++);
;	assignBit
	setb	_P3_7
	mov	r4,#0x64
	mov	r5,#0x00
00109$:
	dec	r4
	cjne	r4,#0xff,00139$
	dec	r5
00139$:
	mov	a,r4
	orl	a,r5
	jnz	00109$
;	./src/main.c:67: for (j = 0; j < 100; j++) { 
	inc	r6
	cjne	r6,#0x00,00141$
	inc	r7
00141$:
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
;	./src/main.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Time'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/main.c:73: void Time(void) __interrupt (1) 
;	-----------------------------------------
;	 function Time
;	-----------------------------------------
_Time:
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
;	./src/main.c:76: TH0 = (15536) >> 8;
	mov	_TH0,#0x3c
;	./src/main.c:77: TL0 = (15536) % 256;
	mov	_TL0,#0xb0
;	./src/main.c:79: accel = (int)(((int)Single_ReadI2C(208, Y_H) << 8) | Single_ReadI2C(208, Y_L));
	mov	_Single_ReadI2C_PARM_2,#0x3d
	mov	dpl,#0xd0
	lcall	_Single_ReadI2C
	mov	r6,dpl
	mov	r7,#0x00
	mov	_Single_ReadI2C_PARM_2,#0x3e
	mov	dpl,#0xd0
	push	ar7
	push	ar6
	lcall	_Single_ReadI2C
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r5
	orl	a,r7
	mov	_accel,a
	mov	a,r4
	orl	a,r6
	mov	(_accel + 1),a
;	./src/main.c:80: ud = 0;
	clr	a
	mov	_ud,a
	mov	(_ud + 1),a
;	./src/main.c:81: if (accel > 5000) {ud = 1; m_1[9] = m_1[19] = 255; m[0] = m[10] = 0;}
	clr	c
	mov	a,#0x88
	subb	a,_accel
	mov	a,#(0x13 ^ 0x80)
	mov	b,(_accel + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
	mov	_ud,#0x01
	mov	(_ud + 1),#0x00
	mov	(_m_1 + 0x0013),#0xff
	mov	(_m_1 + 0x0009),#0xff
	mov	(_m + 0x000a),#0x00
	mov	_m,#0x00
00102$:
;	./src/main.c:82: if (accel < -5000) {ud = -1; m[9] = m[19] = 0; m_1[0] = m_1[10] = 255;}
	clr	c
	mov	a,_accel
	subb	a,#0x78
	mov	a,(_accel + 1)
	xrl	a,#0x80
	subb	a,#0x6c
	jnc	00104$
	mov	_ud,#0xff
	mov	(_ud + 1),#0xff
	mov	(_m + 0x0013),#0x00
	mov	(_m + 0x0009),#0x00
	mov	(_m_1 + 0x000a),#0xff
	mov	_m_1,#0xff
00104$:
;	./src/main.c:83: if (cnt % 10 == 0) {
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00288$
	ljmp	00131$
00288$:
;	./src/main.c:84: if (cnt % 40 == 0 && m[8] << 7 && ud == 1) {m[8] -= 1; m[11] += 128;}
	mov	__modsint_PARM_2,#0x28
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00106$
	mov	r7,(_m + 0x0008)
	mov	ar5,r7
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
	orl	a,r5
	jz	00106$
	mov	a,#0x01
	cjne	a,_ud,00291$
	dec	a
	cjne	a,(_ud + 1),00291$
	sjmp	00292$
00291$:
	sjmp	00106$
00292$:
	mov	a,r7
	dec	a
	mov	(_m + 0x0008),a
	mov	r7,(_m + 0x000b)
	mov	a,#0x80
	add	a,r7
	mov	(_m + 0x000b),a
00106$:
;	./src/main.c:85: if (cnt % 40 == 0 && m[11] >> 7 && ud == -1) {m[11] -= 128; m[8] += 1;}
	mov	__modsint_PARM_2,#0x28
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00163$
	mov	a,(_m + 0x000b)
	mov	r7,a
	rl	a
	anl	a,#0x01
	mov	r6,a
	jz	00163$
	mov	a,#0xff
	cjne	a,_ud,00163$
	cjne	a,(_ud + 1),00163$
	mov	a,r7
	add	a,#0x80
	mov	(_m + 0x000b),a
	mov	a,(_m + 0x0008)
	mov	r7,a
	inc	a
	mov	(_m + 0x0008),a
;	./src/main.c:86: for (i = 1; i < 9; i++) sendbyte(i, m[i], i, m[i + 10]);
00163$:
	mov	r7,#0x01
00138$:
	mov	a,r7
	add	a,#_m
	mov	r1,a
	mov	_sendbyte_PARM_2,@r1
	mov	ar6,r7
	mov	a,#0x0a
	add	a,r6
	add	a,#_m
	mov	r1,a
	mov	_sendbyte_PARM_4,@r1
	mov	_sendbyte_PARM_3,r7
	mov	dpl,r7
	push	ar7
	lcall	_sendbyte
	pop	ar7
	inc	r7
	cjne	r7,#0x09,00297$
00297$:
	jc	00138$
;	./src/main.c:88: if (cnt % 30 == 0 || cnt % 50 == 0) shift();
	mov	__modsint_PARM_2,#0x1e
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00114$
	mov	__modsint_PARM_2,#0x32
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00173$
00114$:
	lcall	_shift
;	./src/main.c:89: for (i = 1; i < 19; i++) {
00173$:
	mov	r7,#0x01
00146$:
;	./src/main.c:90: if (ud == 1) { for (j = 1; (m[i] & j) > 0; j <<= 1); m[i] = m[i] >> 1  | (j - 1);
	mov	a,#0x01
	cjne	a,_ud,00301$
	dec	a
	cjne	a,(_ud + 1),00301$
	sjmp	00302$
00301$:
	sjmp	00124$
00302$:
	mov	r6,#0x01
	mov	a,r7
	add	a,#_m
	mov	r1,a
00141$:
	mov	ar5,@r1
	mov	a,r6
	anl	a,r5
	jz	00117$
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r6,a
	sjmp	00141$
00117$:
	mov	a,r5
	clr	c
	rrc	a
	mov	r5,a
	mov	a,r6
	dec	a
	orl	a,r5
	mov	@r1,a
	sjmp	00147$
00124$:
;	./src/main.c:91: } else if (ud == -1) { for (j = 128; (m[i] & j) > 0; j >>= 1); if (j != 0) m[i] = (m[i] << 1) | (128 - j) << 1; }
	mov	a,#0xff
	cjne	a,_ud,00147$
	cjne	a,(_ud + 1),00147$
	mov	r6,#0x80
	mov	a,r7
	add	a,#_m
	mov	r1,a
00144$:
	mov	ar5,@r1
	mov	a,r6
	anl	a,r5
	jz	00118$
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	sjmp	00144$
00118$:
	mov	a,r6
	jz	00147$
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,#0x80
	clr	c
	subb	a,r6
	add	a,acc
	mov	r6,a
	orl	a,r5
	mov	@r1,a
00147$:
;	./src/main.c:89: for (i = 1; i < 19; i++) {
	inc	r7
	cjne	r7,#0x13,00308$
00308$:
	jc	00146$
;	./src/main.c:93: if (cnt % 30 != 0 && cnt % 50 != 0) shift();
	mov	__modsint_PARM_2,#0x1e
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00131$
	mov	__modsint_PARM_2,#0x32
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_cnt
	mov	dph,(_cnt + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00131$
	lcall	_shift
00131$:
;	./src/main.c:95: if (++cnt == 2560 || cnt == 2570 || cnt == 2580) call();
	inc	_cnt
	clr	a
	cjne	a,_cnt,00312$
	inc	(_cnt + 1)
00312$:
	clr	a
	cjne	a,_cnt,00313$
	mov	a,#0x0a
	cjne	a,(_cnt + 1),00313$
	sjmp	00132$
00313$:
	mov	a,#0x0a
	cjne	a,_cnt,00314$
	cjne	a,(_cnt + 1),00314$
	sjmp	00132$
00314$:
	mov	a,#0x14
	cjne	a,_cnt,00133$
	mov	a,#0x0a
	cjne	a,(_cnt + 1),00133$
00132$:
	lcall	_call
00133$:
;	./src/main.c:97: if (cnt == 2580) cnt = 0;
	mov	a,#0x14
	cjne	a,_cnt,00148$
	mov	a,#0x0a
	cjne	a,(_cnt + 1),00148$
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
00148$:
;	./src/main.c:98: }
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
;	./src/main.c:100: void main(void) 
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:102: sendbyte(12,1,12,1);
	mov	_sendbyte_PARM_2,#0x01
	mov	_sendbyte_PARM_3,#0x0c
	mov	_sendbyte_PARM_4,#0x01
	mov	dpl,#0x0c
	lcall	_sendbyte
;	./src/main.c:103: sendbyte(15,0,15,0);
	mov	_sendbyte_PARM_2,#0x00
	mov	_sendbyte_PARM_3,#0x0f
	mov	_sendbyte_PARM_4,#0x00
	mov	dpl,#0x0f
	lcall	_sendbyte
;	./src/main.c:104: sendbyte(9,0,9,0);
	mov	_sendbyte_PARM_2,#0x00
	mov	_sendbyte_PARM_3,#0x09
	mov	_sendbyte_PARM_4,#0x00
	mov	dpl,#0x09
	lcall	_sendbyte
;	./src/main.c:105: sendbyte(11,7,11,7);
	mov	_sendbyte_PARM_2,#0x07
	mov	_sendbyte_PARM_3,#0x0b
	mov	_sendbyte_PARM_4,#0x07
	mov	dpl,#0x0b
	lcall	_sendbyte
;	./src/main.c:106: sendbyte(10,0,10,0);
	mov	_sendbyte_PARM_2,#0x00
	mov	_sendbyte_PARM_3,#0x0a
	mov	_sendbyte_PARM_4,#0x00
	mov	dpl,#0x0a
	lcall	_sendbyte
;	./src/main.c:107: MPU6050_INIT();
	lcall	_MPU6050_INIT
;	./src/main.c:108: TMOD = 0x01;
	mov	_TMOD,#0x01
;	./src/main.c:109: TH0 = (15536) >> 8;
	mov	_TH0,#0x3c
;	./src/main.c:110: TL0 = (15536) % 256;
	mov	_TL0,#0xb0
;	./src/main.c:111: ET0 = EA = TR0 = 1;
;	assignBit
	setb	_TR0
;	assignBit
	mov	c,_TR0
	mov	_EA,c
;	assignBit
	mov	c,_EA
	mov	_ET0,c
;	./src/main.c:112: while(1);
00102$:
;	./src/main.c:113: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
