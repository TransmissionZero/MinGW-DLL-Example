# This Makefile will build a DLL and an application which makes use of the DLL.

# Object files to create for the executable
DLL_OBJS = obj/add.o obj/dllres.o
EXE_OBJS = obj/addtest.o obj/exeres.o

# Warnings to be raised by the C compiler
WARNS = -Wall

# Names of tools to use when building
CC = gcc
RC = windres
EXE = AddTest.exe
DLL = AddLib.dll

# Compiler flags
EXE_CFLAGS = -O2 -std=c99 ${WARNS} -Iinclude
DLL_CFLAGS = ${EXE_CFLAGS} -D ADD_EXPORTS

# Linker flags
DLL_LDFLAGS = -shared -s -Wl,--subsystem,windows,--out-implib,lib/libaddlib.a
EXE_LDFLAGS = -Llib -laddlib -s -Wl,--subsystem,console

.PHONY: all clean

# Build DLL and executable by default
all: bin/${DLL} bin/${EXE}

# Delete all build output
clean:
	if exist bin\* del /q bin\*
	if exist lib\* del /q lib\*
	if exist obj\* del /q obj\*

# Create build output directories if they don't exist
bin lib obj:
	@if not exist "$@" mkdir "$@"

# Compile object files for DLL
obj/add.o: src/add.c include/add.h | obj
	${CC} ${DLL_CFLAGS} -c "$<" -o "$@"

# Compile object files for executable
obj/addtest.o: src/addtest.c include/add.h | obj
	${CC} ${EXE_CFLAGS} -c "$<" -o "$@"

# Build the resource files
obj/%.o: res/%.rc | obj
	${RC} -Iinclude -Ires -i "$<" -o "$@"

# Build the DLL
bin/${DLL}: ${DLL_OBJS} | bin lib
	${CC} -o "$@" ${DLL_OBJS} ${DLL_LDFLAGS}

# Buld the executable
bin/${EXE}: ${EXE_OBJS} | bin
	${CC} -o "$@" ${EXE_OBJS} ${EXE_LDFLAGS}
