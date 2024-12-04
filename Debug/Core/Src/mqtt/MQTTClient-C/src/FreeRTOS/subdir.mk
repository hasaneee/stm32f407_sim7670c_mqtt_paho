################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/MQTTFreeRTOS.c 

OBJS += \
./Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/MQTTFreeRTOS.o 

C_DEPS += \
./Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/MQTTFreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/%.o Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/%.su Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/%.cyclo: ../Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/%.c Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Core/Scr/mqtt -I../Core/Scr/mqtt/mqtt_packet -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mqtt-2f-MQTTClient-2d-C-2f-src-2f-FreeRTOS

clean-Core-2f-Src-2f-mqtt-2f-MQTTClient-2d-C-2f-src-2f-FreeRTOS:
	-$(RM) ./Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/MQTTFreeRTOS.cyclo ./Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/MQTTFreeRTOS.d ./Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/MQTTFreeRTOS.o ./Core/Src/mqtt/MQTTClient-C/src/FreeRTOS/MQTTFreeRTOS.su

.PHONY: clean-Core-2f-Src-2f-mqtt-2f-MQTTClient-2d-C-2f-src-2f-FreeRTOS

