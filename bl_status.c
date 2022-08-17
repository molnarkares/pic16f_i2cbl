/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/

#include <stdbool.h>
#include <xc.h>
#include "bl_status.h"
#include "bl.h"
#include "memory.h"


volatile struct {
    uint8_t status;
    uint8_t statusInv;
} blRequested __at(BL_REQUEST_ADDRESS);

static bool blStatus = false;

bool isBlRequested() {
    bool req = ((blRequested.status == BL_REQUEST_CMD) &&
                (blRequested.statusInv == (uint8_t) ~BL_REQUEST_CMD));
    blRequested.status = 0;
    blRequested.statusInv = 0;
    return req;
}


bool isAppValid() {
    uint16_t data = FLASH_ReadWord(APP_START_ADDR);
    return (data != 0x3fff);
}

void setBlActive() {
    blStatus = true;
}

bool isBlActive() {
    return blStatus;
}
