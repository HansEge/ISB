################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ISR.c \
../src/Init.c 

CPP_SRCS += \
../src/Controller.cpp \
../src/FilterAlgo.cpp \
../src/FilterAlgoTester.cpp \
../src/LMSFilter.cpp \
../src/Process.cpp \
../src/Program.cpp \
../src/Switch.cpp 

SRC_OBJS += \
./src/Controller.doj \
./src/FilterAlgo.doj \
./src/FilterAlgoTester.doj \
./src/ISR.doj \
./src/Init.doj \
./src/LMSFilter.doj \
./src/Process.doj \
./src/Program.doj \
./src/Switch.doj 

C_DEPS += \
./src/ISR.d \
./src/Init.d 

CPP_DEPS += \
./src/Controller.d \
./src/FilterAlgo.d \
./src/FilterAlgoTester.d \
./src/LMSFilter.d \
./src/Process.d \
./src/Program.d \
./src/Switch.d 


# Each subdirectory must supply rules for building sources it contributes
src/Controller.doj: ../src/Controller.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Controller.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FilterAlgo.doj: ../src/FilterAlgo.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/FilterAlgo.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/FilterAlgoTester.doj: ../src/FilterAlgoTester.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/FilterAlgoTester.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ISR.doj: ../src/ISR.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/ISR.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Init.doj: ../src/Init.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Init.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/LMSFilter.doj: ../src/LMSFilter.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/LMSFilter.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Process.doj: ../src/Process.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Process.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Program.doj: ../src/Program.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Program.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Switch.doj: ../src/Switch.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-ce3bc7e3bf486cb9c27ffb59813f0fd5.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Switch.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


