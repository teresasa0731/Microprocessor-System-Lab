#include "8051.h"
#include "i2c.h"
#include "MPU6050.h"

#define led P1
#define DIN P2_2
#define LOAD P2_1
#define CLK P2_0

//define reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

#define BOUNDARY 7

void Initial(void);
void delay_ms(unsigned int input_ms);
void Write7219(unsigned char address, unsigned char dat);
void draw(void);
void sendbyte(unsigned char address, unsigned char dat);

static unsigned char MAP[8] = {0x07,0xF7,0xF7,0xF7,0xF7,0xF7,0xF7,0xF0};
unsigned char picture[8] = {0x07,0xF7,0xF7,0xF7,0xF7,0xF7,0xF7,0xF0};
int state[2] = {7,0},patt[2];
unsigned char p = 0x01;
unsigned int m = 0;

int data_buf;
char i = 0;

int accel_data[3] = {0, 0, 0};  // Stores the 16-bit signed accelerometer sensor output


//write all 8 digits/lines of a single 7-segment display/dot matrix.
void draw(void)
{
    unsigned char i;

    for(i=1; i<=8; i++) {
        Write7219(i, picture[i-1]);
    }
}

// send address and data into max7219
void sendbyte(unsigned char address, unsigned char dat) {
	unsigned char i;

	for (i=0; i<8; i++) {       // get last 8 bits(address)
		CLK = 0;
		DIN = (address & 0x80); // get msb and shift left
		address <<= 1;
		CLK = 1;
	}

	for (i=0; i<8; i++) {     	// get first 8 bits(data)
		CLK = 0;
		DIN = (dat & 0x80);    	// get msb and shit left
		dat <<= 1;
		CLK = 1;
	}
}

// write a single digit/a single line in 7-segment display/dot matrix.
void Write7219(unsigned char address, unsigned char dat)
{
    LOAD = 0;
    sendbyte(address, dat);
    LOAD=1;
}

void getPositionPattern(void){
    for(unsigned int i=0; i<8; i++){
        picture[i] = MAP[i];
    }
    picture[state[0]] = picture[state[0]] | (0x01 << state[1]);

    led = ~p;
}

void move(unsigned int mode){
    switch (mode)
    {
    case 0:  //go down
        if(m<3){
            state[0] = 7;
            state[1]--;
        }else if(m<10){
            state[0]--;
            state[1] = 3;
        }else if(m<14){
            state[0] = 0;
            state[1]--;
        }else{
            state[0] = 0;
            state[1] = 7;
        }
        m--;
        break;
    case 1:
        if(m<3){
            state[0] = 7;
            state[1] ++;
        }else if(m<10){
            state[0] --;
            state[1] = 3;
        }else if(m<14){
            state[0] = 0;
            state[1] ++;;
        }else{
            state[0] = 7;
            state[1] = 0;
        }
        m++;
        break;
    default:
        break;
    }
}


int main(void)
{
    Initial();
	draw();
    getPositionPattern();	
    draw();
    SDA = 1;
    SCL = 1;
    MPU6050_INIT();

    while(1) {
        int delta_x = 0, delta_y = 0;
        delay_ms(500);
        readMPU6050_AccelData(&accel_data[0]);
        delta_x = accel_data[0];
        delta_y = accel_data[1];

        if((delta_x>1000) || (delta_y<-1000)){
            move(1);
            getPositionPattern();	
            draw();
        }else if((delta_x<-1000) || (delta_y>1000)){
            move(0);
            getPositionPattern();	
            draw();
        }else{
            getPositionPattern();	
            draw();
        }
        if(m == 0)
            m = 14;
        else if(m == 14)
            m = 0;

    }
}

// MAX7219inintialize and setup inside register
void Initial(void)
{   unsigned char i;

    Write7219(SHUT_DOWN, 0x01);          // normal mode(0xX1)
    Write7219(DISPLAY_TEST, 0x00); 
    Write7219(DECODE_MODE, 0x00);        // select non-decode mode
    Write7219(SCAN_LIMIT, 0x07);         // use all 8 LED
    Write7219(INTENSITY, 0x00);          // set up intensity
 
    for(i=1; i<=8; i++) { 
    	Write7219(i, 0x00);              // turn off all LED
    }
}