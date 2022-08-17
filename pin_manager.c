/**
    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

    Microchip licenses to you the right to use, modify, copy and distribute
    Software only when embedded on a Microchip microcontroller or digital signal
    controller that is integrated into your product or third party product
    (pursuant to the sublicense terms in the accompanying license agreement).

    You should refer to the license agreement accompanying this Software for
    additional information regarding your rights and obligations.

    SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
    EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
    MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
    IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
    CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
    OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
    INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
    CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
    SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
    (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

*/

#include "stdbool.h"
#include <xc.h>
#include "pin_manager.h"



void PIN_MANAGER_Initialize(void) {
    /**
    LATx registers
    */
    LATA = 0x00;
    LATC = 0x00;

    /**
    TRISx registers
    */
    TRISA = 0x37;
    TRISC = 0x37;

    /**
    ANSELx registers
    */
    ANSELC = 0x00;
    ANSELA = 0x17;

    /**
    WPUx registers
    */
    WPUA = 0x3F;
    WPUC = 0x3F;
    OPTION_REGbits.nWPUEN = 0;

    /**
    ODx registers
    */
    ODCONA = 0x00;
    ODCONC = 0x00;


    //    bool state = (unsigned char)GIE;
    //    GIE = 0;
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCKbits.PPSLOCKED = 0x00;// unlock PPS

    RC1PPSbits.RC1PPS = 0x13;      //RC1->MSSP:SDA;
    T0CKIPPSbits.T0CKIPPS = 0x12;  //RC2->TMR0:T0CKI;
    SSPDATPPSbits.SSPDATPPS = 0x11;//RC1->MSSP:SDA;
    RC0PPSbits.RC0PPS = 0x12;      //RC0->MSSP:SCL;
    SSPCLKPPSbits.SSPCLKPPS = 0x10;//RC0->MSSP:SCL;

    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCKbits.PPSLOCKED = 0x01;// lock PPS

    //    GIE = state;
}


/**
 End of File
*/