# This Makefile will build a DLL and an application using the DLL.

all : AddLib.dll AddTest.exe

AddLib.dll : include/add.h
	gcc -O3 -std=c99 -D ADD_EXPORTS -Wall -I.\include -c src/add.c -o obj/add.o
	windres -i res/resource.rc -o obj/resource.o
	gcc -o AddLib.dll obj/add.o obj/resource.o -shared -s -Wl,--subsystem,windows,--out-implib,libaddlib.a

AddTest.exe : include/add.h AddLib.dll
	gcc -O3 -std=c99 -Wall -I.\include -c src/addtest.c -o obj/addtest.o
	gcc -o AddTest.exe obj/addtest.o -s -L. -lAddLib

clean :
	del obj\*.o *.exe *.dll *.a