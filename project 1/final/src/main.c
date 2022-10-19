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
void draw(void);
void delay_ms(unsigned int input_ms);
void scan_row(unsigned int row);
void sequence(unsigned int op);
unsigned int turn_to_NUM(void);
void turn_to_CHAR(int n);
void func_call(unsigned int cmd);
void calculate_OP(unsigned char op);
void Clean(void);

typedef struct// 6 bytes
{
    unsigned char currINPUT : 1; // bit 0
    unsigned char currState : 2; // bit 1,2
    unsigned char prevState: 2; // bit 3,4
}STATES;

STATES states[14];
unsigned int input[8];
unsigned char patt = 0x00,patt1 = 0x01; // led value
unsigned int num1,num2,flag = 0;
unsigned int a,c;
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
	0X4F,	// E
	0x00,	//empty
	0x01	//dash
};


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
	unsigned char i;
	for(i = 1;i < 9;i++){
		Write7219(i, display_seg[input[i-1]]);
	}
}

//cyclic scanning each row
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

//gain input data
void read_currINPUT(void)
{
	for (a = 0; a < 4; a++)
	{
		scan_row(a);
		if(a==3)
			states[0].currINPUT= INPUT2;
		else{
			states[a * 3 + 1].currINPUT = INPUT1;
			states[a * 3 + 2].currINPUT = INPUT2;
			states[a * 3 + 3].currINPUT = INPUT3;
		}
	}
	states[10].currINPUT = but1;
	states[11].currINPUT = but2;
	states[12].currINPUT = but3;
	states[13].currINPUT = but4;
}

//push(1) back(0) display sequence
void sequence(unsigned int op){
	if(op){
		for(a = 7; a > 0; a--){
			input[a] = input[a-1];
		}
	}else{
		for(a = 0; a < 7; a++){
			input[a] = input[a+1];
			input[a+1] = 11;
		}
	}
}

//turn input into num
unsigned int turn_to_NUM(void){

	unsigned int num = 0,deg = 1;
	for(a=0;a<8;a++){
		if(input[a]<10){
			num = num + input[a]*deg;
			deg = deg *10;
		}
	}
	return num;
}

//do calculation by led signal
void calculate_OP(unsigned char op){
	switch (op)
	{
	case 0x10:
		num1 = num1 + num2;
		break;
	case 0x20:
		num1 = num1 - num2;
		break;
	case 0x40:
		num1 = num1 * num2;
		break;
	case 0x80:
		num1 = num1 / num2;
		break;
	default:
		break;
	}
}

//turn ans into display mode
void turn_to_CHAR(int n){
	if(n<0){
		c = 1;
		n = n*(-1);
	}else{
		c = 0;
	}
	for(a = 0;a < 8; a++){
		input[a] = n % 10;
		n = n/10;
		if(n == 0){
			if(c)
				input[a+1] = 12;
			break;
		}
			
	}
}

//function operator
void func_call(unsigned int cmd){
	switch (cmd)
	{
	case 10:	//op
		unsigned char op;
		//led display 0x10->0x20->0x40->0x80
		if(patt == 0x80)
			patt = 0x08;
		else if (patt == 0x00)
			patt = 0x08;
		patt = patt << 1;
		led = ~patt;
		delay_ms(20);

		//flag = 0:number input mode
		if(flag && num1 == 0){
			num1 = turn_to_NUM();
			flag = 0;
			Clean();
		}
		if(flag && num1 != 0){
			num2 = turn_to_NUM();
			Clean();
			op = patt >> 1;
			if(op == 0x08)
				op = 0x80;
			
			calculate_OP(op);
			turn_to_CHAR(num1);
			draw();
			Clean();
			flag = 0;
		}
		break;
	case 11:	//back <-
		sequence(0);
		draw();
		break;
	case 12:	//AC
		Clean();
		draw();
		Write7219(0x01,0x08);
		num1 = 0;
		num2 = 0;
		patt = 0x00;
		led = ~patt1;
		delay_ms(20);
		flag = 0;
		break;
	case 13:	//equal=
		if(flag){
			num2 = turn_to_NUM();
			Clean();
			calculate_OP(patt);
			turn_to_CHAR(num1);
			draw();
			flag = 0;
		}
		break;
	default:
		break;
	}
}


void Clean(void){
	unsigned char i;
	for(i = 1; i < 9; i++){
		input[i-1] = 11;
	}
}


void main(void)
{
	// initialize
	Initial();
	for (a = 0; a < 14; a++)
	{
		states[a].currINPUT = LEVEL_HIGH;
		states[a].currState = BTN_RELEASED;
		states[a].prevState = BTN_RELEASED;
	}
	func_call(12);

	while(1)
	{
		delay_ms(20);
		//detect keyboard
		read_currINPUT();
		for (unsigned int i = 0; i < 14; i++)
		{
			// finate state machine
			switch (states[i].currState)
			{
				case BTN_RELEASED:
					if (states[i].currINPUT == LEVEL_LOW)
						states[i].currState = BTN_DEBOUNCED;
					else
						states[i].currState = BTN_RELEASED;
					break;
				case BTN_DEBOUNCED:
					if (states[i].currINPUT == LEVEL_LOW)
						states[i].currState = BTN_PRESSED;
					else
						states[i].currState = BTN_RELEASED;
					break;
				case BTN_PRESSED:
					if (states[i].currINPUT == LEVEL_LOW)
						states[i].currState = BTN_PRESSED;
					else
						states[i].currState = BTN_RELEASED;
					break;
				default:
					break;
			}

			if ((states[i].currState == BTN_RELEASED) && (states[i].prevState == BTN_PRESSED)){
				if (i < 10){
					sequence(1);
					input[0] = i;
					draw();
					flag = 1;
				}else{
					func_call(i);
				}
			}
			states[i].prevState = states[i].currState;
		}
	}
}