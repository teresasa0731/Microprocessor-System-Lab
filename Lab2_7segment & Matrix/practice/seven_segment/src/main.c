#include "8051.h"
#include "delay.h"
#include "draw.h"
#include "write.h"

void main(void)
{
	// 7-segment display
	unsigned char seg[] = {
		0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x2,0x4,0x8,0x8,0x8,0x8,0x8,0x8,0x8,0x8,0x10,0x20};
	unsigned char snakeshift[] = {1,2,3,4,5,6,7,8,8,8,8,7,6,5,4,3,2,1,1,1};

	// dot matrix
	unsigned char hi[] = {0xFF, 0x10, 0x10, 0xFF, 0x00, 0x81, 0xFF, 0x81, 0x00, 0x0E, 0x1C, 0x38, 0x1C, 0x0E, 0x00, 0x00};

	unsigned char i = 1;

	Initial(); // MAX7219 initialize

	while (1)
	{
		for(int i=0;i<20;i++){
			Writesingle7219(1,snakeshift[i], seg[i]);
			delay_ms(500);
			Writesingle7219(1,snakeshift[i], 0);
		}
		
	}
}
