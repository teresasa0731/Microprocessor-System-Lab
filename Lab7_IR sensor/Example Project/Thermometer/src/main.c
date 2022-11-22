#include "8051.h"
#include "oled_i2c.h"
#include "stdutils.h"
#include "param.h"
#include "delay.h"
#include "i2c.h"
#include "MLX90614.h"

int data_buf1, data_buf2;

int main() 
{		 
    SDA = 1;
    SCL = 1;
    OLED_Init();		        // Check oled_i2c.c file for SCL,SDA pin connection
    OLED_SetCursor(0,0);     // Set cursor at 0th-line 0th-Position
    OLED_DisplayString("Lab5 Demo");	 
    OLED_SetCursor(5, 0); 
    OLED_DisplayString("AmbientTempC: ");
    OLED_SetCursor(7, 0);  
    OLED_DisplayString("ObjectTempC: ");

    while(1) {
      data_buf1 = readAmbientTemp();
      data_buf2 = readObjectTemp();

      //show data of Ambient Temperature(C) 
      OLED_SetCursor(5, 80);
      if(data_buf1 < 0) {
        OLED_DisplayChar('-');
        data_buf1 = data_buf1 * -1;
      } else {
        OLED_DisplayChar('+');
      }
      OLED_DisplayChar(data_buf1 % 1000 / 100 + '0');
      OLED_DisplayChar(data_buf1 % 100 / 10 + '0');
      OLED_DisplayChar('.');
      OLED_DisplayChar(data_buf1 % 10 / 1 + '0');
      
      //show data of Object Temperature(C) 
      OLED_SetCursor(7, 80);
      if(data_buf2 < 0) {
        OLED_DisplayChar('-');
        data_buf2 = data_buf2 * -1;
      } else {
        OLED_DisplayChar('+');
      }
      OLED_DisplayChar(data_buf2 % 1000 / 100 + '0');
      OLED_DisplayChar(data_buf2 % 100 / 10 + '0');
      OLED_DisplayChar('.');
      OLED_DisplayChar(data_buf2 % 10 / 1 + '0');
      delay_ms(100);
    }
}
