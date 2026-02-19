#include <stdio.h>
extern unsigned char ram[]; // RAM Declared In Assembly
extern void fill_ram(void); //Assembly Function
int main()
{fill_ram();
    printf("Clearing Ram contents...\nRam Contents: \n");

    for(int i = 0x50; i <= 0x58; i++)
    {printf("%02X ", ram[i]);}

    printf("\n");

    return 0;
}