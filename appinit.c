/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
 */

#include <xc.h>
#include "pin_manager.h"

void Application_Initialize() {
  RC2_SetDigitalOutput();
  RC2_SetLow();   // app specific
  HV_EN_SetLow();// High voltage disable
}
#include "appinit.h"
