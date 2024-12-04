################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mqtt/MQTTPacket/samples/null.c \
../Core/Src/mqtt/MQTTPacket/samples/ping.c \
../Core/Src/mqtt/MQTTPacket/samples/ping_nb.c \
../Core/Src/mqtt/MQTTPacket/samples/pub0sub1.c \
../Core/Src/mqtt/MQTTPacket/samples/pub0sub1_nb.c \
../Core/Src/mqtt/MQTTPacket/samples/qos0pub.c \
../Core/Src/mqtt/MQTTPacket/samples/transport.c 

OBJS += \
./Core/Src/mqtt/MQTTPacket/samples/null.o \
./Core/Src/mqtt/MQTTPacket/samples/ping.o \
./Core/Src/mqtt/MQTTPacket/samples/ping_nb.o \
./Core/Src/mqtt/MQTTPacket/samples/pub0sub1.o \
./Core/Src/mqtt/MQTTPacket/samples/pub0sub1_nb.o \
./Core/Src/mqtt/MQTTPacket/samples/qos0pub.o \
./Core/Src/mqtt/MQTTPacket/samples/transport.o 

C_DEPS += \
./Core/Src/mqtt/MQTTPacket/samples/null.d \
./Core/Src/mqtt/MQTTPacket/samples/ping.d \
./Core/Src/mqtt/MQTTPacket/samples/ping_nb.d \
./Core/Src/mqtt/MQTTPacket/samples/pub0sub1.d \
./Core/Src/mqtt/MQTTPacket/samples/pub0sub1_nb.d \
./Core/Src/mqtt/MQTTPacket/samples/qos0pub.d \
./Core/Src/mqtt/MQTTPacket/samples/transport.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mqtt/MQTTPacket/samples/%.o Core/Src/mqtt/MQTTPacket/samples/%.su Core/Src/mqtt/MQTTPacket/samples/%.cyclo: ../Core/Src/mqtt/MQTTPacket/samples/%.c Core/Src/mqtt/MQTTPacket/samples/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Core/Scr/mqtt -I../Core/Scr/mqtt/mqtt_packet -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-samples

clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-samples:
	-$(RM) ./Core/Src/mqtt/MQTTPacket/samples/null.cyclo ./Core/Src/mqtt/MQTTPacket/samples/null.d ./Core/Src/mqtt/MQTTPacket/samples/null.o ./Core/Src/mqtt/MQTTPacket/samples/null.su ./Core/Src/mqtt/MQTTPacket/samples/ping.cyclo ./Core/Src/mqtt/MQTTPacket/samples/ping.d ./Core/Src/mqtt/MQTTPacket/samples/ping.o ./Core/Src/mqtt/MQTTPacket/samples/ping.su ./Core/Src/mqtt/MQTTPacket/samples/ping_nb.cyclo ./Core/Src/mqtt/MQTTPacket/samples/ping_nb.d ./Core/Src/mqtt/MQTTPacket/samples/ping_nb.o ./Core/Src/mqtt/MQTTPacket/samples/ping_nb.su ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1.cyclo ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1.d ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1.o ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1.su ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1_nb.cyclo ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1_nb.d ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1_nb.o ./Core/Src/mqtt/MQTTPacket/samples/pub0sub1_nb.su ./Core/Src/mqtt/MQTTPacket/samples/qos0pub.cyclo ./Core/Src/mqtt/MQTTPacket/samples/qos0pub.d ./Core/Src/mqtt/MQTTPacket/samples/qos0pub.o ./Core/Src/mqtt/MQTTPacket/samples/qos0pub.su ./Core/Src/mqtt/MQTTPacket/samples/transport.cyclo ./Core/Src/mqtt/MQTTPacket/samples/transport.d ./Core/Src/mqtt/MQTTPacket/samples/transport.o ./Core/Src/mqtt/MQTTPacket/samples/transport.su

.PHONY: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-samples

