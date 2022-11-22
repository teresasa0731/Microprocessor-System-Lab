#include "8051.h"
#include "i2c.h"
#include "MPU6050.h"
#include "delay.h"

#define SCL P3_0
#define SDA P3_1
#define DOUT P2_2
#define LOAD P2_1
#define CLK P2_0
#define Y_H 0x3D
#define Y_L 0x3E

unsigned char m_1[20], m[20] = {0,255,255,255,255,255,255,255,255};
int accel, cnt = 0, ud;

void sendbyte(char add_1, char dat_1, char add_2, char dat_2) {
	unsigned char i, j;
	LOAD = 0;
	for (j = 0; j < 4; j++) {
		for (i = 128; i > 0; i >>= 1) {
			CLK = 0;
			DIN = (add_2 & i);
			CLK = 1;
		} 
		add_2 = dat_2; 
		dat_2 = add_1; 
		add_1 = dat_1;
	}
	LOAD = 1;
}

void shift(void) {
  char i;
  for (i = (17*ud+19)>>1; ud != 0 && i != (-19*ud+19)>>1; i -= ud)
    if (i > 10 || i < 9) { m_1[i] = m_1[i + ud] & m[i];
      m[i] = (m_1[i + ud] & m[i]) | m[i - ud]; }
}

void call(void) {
  int j, k;
  for (j = 0; j < 100; j++) { 
    P3_7 = 0; for (k = 0; k < 100; k++);
    P3_7 = 1; for (k = 0; k < 100; k++);
  }
}

void Time(void) interrupt__(1) {
  unsigned char i, j;
  TH0 = (15536) >> 8;
  TL0 = (15536) % 256;
  
  accel = (int)(((int)Single_ReadI2C(208, Y_H) << 8) | Single_ReadI2C(208, Y_L));
  ud = 0;
  if (accel > 5000) {ud = 1; m_1[9] = m_1[19] = 255; m[0] = m[10] = 0;}
  if (accel < -5000) {ud = -1; m[9] = m[19] = 0; m_1[0] = m_1[10] = 255;}
  if (cnt % 10 == 0) {
    if (cnt % 40 == 0 && m[8] << 7 && ud == 1) {m[8] -= 1; m[11] += 128;}
    if (cnt % 40 == 0 && m[11] >> 7 && ud == -1) {m[11] -= 128; m[8] += 1;}
    for (i = 1; i < 9; i++) sendbyte(i, m[i], i, m[i + 10]);

    if (cnt % 30 == 0 || cnt % 50 == 0) shift();
    for (i = 1; i < 19; i++) {
      if (ud == 1) { for (j = 1; (m[i] & j) > 0; j <<= 1); m[i] = m[i] >> 1  | (j - 1);
      } else if (ud == -1) { for (j = 128; (m[i] & j) > 0; j >>= 1); if (j != 0) m[i] = (m[i] << 1) | (128 - j) << 1; }
    }
    if (cnt % 30 != 0 && cnt % 50 != 0) shift();
  }
  if (++cnt == 2560 || cnt == 2570 || cnt == 2580) call();
  if (cnt == 2580) cnt = 0;
}

int main(void) {
  
  SDA = 1;
  SCL = 1;
	MPU6050_INIT();
	
  sendbyte(12,1,12,1);
  sendbyte(15,0,15,0);
  sendbyte(9,0,9,0);
  sendbyte(11,7,11,7);
  sendbyte(10,0,10,0);
  TMOD = 0x01;
  TH0 = (15536) >> 8;
  TL0 = (15536) % 256;
  ET0 = EA = TR0 = 1;
  while(1);
}
