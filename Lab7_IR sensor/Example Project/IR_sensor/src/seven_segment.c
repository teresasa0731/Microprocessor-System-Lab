#include "seven_segment.h"
#include "param.h"

/*-------------------- 7-segment display function --------------------*/
void sendbyte(unsigned char address, unsigned char dat) {
 unsigned char i;
    for (i=0; i<8; i++)
    {
       CLK = 0;
       DIN = (address & 0x80);
       address <<= 1;
       CLK = 1;
    }

    for (i=0; i<8; i++)
    {
       CLK = 0;
       DIN = (dat & 0x80);
       dat <<= 1;
       CLK = 1;
    }
 }

void Write7219(unsigned char address, unsigned char dat)
{
    unsigned char cnt;
    LOAD_MAX = 0;
  	for(cnt=1; cnt<=matrixnum; cnt++)
 	{
        sendbyte(address, dat);
    }
   LOAD_MAX = 1;
}

void Initial(void)
{   unsigned char i;

    Write7219(SHUT_DOWN, 0x01);
    Write7219(DISPLAY_TEST, 0x00);
    Write7219(DECODE_MODE, 0x00);
    Write7219(SCAN_LIMIT, 0x07);
    Write7219(INTENSITY, 0x00);

    for(i=1; i<=8; i++){
    	Write7219(i, 0x00);
    }
}