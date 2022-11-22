#include "8051.h"
#include "delay.h"
//#include "MPU6050.h"
//#include "i2c.h"

#define led P1
#define DOUT P2_2
#define LOAD P2_1
#define CLK P2_0
#define BUZZ P3_7
#define Y_H 0x3D
#define Y_L 0x3E
#define matrixnum   2      //number of 7-segment display/dot matrix

//define reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

typedef struct// 5 bytes
{
    unsigned char ACTIVE  : 1;
    unsigned char END     : 1;
    unsigned char MODE    : 1;
    unsigned char INV     : 1;
    unsigned char UPPER   : 1;
    unsigned char FALL    : 1;
}STATES;

static unsigned char fallPattern[8] = {0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01};

unsigned char patt_1[8], patt_2[8];
int cur_u,cur_l,idx_u,idx_l,FLAG = 0;
int cnt = 0, upper = 0, cnt2 = 0;
STATES state[1];
unsigned char patt = 0x80;


void Initial(void);
void sendbyte(unsigned char address, unsigned char dat);
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat);
void draw(void);
void upperFall(unsigned int MODE);
void upperDown(void);
void lowerFall(unsigned int MODE);

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
      Writesingle7219(1, i, patt_1[i-1]);
      Writesingle7219(2, i, patt_2[i-1]);
    }
}

void upperFall(unsigned int MODE){
  switch (MODE)
  {
  case 0:
    patt_1[7] -= 1;
    if(patt_1[7] == 0x00){
      state[0].END = 1;
    }
    break;
  case 1:
    patt_1[7] <<= 1;
    if(patt_1[7] == 0x00){
      state[0].END = 1;
    }
    break;
  default:
    break;
  }
}

void upperDown(void){
  patt_1[7] += 1;
  if(state[0].INV == 0){
    patt_1[cur_u] >>= 1;
    cur_u += 1;
    if(cur_u == idx_u){
      idx_u += 1;
      cur_u = 0;
    }
    if(idx_u == 9){
      state[0].INV = 1;
      idx_u = 1;
      cur_u = idx_u;
    }
  }else{
    patt_1[cur_u] >>= 1;
    cur_u += 1;
    if(cur_u == 8){
      idx_u += 1;
      cur_u = idx_u;
    }
  }
}

void lowerFall(unsigned int MODE){
  unsigned char i;
  unsigned char BUF = patt_2[cur_l-1];
  led = ~(0x01 << cur_l);
  
  if (BUF = fallPattern[cur_l-1])
  {
    FLAG = 1;
  }
  for (i = cur_l - 1; i > 0 ; i--){
    if(FLAG == 0){
      patt_2[i] += patt_2[i-1] >> 1;
    }else{
      patt_2[i] = patt_2[i-1] >> 1;
    }
    
  }

  if(FLAG){
      if(idx_l == 0){
      cur_l -= 1;
      idx_l = 9 - cur_l;
      FLAG = 0;
    }else if(patt_2[cur_l-1] == fallPattern[cur_l-1] && cur_l != 8){
      
      if (idx_l == 1)
      {
        patt_2[cur_l+idx_l-2] = patt_2[cur_l+idx_l-2] | 0x01;
      }else{
        patt_2[cur_l+idx_l-2] = patt_2[cur_l+idx_l-2] | fallPattern[8-idx_l];
      }
      idx_l -= 1;
    }else if(patt_2[7] == 0x01 && cur_l == 8){
        cur_l -= 1;
        idx_l = 9 - cur_l;
    }
    FLAG = 0;
  }
  
  patt_2[0] = 0x00;
}

void setUp(){
  unsigned char a;
  state[0].MODE = 0; //test for now
  state[0].END = 0;
  state[0].INV = 0;
  state[0].ACTIVE = 0;
  if(state[0].MODE == 0)
  {
    for(a=0;a<8;a++){
      patt_1[a] = 0xFF;
      patt_2[a] = 0x00;
      cur_u = 0;
      cur_l = 8;
      idx_u = 1;
      idx_l = 1;
    }
  }else{
    for(a=0;a<8;a++){
      patt_1[a] = 0x00;
      patt_2[a] = 0xFF;
    }
  }
}

void T0_isr(void) __interrupt (1)			// Interrupt routine w/ priority 1
{

	// PC jumps to here every 1ms  
	TH0 = (65536-1000) / 256;			// Reset higher 8 bits of Timer 0
	TL0 = (65536-1000) % 256;			// Reset lower 8 bits of Timer 0
	
	cnt++;								// Count each interruption
  cnt2++;
	if(cnt >= 1000) {			// 1000 interruptions = 1000ms = 1s
    state[0].ACTIVE = 1;
		cnt = 0;						// Reset count
		//P1 = ~P1;						// for detection : Reverse wave signal
    if(state[0].END == 0){
      if(state[0].UPPER == 0){
        upperFall(state[0].MODE);
        state[0].UPPER = 1;
        state[0].FALL = 1;
      }else{
        upperDown();
        state[0].UPPER = 0;
      }
    }else{
      led = ~patt;
    }
	}

  if(cnt2 >= 500 && state[0].ACTIVE){
    if(state[0].END == 0){
      if(state[0].FALL){
        patt_2[0] = 0x80;
        state[0].FALL = 0;
      }
      lowerFall(state[0].MODE);
    }else{
      lowerFall(state[0].MODE);
      led = ~(patt+0x40);
      //setUp();
    }
    draw();
    cnt2 = 0;
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

