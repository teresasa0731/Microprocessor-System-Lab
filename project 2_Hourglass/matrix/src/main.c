#include "delay.h"
#include "draw.h"
#include "write.h"



void main(void)
{
	// 7-segment
	unsigned char seg[] = {
		0xB0,  // 1
		0xED,  // 2
		0xF9,  // 3
		0xB3,  // 4
		0xDB,  // 5
		0xDF,  // 6
		0xF0,  // 7
		0xFF   // 8
	};

	//dot matrix
	unsigned char hi[] = {
		0xFF,
		0x10,
		0x10,
		0xFF,
		0x00,
		0x81,
		0xFF,
		0x81,
		0x00,
		0x0E,
		0x1C,
		0x38,
		0x1C,
		0x0E,
		0x00,
		0x00
	};


	unsigned char i = 1;

	Initial();               //MAX7219 initialize

	while(1) {
		//shiftdraw(hi);       //display hi love
		//Write7219(2,0xFF);
		LOAD = 0;
		sendbyte(2,0xFF);
		LOAD = 1;

	}
}
