#include <stdio.h>
extern unsigned char ram[]; // RAM Declared In Assembly
int main()
{
    int num = 10;
    int sum = 0;
    printf("Finding 1+2+3...+N (N=%d)... \n", num);

    for (int i = 1; i <= num; i++){
        sum += i;
        printf("%d\n", sum);
    }

    ram[0x50] = (unsigned char)sum;
    printf("Converting Sum to Hexadecimal...\n");
    printf("Sum stored at 50H: %02X\n", ram[0x50]);
    
    printf("\n");

    return 0;
}