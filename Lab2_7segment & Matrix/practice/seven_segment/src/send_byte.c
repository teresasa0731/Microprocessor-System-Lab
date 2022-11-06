#include "send_byte.h"
#include "8051.h"

// send address and data into max7219
void sendbyte(unsigned char address, unsigned char dat)
{
   unsigned char i;
   
   for (i=0; i<8; i++) {         // get last 8 bits(address)
      CLK = 0; 
      DOUT = (address & 0x80);   // get msb and shift left
      address <<= 1; 
      CLK = 1; 
   } 
 
   for (i=0; i<8; i++) {         // get first 8 bits(data)
      CLK = 0; 
      DOUT = (dat & 0x80);       // get msb and shit left
      dat <<= 1;
      CLK = 1;
   }
}