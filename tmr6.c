/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/
#include <xc.h>
#include "tmr6.h"

/**
  Section: Global Variables Definitions
*/

/**
  Section: TMR6 APIs
*/

void TMR6_Initialize(void) {
    // Set TMR6 to the options selected in the User Interface

    // T6CKPS 1:4; T6OUTPS 1:1; TMR6ON off;
    T6CON = 0x10;

    // T6CS LFINTOSC;
    T6CLKCON = 0x04;

    // T6PSYNC Not Synchronized; T6MODE Software control One shot; T6CKPOL Rising Edge; T6CKSYNC Not Synchronized;
    T6HLT = 0x08;

    // T6RSEL T6CKIPPS pin;
    T6RST = 0x00;

    // T6PR 154;
    T6PR = 0x9A;

    // TMR6 0;
    T6TMR = 0x00;

    // Clearing IF flag.
    PIR4bits.TMR6IF = 0;

    // Start TMR6
    TMR6_Start();
}

void TMR6_Start(void) {
    // Start the Timer by writing to TMRxON bit
    T6CONbits.TMR6ON = 1;
}

void TMR6_Stop(void) {
    // Stop the Timer by writing to TMRxON bit
    T6CONbits.TMR6ON = 0;
}

bool TMR6_HasOverflowOccured(void) {
    // check if  overflow has occurred by checking the TMRIF bit
    bool status = PIR4bits.TMR6IF;
    if (status) {
        // Clearing IF flag.
        PIR4bits.TMR6IF = 0;
    }
    return status;
}
/**
  End of File
*/