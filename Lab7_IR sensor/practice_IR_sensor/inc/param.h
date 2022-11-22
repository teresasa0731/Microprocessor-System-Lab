#ifndef PARAM_H

#include "8051.h"

#define CLK  P2_0           //MCP3202串列時鐘  
#define DIN  P2_1                
#define DOUT P2_2          
#define LOAD P2_3           //MCP3202片選
#define LOAD_MAX P2_4       //MAX7219片選

//define 7-segment reigister
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F
#define matrixnum 1

#endif