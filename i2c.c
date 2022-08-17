/* based on MCC generated code see original copyright below */
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


#include <stdbool.h>
#include <xc.h>
#include "i2c.h"
#include "bl.h"



#define I2C_PERIPHERAL_MASK 0x7F

void I2C_Initialize(void) {
    SSP1CON1 = 0;
    SSP1STAT = 0x80;//SMP 0
    SSP1CON1 = 0x1e;//0x06;
    SSP1CON2 = 0x01;
    SSP1CON3 = 0x48;
    SSP1MSK = (I2C_PERIPHERAL_MASK << 1);   // adjust UI mask for R/nW bit
    SSP1ADD = (I2C_PERIPHERAL_ADDRESS << 1);// adjust UI address for R/nW bit
    PIR1bits.SSP1IF = 0;
    PIE1bits.SSP1IE = 1;
    SSP1CON1bits.SSPEN = 1;
}

void I2C_ISR(void) {
    uint8_t i2cData;
    static bool i2cError = false;

    if (SSP1CON1bits.WCOL) {
        i2cError = true;
        SSP1CON1bits.WCOL = 0;
    }
    if (SSP1CON1bits.SSPOV) {
        i2cError = true;
        SSP1CON1bits.SSPOV = 0;
    }

    if (SSP1STATbits.P) {
        if (!i2cError) {
            I2C_StatusCallback(I2C_PERIPHERAL_STOP_DETECTED, 0);
        } else {
            i2cError = false;
        }

    } else if (SSP1STATbits.R_nW)//READ
    {
        if (!SSP1STATbits.D_nA && !SSP1CON2bits.ACKSTAT) {
            if (!i2cError) {
                I2C_StatusCallback(I2C_PERIPHERAL_READ_ADDRESS, 0);
            }
        } else {
            if (!i2cError) {
                I2C_StatusCallback(I2C_PERIPHERAL_READ_NEXT, 0);
            }
        }
    } else {//WRITE
        if (SSP1STATbits.BF) {
            i2cData = SSP1BUF;
            if (!SSP1STATbits.D_nA) {
                if (!i2cError) {
                    I2C_StatusCallback(I2C_PERIPHERAL_WRITE_ADDRESS, i2cData);
                }
            } else {
                if (!i2cError) {
                    I2C_StatusCallback(I2C_PERIPHERAL_WRITE_DATA, i2cData);
                }
            }
        } else {
            if (SSP1STATbits.S) {
                I2C_StatusCallback(I2C_PERIPHERAL_START_DETECTED, 0);
            }
        }
    }

    SSP1CON1bits.CKP = 1;// release SCL
    PIR1bits.SSP1IF = 0; // clear the interrupt flag
}
