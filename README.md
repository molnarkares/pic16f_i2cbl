# I2C boot loader for PIC16F(L764)

Boot loader that can be used to update the firmware of the a PIC16 MCU via I2C bus.

The boot loader was written as part of the GM tube High Voltage supply product and tailored to 
the memory ranges of PIC16F1764 MCU. 

# Operation

The BL acts as an I2C peripheral device and can execute programming commands, validate and start the application.

## Memory layout

The boot loader (called BL from now on) is located in the first 1K memory of the PIC MCU.
The application shall be relocated to 0x400 and its interrupt vector to 0x404.

## Startup

The Bl checks a number of conditions at startup:
1. If the application has stored 0x5A at address 0x320 in RAM before reset, 
then the BL will stay in programming mode and wait for reprogramming request on I2C.
2. If no explicit programming request was detected from the application, then the BL waits for a programming request 
from the I2C bus for a short time then checks for valid application. If the check returns true then in jumps to the application start address.

# Building the boot loader

The BL can be built with the free version of the Microchip XC8 compiler. 
The related Makefile is exported from the MPLAB IDE. 
The software can be compiled with executing the _make_ command.

Observe that the software was developed on Linux host. a number of path settings
in the Makefile might require adjustment to rebuild it on other host OSes.

# Porting

The boot loader can be adjusted to support other MCU from the PIC16 range.
It may include tailoring the macro definitions in _memory.h_ and _bl.h_ files.
The application specific initialization can be placed to _appinit.c_

# Command set

## CMD_PROG

|Command| Reprogramming Request            |
| --- |----------------------------------|
 |Hex code| 0xE0                             |
 | Parameters| _password_ 4 bytes  |
| Description| Initiates reprogramming session if the password <br/>matches|

## CMD_ERASE

|Command| Erase                                           |
| --- |-------------------------------------------------|
|Hex code| 0x22                                            |
| Parameters| 0x55 = _Erase All_                              |
| Description| Erases the complete application memory segment  |

## CMD_WRITE

|Command| Flash Write                                                                                                      |
| --- |------------------------------------------------------------------------------------------------------------------|
|Hex code| 0x20                                                                                                             |
| Parameters| 64 bytes data = 32 x 16bits words                                                                                |
| Description| Programs a single 32 words length Flash Block then <br/> sets the programming address pointer to the next block. |

## CMD_VALIDATE

|Command| Validate application                                                                                                                                                                      |
| --- |-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|Hex code| 0x21                                                                                                                                                                                      |
| Parameters| 16 bits CRC of the application data                                                                                                                                                       |
| Description| Calculates CRC of the programmed application and compares<br/> it to the value given in the command parameter.<br/>If the values match it marks the application valid and executes reset. |

# License

## Code written by the Author

The complete business logic is written by the Author and it is available under MIT license.

## Generated code

The low level device drivers are generated by the Microchip MPLAB Code Configurator.
The generated code has its own copyright in the header of the concerned files.
These include the following files:
_tmr6.c/h_, _pin_manager.c/h_, _memory.c/h_, _mcc.c/h_, _i2c.c/h_ and _interrupt_manager.h_  