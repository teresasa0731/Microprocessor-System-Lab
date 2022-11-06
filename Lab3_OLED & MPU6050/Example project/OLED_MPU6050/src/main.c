/***************************************************************************************************
                                   ExploreEmbedded Copyright Notice 
 ****************************************************************************************************
 * File:   oled_i2c.c
 * Version: 16.0
 * Author: ExploreEmbedded
 * Website: http://www.exploreembedded.com/wiki
 * Description: SSD1306 I2C OLED library to display strings, numbers, graphs and logos

This code has been developed and tested on ExploreEmbedded boards.  
We strongly believe that the library works on any of development boards for respective controllers. 
Check this link http://www.exploreembedded.com/wiki for awesome tutorials on 8051,PIC,AVR,ARM,Robotics,RTOS,IOT.
ExploreEmbedded invests substantial time and effort developing open source HW and SW tools, to support consider 
buying the ExploreEmbedded boards.

The ExploreEmbedded libraries and examples are licensed under the terms of the new-bsd license(two-clause bsd license).
See also: http://www.opensource.org/licenses/bsd-license.php
EXPLOREEMBEDDED DISCLAIMS ANY KIND OF HARDWARE FAILURE RESULTING OUT OF USAGE OF LIBRARIES, DIRECTLY OR
INDIRECTLY. FILES MAY BE SUBJECT TO CHANGE WITHOUT PRIOR NOTICE. THE REVISION HISTORY CONTAINS THE INFORMATION 
RELATED TO UPDATES.

Permission to use, copy, modify, and distribute this software and its documentation for any purpose
and without fee is hereby granted, provided that this copyright notices appear in all copies 
and that both those copyright notices and this permission notice appear in supporting documentation.
 **************************************************************************************************/ 

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
		OLED_DisplayString("AX ");
    OLED_SetCursor(3, 0);  
		OLED_DisplayString("AY ");
    OLED_SetCursor(4, 0);  
		OLED_DisplayString("AZ ");
    OLED_SetCursor(5, 0);  
		OLED_DisplayString("GX ");
    OLED_SetCursor(6, 0);  
		OLED_DisplayString("GY ");
    OLED_SetCursor(7, 0);  
		OLED_DisplayString("GZ ");

		while(1) {
      readMPU6050_AccelData(&accel_data[0]);
      readMPU6050_GyroData(&gyro_data[0]);

      for(i = 0; i < 6; i++) {
        if(i < 3) {
          data_buf = accel_data[i];
          OLED_SetCursor(2 + i, 54); 
        } else {
          data_buf = gyro_data[i - 3];
          OLED_SetCursor(2 + i, 54); 
        }
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
      }
      delay_ms(100);
    }
}
