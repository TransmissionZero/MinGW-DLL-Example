/* add.c

   Demonstrates creating a DLL with an exported function and imported variables.
*/

#include "add.h"

int ADDCALL Add(int a, int b)
{
  return (a + b);
}

/* Assign values to exported variables. */
int foo = 7;
int bar = 41;
