#include "MPU6050.h"
#include "i2c.h"
#include "delay.h"

uint8_t Ascale = AFS_2G;     // AFS_2G, AFS_4G, AFS_8G, AFS_16G
uint8_t Gscale = GFS_500DPS; // GFS_250DPS, GFS_500DPS, GFS_1000DPS, GFS_2000DPS
uint8_t Mmode = 0x06;        // Either 8 Hz 0x02) or 100 Hz (0x06) magnetometer data ODR  

uint8_t i2c_package[6] = {0};

void MPU6050_INIT(void)
{
  uint8_t accel_fchoice_b = 1;
  uint8_t A_DLPFCFG = 3;
  uint8_t mpu6050_i = 0;
  // Initialize MPU6050 device
  delay_ms(100);                                          // Delay 100 ms
  writeByte(MPU6050_ADDRESS, PWR_MGMT_1, 0x00);           // Clear sleep mode bit (6), enable all sensors 
  delay_ms(100);                                          // Delay 100 ms for PLL to get established on x-axis gyro; should check for PLL ready interrupt  
  writeByte(MPU6050_ADDRESS , SIGNAL_PATH_RESET , 0x07);
  writeByte(MPU6050_ADDRESS, PWR_MGMT_1, 0x01);           // Set clock source to be PLL with x-axis gyroscope reference, bits 2:0 = 001
  writeByte(MPU6050_ADDRESS, CONFIG, 0x03);  
  writeByte(MPU6050_ADDRESS, SMPLRT_DIV, 0);              // Use a 1000 Hz rate; the same rate set in CONFIG above     
  mpu6050_i = (Gscale << 3) | 0x00;
  writeByte(MPU6050_ADDRESS, GYRO_CONFIG, mpu6050_i);     // Write new GYRO_CONFIG value to register     
  mpu6050_i = (Ascale << 3);
  writeByte(MPU6050_ADDRESS, ACCEL_CONFIG, mpu6050_i);    // Write new ACCEL_CONFIG register value
	mpu6050_i = (0x00 + A_DLPFCFG);	
	writeByte(MPU6050_ADDRESS, ACCEL_CONFIG2, mpu6050_i);   // Write new ACCEL_CONFIG2 register value	
	writeByte(MPU6050_ADDRESS, INT_PIN_CFG, 0x22);    
	writeByte(MPU6050_ADDRESS, INT_ENABLE, 0x00);           // disable data ready (bit 0) interrupt
}


void writeByte(uint8_t address, uint8_t subAddress, uint8_t REG_data)
{
  Single_WriteI2C(address, subAddress, REG_data);
}


uint8_t readByte(uint8_t address, uint8_t subAddress)
{  
    return Single_ReadI2C(address, subAddress); 
}

void readMPU6050_AccelData(int * buffer)
{

  i2c_package[0] = readByte(MPU6050_ADDRESS, ACCEL_XOUT_H);
  i2c_package[1] = readByte(MPU6050_ADDRESS, ACCEL_XOUT_L);
  i2c_package[2] = readByte(MPU6050_ADDRESS, ACCEL_YOUT_H);
  i2c_package[3] = readByte(MPU6050_ADDRESS, ACCEL_YOUT_L);
  i2c_package[4] = readByte(MPU6050_ADDRESS, ACCEL_ZOUT_H);
  i2c_package[5] = readByte(MPU6050_ADDRESS, ACCEL_ZOUT_L);

  buffer[0] = (int)(((int)i2c_package[0] << 8) | i2c_package[1]) ;  // Turn the MSB and LSB into a signed 16-bit value
  buffer[1] = (int)(((int)i2c_package[2] << 8) | i2c_package[3]) ;  
  buffer[2] = (int)(((int)i2c_package[4] << 8) | i2c_package[5]) ; 
}

void readMPU6050_GyroData(int * buffer)
{
  i2c_package[5] = readByte(MPU6050_ADDRESS, GYRO_ZOUT_L);
  i2c_package[4] = readByte(MPU6050_ADDRESS, GYRO_ZOUT_H);
  i2c_package[3] = readByte(MPU6050_ADDRESS, GYRO_YOUT_L);
  i2c_package[2] = readByte(MPU6050_ADDRESS, GYRO_YOUT_H);
  i2c_package[1] = readByte(MPU6050_ADDRESS, GYRO_XOUT_L);
  i2c_package[0] = readByte(MPU6050_ADDRESS, GYRO_XOUT_H);
  buffer[0] = (int)(((int)i2c_package[0] << 8) | i2c_package[1]) ;  // Turn the MSB and LSB into a signed 16-bit value
  buffer[1] = (int)(((int)i2c_package[2] << 8) | i2c_package[3]) ;  
  buffer[2] = (int)(((int)i2c_package[4] << 8) | i2c_package[5]) ; 
}

void resetMPU6050(void) 
{
  // reset device
  writeByte(MPU6050_ADDRESS, PWR_MGMT_1, 0x80); // Write a one to bit 7 reset bit; toggle reset device
  delay_ms(100);
}