#ifndef   __MLX90614_H
#define   __MLX90614_H

#include "param.h"

// double readObjectTemp(void);
// double readAmbientTemp(void);
float   readObjectTemp(void);
float   readAmbientTemp(void);
float   readTemp(uint8_t reg);

#endif 