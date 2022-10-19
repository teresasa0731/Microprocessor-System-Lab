#include "8051.h"
#include "delay.h"

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

#define Hall_In P2_4
#define LED P1

//function declaration
void Write7219(unsigned char address,unsigned char dat);
void sendbyte(unsigned char address,unsigned char dat);
void Initial(void);
void draw(void);
void Clean(void);
void countTime(void);


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
	0x00	//empty
};

unsigned char print[8];
int count = 0;
int deg = 0;
char hall_cnt = 0x00;	// Count the # of Hall sensor activations
char hall_last_state = 0;							// Record activation and deactivation of Hall sensor	
unsigned long int time = 0;
unsigned int a;


//send address and data into max7219
void sendbyte(unsigned char address,unsigned char dat){
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
    unsigned char cnt;
    LOAD = 0;

  	for(cnt=1; cnt<=matrixnum; cnt++)       // send address and data according to the nuber of your matrix
 	{
        sendbyte(address, dat);
    }
    
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
void draw(void){
	for(unsigned int i = 1;i < 9;i++){
		Write7219(i, print[i-1]);
	}

}

void countTime(void){
	unsigned int num;
	if(time < 10000)
		deg = 4;
	else if(time < 100000)
		deg = 5;
	else if(time < 1000000)
		deg = 6;
	else if(time < 10000000)
		deg = 7;
	
	for(unsigned int i = 0; i < deg; i++){
		num = time % 10;
		print[i] = display_seg[num];
		time = time / 10;
	}
}


void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
{
	// PC jumps to here every 1ms  
	TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
	
	time = time + 1;
	if((Hall_In == 0) && (hall_last_state == 1))	// Falling edge of hall sensor signal (activated)
    {
    	hall_cnt = hall_cnt + 1;					// Count 1 activation
    }
    	
    hall_last_state = Hall_In;						// Update last Hall sensor state
}


void Clean(void){
	for(unsigned int i = 0; i < 8; i++){
		print[i] = 0x00;
	}
	time = 0;
}


void main(void)
{
	// Initialization
	Initial();
	Clean;
	TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
	ET0 = 1;										// Enable Timer 0 interrupt
	EA = 1;											// Enable all interrupt
	TR0 = 1;										// Start Timer 0

    Hall_In = 1;

	while(1)
	{
		if((Hall_In == 0) && (hall_last_state == 1)){
			countTime();
			print[3] = print[3] + 0x80;
			draw();
			Clean();
		}
	}

}