################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mqtt/mqtt_packet/MQTTConnectClient.c \
../Core/Src/mqtt/mqtt_packet/MQTTConnectServer.c \
../Core/Src/mqtt/mqtt_packet/MQTTDeserializePublish.c \
../Core/Src/mqtt/mqtt_packet/MQTTFormat.c \
../Core/Src/mqtt/mqtt_packet/MQTTPacket.c \
../Core/Src/mqtt/mqtt_packet/MQTTSerializePublish.c \
../Core/Src/mqtt/mqtt_packet/MQTTSubscribeClient.c \
../Core/Src/mqtt/mqtt_packet/MQTTSubscribeServer.c \
../Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeClient.c \
../Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeServer.c 

OBJS += \
./Core/Src/mqtt/mqtt_packet/MQTTConnectClient.o \
./Core/Src/mqtt/mqtt_packet/MQTTConnectServer.o \
./Core/Src/mqtt/mqtt_packet/MQTTDeserializePublish.o \
./Core/Src/mqtt/mqtt_packet/MQTTFormat.o \
./Core/Src/mqtt/mqtt_packet/MQTTPacket.o \
./Core/Src/mqtt/mqtt_packet/MQTTSerializePublish.o \
./Core/Src/mqtt/mqtt_packet/MQTTSubscribeClient.o \
./Core/Src/mqtt/mqtt_packet/MQTTSubscribeServer.o \
./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeClient.o \
./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeServer.o 

C_DEPS += \
./Core/Src/mqtt/mqtt_packet/MQTTConnectClient.d \
./Core/Src/mqtt/mqtt_packet/MQTTConnectServer.d \
./Core/Src/mqtt/mqtt_packet/MQTTDeserializePublish.d \
./Core/Src/mqtt/mqtt_packet/MQTTFormat.d \
./Core/Src/mqtt/mqtt_packet/MQTTPacket.d \
./Core/Src/mqtt/mqtt_packet/MQTTSerializePublish.d \
./Core/Src/mqtt/mqtt_packet/MQTTSubscribeClient.d \
./Core/Src/mqtt/mqtt_packet/MQTTSubscribeServer.d \
./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeClient.d \
./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mqtt/mqtt_packet/%.o Core/Src/mqtt/mqtt_packet/%.su Core/Src/mqtt/mqtt_packet/%.cyclo: ../Core/Src/mqtt/mqtt_packet/%.c Core/Src/mqtt/mqtt_packet/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Core/Scr/mqtt -I../Core/Scr/mqtt/mqtt_packet -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mqtt-2f-mqtt_packet

clean-Core-2f-Src-2f-mqtt-2f-mqtt_packet:
	-$(RM) ./Core/Src/mqtt/mqtt_packet/MQTTConnectClient.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTConnectClient.d ./Core/Src/mqtt/mqtt_packet/MQTTConnectClient.o ./Core/Src/mqtt/mqtt_packet/MQTTConnectClient.su ./Core/Src/mqtt/mqtt_packet/MQTTConnectServer.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTConnectServer.d ./Core/Src/mqtt/mqtt_packet/MQTTConnectServer.o ./Core/Src/mqtt/mqtt_packet/MQTTConnectServer.su ./Core/Src/mqtt/mqtt_packet/MQTTDeserializePublish.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTDeserializePublish.d ./Core/Src/mqtt/mqtt_packet/MQTTDeserializePublish.o ./Core/Src/mqtt/mqtt_packet/MQTTDeserializePublish.su ./Core/Src/mqtt/mqtt_packet/MQTTFormat.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTFormat.d ./Core/Src/mqtt/mqtt_packet/MQTTFormat.o ./Core/Src/mqtt/mqtt_packet/MQTTFormat.su ./Core/Src/mqtt/mqtt_packet/MQTTPacket.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTPacket.d ./Core/Src/mqtt/mqtt_packet/MQTTPacket.o ./Core/Src/mqtt/mqtt_packet/MQTTPacket.su ./Core/Src/mqtt/mqtt_packet/MQTTSerializePublish.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTSerializePublish.d ./Core/Src/mqtt/mqtt_packet/MQTTSerializePublish.o ./Core/Src/mqtt/mqtt_packet/MQTTSerializePublish.su ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeClient.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeClient.d ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeClient.o ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeClient.su ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeServer.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeServer.d ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeServer.o ./Core/Src/mqtt/mqtt_packet/MQTTSubscribeServer.su ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeClient.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeClient.d ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeClient.o ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeClient.su ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeServer.cyclo ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeServer.d ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeServer.o ./Core/Src/mqtt/mqtt_packet/MQTTUnsubscribeServer.su

.PHONY: clean-Core-2f-Src-2f-mqtt-2f-mqtt_packet

