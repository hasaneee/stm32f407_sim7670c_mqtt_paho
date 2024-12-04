################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/mqtt_lib/mqtt_packet/MQTTConnectClient.c \
../Core/mqtt_lib/mqtt_packet/MQTTConnectServer.c \
../Core/mqtt_lib/mqtt_packet/MQTTDeserializePublish.c \
../Core/mqtt_lib/mqtt_packet/MQTTFormat.c \
../Core/mqtt_lib/mqtt_packet/MQTTPacket.c \
../Core/mqtt_lib/mqtt_packet/MQTTSerializePublish.c \
../Core/mqtt_lib/mqtt_packet/MQTTSubscribeClient.c \
../Core/mqtt_lib/mqtt_packet/MQTTSubscribeServer.c \
../Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeClient.c \
../Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeServer.c 

OBJS += \
./Core/mqtt_lib/mqtt_packet/MQTTConnectClient.o \
./Core/mqtt_lib/mqtt_packet/MQTTConnectServer.o \
./Core/mqtt_lib/mqtt_packet/MQTTDeserializePublish.o \
./Core/mqtt_lib/mqtt_packet/MQTTFormat.o \
./Core/mqtt_lib/mqtt_packet/MQTTPacket.o \
./Core/mqtt_lib/mqtt_packet/MQTTSerializePublish.o \
./Core/mqtt_lib/mqtt_packet/MQTTSubscribeClient.o \
./Core/mqtt_lib/mqtt_packet/MQTTSubscribeServer.o \
./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeClient.o \
./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeServer.o 

C_DEPS += \
./Core/mqtt_lib/mqtt_packet/MQTTConnectClient.d \
./Core/mqtt_lib/mqtt_packet/MQTTConnectServer.d \
./Core/mqtt_lib/mqtt_packet/MQTTDeserializePublish.d \
./Core/mqtt_lib/mqtt_packet/MQTTFormat.d \
./Core/mqtt_lib/mqtt_packet/MQTTPacket.d \
./Core/mqtt_lib/mqtt_packet/MQTTSerializePublish.d \
./Core/mqtt_lib/mqtt_packet/MQTTSubscribeClient.d \
./Core/mqtt_lib/mqtt_packet/MQTTSubscribeServer.d \
./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeClient.d \
./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
Core/mqtt_lib/mqtt_packet/%.o Core/mqtt_lib/mqtt_packet/%.su Core/mqtt_lib/mqtt_packet/%.cyclo: ../Core/mqtt_lib/mqtt_packet/%.c Core/mqtt_lib/mqtt_packet/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Core/mqtt_lib -I../Core/mqtt_lib/mqtt_packet -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-mqtt_lib-2f-mqtt_packet

clean-Core-2f-mqtt_lib-2f-mqtt_packet:
	-$(RM) ./Core/mqtt_lib/mqtt_packet/MQTTConnectClient.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTConnectClient.d ./Core/mqtt_lib/mqtt_packet/MQTTConnectClient.o ./Core/mqtt_lib/mqtt_packet/MQTTConnectClient.su ./Core/mqtt_lib/mqtt_packet/MQTTConnectServer.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTConnectServer.d ./Core/mqtt_lib/mqtt_packet/MQTTConnectServer.o ./Core/mqtt_lib/mqtt_packet/MQTTConnectServer.su ./Core/mqtt_lib/mqtt_packet/MQTTDeserializePublish.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTDeserializePublish.d ./Core/mqtt_lib/mqtt_packet/MQTTDeserializePublish.o ./Core/mqtt_lib/mqtt_packet/MQTTDeserializePublish.su ./Core/mqtt_lib/mqtt_packet/MQTTFormat.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTFormat.d ./Core/mqtt_lib/mqtt_packet/MQTTFormat.o ./Core/mqtt_lib/mqtt_packet/MQTTFormat.su ./Core/mqtt_lib/mqtt_packet/MQTTPacket.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTPacket.d ./Core/mqtt_lib/mqtt_packet/MQTTPacket.o ./Core/mqtt_lib/mqtt_packet/MQTTPacket.su ./Core/mqtt_lib/mqtt_packet/MQTTSerializePublish.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTSerializePublish.d ./Core/mqtt_lib/mqtt_packet/MQTTSerializePublish.o ./Core/mqtt_lib/mqtt_packet/MQTTSerializePublish.su ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeClient.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeClient.d ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeClient.o ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeClient.su ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeServer.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeServer.d ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeServer.o ./Core/mqtt_lib/mqtt_packet/MQTTSubscribeServer.su ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeClient.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeClient.d ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeClient.o ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeClient.su ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeServer.cyclo ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeServer.d ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeServer.o ./Core/mqtt_lib/mqtt_packet/MQTTUnsubscribeServer.su

.PHONY: clean-Core-2f-mqtt_lib-2f-mqtt_packet

