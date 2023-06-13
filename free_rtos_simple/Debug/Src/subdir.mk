################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/croutine.c \
../Src/event_groups.c \
../Src/heap_2.c \
../Src/led.c \
../Src/list.c \
../Src/main.c \
../Src/port.c \
../Src/queue.c \
../Src/stream_buffer.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/tasks.c \
../Src/timers.c 

OBJS += \
./Src/croutine.o \
./Src/event_groups.o \
./Src/heap_2.o \
./Src/led.o \
./Src/list.o \
./Src/main.o \
./Src/port.o \
./Src/queue.o \
./Src/stream_buffer.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/tasks.o \
./Src/timers.o 

C_DEPS += \
./Src/croutine.d \
./Src/event_groups.d \
./Src/heap_2.d \
./Src/led.d \
./Src/list.d \
./Src/main.d \
./Src/port.d \
./Src/queue.d \
./Src/stream_buffer.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/tasks.d \
./Src/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F407xx -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I"C:/ST/stm32f407/chip_headers/Core/Include" -I"C:/ST/stm32f407/chip_headers/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

