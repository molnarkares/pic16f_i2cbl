/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/

#include <stdint.h>
#include "bl.h"
#include "memory.h"
#include "shadow_page.h"


#define CRC16_POLY 0xA001

static inline uint16_t getMem(uint16_t addr);

uint16_t crc16(uint16_t addr, uint16_t size) {
    uint16_t result;
    uint16_t i, j;
    uint8_t ul = 0;
    union {
        uint8_t data8[2];
        uint16_t data16;
    } data;

    if (size == 0) {
        return 0;
    }

    result = 0xFFFF;

    for (i = 0; i < size; i++) {
        data.data16 = getMem(addr++);
        for (ul = 0; ul < 2; ul++) {
            result ^= data.data8[ul];
            for (j = 0x0001; j < 0x0100; j <<= 1) {
                if (result & 0x0001) {
                    result >>= 1;
                    result ^= CRC16_POLY;
                } else {
                    result >>= 1;
                }
            }
        }
    }
    return ~result;
}

static inline uint16_t getMem(uint16_t addr) {
    if (addr < APP_START_ADDR + WRITE_FLASH_BLOCKSIZE) {
        return shadowPage[addr - APP_START_ADDR];
    } else {
        return FLASH_ReadWord(addr);
    }
}
