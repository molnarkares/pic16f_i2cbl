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


#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT 1
#define OUTPUT 0

#define HIGH 1
#define LOW 0

#define ANALOG 1
#define DIGITAL 0

#define PULL_UP_ENABLED 1
#define PULL_UP_DISABLED 0

// get/set RC0 procedures
#define RC0_SetHigh() \
    do { LATCbits.LATC0 = 1; } while (0)
#define RC0_SetLow() \
    do { LATCbits.LATC0 = 0; } while (0)
#define RC0_Toggle() \
    do { LATCbits.LATC0 = ~LATCbits.LATC0; } while (0)
#define RC0_GetValue() PORTCbits.RC0
#define RC0_SetDigitalInput() \
    do { TRISCbits.TRISC0 = 1; } while (0)
#define RC0_SetDigitalOutput() \
    do { TRISCbits.TRISC0 = 0; } while (0)
#define RC0_SetPullup() \
    do { WPUCbits.WPUC0 = 1; } while (0)
#define RC0_ResetPullup() \
    do { WPUCbits.WPUC0 = 0; } while (0)
#define RC0_SetAnalogMode() \
    do { ANSELCbits.ANSC0 = 1; } while (0)
#define RC0_SetDigitalMode() \
    do { ANSELCbits.ANSC0 = 0; } while (0)

// get/set RC1 procedures
#define RC1_SetHigh() \
    do { LATCbits.LATC1 = 1; } while (0)
#define RC1_SetLow() \
    do { LATCbits.LATC1 = 0; } while (0)
#define RC1_Toggle() \
    do { LATCbits.LATC1 = ~LATCbits.LATC1; } while (0)
#define RC1_GetValue() PORTCbits.RC1
#define RC1_SetDigitalInput() \
    do { TRISCbits.TRISC1 = 1; } while (0)
#define RC1_SetDigitalOutput() \
    do { TRISCbits.TRISC1 = 0; } while (0)
#define RC1_SetPullup() \
    do { WPUCbits.WPUC1 = 1; } while (0)
#define RC1_ResetPullup() \
    do { WPUCbits.WPUC1 = 0; } while (0)
#define RC1_SetAnalogMode() \
    do { ANSELCbits.ANSC1 = 1; } while (0)
#define RC1_SetDigitalMode() \
    do { ANSELCbits.ANSC1 = 0; } while (0)

// get/set RC2 procedures
#define RC2_SetHigh() \
    do { LATCbits.LATC2 = 1; } while (0)
#define RC2_SetLow() \
    do { LATCbits.LATC2 = 0; } while (0)
#define RC2_Toggle() \
    do { LATCbits.LATC2 = ~LATCbits.LATC2; } while (0)
#define RC2_GetValue() PORTCbits.RC2
#define RC2_SetDigitalInput() \
    do { TRISCbits.TRISC2 = 1; } while (0)
#define RC2_SetDigitalOutput() \
    do { TRISCbits.TRISC2 = 0; } while (0)
#define RC2_SetPullup() \
    do { WPUCbits.WPUC2 = 1; } while (0)
#define RC2_ResetPullup() \
    do { WPUCbits.WPUC2 = 0; } while (0)
#define RC2_SetAnalogMode() \
    do { ANSELCbits.ANSC2 = 1; } while (0)
#define RC2_SetDigitalMode() \
    do { ANSELCbits.ANSC2 = 0; } while (0)

// get/set HV_EN aliases
#define HV_EN_TRIS TRISCbits.TRISC3
#define HV_EN_LAT LATCbits.LATC3
#define HV_EN_PORT PORTCbits.RC3
#define HV_EN_WPU WPUCbits.WPUC3
#define HV_EN_OD ODCONCbits.ODC3
#define HV_EN_ANS ANSELCbits.ANSC3
#define HV_EN_SetHigh() \
    do { LATCbits.LATC3 = 1; } while (0)
#define HV_EN_SetLow() \
    do { LATCbits.LATC3 = 0; } while (0)
#define HV_EN_Toggle() \
    do { LATCbits.LATC3 = ~LATCbits.LATC3; } while (0)
#define HV_EN_GetValue() PORTCbits.RC3
#define HV_EN_SetDigitalInput() \
    do { TRISCbits.TRISC3 = 1; } while (0)
#define HV_EN_SetDigitalOutput() \
    do { TRISCbits.TRISC3 = 0; } while (0)
#define HV_EN_SetPullup() \
    do { WPUCbits.WPUC3 = 1; } while (0)
#define HV_EN_ResetPullup() \
    do { WPUCbits.WPUC3 = 0; } while (0)
#define HV_EN_SetPushPull() \
    do { ODCONCbits.ODC3 = 1; } while (0)
#define HV_EN_SetOpenDrain() \
    do { ODCONCbits.ODC3 = 0; } while (0)
#define HV_EN_SetAnalogMode() \
    do { ANSELCbits.ANSC3 = 1; } while (0)
#define HV_EN_SetDigitalMode() \
    do { ANSELCbits.ANSC3 = 0; } while (0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);


#endif// PIN_MANAGER_H
      /**
 End of File
*/