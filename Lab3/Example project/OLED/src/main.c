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

#include "oled_i2c.h"
#include "8051.h"
#include "i2c.h"

void main(void)
{		
    SDA = 1;
    SCL = 1;
    OLED_Init();		  // Check oled_i2c.c file for SCL,SDA pin connection
    
    OLED_SetCursor(0,0);  // Set cursor at 0th-line 0th-Position
    //display single character
    OLED_DisplayChar('8');
    OLED_DisplayChar('0');
    OLED_DisplayChar('5');
    OLED_DisplayChar('1');
    OLED_DisplayChar(' ');
    OLED_DisplayChar('&');
    OLED_DisplayChar(' ');
    OLED_DisplayChar('O');
    OLED_DisplayChar('L');
    OLED_DisplayChar('E');
    OLED_DisplayChar('D');

    
    OLED_SetCursor(0,80); //Set cursor
    //display pattern 
    oledSendData(0xff); // triangle
    oledSendData(0xfe);
    oledSendData(0xfc);
    oledSendData(0xf8);
    oledSendData(0xf0);
    oledSendData(0xe0);
    oledSendData(0xc0);
    oledSendData(0x80);
    oledSendData(0x00); 

    oledSendData(0x80);
    oledSendData(0xff); // square
    oledSendData(0xe7);
    oledSendData(0xc3);
    oledSendData(0x81);
    oledSendData(0x00);
    oledSendData(0x81);
    oledSendData(0xc3);
    oledSendData(0xe7);
    oledSendData(0xff);
    
    oledSendData(0x00); // triangle
    oledSendData(0x80);
    oledSendData(0xc0);
    oledSendData(0xe0);
    oledSendData(0xf0);
    oledSendData(0xf8);
    oledSendData(0xfc);
    oledSendData(0xfe);
    oledSendData(0xff);

		
    OLED_SetCursor(2,10);  //Set cursor at 2nd-line 10th-Position
    //display String
    OLED_DisplayString("Lab3 Demo");	
    OLED_SetCursor(4,20);
    OLED_DisplayString("Oled Interface");
    OLED_SetCursor(6,30);
    OLED_DisplayString("Hello World!!!!!");


    while(1);
}
