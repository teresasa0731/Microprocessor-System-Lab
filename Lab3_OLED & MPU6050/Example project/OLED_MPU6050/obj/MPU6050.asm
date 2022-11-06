;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.8 #13684 (MINGW64)
;--------------------------------------------------------
	.module MPU6050
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_ms
	.globl _Single_ReadI2C
	.globl _Single_WriteI2C
	.globl _readByte_PARM_2
	.globl _writeByte_PARM_3
	.globl _writeByte_PARM_2
	.globl _i2c_package
	.globl _Mmode
	.globl _Gscale
	.globl _Ascale
	.globl _MPU6050_INIT
	.globl _writeByte
	.globl _readByte
	.globl _readMPU6050_AccelData
	.globl _readMPU6050_GyroData
	.globl _resetMPU6050
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Ascale::
	.ds 1
_Gscale::
	.ds 1
_Mmode::
	.ds 1
_i2c_package::
	.ds 6
_writeByte_PARM_2:
	.ds 1
_writeByte_PARM_3:
	.ds 1
_readByte_PARM_2:
	.ds 1
_readMPU6050_AccelData_buffer_65536_27:
	.ds 3
_readMPU6050_AccelData_sloc0_1_0:
	.ds 2
_readMPU6050_GyroData_buffer_65536_29:
	.ds 3
_readMPU6050_GyroData_sloc0_1_0:
	.ds 2
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
;	./src/MPU6050.c:5: uint8_t Ascale = AFS_2G;     // AFS_2G, AFS_4G, AFS_8G, AFS_16G
	mov	_Ascale,#0x00
;	./src/MPU6050.c:6: uint8_t Gscale = GFS_500DPS; // GFS_250DPS, GFS_500DPS, GFS_1000DPS, GFS_2000DPS
	mov	_Gscale,#0x01
;	./src/MPU6050.c:7: uint8_t Mmode = 0x06;        // Either 8 Hz 0x02) or 100 Hz (0x06) magnetometer data ODR  
	mov	_Mmode,#0x06
;	./src/MPU6050.c:9: uint8_t i2c_package[6] = {0};
	mov	_i2c_package,#0x00
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
;Allocation info for local variables in function 'MPU6050_INIT'
;------------------------------------------------------------
;accel_fchoice_b           Allocated to registers 
;A_DLPFCFG                 Allocated to registers 
;mpu6050_i                 Allocated to registers 
;------------------------------------------------------------
;	./src/MPU6050.c:11: void MPU6050_INIT(void)
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
;	./src/MPU6050.c:17: delay_ms(100);                                          // Delay 100 ms
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/MPU6050.c:18: writeByte(MPU6050_ADDRESS, PWR_MGMT_1, 0x00);           // Clear sleep mode bit (6), enable all sensors 
	mov	_writeByte_PARM_2,#0x6b
	mov	_writeByte_PARM_3,#0x00
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:19: delay_ms(100);                                          // Delay 100 ms for PLL to get established on x-axis gyro; should check for PLL ready interrupt  
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/MPU6050.c:20: writeByte(MPU6050_ADDRESS , SIGNAL_PATH_RESET , 0x07);
	mov	_writeByte_PARM_2,#0x68
	mov	_writeByte_PARM_3,#0x07
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:21: writeByte(MPU6050_ADDRESS, PWR_MGMT_1, 0x01);           // Set clock source to be PLL with x-axis gyroscope reference, bits 2:0 = 001
	mov	_writeByte_PARM_2,#0x6b
	mov	_writeByte_PARM_3,#0x01
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:22: writeByte(MPU6050_ADDRESS, CONFIG, 0x03);  
	mov	_writeByte_PARM_2,#0x1a
	mov	_writeByte_PARM_3,#0x03
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:23: writeByte(MPU6050_ADDRESS, SMPLRT_DIV, 0);              // Use a 1000 Hz rate; the same rate set in CONFIG above     
	mov	_writeByte_PARM_2,#0x19
	mov	_writeByte_PARM_3,#0x00
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:24: mpu6050_i = (Gscale << 3) | 0x00;
	mov	a,_Gscale
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_writeByte_PARM_3,a
;	./src/MPU6050.c:25: writeByte(MPU6050_ADDRESS, GYRO_CONFIG, mpu6050_i);     // Write new GYRO_CONFIG value to register     
	mov	_writeByte_PARM_2,#0x1b
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:26: mpu6050_i = (Ascale << 3);
	mov	a,_Ascale
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_writeByte_PARM_3,a
;	./src/MPU6050.c:27: writeByte(MPU6050_ADDRESS, ACCEL_CONFIG, mpu6050_i);    // Write new ACCEL_CONFIG register value
	mov	_writeByte_PARM_2,#0x1c
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:29: writeByte(MPU6050_ADDRESS, ACCEL_CONFIG2, mpu6050_i);   // Write new ACCEL_CONFIG2 register value	
	mov	_writeByte_PARM_2,#0x1d
	mov	_writeByte_PARM_3,#0x03
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:30: writeByte(MPU6050_ADDRESS, INT_PIN_CFG, 0x22);    
	mov	_writeByte_PARM_2,#0x37
	mov	_writeByte_PARM_3,#0x22
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:31: writeByte(MPU6050_ADDRESS, INT_ENABLE, 0x00);           // disable data ready (bit 0) interrupt
	mov	_writeByte_PARM_2,#0x38
	mov	_writeByte_PARM_3,#0x00
	mov	dpl,#0xd0
;	./src/MPU6050.c:32: }
	ljmp	_writeByte
;------------------------------------------------------------
;Allocation info for local variables in function 'writeByte'
;------------------------------------------------------------
;subAddress                Allocated with name '_writeByte_PARM_2'
;REG_data                  Allocated with name '_writeByte_PARM_3'
;address                   Allocated to registers 
;------------------------------------------------------------
;	./src/MPU6050.c:35: void writeByte(uint8_t address, uint8_t subAddress, uint8_t REG_data)
;	-----------------------------------------
;	 function writeByte
;	-----------------------------------------
_writeByte:
;	./src/MPU6050.c:37: Single_WriteI2C(address, subAddress, REG_data);
	mov	_Single_WriteI2C_PARM_2,_writeByte_PARM_2
	mov	_Single_WriteI2C_PARM_3,_writeByte_PARM_3
;	./src/MPU6050.c:38: }
	ljmp	_Single_WriteI2C
;------------------------------------------------------------
;Allocation info for local variables in function 'readByte'
;------------------------------------------------------------
;subAddress                Allocated with name '_readByte_PARM_2'
;address                   Allocated to registers 
;------------------------------------------------------------
;	./src/MPU6050.c:41: uint8_t readByte(uint8_t address, uint8_t subAddress)
;	-----------------------------------------
;	 function readByte
;	-----------------------------------------
_readByte:
;	./src/MPU6050.c:43: return Single_ReadI2C(address, subAddress); 
	mov	_Single_ReadI2C_PARM_2,_readByte_PARM_2
;	./src/MPU6050.c:44: }
	ljmp	_Single_ReadI2C
;------------------------------------------------------------
;Allocation info for local variables in function 'readMPU6050_AccelData'
;------------------------------------------------------------
;buffer                    Allocated with name '_readMPU6050_AccelData_buffer_65536_27'
;sloc0                     Allocated with name '_readMPU6050_AccelData_sloc0_1_0'
;------------------------------------------------------------
;	./src/MPU6050.c:46: void readMPU6050_AccelData(int * buffer)
;	-----------------------------------------
;	 function readMPU6050_AccelData
;	-----------------------------------------
_readMPU6050_AccelData:
	mov	_readMPU6050_AccelData_buffer_65536_27,dpl
	mov	(_readMPU6050_AccelData_buffer_65536_27 + 1),dph
	mov	(_readMPU6050_AccelData_buffer_65536_27 + 2),b
;	./src/MPU6050.c:49: i2c_package[0] = readByte(MPU6050_ADDRESS, ACCEL_XOUT_H);
	mov	_readByte_PARM_2,#0x3b
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	_i2c_package,a
;	./src/MPU6050.c:50: i2c_package[1] = readByte(MPU6050_ADDRESS, ACCEL_XOUT_L);
	mov	_readByte_PARM_2,#0x3c
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0001),a
;	./src/MPU6050.c:51: i2c_package[2] = readByte(MPU6050_ADDRESS, ACCEL_YOUT_H);
	mov	_readByte_PARM_2,#0x3d
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0002),a
;	./src/MPU6050.c:52: i2c_package[3] = readByte(MPU6050_ADDRESS, ACCEL_YOUT_L);
	mov	_readByte_PARM_2,#0x3e
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0003),a
;	./src/MPU6050.c:53: i2c_package[4] = readByte(MPU6050_ADDRESS, ACCEL_ZOUT_H);
	mov	_readByte_PARM_2,#0x3f
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0004),a
;	./src/MPU6050.c:54: i2c_package[5] = readByte(MPU6050_ADDRESS, ACCEL_ZOUT_L);
	mov	_readByte_PARM_2,#0x40
	mov	dpl,#0xd0
	lcall	_readByte
	mov	r4,dpl
	mov	(_i2c_package + 0x0005),r4
;	./src/MPU6050.c:56: buffer[0] = (int)(((int)i2c_package[0] << 8) | i2c_package[1]) ;  // Turn the MSB and LSB into a signed 16-bit value
	mov	r3,_i2c_package
	mov	r2,#0x00
	mov	r6,(_i2c_package + 0x0001)
	mov	r7,#0x00
	mov	a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	dpl,_readMPU6050_AccelData_buffer_65536_27
	mov	dph,(_readMPU6050_AccelData_buffer_65536_27 + 1)
	mov	b,(_readMPU6050_AccelData_buffer_65536_27 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	./src/MPU6050.c:57: buffer[1] = (int)(((int)i2c_package[2] << 8) | i2c_package[3]) ;  
	mov	a,#0x02
	add	a,_readMPU6050_AccelData_buffer_65536_27
	mov	r5,a
	clr	a
	addc	a,(_readMPU6050_AccelData_buffer_65536_27 + 1)
	mov	r6,a
	mov	r7,(_readMPU6050_AccelData_buffer_65536_27 + 2)
	mov	r2,(_i2c_package + 0x0002)
	mov	r3,#0x00
	mov	(_readMPU6050_AccelData_sloc0_1_0 + 1),r2
;	1-genFromRTrack replaced	mov	_readMPU6050_AccelData_sloc0_1_0,#0x00
	mov	_readMPU6050_AccelData_sloc0_1_0,r3
	mov	r2,(_i2c_package + 0x0003)
	mov	r3,#0x00
	mov	a,_readMPU6050_AccelData_sloc0_1_0
	orl	ar2,a
	mov	a,(_readMPU6050_AccelData_sloc0_1_0 + 1)
	orl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	./src/MPU6050.c:58: buffer[2] = (int)(((int)i2c_package[4] << 8) | i2c_package[5]) ; 
	mov	a,#0x04
	add	a,_readMPU6050_AccelData_buffer_65536_27
	mov	r5,a
	clr	a
	addc	a,(_readMPU6050_AccelData_buffer_65536_27 + 1)
	mov	r6,a
	mov	r7,(_readMPU6050_AccelData_buffer_65536_27 + 2)
	mov	r2,(_i2c_package + 0x0004)
	mov	r3,#0x00
	mov	(_readMPU6050_AccelData_sloc0_1_0 + 1),r2
;	1-genFromRTrack replaced	mov	_readMPU6050_AccelData_sloc0_1_0,#0x00
	mov	_readMPU6050_AccelData_sloc0_1_0,r3
	mov	ar3,r4
	mov	r4,#0x00
	mov	a,_readMPU6050_AccelData_sloc0_1_0
	orl	ar3,a
	mov	a,(_readMPU6050_AccelData_sloc0_1_0 + 1)
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	./src/MPU6050.c:59: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'readMPU6050_GyroData'
;------------------------------------------------------------
;buffer                    Allocated with name '_readMPU6050_GyroData_buffer_65536_29'
;sloc0                     Allocated with name '_readMPU6050_GyroData_sloc0_1_0'
;------------------------------------------------------------
;	./src/MPU6050.c:61: void readMPU6050_GyroData(int * buffer)
;	-----------------------------------------
;	 function readMPU6050_GyroData
;	-----------------------------------------
_readMPU6050_GyroData:
	mov	_readMPU6050_GyroData_buffer_65536_29,dpl
	mov	(_readMPU6050_GyroData_buffer_65536_29 + 1),dph
	mov	(_readMPU6050_GyroData_buffer_65536_29 + 2),b
;	./src/MPU6050.c:63: i2c_package[5] = readByte(MPU6050_ADDRESS, GYRO_ZOUT_L);
	mov	_readByte_PARM_2,#0x48
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0005),a
;	./src/MPU6050.c:64: i2c_package[4] = readByte(MPU6050_ADDRESS, GYRO_ZOUT_H);
	mov	_readByte_PARM_2,#0x47
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0004),a
;	./src/MPU6050.c:65: i2c_package[3] = readByte(MPU6050_ADDRESS, GYRO_YOUT_L);
	mov	_readByte_PARM_2,#0x46
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0003),a
;	./src/MPU6050.c:66: i2c_package[2] = readByte(MPU6050_ADDRESS, GYRO_YOUT_H);
	mov	_readByte_PARM_2,#0x45
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0002),a
;	./src/MPU6050.c:67: i2c_package[1] = readByte(MPU6050_ADDRESS, GYRO_XOUT_L);
	mov	_readByte_PARM_2,#0x44
	mov	dpl,#0xd0
	lcall	_readByte
	mov	a,dpl
	mov	(_i2c_package + 0x0001),a
;	./src/MPU6050.c:68: i2c_package[0] = readByte(MPU6050_ADDRESS, GYRO_XOUT_H);
	mov	_readByte_PARM_2,#0x43
	mov	dpl,#0xd0
	lcall	_readByte
	mov	r4,dpl
	mov	_i2c_package,r4
;	./src/MPU6050.c:69: buffer[0] = (int)(((int)i2c_package[0] << 8) | i2c_package[1]) ;  // Turn the MSB and LSB into a signed 16-bit value
	mov	ar3,r4
	mov	r4,#0x00
	mov	r2,(_i2c_package + 0x0001)
	mov	r7,#0x00
	mov	a,r2
	orl	ar4,a
	mov	a,r7
	orl	ar3,a
	mov	dpl,_readMPU6050_GyroData_buffer_65536_29
	mov	dph,(_readMPU6050_GyroData_buffer_65536_29 + 1)
	mov	b,(_readMPU6050_GyroData_buffer_65536_29 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	./src/MPU6050.c:70: buffer[1] = (int)(((int)i2c_package[2] << 8) | i2c_package[3]) ;  
	mov	a,#0x02
	add	a,_readMPU6050_GyroData_buffer_65536_29
	mov	r5,a
	clr	a
	addc	a,(_readMPU6050_GyroData_buffer_65536_29 + 1)
	mov	r6,a
	mov	r7,(_readMPU6050_GyroData_buffer_65536_29 + 2)
	mov	r3,(_i2c_package + 0x0002)
	mov	r4,#0x00
	mov	(_readMPU6050_GyroData_sloc0_1_0 + 1),r3
;	1-genFromRTrack replaced	mov	_readMPU6050_GyroData_sloc0_1_0,#0x00
	mov	_readMPU6050_GyroData_sloc0_1_0,r4
	mov	r2,(_i2c_package + 0x0003)
	mov	r4,#0x00
	mov	a,_readMPU6050_GyroData_sloc0_1_0
	orl	ar2,a
	mov	a,(_readMPU6050_GyroData_sloc0_1_0 + 1)
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	./src/MPU6050.c:71: buffer[2] = (int)(((int)i2c_package[4] << 8) | i2c_package[5]) ; 
	mov	a,#0x04
	add	a,_readMPU6050_GyroData_buffer_65536_29
	mov	r5,a
	clr	a
	addc	a,(_readMPU6050_GyroData_buffer_65536_29 + 1)
	mov	r6,a
	mov	r7,(_readMPU6050_GyroData_buffer_65536_29 + 2)
	mov	r3,(_i2c_package + 0x0004)
	mov	r4,#0x00
	mov	(_readMPU6050_GyroData_sloc0_1_0 + 1),r3
;	1-genFromRTrack replaced	mov	_readMPU6050_GyroData_sloc0_1_0,#0x00
	mov	_readMPU6050_GyroData_sloc0_1_0,r4
	mov	r2,(_i2c_package + 0x0005)
	mov	r4,#0x00
	mov	a,_readMPU6050_GyroData_sloc0_1_0
	orl	ar2,a
	mov	a,(_readMPU6050_GyroData_sloc0_1_0 + 1)
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	./src/MPU6050.c:72: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'resetMPU6050'
;------------------------------------------------------------
;	./src/MPU6050.c:74: void resetMPU6050(void) 
;	-----------------------------------------
;	 function resetMPU6050
;	-----------------------------------------
_resetMPU6050:
;	./src/MPU6050.c:77: writeByte(MPU6050_ADDRESS, PWR_MGMT_1, 0x80); // Write a one to bit 7 reset bit; toggle reset device
	mov	_writeByte_PARM_2,#0x6b
	mov	_writeByte_PARM_3,#0x80
	mov	dpl,#0xd0
	lcall	_writeByte
;	./src/MPU6050.c:78: delay_ms(100);
	mov	dptr,#0x0064
;	./src/MPU6050.c:79: }
	ljmp	_delay_ms
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
