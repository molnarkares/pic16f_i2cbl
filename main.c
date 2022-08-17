/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <xc.h>
#include "bl.h"
#include "bl_status.h"
#include "crc16.h"
#include "i2c.h"
#include "interrupt_manager.h"
#include "mcc.h"
#include "memory.h"
#include "tmr6.h"
#include "appinit.h"

inline void startApp() {
    asm("goto "___mkstr(APP_START_ADDR));
}

int main(void) {
    INTERRUPT_GlobalInterruptDisable();
    // initialize the device
    SYSTEM_Initialize();
    Application_Initialize();

    if (isBlRequested()) {// BL was requested from app
        setBlActive();
    }

    while (1) {
        if (PIR1bits.SSP1IF == 1) { //BL runs with interrupts disabled
            I2C_ISR();
        }
        if (!isBlActive() && TMR6_HasOverflowOccured()) {
            TMR6_Stop();
            if (isAppValid()) {
                startApp();
            } else {
                setBlActive();
            }
        }
    }
    return 0;
}
