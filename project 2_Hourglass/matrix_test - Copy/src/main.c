#include "8051.h"
#include "delay.h"
//#include "MPU6050.h"
//#include "i2c.h"

#define led P1
#define DOUT P2_2
#define LOAD P2_1
#define CLK P2_0
#define BUZZ P3_7
#define matrixnum   2      //number of 7-segment display/dot matrix

//define reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

typedef struct
{
    unsigned int X;
    unsigned int Y;
    unsigned char MODE: 1;
}STATES;

STATES state1[2],state1[2];
unsigned char patt1[8],patt2[8];
unsigned char patt = 0x80;
unsigned int STATUS = 0;
unsigned int cnt1 = 0,cnt2 = 0,fillMode;


void Initial(void);
void sendbyte(unsigned char address, unsigned char dat);
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat);
void draw(void);
void setUp(void);

void Initial(void)
{   
  unsigned char i,a;
    for(a=1;a<=2;a++){
      Writesingle7219(a,SHUT_DOWN, 0x01);          // normal mode(0xX1)
      Writesingle7219(a,DISPLAY_TEST, 0x00); 
      Writesingle7219(a,DECODE_MODE, 0x00);        // select non-decode mode
      Writesingle7219(a,SCAN_LIMIT, 0x07);         // use all 8 LED
      Writesingle7219(a,INTENSITY, 0x00);          // set up intensity
 
      for(i=1; i<=8; i++) { 
        Writesingle7219(a,i, 0x00);              // turn off all LED
      }
    } 
}


// send address and data into max7219
void sendbyte(unsigned char address, unsigned char dat) {
	unsigned char i;

	for (i=0; i<8; i++) {       // get last 8 bits(address)
		CLK = 0;
		DOUT = (address & 0x80); // get msb and shift left
		address <<= 1;
		CLK = 1;
	}

	for (i=0; i<8; i++) {     	// get first 8 bits(data)
		CLK = 0;
		DOUT = (dat & 0x80);    	// get msb and shit left
		dat <<= 1;
		CLK = 1;
	}
}


// when there are multiple 7-segment displays/dot matrices connected in series, we need to specify which 7-segment display/dot matrix to write.
// chosen : choosing which matrix (7-segment display) to display
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat)
{
    unsigned char cnt;
    LOAD = 0;
    for(cnt=matrixnum; cnt>chosen; cnt--) { //write data into the selected matrix
        sendbyte(0x00, 0x00);               //write 0 to no-op
    }
   		sendbyte(address, dat);             //sent data to chosen led-matrix

   	for (cnt=chosen-1; cnt>=1; cnt--) {
   		sendbyte(0x00, 0x00);               //write 0 to no-op
    }

   LOAD=1;
}

void draw(void){
  unsigned char i;

    for(i=1; i<=8; i++) {
      Writesingle7219(1, i, patt1[i-1]);
      Writesingle7219(2, i, patt2[i-1]);
    }
}


void setUp(void){
  unsigned char a;

  if(STATUS == 0)
  {
    for(a=0;a<8;a++){
      patt1[a] = 0xFF;
      patt2[a] = 0x00;
      fillMode = 0;
    }
  }else{
    for(a=0;a<8;a++){
      patt_1[a] = 0x00;
      patt_2[a] = 0xFF;
    }
  }
}

void upperfill(unsigned int M)
{
  switch (M)
  {
  case 0:

    fillMode = 1;
    break;
  case 1:
    fillMode = 0;
    break;
  default:
    break;
  }

}

void T0_isr(void) __interrupt (1)			// Interrupt routine w/ priority 1
{

	// PC jumps to here every 1ms  
	TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	
	cnt1++;								// Count each interruption
  cnt2++;

  if (cnt1>=1000)
  {
    upperFill(fillMode);  //0:disapper,1:goes down
    cnt1 = 0;
    draw();
  }

  
  
}



int main(void) {

	Initial();
  setUp();
  // Initialization interrupt
	TMOD = 0x01;						  // Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
	TH0 = (65536-1000) / 256; // Load initial higher 8 bits into Timer 0
	TL0 = (65536-1000) % 256; // Load initial lower 8 bits into Timer 0
	ET0 = 1;				          // Enable Timer 0 interrupt
	EA = 1;								    // Enable all interrupt
	TR0 = 1;							    // Start Timer 0

  while (1);
  
}

