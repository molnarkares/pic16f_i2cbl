/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/

#include <stdint.h>
#include <string.h>
#include "memory.h"

uint16_t shadowPage[WRITE_FLASH_BLOCKSIZE] = {0};
