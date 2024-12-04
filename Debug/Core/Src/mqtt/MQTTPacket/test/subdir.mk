################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/mqtt/MQTTPacket/test/test1.c 

OBJS += \
./Core/Src/mqtt/MQTTPacket/test/test1.o 

C_DEPS += \
./Core/Src/mqtt/MQTTPacket/test/test1.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/mqtt/MQTTPacket/test/%.o Core/Src/mqtt/MQTTPacket/test/%.su Core/Src/mqtt/MQTTPacket/test/%.cyclo: ../Core/Src/mqtt/MQTTPacket/test/%.c Core/Src/mqtt/MQTTPacket/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Core/Scr/mqtt -I../Core/Scr/mqtt/mqtt_packet -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-test

clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-test:
	-$(RM) ./Core/Src/mqtt/MQTTPacket/test/test1.cyclo ./Core/Src/mqtt/MQTTPacket/test/test1.d ./Core/Src/mqtt/MQTTPacket/test/test1.o ./Core/Src/mqtt/MQTTPacket/test/test1.su

.PHONY: clean-Core-2f-Src-2f-mqtt-2f-MQTTPacket-2f-test

