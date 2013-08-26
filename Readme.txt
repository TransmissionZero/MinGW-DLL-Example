MinGW DLL Example

This is an example Win32 DLL and application, written using MinGW. It is
intended to demonstrate how to write DLLs using MinGW, and utilise their
functionality within a client application. It accompanies an article from my
web site, which is located at
http://www.transmissionzero.co.uk/computing/building-dlls-with-mingw/.

To build the application on a Windows machine, simply extract the contents of
this archive to a folder on your computer. Open a command prompt, change to the
directory where you extracted the files, and type “mingw32-make”. The DLL and
executable should be compiled, linked, and output as “AddLib.dll” and
“AddTest.exe”.

To build under another operating system, the Makefile will probably require
some small changes. For example, under Fedora the C compiler and resource
compiler are named “i686-pc-mingw32-gcc” and “i686-pc-mingw32-windres”. Also,
your version of the make utility may be named differently—please check the
documentation which came with your MinGW packages.


Disclaimer

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.


Terms of Use

There is no specific license attached to the use this application. You are free
to use it however you see fit, whether for commercial or non-commercial
purposes. The intention is that you use it as a starting point for building
Windows DLLs, so that you don’t have to write all of your DLL projects from
scratch. You are encouraged to modify it to suit your needs as a Windows
DLL project template, and how you license any applictions built with it is
entirely up to you. Of course, you must still comply with the licensing
conditions of the tools you are using to build the application.


Problems?

If you have any problems or questions, please get in contact via
http://www.transmissionzero.co.uk/contact/. Please ensure that you read the
article at http://www.transmissionzero.co.uk/computing/building-dlls-with-mingw/
before sending any questions.


Changelog

2013–08–26: Version 1.1

  • Minor tweaks to the VERSIONINFO resource so that it uses constants rather
    than magic numbers.

2011–04–16: Version 1.0

  • First release.

Martin Payne
2013–08–26