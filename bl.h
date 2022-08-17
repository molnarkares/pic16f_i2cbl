/*
 * Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
 *
 * MIT license. See LICENSE for details.
*/

#ifndef BL_H
#define BL_H

#ifdef __cplusplus
extern "C" {
#endif

#define APP_START_ADDR 0x400    //The start address of the application
#define APP_INT_ADDR 0x404      // SW relocated vector address
#define HEF_START_ADDR 0xf80    //HEF is excluded

#define PROG_PASSWORD 0x54780a2c    //programming only after password is provided
#define I2C_PERIPHERAL_ADDRESS 0x6e //I2C peripheral address

#define BL_REQUEST_CMD 0x5A         //to request programming from application place this value to...
#define BL_REQUEST_ADDRESS 0x320    //this address then perform SW reset

#ifdef __cplusplus
}
#endif

#endif /* BL_H */
