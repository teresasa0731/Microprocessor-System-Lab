#include "8051.h"
#include "delay.h"


//function declaration
// void Write7219(unsigned char address,unsigned char dat);
// void sendbyte(unsigned char address,unsigned char dat);
// void Initial(void) ;
// void draw(void);
// void delay_ms(unsigned int input_ms);
// void scan_row(unsigned int row);
// void sequence(unsigned int op);
// unsigned int turn_to_NUM(void);
// void turn_to_CHAR(int n);
// void func_call(unsigned int cmd);
// void calculate_OP(unsigned char op);
// void Clean(void);

typedef struct// 5 bits
{
    unsigned char currINPUT : 1; // bit 0
    unsigned char currState : 2; // bit 1,2
    unsigned char prevState: 2; // bit 3,4
}STATES;

STATES states[14];
unsigned int input[8];
unsigned char patt = 0x00; // led value
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
       P2_0 = 0;
       P2_2 = ( address & 0x80);   //get msb and shift left
       address <<= 1;
       P2_0 = 1;
    }
    for (a=0;a<8;a++)      //get first 8 bits(data)
    {
       P2_0 = 0;
       P2_2=( dat & 0x80);    //get msb and shit left
       dat <<= 1;
       P2_0 = 1;
    }
 }

//write a single digit/a single line in 7-segment display/dot matrix.
void Write7219(unsigned char address, unsigned char dat)
{
    P2_1 = 0;
    sendbyte(address, dat);
    P2_1 = 1;                               // after the P2_1 becomes 1, will the 7-segment display display
}

//MAX7219inintialize and setup inside register
void Initial(void)
{   
	unsigned char i;
    Write7219(0x0C,0x01);         //normal mode(0xX1)
    Write7219(0x0F,0x00);
    Write7219(0x09,0x00);       //select non-decode mode
    Write7219(0x0B,0x07);        //use all 8 LED
    Write7219(0x0A,0x00);         //set up intensity
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
		P0_6 = 0; // row1 output 0
		P0_5 = 1; // row2 output 1
		P0_4 = 1; // row3 output 1
		P0_3 = 1; // row0 output 1
		break;
	case 1:
		P0_6 = 1; // row1 output 1
		P0_5 = 0; // row2 output 0
		P0_4 = 1; // row3 output 1
		P0_3 = 1; // row0 output 1
		break;
	case 2:
		P0_6 = 1; // row1 output 1
		P0_5 = 1; // row2 output 1
		P0_4 = 0; // row3 output 0
		P0_3 = 1; // row0 output 1
		break;
	case 3:
		P0_6 = 1; // row1 output 1
		P0_5 = 1; // row2 output 1
		P0_4 = 1; // row3 output 1
		P0_3 = 0; // row0 output 0
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
			states[0].currINPUT= P0_1;
		else{
			states[a * 3 + 1].currINPUT = P0_0;
			states[a * 3 + 2].currINPUT = P0_1;
			states[a * 3 + 3].currINPUT = P0_2;
		}
	}
	states[10].currINPUT = INT0;
	states[11].currINPUT = INT1;
	states[12].currINPUT = P2_0;
	states[13].currINPUT = P2_1;
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
	Clean();
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
void turn_to_CHAR(void){
	unsigned int n = num1;
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
	draw();
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
		}
		if(flag && num1 != 0){
			num2 = turn_to_NUM();
			op = patt >> 1;
			if(op == 0x08)
				op = 0x80;
			calculate_OP(op);
			turn_to_CHAR();
			Clean();
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
		break;
	case 13:	//equal=
		if(flag){
			num2 = turn_to_NUM();
			calculate_OP(patt);
			turn_to_CHAR();
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
	flag = 0;
}


void main(void)
{
	// initialize
	Initial();
	for (a = 0; a < 14; a++)
	{
		states[a].currINPUT = 1;
		states[a].currState = 0;
		states[a].prevState = 0;
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
				case 0:
					if (states[i].currINPUT == 0)
						states[i].currState = 1;
					else
						states[i].currState = 0;
					break;
				case 1:
					if (states[i].currINPUT == 0)
						states[i].currState = 2;
					else
						states[i].currState = 0;
					break;
				case 2:
					if (states[i].currINPUT == 0)
						states[i].currState = 2;
					else
						states[i].currState = 0;
					break;
				default:
					break;
			}

			if ((states[i].currState == 0) && (states[i].prevState == 2)){
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