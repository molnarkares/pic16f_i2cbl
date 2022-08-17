/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/

#include <stdbool.h>
#include <string.h>
#include <xc.h>
#include "bl.h"
#include "bl_status.h"
#include "crc16.h"
#include "i2c.h"
#include "memory.h"
#include "reset.h"
#include "shadow_page.h"


#define CMD_READ 0
#define CMD_WRITE 0x20
#define CMD_VALIDATE 0x21
#define CMD_ERASE 0x22
#define CMD_PROG 0xE0

#define APP_MAX_SIZE (HEF_START_ADDR - APP_START_ADDR)

void processCommand(uint8_t command, uint8_t *param) {
    static uint16_t prgAddress = 0;
    static uint16_t prgLen = 0;

    switch (command) {
        case CMD_PROG:
            if (*((uint32_t *) param) == PROG_PASSWORD) {
                setBlActive();
            }
            break;
        case CMD_ERASE:
            if (param[0] == 0x55) {
                prgLen = 0;
                prgAddress = APP_START_ADDR;//there shall be an erase first;
                setBlActive();
            }
            break;
        case CMD_VALIDATE://compare against received crc
            if (isBlActive()) {
                uint16_t crcReceived = param[0] | ((uint16_t) param[1]) << 8;
                uint16_t crcCalculated = crc16(APP_START_ADDR, prgLen);
                if (crcReceived == crcCalculated) {
                    //write first flash page only if CRC matches
                    FLASH_WriteBlock(APP_START_ADDR, shadowPage);
                    swReset();
                }
            }
            break;
        case CMD_WRITE:
            if (isBlActive()) {
                if ((prgAddress >= (APP_START_ADDR)) &&
                    (prgAddress < (APP_START_ADDR + APP_MAX_SIZE))) {

                    FLASH_EraseBlock(prgAddress);

                    if (prgAddress >= (APP_START_ADDR + WRITE_FLASH_BLOCKSIZE)) {
                        FLASH_WriteBlock(prgAddress, (uint16_t *) param);
                    } else {
                        memcpy(shadowPage, param, WRITE_FLASH_BLOCKSIZE * sizeof(uint16_t));
                    }

                    prgAddress += WRITE_FLASH_BLOCKSIZE;
                    prgLen += WRITE_FLASH_BLOCKSIZE;
                }
            }
            break;
        default:
            break;
    }
}


void I2C_StatusCallback(I2C_PERIPHERAL_DRIVER_STATUS i2cBusState, uint8_t i2cData) {
    static uint8_t i2cBuffer[64] = {0};
    static uint8_t bufferIdx = 0;
    static uint8_t command = 0;
    static uint8_t wrType = SLAVE_DATA_ADDRESS;
    static bool isDataProcessing = false;
    static bool isDeviceAddressed = false;

    switch (i2cBusState) {
        case I2C_PERIPHERAL_START_DETECTED:
            isDeviceAddressed = false;
            break;

        case I2C_PERIPHERAL_WRITE_ADDRESS:
            wrType = SLAVE_DATA_ADDRESS;
            isDeviceAddressed = true;
            break;


        case I2C_PERIPHERAL_WRITE_DATA:

            switch (wrType) {
                case SLAVE_DATA_ADDRESS: {
                    command = i2cData;
                    bufferIdx = 0;
                    for (uint8_t memset_it = 0; memset_it < sizeof(i2cBuffer); memset_it++) {
                        i2cBuffer[memset_it] = 0;
                    }
                    isDataProcessing = false;
                } break;


                case SLAVE_NORMAL_DATA:
                default:
                    if (bufferIdx < sizeof(i2cBuffer)) {
                        i2cBuffer[bufferIdx++] = i2cData;
                    }
                    isDataProcessing = true;
                    break;
            }

            wrType = SLAVE_NORMAL_DATA;
            break;

        case I2C_PERIPHERAL_READ_ADDRESS:
        case I2C_PERIPHERAL_READ_NEXT:
            SSP1BUF = 0x73;
            break;
        case I2C_PERIPHERAL_STOP_DETECTED:
            if (isDeviceAddressed && isDataProcessing) {
                processCommand(command, i2cBuffer);
            }
            wrType = SLAVE_DATA_ADDRESS;
            isDataProcessing = false;
            isDeviceAddressed = false;
            break;
        default:;
    }
}
