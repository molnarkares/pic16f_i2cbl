/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/

#include <xc.h>

void swReset() {
    SSP1CON1bits.CKP = 1;// release SCL
    WDTCON = 0x01;       // SWDT ENabled, 1ms timeout
    while (1);
}
