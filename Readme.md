# MinGW DLL Example

## Table of Contents

- [Introduction](#introduction)
- [Terms of Use](#terms-of-use)
- [Problems?](#problems)
- [Changelog](#changelog)

## Introduction

This is an example Win32 DLL and console application. It is intended to demonstrate how to build DLLs using MinGW, and
utilise their functionality within a client application. It accompanies the
[Building Windows DLLs with MinGW](http://www.transmissionzero.co.uk/computing/building-dlls-with-mingw/) article.

To build the application on a Windows machine, extract the contents of this archive to a folder on your computer. Open a
command prompt, change to the directory where you extracted the files, and type "mingw32-make". The DLL and executable
should be compiled, linked, and output as "AddLib.dll" and "AddTest.exe" in the "bin" directory. The import library will
be created as "libaddlib.a" in the "lib" directory.

To build under another operating system, the Makefile will probably require some small changes. For example, under
Fedora the 32 bit C compiler and resource compiler are named "i686-w64-mingw32-gcc" and "i686-w64-mingw32-windres".
Also, your version of the make utility may be named differently--please check the documentation which came with your
MinGW packages.

## Terms of Use

Refer to "License.txt" for terms of use.

## Problems?

If you have any problems or questions, please ensure you have read this readme
file and the
[Building Windows DLLs with MinGW](http://www.transmissionzero.co.uk/computing/building-dlls-with-mingw/)
article. If you are still having trouble, you can
[get in contact](http://www.transmissionzero.co.uk/contact/).

## Changelog

2. 2013-08-26: Version 1.1
   - Minor tweaks to the VERSIONINFO resource so that it uses constants rather than magic numbers.

1. 2011-04-16: Version 1.0
   - First release.

Transmission Zero
2017-11-10
