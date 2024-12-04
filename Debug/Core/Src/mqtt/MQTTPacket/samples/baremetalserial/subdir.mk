################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mqtt/MQTTPacket/samples/baremetalserial/ping_nb.c \
../Core/Src/mqtt/MQTTPacket/samples/baremetalserial/pub0sub1_nb.c \
../Core/Src/mqtt/MQTTPacket/samples/baremetalserial/transport.c 

OBJS += \
./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/ping_nb.o \
./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/pub0sub1_nb.o \
./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/transport.o 

C_DEPS += \
./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/ping_nb.d \
./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/pub0sub1_nb.d \
./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/transport.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mqtt/MQTTPacket/samples/baremetalserial/%.o Core/Src/mqtt/MQTTPacket/samples/baremetalserial/%.su Core/Src/mqtt/MQTTPacket/samples/baremetalserial/%.cyclo: ../Core/Src/mqtt/MQTTPacket/samples/baremetalserial/%.c Core/Src/mqtt/MQTTPacket/samples/baremetalserial/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Core/Scr/mqtt -I../Core/Scr/mqtt/mqtt_packet -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-samples-2f-baremetalserial

clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-samples-2f-baremetalserial:
	-$(RM) ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/ping_nb.cyclo ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/ping_nb.d ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/ping_nb.o ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/ping_nb.su ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/pub0sub1_nb.cyclo ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/pub0sub1_nb.d ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/pub0sub1_nb.o ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/pub0sub1_nb.su ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/transport.cyclo ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/transport.d ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/transport.o ./Core/Src/mqtt/MQTTPacket/samples/baremetalserial/transport.su

.PHONY: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-samples-2f-baremetalserial

