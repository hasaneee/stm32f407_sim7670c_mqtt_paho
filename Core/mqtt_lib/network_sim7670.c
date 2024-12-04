/*
 * network_sim7670.c
 *
 *  Created on: Nov 17, 2024
 *      Author: Qbits
 */


#include "network_sim7670.h"
#include <string.h>
#include <stdio.h>
#include "debug_utils.h"


unsigned long MilliTimer;
char command[256];
/*
 * @brief MQTT MilliTimer handler
 * @note MUST BE register to your system 1m Tick timer handler.
 */
void MilliTimer_Handler(void) {
	MilliTimer++;
}

/*
 * @brief Timer Initialize
 * @param  timer : pointer to a Timer structure
 *         that contains the configuration information for the Timer.
 */
void TimerInit(Timer* timer) {
	timer->end_time = 0;
}

/*
 * @brief expired Timer
 * @param  timer : pointer to a Timer structure
 *         that contains the configuration information for the Timer.
 */
char TimerIsExpired(Timer* timer) {
	long left = (long)((unsigned long) timer->end_time - MilliTimer);
	return (left < 0);
}

/*
 * @brief Countdown millisecond Timer
 * @param  timer : pointer to a Timer structure
 *         that contains the configuration information for the Timer.
 *         timeout : setting timeout millisecond.
 */
void TimerCountdownMS(Timer* timer, unsigned int timeout) {
	timer->end_time = MilliTimer + timeout;
}

/*
 * @brief Countdown second Timer
 * @param  timer : pointer to a Timer structure
 *         that contains the configuration information for the Timer.
 *         timeout : setting timeout millisecond.
 */
void TimerCountdown(Timer* timer, unsigned int timeout) {
	timer->end_time = MilliTimer + (timeout * 1000);
}

/*
 * @brief left millisecond Timer
 * @param  timer : pointer to a Timer structure
 *         that contains the configuration information for the Timer.
 */
int TimerLeftMS(Timer* timer) {
	long left = timer->end_time - MilliTimer;
	return (left < 0) ? 0 : left;
}



extern UART_HandleTypeDef huart5; // UART handle for SIM A7670C

#define AT_COMMAND_RESPONSE_OK "OK"
#define AT_COMMAND_RESPONSE_ERROR "ERROR"

void NetworkInit(Network* n, UART_HandleTypeDef* uart_handle) {
    n->mqttwrite = SIM_NetworkWrite;
    n->mqttread = SIM_NetworkRead;
    n->context.uart_handle = uart_handle;

    DebugPrint("Network initialized.\r\n");
}

/*
 * @brief connect network function
 * @param  n : pointer to a Network structure
 *         that contains the configuration information for the Network.
 *         ip : server iP.
 *         port : server port.
 * @retval SOCKOK code or SOCKERR code
 */
int ConnectNetwork(Network* n, const char* hostname, uint16_t port) {
    char command[256];
    char ip_address[16] = {0};

    DebugPrint("Connecting to server...\r\n");


    char cmd[512];

    DebugPrint("Starting MQTT service...\r\n");
	if (SIM_SendCommand(&huart5, "AT+CMQTTSTART", "OK", TIMEOUT_MS) != 0) {
		DebugPrint("Failed to start MQTT service.\r\n");
		return -1;
	}


	DebugPrint("Creating MQTT client...\r\n");
	snprintf(cmd, sizeof(cmd), "AT+CMQTTACCQ=0,\"%s\"", MQTT_CLIENT_ID);
	if (SIM_SendCommand(&huart5, cmd, "OK", TIMEOUT_MS) != 0) {
		DebugPrint("Failed to create MQTT client.\r\n");
		return -1;
	}


	DebugPrint("Connecting to MQTT broker...\r\n");
	//snprintf(cmd, sizeof(cmd),"AT+CMQTTCONNECT=0,\"tcp://demo.thingsboard.io:1883\",90,1"); //working
	snprintf(cmd, sizeof(cmd), "AT+CMQTTCONNECT=0,\"tcp://%s:%d\",90,1", hostname, port); //working
	//snprintf(cmd, sizeof(cmd), "AT+CMQTTCONNECT=0,\"tcp://%s:%d\",90,1,\"%s\"", hostname, port, MQTT_TOKEN); //not working

	if (SIM_SendCommand(&huart5, cmd, "OK", TIMEOUT_MS) != 0) {
		DebugPrint("Failed to connect to MQTT broker.\r\n");
		SIM_SendCommand(&huart5, "AT+CMQTTSTOP", "OK", TIMEOUT_MS);
		HAL_Delay(1000);
		return -1;
	}

	DebugPrint("MQTT connection established.\r\n");
	return 0;
}

int SIM_NetworkWrite(void* context, unsigned char* buffer, int len, int timeout_ms) {
    SIM7670_NetworkContext* ctx = (SIM7670_NetworkContext*)context;

    if (HAL_UART_Transmit(ctx->uart_handle, buffer, len, timeout_ms) == HAL_OK) {
        return len;
    }
    DebugPrint("Error: Network write failed.\r\n");
    return -1;
}

int SIM_NetworkRead(void* context, unsigned char* buffer, int len, int timeout_ms) {
    SIM7670_NetworkContext* ctx = (SIM7670_NetworkContext*)context;

    if (HAL_UART_Receive(ctx->uart_handle, buffer, len, timeout_ms) == HAL_OK) {
        return len;
    }
    DebugPrint("Error: Network read failed.\r\n");
    return -1;
}

int SIM_SendCommand(UART_HandleTypeDef* uart, const char* command, const char* expected_response, uint32_t timeout) {
    char response[256] = {0};
    char temp_char;
    uint16_t response_pos = 0;
    uint32_t start_time = HAL_GetTick();

    DebugPrint("Sending command: ");
    DebugPrint(command);
    DebugPrint("\r\n");

    HAL_UART_Transmit(uart, (uint8_t*)command, strlen(command), timeout);
    HAL_UART_Transmit(uart, (uint8_t*)"\r\n", 2, timeout);

    while ((HAL_GetTick() - start_time) < timeout) {
        if (HAL_UART_Receive(uart, (uint8_t*)&temp_char, 1, timeout) == HAL_OK) {
            response[response_pos++] = temp_char;
            if (strstr(response, expected_response)) {
                DebugPrint("Response: ");
                DebugPrint(response);
                DebugPrint("\r\n");
                return 0;
            }
            if (response_pos >= sizeof(response) - 1) break;
        }
    }

    DebugPrint("Command failed: ");
    DebugPrint(response);
    DebugPrint("\r\n");
    return -1;
}

int Network_Init() {
    DebugPrint("Initializing network...\r\n");

    // Enable error codes
    if (SIM_SendCommand(&huart5, "AT+CMEE=2", "OK", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to enable error codes.\r\n");
        return -1;
    }

    // Attach GPRS
    if (SIM_SendCommand(&huart5, "AT+CGATT=1", "OK", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to attach to GPRS.\r\n");
        return -1;
    }

    // Configure PDP context
    if (SIM_SendCommand(&huart5, "AT+CGDCONT=1,\"IP\",\"blweb\"", "OK", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to configure PDP context.\r\n");
        return -1;
    }

    // Activate PDP context
    if (SIM_SendCommand(&huart5, "AT+CGACT=1,1", "OK", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to activate PDP context.\r\n");
        return -1;
    }

    DebugPrint("Network initialized successfully.\r\n");
    return 0;
}

int MQTT_Connect() {
    char cmd[512];

    DebugPrint("Creating MQTT client...\r\n");
    snprintf(cmd, sizeof(cmd), "AT+CMQTTACCQ=0,\"%s\"", MQTT_CLIENT_ID);
    if (SIM_SendCommand(&huart5, cmd, "OK", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to create MQTT client.\r\n");
        return -1;
    }

    DebugPrint("Connecting to MQTT broker...\r\n");
    //snprintf(cmd, sizeof(cmd),"AT+CMQTTCONNECT=0,\"tcp://demo.thingsboard.io:1883\",90,1"); //working
    snprintf(cmd, sizeof(cmd), "AT+CMQTTCONNECT=0,\"tcp://%s:%d\",90,1", MQTT_BROKER, MQTT_PORT); //working

    if (SIM_SendCommand(&huart5, cmd, "OK", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to connect to MQTT broker.\r\n");
        SIM_SendCommand(&huart5, "AT+CMQTTSTOP", "OK", TIMEOUT_MS);
        HAL_Delay(1000);
        return -1;
    }

    DebugPrint("MQTT connection established.\r\n");
    return 0;
}



int MQTT_Publish(const char* topic, const char* payload) {
    char cmd[512];
    int payload_len = strlen(payload);

    DebugPrint("Publishing MQTT message...\r\n");

    // Command to publish the payload
    snprintf(cmd, sizeof(cmd), "AT+CMQTTPUB=0,\"%s\",1,0,%d", topic, payload_len);
    if (SIM_SendCommand(&huart5, cmd, ">", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to initiate MQTT publish.\r\n");
        return -1;
    }

    // Send the payload
    if (SIM_SendCommand(&huart5, payload, "OK", TIMEOUT_MS) != 0) {
        DebugPrint("Failed to publish MQTT message.\r\n");
        return -1;
    }

    DebugPrint("MQTT message published successfully.\r\n");
    return 0;
}

int GetIPAddress(UART_HandleTypeDef* uart_handle, char* ip_buffer, size_t buffer_size) {
    char response[256] = {0};
    char* ip_start;

    DebugPrint("Waiting for DNS response...\r\n");

    // Step 1: Continuously read from UART until a response is received
    if (HAL_UART_Receive(uart_handle, (uint8_t*)response, sizeof(response), TIMEOUT_MS) != HAL_OK) {
        DebugPrint("Error: Failed to read DNS response.\r\n");
        return -1;
    }

    DebugPrint("DNS Response: ");
    DebugPrint(response);
    DebugPrint("\r\n");

    // Step 2: Check if the response contains "+CDNSGIP"
    ip_start = strstr(response, "+CDNSGIP:");
    if (ip_start) {
        // Example: +CDNSGIP: 1,"test.mosquitto.org","5.196.78.28"
        sscanf(ip_start, "+CDNSGIP: 1,%*[^,],\"%15[^\"]", ip_buffer);

        // Debug the extracted IP address
        DebugPrint("Extracted IP Address: ");
        DebugPrint(ip_buffer);
        DebugPrint("\r\n");
        return 0;
    }

    DebugPrint("Error: DNS response does not contain a valid IP address.\r\n");
    return -1;
}

void SIM_PowerOn(void) {
    // Pull PWR pin high for 1 second
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, GPIO_PIN_SET);
    HAL_Delay(5000); // 1 second pulse
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, GPIO_PIN_RESET);

    // Wait for the module to initialize
    HAL_Delay(5000); // 5 seconds for module startup
}

void SIM_Reset(void) {
    // Pull RST pin low to reset
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, GPIO_PIN_SET);
    HAL_Delay(5000); // 100 ms pulse
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, GPIO_PIN_RESET);

    // Wait for the module to reinitialize
    HAL_Delay(5000); // 5 seconds for full reset
}
