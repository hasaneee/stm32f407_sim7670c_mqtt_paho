################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mqtt/MQTTPacket/src/MQTTConnectClient.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTConnectServer.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTDeserializePublish.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTFormat.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTPacket.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTSerializePublish.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeClient.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeServer.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeClient.c \
../Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeServer.c 

OBJS += \
./Core/Src/mqtt/MQTTPacket/src/MQTTConnectClient.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTConnectServer.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTDeserializePublish.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTFormat.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTPacket.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTSerializePublish.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeClient.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeServer.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeClient.o \
./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeServer.o 

C_DEPS += \
./Core/Src/mqtt/MQTTPacket/src/MQTTConnectClient.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTConnectServer.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTDeserializePublish.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTFormat.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTPacket.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTSerializePublish.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeClient.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeServer.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeClient.d \
./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mqtt/MQTTPacket/src/%.o Core/Src/mqtt/MQTTPacket/src/%.su Core/Src/mqtt/MQTTPacket/src/%.cyclo: ../Core/Src/mqtt/MQTTPacket/src/%.c Core/Src/mqtt/MQTTPacket/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Core/Scr/mqtt -I../Core/Scr/mqtt/MQTTPacket/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-src

clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-src:
	-$(RM) ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectClient.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectClient.d ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectClient.o ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectClient.su ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectServer.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectServer.d ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectServer.o ./Core/Src/mqtt/MQTTPacket/src/MQTTConnectServer.su ./Core/Src/mqtt/MQTTPacket/src/MQTTDeserializePublish.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTDeserializePublish.d ./Core/Src/mqtt/MQTTPacket/src/MQTTDeserializePublish.o ./Core/Src/mqtt/MQTTPacket/src/MQTTDeserializePublish.su ./Core/Src/mqtt/MQTTPacket/src/MQTTFormat.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTFormat.d ./Core/Src/mqtt/MQTTPacket/src/MQTTFormat.o ./Core/Src/mqtt/MQTTPacket/src/MQTTFormat.su ./Core/Src/mqtt/MQTTPacket/src/MQTTPacket.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTPacket.d ./Core/Src/mqtt/MQTTPacket/src/MQTTPacket.o ./Core/Src/mqtt/MQTTPacket/src/MQTTPacket.su ./Core/Src/mqtt/MQTTPacket/src/MQTTSerializePublish.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTSerializePublish.d ./Core/Src/mqtt/MQTTPacket/src/MQTTSerializePublish.o ./Core/Src/mqtt/MQTTPacket/src/MQTTSerializePublish.su ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeClient.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeClient.d ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeClient.o ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeClient.su ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeServer.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeServer.d ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeServer.o ./Core/Src/mqtt/MQTTPacket/src/MQTTSubscribeServer.su ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeClient.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeClient.d ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeClient.o ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeClient.su ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeServer.cyclo ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeServer.d ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeServer.o ./Core/Src/mqtt/MQTTPacket/src/MQTTUnsubscribeServer.su

.PHONY: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-src

