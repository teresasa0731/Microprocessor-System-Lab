#include "8051.h"
#include "delay.h"
#include "MPU6050.h"
#include "i2c.h"

#define led P1
#define DOUT P2_2
#define LOAD P2_1
#define CLK P2_0
#define BUZZ P3_7
#define Y_H 0x3D
#define Y_L 0x3E
#define matrixnum   2      //number of 7-segment display/dot matrix

//define reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F


//MPU6050 data
enum Ascale {AFS_2G = 0, AFS_4G, AFS_8G, AFS_16G};
enum Gscale {GFS_250DPS = 0, GFS_500DPS, GFS_1000DPS, GFS_2000DPS};
uint8_t Ascale = AFS_2G;
uint8_t Gscale = GFS_500DPS;

typedef struct// 3 bytes
{
    unsigned char ACTIVE : 1;
    unsigned char END : 1;
    unsigned char MODE: 1;
}STATES;

unsigned char patt_1[8],patt_2[8];
unsigned int inv;
int cur,idx,flag;
STATES states[1];

void Initial(void);
void MPU6050_INIT(void);
void readMPU6050_AccelData(int * buffer);
void sendbyte(unsigned char address, unsigned char dat);
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat);
void draw(void);
int buildMatrix(unsigned int inv);

void Initial(void)
{   
  unsigned char i,a;
    for(a=1;a<=2;a++){
      Writesingle7219(a,SHUT_DOWN, 0x01);          // normal mode(0xX1)
      Writesingle7219(a,DISPLAY_TEST, 0x00); 
      Writesingle7219(a,DECODE_MODE, 0x00);        // select non-decode mode
      Writesingle7219(a,SCAN_LIMIT, 0x07);         // use all 8 LED
      Writesingle7219(a,INTENSITY, 0x00);          // set up intensity
 
      for(i=1; i<=8; i++) { 
        Writesingle7219(a,i, 0x00);              // turn off all LED
      }
    } 
}

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

// send address and data into max7219
void sendbyte(unsigned char address, unsigned char dat) {
	unsigned char i;

	for (i=0; i<8; i++) {       // get last 8 bits(address)
		CLK = 0;
		DOUT = (address & 0x80); // get msb and shift left
		address <<= 1;
		CLK = 1;
	}

	for (i=0; i<8; i++) {     	// get first 8 bits(data)
		CLK = 0;
		DOUT = (dat & 0x80);    	// get msb and shit left
		dat <<= 1;
		CLK = 1;
	}
}


// when there are multiple 7-segment displays/dot matrices connected in series, we need to specify which 7-segment display/dot matrix to write.
// chosen : choosing which matrix (7-segment display) to display
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat)
{
    unsigned char cnt;
    LOAD = 0;
    for(cnt=matrixnum; cnt>chosen; cnt--) { //write data into the selected matrix
        sendbyte(0x00, 0x00);               //write 0 to no-op
    }
   		sendbyte(address, dat);             //sent data to chosen led-matrix

   	for (cnt=chosen-1; cnt>=1; cnt--) {
   		sendbyte(0x00, 0x00);               //write 0 to no-op
    }

   LOAD=1;
}

//call by timer:every 1s will disappear one sand.
int buildMatrix(unsigned int inv){
  unsigned char a;
  switch (inv)
  {
  case 0: //initialize matrix
    if(mode == 0){
      for(a=0;a<8;a++){
        patt_1[a] = 0xFF;
        patt_2[a] = 0x00;
      }
      cur = 0;
      idx = 1;
      flag = 1;
    }else if (mode == 1)
    {
      for(a=0;a<8;a++){
        patt_1[a] = 0x00;
        patt_2[a] = 0xFF;
      }
    }
    break;
  case 1: //upside

    patt_1[cur] >>= 1;
    cur ++ ;
    fillDown();

    if(flag){
      if(cur == idx){
      idx += 1;
      cur = 0;
      }
    }else{
      if(cur == 8){
        cur = cur-idx;
        if(idx!=0){
          idx -=1;
        }else{
          flag = 1;
        }
      }
    }
    
    if(flag && idx == 9){
      flag = 0;
      idx = 6;
      cur = 1;
    }else if (flag && idx == 0)
    {
      return 1;
    }

    return 0;
  
  case 2:

  default:
    break;
  }
}


void draw(void){
  unsigned char i;

  if(buildMatrix(1) == 0){
    for(i=1; i<=8; i++) {
      Writesingle7219(1, i, patt_1[i-1]);
      Writesingle7219(2, i, patt_2[i-1]);
    }
    delay_ms(1000);
  }else{
    patt_1[8] = 0x00;
    for(i=1; i<=8; i++) {
      Writesingle7219(1, i, patt_1[i-1]);
      Writesingle7219(2, i, patt_2[i-1]);
    }
    mode = 1;
  }
}

void fillDown(void){
  
}

void modeFilling(void){
  led = ~0x01;
  for( i=0; i<3; i++){
    BUZZ = 1;
    delay_ms(1000);
    BUZZ = 0;
  }
  buildMatrix(0)
}

int detectPosition(void){

}

int main(void) {

	Initial();
  MPU6050_INIT();
  detectPosition();
  while (1)
  {
    if(active){
      buildMatrix(0);
      active == 1;
    }else if (active == 0)
    {
      /* code */
    }
    


    
  }
  
	
}

