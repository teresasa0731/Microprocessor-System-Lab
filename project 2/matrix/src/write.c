#include "8051.h"
#include "write.h"
#include "send_byte.h"


// write a single digit/a single line in 7-segment display/dot matrix.
void Write7219(unsigned char address, unsigned char dat)
{
    unsigned char cnt;
    LOAD = 0;
  	for(cnt=1; cnt<=matrixnum; cnt++) {      // send address and data according to the nuber of your matrix
        sendbyte(address, dat);
    }
    LOAD=1;
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