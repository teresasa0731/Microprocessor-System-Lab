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
#define LEVEL_HIGH	0x01
#define LEVEL_LOW	0x00

// button state
#define BTN_RELEASED_cur	0x04
#define BTN_DEBOUNCED_cur	0x08
#define BTN_PRESSED_cur		0x0C

#define BTN_RELEASED_pre	0x10
#define BTN_DEBOUNCED_pre	0x20
#define BTN_PRESSED_pre		0x30

//define max7219 reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

//function declaration
void Write7219(unsigned char address,unsigned char dat);
void sendbyte(unsigned char address,unsigned char dat);
void Initial(void);
void draw(void);
void delay_ms(unsigned int input_ms);
void scan_row(unsigned int row);
void sequence(unsigned int op);
unsigned int turn_to_NUM(void);
void func_call(unsigned int cmd);
void Clean(void);

unsigned char system_states[14];
#define MASK_current_INPUT 0x03
#define MASK_current_STATE  0x0C
#define MASK_previous_STATE 0x30

//unsigned int curINPUT[14], state[14], prestate[14];
unsigned int input[8];
unsigned char patt = 0x08; // led value
unsigned int num1,num2,flag;
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
	0X4F	// E
};


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
void draw(void){
  	unsigned char c,i;
	for(i=0;i<8;i++){
		for(c=0;c<10;c++){
			if(input[i] == display_seg[c]){
				Write7219(i, display_seg[c]);
				break;
			}
		}
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
void read_curINPUT(void)
{
	for (unsigned int i = 0; i < 4; i++)
	{
		scan_row(i);
		if(i==3)
			system_states[9] = INPUT2;
		else{
			system_states[i * 3 + 0] = INPUT1;
			system_states[i * 3 + 1] = INPUT2;
			system_states[i * 3 + 2] = INPUT3;
		}
	}
	system_states[10] = but1;
	system_states[11] = but2;
	system_states[12] = but3;
	system_states[13] = but4;
}

//push(1) back(0) display sequence
void sequence(unsigned int op){
	unsigned int a;
	if(op){
		for(a = 7; a > 0; a--){
			input[a] = input[a-1];
		}
	}else{
		for(a = 0; a < 7; a++){
			input[a] = input[a+1];
			input[a+1] = 0;
		}
	}
}

//turn input into num
unsigned int turn_to_NUM(void){
	unsigned int num = 0,i,deg = 1;
	for(i=0;i<8;i++){
		num = num + input[i]*deg;
		deg = deg *10;
	}
	return num;
}

//do calculation by led signal
void calculate_OP(unsigned char op){
	switch (op)
	{
	case 0x08:
		num1 = num1 + num2;
		break;
	case 0x10:
		num1 = num1 - num2;
		break;
	case 0x20:
		num1 = num1 * num2;
		break;
	case 0x40:
		num1 = num1 / num2;
		break;
	default:
		break;
	}
}

//turn ans into display mode
void turn_to_CHAR(int n){
	unsigned int i;
	for(i=0;i<8;i++){
		input[i] = n%10;
		n = n/10;
		if(n == 0)
			break;
	}
}

//function operator
void func_call(unsigned int cmd){
	switch (cmd)
	{
	case 10:	//op
		unsigned char op;
		//led display 0x08->0x10->0x20->0x40
		if(patt == 0x80)
			patt = 0x08;
		else if (patt == 0x00)
			patt = 0x08;
		patt = patt << 1;
		led = ~patt;
		delay_ms(20);

		//flag = 1:start mode,flag = 0:get num2 and do operate
		if(flag){
			num1 = turn_to_NUM();
			flag = 0;
		}else{
			num2 = turn_to_NUM();
			op = patt >> 1;
			if(op == 0x04)
				op = 0x40;
			calculate_OP(op);
			turn_to_CHAR(num1);
			draw();
		}
		break;
	case 11:	//back <-
		sequence(0);
		draw();
		break;
	case 12:	//AC
		Clean();
		break;
	case 13:	//equal=
		num2 = turn_to_NUM();
		calculate_OP(patt);
		turn_to_CHAR(num1);
		draw();
		break;
	default:
		break;
	}
}


void Clean(void){
	for(unsigned int a = 0; a < 8; a++){
		input[a] = 0;
		Write7219(a+1,0x00);
	}
	Write7219(0x01,0x08);
	flag = 1;
}


void main(void)
{
	// initialize
	Initial();
	for (int i = 0; i < 14; i++)
	{
		system_status[i] = LEVEL_HIGH + BTN_RELEASED_cur + BTN_RELEASED_pre;
	}
	Clean();

	while(1)
	{
		delay_ms(20);
		//detect keyboard
		read_curINPUT();
		for (int i = 0; i < 14; i++)
		{
			// finate state machine
			switch (system_status[i] & MASK_current_STATE)
			{
				case BTN_RELEASED_cur:
					if (system_status[i] & MASK_current_INPUT == LEVEL_LOW)
						state[i] = BTN_DEBOUNCED_cur;
					else
						state[i] = BTN_RELEASED_cur;
					break;
				case BTN_DEBOUNCED_cur:
					if (system_status[i] & MASK_current_INPUT == LEVEL_LOW)
						state[i] = BTN_PRESSED_cur;
					else
						state[i] = BTN_RELEASED_cur;
					break;
				case BTN_PRESSED_cur:
					if (system_status[i] & MASK_current_INPUT == LEVEL_LOW)
						state[i] = BTN_PRESSED_cur;
					else
						state[i] = BTN_RELEASED_cur;
					break;
				default:
					break;
			}

			if ((state[i] == BTN_RELEASED) && (prestate[i] == BTN_PRESSED)){
				if (i < 10){
					sequence(1);
					input[0] = i;
					draw();
				}else{
					func_call(i);
				}
			}
			prestate[i] = state[i];
		}
	}
}
