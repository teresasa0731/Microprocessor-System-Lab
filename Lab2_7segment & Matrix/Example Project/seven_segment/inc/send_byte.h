#ifndef SEND_BYTE

#define SEND_BYTE

#define DOUT P2_2
#define LOAD P2_1
#define CLK  P2_0

void sendbyte(unsigned char address, unsigned char dat);

#endif