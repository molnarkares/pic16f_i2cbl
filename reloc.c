/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/
#include <xc.h>
#include "bl.h"
#include "interrupt_manager.h"


void __interrupt() INTERRUPT_InterruptManager(void) {
    asm("call " ___mkstr(APP_INT_ADDR));
}
