/*
 * debug_utils.c
 *
 *  Created on: Nov 19, 2024
 *      Author: Qbits
 */

#include "stm32f4xx_hal.h"
#include <string.h>
#include "debug_utils.h"

extern UART_HandleTypeDef huart4; // UART4 handle for debugging

void DebugPrint(const char* message) {
    if (message != NULL) {
        HAL_UART_Transmit(&huart4, (uint8_t*)message, strlen(message), HAL_MAX_DELAY);
    }
}
