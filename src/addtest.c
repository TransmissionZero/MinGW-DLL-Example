/* addtest.c

   Demonstrates using the function and variables exported by our DLL.
*/

#include <stdlib.h>
#include <stdio.h>
#include <add.h>

int main(int argc, char** argv)
{
  /* foo + bar = Add(foo, bar) */
  printf("%d + %d = %d\n", foo, bar, Add(foo, bar));

  return EXIT_SUCCESS;
}
