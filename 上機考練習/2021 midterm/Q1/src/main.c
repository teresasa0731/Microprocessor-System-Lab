#include "8051.h"
#define Hall_In P2_4
#define led P1
#define PB1 INT0
//7-segment setting
#define DOUT P2_2
#define LOAD P2_1
#define CLK  P2_0


//define max7219 reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F



//function declaration
void delay_ms(unsigned int input_ms);
void Write7219(unsigned char address,unsigned char dat);
void sendbyte(unsigned char address,unsigned char dat);
void Initial(void);
void draw(void);
void Clean(void);

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
int hall_cnt = 0;	// Count the # of Hall sensor activations
char hall_last_state = 0;							// Record activation and deactivation of Hall sensor	
unsigned long int time = 0;
unsigned int a;
unsigned int input[25];


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
void draw(void){
	for(unsigned int i = 1;i < 9;i++){
		Write7219(i, print[i-1]);
	}

}


void T0_isr(void) __interrupt (1)						// Interrupt routine w/ priority 1
{
	// PC jumps to here every 1ms  
	TH0 = (65536-1000) / 256;						// Reset initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;						// Reset initial lower 8 bits into Timer 0
	
	if((Hall_In == 0) && (hall_last_state == 0))	// Falling edge of hall sensor signal (activated)
    {
    	hall_cnt = hall_cnt + 1;					// Count 1 activation
    }
    	
    hall_last_state = Hall_In;						// Update last Hall sensor state
}


void Clean(void){
	for(unsigned int i = 0; i < 8; i++){
		print[i] = 0x00;
	}
	hall_cnt = 0;
}


void main(void)
{
	unsigned int data = 0;
	unsigned int pre_PB1 = 1,START = 0,FINISH = 0;
	unsigned char patt1 = 0x01;
	// Initialization
	Initial();
	Clean();
	TMOD = 0x01;									// Set Timer 1 to  mode 0 & T imer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256;						// Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256;						// Load initial lower 8 bits into Timer 0
	ET0 = 1;										// Enable Timer 0 interrupt
	EA = 1;											// Enable all interrupt
	TR0 = 1;										// Start Timer 0

	while(1)
	{
		while (START == 0)
		{
			if((PB1 == 0) && (pre_PB1 == 1))
			{
				delay_ms(20);
				if(PB1 == 0){
					START = 1;
					FINISH = 0;
					hall_cnt = 0;
					data = 0;
				}
					
			}
		}
		led = ~0xFF;
		delay_ms(1000);
		led = ~0x00;
		while ((FINISH == 0) && (START == 1))
		{
			if((Hall_In == 1) && (hall_last_state == 0))
			{
				if(hall_cnt > 2000){
					input[data] = 1;
					led = ~0x00;
					led = ~((patt1 << (data%5)) | 0xE0);
					delay_ms(20);
				}else{
					input[data] = 1;
					led = ~0x00;
					led = ~((patt1 << (data%5)) | 0x80);
					delay_ms(20);
				}
				data ++ ;
				hall_cnt = 0;
				if(data == 25){
					FINISH = 1;
					//led = ~0xFF;
					//delay_ms(1000);
					//led = ~0x00;
				}	

			}
		}
		if(FINISH == 1){
			led = ~0x80;
			delay_ms(1000);
			unsigned int buf;
			for(unsigned int idx = 0; idx < 5; idx++){
				buf = input[idx*5] + input[idx*5+1] + input[idx*5+2] + input[idx*5+2] +input[idx*5+4];
				if(input[idx*5] == 0)
					print[idx] = (5-buf)%10;
				else
					print[idx] = (5+buf)%10;
			}
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