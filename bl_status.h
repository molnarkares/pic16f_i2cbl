/*
* Copyright (c) 2021-2022 Karoly Molnar <molnarkares@gmail.com>
*
* MIT license. See LICENSE for details.
*/

#ifndef CHECK_H
#define CHECK_H

#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif


bool isBlRequested(void);
bool isAppValid(void);
void setBlActive(void);
bool isBlActive(void);


#ifdef __cplusplus
}
#endif

#endif /* CHECK_H */
