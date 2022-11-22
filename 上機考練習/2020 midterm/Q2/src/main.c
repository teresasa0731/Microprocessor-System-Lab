#include "8051.h"

//7-segment setting
#define DOUT P2_2
#define LOAD P2_1
#define CLK  P2_0
#define matrixnum   1      //number of 7-segment display/dot matrix

//define max7219 reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

static unsigned char display_seg[] = {
	0X7E,	// 0
	0x30,  	// 1
	0x6D,  	// 2
	0x79,  	// 3
	0x33,  	// 4
	0x5B,  	// 5
	0x5F,  	// 6
	0x70,  	// 7
	0x7F,  	// 8
	0X7B,	// 9
	0x08	//dash
};

unsigned int input[8] = {7,1,1,1,0,2,0,2};
unsigned int num[9] = {1,0,9,0,3,3,1,3,2};

void delay_ms(unsigned int input_ms);

//send address and data into max7219
void sendbyte(unsigned char address,unsigned char dat){
    unsigned int a;
	for (a=0;a<8;a++)        //get last 8 bits(address)
    {
       CLK = 0;
       DOUT = ( address & 0x80);   //get msb and shift left
       address <<= 1;
       CLK = 1;
    }
    for (a=0;a<8;a++)      //get first 8 bits(data)
    {
       CLK = 0;
       DOUT=( dat & 0x80);    //get msb and shit left
       dat <<= 1;
       CLK = 1;
    }
 }

//write a single digit/a single line in 7-segment display/dot matrix.
void Write7219(unsigned char address, unsigned char dat)
{
    LOAD = 0;
    sendbyte(address, dat);
    LOAD = 1;                               // after the load becomes 1, will the 7-segment display display
}



 //MAX7219inintialize and setup inside register
void Initial(void)
{   
	unsigned char i;
    Write7219(SHUT_DOWN,0x01);         //normal mode(0xX1)
    Write7219(DISPLAY_TEST,0x00);
    Write7219(DECODE_MODE,0x00);       //select non-decode mode
    Write7219(SCAN_LIMIT,0x07);        //use all 8 LED
    Write7219(INTENSITY,0x00);         //set up intensity
    for(i=1;i<=8;i++){
    	Write7219(i,0x00);   //turn off all LED
    }
}

 //write all 8 digits/lines of a single 7-segment display/dot matrix.
void draw(int mode){
	unsigned char i;
	if(mode){
		for(i = 1;i < 9;i++){
			Write7219(i, display_seg[input[i-1]]);
		}
	}else{
		for(i = 1;i < 9;i++){
			Write7219(i, display_seg[10]);
		}
	}
}




int main(void)
{
	unsigned int cnt;
	Initial();
	draw(1);
	delay_ms(3000);
	
	while (1)
	{
		cnt = 2;
		for(unsigned int i=0; i<8; i++){
			input[i] = 10;
		}

		for(unsigned int i=0; i<cnt+1; i++){
			input[cnt-i] = num[i];
		}
		cnt++;
		draw(1);
		delay_ms(3000);
		for (unsigned int i = 0; i < 6; i++)
		{
			//do sequence
			for(unsigned int j=0; j<cnt+1; j++){
				input[cnt-j] = num[j];
			}
			draw(1);
			delay_ms(3000);
			cnt++;
		}

		for (unsigned int j=1; j<7; j++)
		{
			draw(j%2);
			delay_ms(3000);
		}	
	}
}

void delay_ms(unsigned int input_ms)
{
	unsigned int cnt1 = 0;
	unsigned char cnt2 = 0;
	
	for(cnt1 = 0; cnt1 < input_ms; cnt1 ++)
	{	
		for(cnt2 = 0; cnt2 < 90; cnt2 ++);
	}
}