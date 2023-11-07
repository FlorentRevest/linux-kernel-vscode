#include <stdio.h>

#define PRINTF_GREEN(f, ...)  printf("\033[1;92m" f "\033[0m", ##__VA_ARGS__)

int main(void)
{
//  PRINTF_GREEN("Hello from autostart.c");
  return 0;
}
