;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module adc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_5
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
	.globl _SPI_WR
	.globl _read_adc3202
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_WR'
;------------------------------------------------------------
;data_in                   Allocated to registers r7 
;data_out                  Allocated to registers r6 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	./src/adc.c:5: char SPI_WR(char data_in)
;	-----------------------------------------
;	 function SPI_WR
;	-----------------------------------------
_SPI_WR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./src/adc.c:7: char data_out = 0;
	mov	r6,#0x00
;	./src/adc.c:9: for(i=0;i<8;i++)  // 8 bit transaction
	mov	r5,#0x00
00104$:
;	./src/adc.c:11: data_out <<= 1;
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r6,a
;	./src/adc.c:13: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/adc.c:14: delay_5();
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_5
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/adc.c:15: DIN = (data_in & 0x80) ? 1 : 0;   // Send data_in via DIN to ADC (e.g. start bit, mode selection)
	mov	ar3,r7
	anl	ar3,#0x80
	mov	r4,#0x00
;	assignBit
	mov	a,r3
	orl	a,r4
	add	a,#0xff
	mov	_P2_1,c
;	./src/adc.c:16: delay_5();
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_5
;	./src/adc.c:17: CLK = 1;
;	assignBit
	setb	_P2_0
;	./src/adc.c:18: delay_5();
	lcall	_delay_5
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/adc.c:20: if(DOUT == 1)   // Read DOUT
	jnb	_P2_2,00102$
;	./src/adc.c:21: data_out = (data_out | 0x01);   // Store into data_out
	orl	ar6,#0x01
00102$:
;	./src/adc.c:22: data_in <<= 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	./src/adc.c:9: for(i=0;i<8;i++)  // 8 bit transaction
	inc	r5
	cjne	r5,#0x08,00122$
00122$:
	jc	00104$
;	./src/adc.c:24: return data_out;
	mov	dpl,r6
;	./src/adc.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_adc3202'
;------------------------------------------------------------
;channel                   Allocated to registers r7 
;data_buff                 Allocated to registers r7 r6 
;spi_buff                  Allocated to registers r5 
;------------------------------------------------------------
;	./src/adc.c:27: unsigned int read_adc3202(unsigned char channel)
;	-----------------------------------------
;	 function read_adc3202
;	-----------------------------------------
_read_adc3202:
	mov	r7,dpl
;	./src/adc.c:33: LOAD = 0;
;	assignBit
	clr	_P2_3
;	./src/adc.c:36: SPI_WR(0x01);               // First byte transaction includes start bit
	mov	dpl,#0x01
	push	ar7
	lcall	_SPI_WR
	pop	ar7
;	./src/adc.c:37: if(channel == 1)            // Channel 1: 11100000, to IR sensor
	cjne	r7,#0x01,00102$
;	./src/adc.c:38: spi_buff = SPI_WR(0xe0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
	mov	dpl,#0xe0
	lcall	_SPI_WR
	mov	r7,dpl
	sjmp	00103$
00102$:
;	./src/adc.c:40: spi_buff = SPI_WR(0xa0);  // Second byte transaction includes mode selection and higher 4 bit ADC output
	mov	dpl,#0xa0
	lcall	_SPI_WR
	mov	r7,dpl
00103$:
;	./src/adc.c:41: data_buff = spi_buff & 0x0f;
	anl	ar7,#0x0f
;	./src/adc.c:42: data_buff <<= 8;            // Store higher 4 bit ADC output
	mov	ar6,r7
	mov	r7,#0x00
;	./src/adc.c:44: spi_buff = SPI_WR(0x00);    // Third byte transaction includes lower 8 bit ADC output
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_SPI_WR
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	./src/adc.c:45: data_buff = data_buff | spi_buff;   // Store higher 4 bit ADC output
	mov	r4,#0x00
	mov	a,r5
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	./src/adc.c:47: LOAD = 1;  
;	assignBit
	setb	_P2_3
;	./src/adc.c:48: CLK = 0;
;	assignBit
	clr	_P2_0
;	./src/adc.c:49: DIN = 0;
;	assignBit
	clr	_P2_1
;	./src/adc.c:51: return data_buff;
;	./src/adc.c:52: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
