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
    unsigned int pre_location[2] = {4,52};
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    MPU6050_INIT();

    OLED_SetCursor(4,50);
    OLED_DisplayString("START");
    delay_ms(1000);
    OLED_Clear();
    OLED_SetCursor(4,52);
    OLED_DisplayChar('0');
    
		while(1) {
      int delta_x = 0, delta_y = 0;
      
      readMPU6050_AccelData(&accel_data[0]);
      //readMPU6050_GyroData(&gyro_data[0]);
      delta_x = accel_data[0];
      delta_y = accel_data[1];

      
      pre_location[0]  = pre_location[0]+delta_x/5000;
      pre_location[1]  = pre_location[1]+delta_y/1000;
       
      if(pre_location[0]<=1)pre_location[0] = 1;
      else if (pre_location[0]>7)pre_location[0] = 7;

      if(pre_location[1]<=8)pre_location[1] = 8;
      else if (pre_location[1]>126)pre_location[1] = 123;
      
      OLED_SetCursor(pre_location[0], pre_location[1]);
      OLED_DisplayChar('0');
      delay_ms(50);
      OLED_SetCursor(pre_location[0], pre_location[1]);
      OLED_DisplayChar(' ');
    }
}
