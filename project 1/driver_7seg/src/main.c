#include "8051.h"
#include "delay.h"

//7-segment setting
#define DOUT P2_2
#define LOAD P2_1
#define CLK  P2_0
#define matrixnum   1      //number of 7-segment display/dot matrix

//4*3 keyboard setting
#define INPUT1 P0_0    //column 1
#define INPUT2 P0_1    //column 2
#define INPUT3 P0_2    //column 3
#define OUTPUT1 P0_6   //row 1
#define OUTPUT2 P0_5   //row 2
#define OUTPUT3 P0_4   //row 3
#define OUTPUT0 P0_3   //row 0

//but setting
#define led P1
#define but1 INT0      //OP
#define but2 INT1      //<--
#define but3 P2_0      //AC
#define but4 P2_1      //=

// key state
#define LEVEL_HIGH 1
#define LEVEL_LOW 0

// button state
#define BTN_RELEASED 0
#define BTN_DEBOUNCED 1
#define BTN_PRESSED 2

//define max7219 reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

//function declaration
void Write7219(unsigned char address,unsigned char dat);
void sendbyte(unsigned char address,unsigned char dat);
void Initial(void) ;
void draw(unsigned char *picture);
void delay_ms(unsigned int input_ms);
void scan_row(unsigned int row);

unsigned int curINPUT[14], state[14], prestate[14];
unsigned char display[8];
unsigned char patt = 0x08,patt1; // led value
unsigned int op_cnt = 0;

//send address and data into max7219
void sendbyte(unsigned char address,unsigned char dat){
 	unsigned char i;
    for (i=0;i<8;i++)        //get last 8 bits(address)
    {
       CLK = 0;
       DOUT = ( address & 0x80);   //get msb and shift left
       address <<= 1;
       CLK = 1;
    }
    for (i=0;i<8;i++)      //get first 8 bits(data)
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
void draw(unsigned char *picture){

  	unsigned char i;
	if(picture == display){
		patt = 0x80;
		led = ~patt;
		delay_ms(20);
	}
    for(i=1; i<=8; i++) {
        Write7219(i, display[i-1]);
		
    }
}

void scan_row(unsigned int row)
{
	switch (row)
	{
	case 0:
		OUTPUT1 = 0; // row1 output 0
		OUTPUT2 = 1; // row2 output 1
		OUTPUT3 = 1; // row3 output 1
		OUTPUT0 = 1; // row0 output 1
		break;
	case 1:
		OUTPUT1 = 1; // row1 output 1
		OUTPUT2 = 0; // row2 output 0
		OUTPUT3 = 1; // row3 output 1
		OUTPUT0 = 1; // row0 output 1
		break;
	case 2:
		OUTPUT1 = 1; // row1 output 1
		OUTPUT2 = 1; // row2 output 1
		OUTPUT3 = 0; // row3 output 0
		OUTPUT0 = 1; // row0 output 1
		break;
	case 3:
		OUTPUT1 = 1; // row1 output 1
		OUTPUT2 = 1; // row2 output 1
		OUTPUT3 = 1; // row3 output 1
		OUTPUT0 = 0; // row0 output 0
		break;
	default:
		break;
	}
}

void read_curINPUT(void)
{
	for (int i = 0; i < 4; i++)
	{
		scan_row(i);
		if(i==3)
			curINPUT[9] = INPUT2;
		else{
			curINPUT[i * 3 + 0] = INPUT1;
			curINPUT[i * 3 + 1] = INPUT2;
			curINPUT[i * 3 + 2] = INPUT3;
		}
	}
	curINPUT[10] = but1;
	curINPUT[11] = but2;
	curINPUT[12] = but3;
	curINPUT[13] = but4;
}

void sequence(void){
	for(int a = 7; a > 0; a--){
		display[a] = display[a-1];
	}
	//patt =0x00;
	delay_ms(100);
}

void func_call(unsigned int cmd){

	switch (cmd)
	{
	case 10:	//op
		if(patt == 0x80)
			patt = 0x08;
		else if (patt == 0x00)
			patt = 0x08;
		
		patt = patt << 1;
		led = ~patt;
		delay_ms(20);
		break;
	case 11:	//back <-
		patt1 = 0x01;
		led = ~patt1;
		delay_ms(20);
		break;
	case 12:	//AC
		for(int a = 0; a < 8; a++){
			display[a] = 0x00;
			Write7219(a+1,0x00);
		}
		Write7219(0x01,0x08);
		patt1 = 0x02;
		led = ~patt1;
		delay_ms(20);
		break;
	case 13:	//equal=
		patt1 = 0x04;
		led = ~patt1;
		delay_ms(20);
		break;
	default:
		break;
	}
}

// 7-segment display
unsigned char display_seg[] = {
	0x30,  	// 1
	0x6D,  	// 2
	0x79,  	// 3
	0x33,  	// 4
	0x5B,  	// 5
	0x5F,  	// 6
	0x70,  	// 7
	0x7F,  	// 8
	0X7B,	// 9
	0X7E,	// 0
	0X4F	// E
};



void main(void)
{
	// initialize
	Initial();
	for (int i = 0; i < 14; i++)
	{
		curINPUT[i] = LEVEL_HIGH;
		state[i] = BTN_RELEASED;
		prestate[i] = BTN_RELEASED;
	}
	func_call(12);

	while(1)
	{
		delay_ms(20);
		
		//detect keyboard
		read_curINPUT();
		for (int i = 0; i < 14; i++)
		{
			// finate state machine
			switch (state[i])
			{
				case BTN_RELEASED:
					if (curINPUT[i] == LEVEL_LOW)
						state[i] = BTN_DEBOUNCED;
					else
						state[i] = BTN_RELEASED;
					break;
				case BTN_DEBOUNCED:
					if (curINPUT[i] == LEVEL_LOW)
						state[i] = BTN_PRESSED;
					else
						state[i] = BTN_RELEASED;
					break;
				case BTN_PRESSED:
					if (curINPUT[i] == LEVEL_LOW)
						state[i] = BTN_PRESSED;
					else
						state[i] = BTN_RELEASED;
					break;
				default:
					break;
			}

			if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)){

				if (i < 10){
					sequence();
					display[0] = display_seg[i];
					draw(display);
				}else{
					func_call(i);
				}
			}
			prestate[i] = state[i];
		}
	}
}
