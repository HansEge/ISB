################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ISR.c \
../src/Init.c 

CPP_SRCS += \
../src/Algorithm.cpp \
../src/Application.cpp \
../src/Controller.cpp \
../src/LMSFilter.cpp \
../src/Process.cpp \
../src/Switch.cpp 

SRC_OBJS += \
./src/Algorithm.doj \
./src/Application.doj \
./src/Controller.doj \
./src/ISR.doj \
./src/Init.doj \
./src/LMSFilter.doj \
./src/Process.doj \
./src/Switch.doj 

C_DEPS += \
./src/ISR.d \
./src/Init.d 

CPP_DEPS += \
./src/Algorithm.d \
./src/Application.d \
./src/Controller.d \
./src/LMSFilter.d \
./src/Process.d \
./src/Switch.d 


# Each subdirectory must supply rules for building sources it contributes
src/Algorithm.doj: ../src/Algorithm.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Algorithm.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Application.doj: ../src/Application.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Application.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Controller.doj: ../src/Controller.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Controller.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ISR.doj: ../src/ISR.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/ISR.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Init.doj: ../src/Init.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Init.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/LMSFilter.doj: ../src/LMSFilter.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/LMSFilter.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Process.doj: ../src/Process.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Process.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Switch.doj: ../src/Switch.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="DynFilter" -proc ADSP-BF533 -flags-compiler --no_wrap_diagnostics -si-revision 0.6 -g -DCORE0 -D_DEBUG @includes-b893300d3ab5a8ae5c8732607184049b.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -D__PROCESSOR_SPEED__=600000000 -double-size-32 -decls-strong -cplbs -gnu-style-dependencies -MD -Mo "src/Switch.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


