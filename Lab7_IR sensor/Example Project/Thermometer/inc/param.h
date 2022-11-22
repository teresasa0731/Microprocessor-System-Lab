#ifndef PARAM_H

#include "8051.h"
#include "stdutils.h"

#define PARAM_H

#define   MLX90614_ADDRESS    0x5a
#define   MLX90614_ADDR_WRITE   0x00	
#define   MLX90614_ADDR_READ    0x01
#define   MLX90614_RAM    0x00
#define   AMBIENT_TEMP    0x06
#define   OBJECT_TEMP     0x07

#define SCL   P0_0
#define SDA   P0_1

typedef unsigned char bit;


#endif