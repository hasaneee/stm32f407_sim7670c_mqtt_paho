/*
 * network_sim7670.h
 *
 *  Created on: Nov 17, 2024
 *      Author: Qbits
 */

#ifndef MQTT_LIB_NETWORK_SIM7670_H_
#define MQTT_LIB_NETWORK_SIM7670_H_

#include "stm32f4xx_hal.h"

/* MQTT Configuration */
#define MQTT_BROKER       "test.mosquitto.org"
#define MQTT_PORT         1883
#define MQTT_CLIENT_ID    "stm32_sim7670"
//#define MQTT_TOKEN        "hvn5z3f66nw489vr99wu" // Replace with your token
#define TIMEOUT_MS        10000

//#define SOCK_OK               1        ///< Result is OK about socket process.
//#define SOCK_BUSY             0        ///< Socket is busy on processing the operation. Valid only Non-block IO Mode.
//#define SOCK_FATAL            -1000    ///< Result is fatal error about socket process.
//#define SOCK_ERROR            0

/*
 * @brief MQTT MilliTimer handler
 * @note MUST BE register to your system 1m Tick timer handler
 */
void MilliTimer_Handler(void);

/*
 * @brief Timer structure
 */
typedef struct Timer Timer;
struct Timer {
	unsigned long systick_period;
	unsigned long end_time;
};

typedef struct {
    UART_HandleTypeDef* uart_handle;
} SIM7670_NetworkContext;

typedef struct {
    int (*mqttwrite)(void* context, unsigned char* buffer, int len, int timeout_ms);
    int (*mqttread)(void* context, unsigned char* buffer, int len, int timeout_ms);
    SIM7670_NetworkContext context; // Directly embed the context
} Network;

int ConnectNetwork(Network* n, const char* hostname, uint16_t port);
void NetworkInit(Network* n, UART_HandleTypeDef* uart_handle);
int SIM_NetworkWrite(void* context, unsigned char* buffer, int len, int timeout_ms);
int SIM_NetworkRead(void* context, unsigned char* buffer, int len, int timeout_ms);
int SIM_SendCommand(UART_HandleTypeDef* uart, const char* command, const char* expected_response, uint32_t timeout);
int Network_Init();
int MQTT_Connect();
int MQTT_Publish(const char* topic, const char* payload);
int GetIPAddress(UART_HandleTypeDef* uart_handle, char* ip_buffer, size_t buffer_size);
void SIM_PowerOn(void);
void SIM_Reset(void);


#endif /* MQTT_LIB_NETWORK_SIM7670_H_ */
