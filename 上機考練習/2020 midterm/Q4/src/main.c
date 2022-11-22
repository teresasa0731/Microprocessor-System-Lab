#include "8051.h"
#include "oled_i2c.h"
#include "i2c.h"
#include "MPU6050.h"
#include "delay.h"

int data_buf;
char i = 0;

int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output
int gyro_data[3] = {0, 0, 0};   // Stores the 16-bit signed gyro sensor output



void main(void)
{		 
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    MPU6050_INIT();
		
    OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position

    OLED_SetCursor(2, 0);  
	OLED_DisplayString("Protractor ");
    OLED_SetCursor(3, 0);  
	OLED_DisplayString("tan = 0 ");
	delay_ms(1000);

	while(1) {
      	readMPU6050_GyroData(&gyro_data[0]);

		data_buf = gyro_data[0];
		OLED_SetCursor(4, 0);
		 if(data_buf < 0) {
          OLED_DisplayChar('-');
          data_buf = data_buf * -1;
        } else {
          OLED_DisplayChar(' ');
        }
         
		OLED_DisplayChar(data_buf / 10000 + '0');
		OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
		OLED_DisplayChar(data_buf % 1000 / 100 + '0');
		OLED_DisplayChar(data_buf % 100 / 10 + '0');
		OLED_DisplayChar(data_buf % 10 + '0');

		data_buf = gyro_data[1];
		OLED_SetCursor(5, 0); 
		 if(data_buf < 0) {
          OLED_DisplayChar('-');
          data_buf = data_buf * -1;
        } else {
          OLED_DisplayChar(' ');
        }
        
		OLED_DisplayChar(data_buf / 10000 + '0');
		OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
		OLED_DisplayChar(data_buf % 1000 / 100 + '0');
		OLED_DisplayChar(data_buf % 100 / 10 + '0');
		OLED_DisplayChar(data_buf % 10 + '0');

		data_buf = gyro_data[2];
		OLED_SetCursor(6, 0);
		 if(data_buf < 0) {
          OLED_DisplayChar('-');
          data_buf = data_buf * -1;
        } else {
          OLED_DisplayChar(' ');
        }
         
		
		OLED_DisplayChar(data_buf / 10000 + '0');
		OLED_DisplayChar(data_buf % 10000 / 1000 + '0');
		OLED_DisplayChar(data_buf % 1000 / 100 + '0');
		OLED_DisplayChar(data_buf % 100 / 10 + '0');
		OLED_DisplayChar(data_buf % 10 + '0');
      delay_ms(100);
    }
}
