#ifndef WRITE

#define WRITE

#define DOUT P2_2
#define LOAD P2_1
#define CLK  P2_0
#define matrixnum   2      //number of 7-segment display/dot matrix

void Write7219(unsigned char address,unsigned char dat);
void Writesingle7219(unsigned char chosen,unsigned char address,unsigned char dat);

#endif