#include <stdio.h>
#include <stdlib.h>

int main(int args, char * argv[]) {
	
    char table[3];
    for (int i = 0; i < args; i++)
    {
         table[i] = *argv[i];
         //printf("%c \n", table[i]);

    }
    double A = atof(argv[1]);
    double B = atof(argv[3]);
    //printf("A: %.2f \n", A);
    printf("%c \n", table[2]);
    //printf("B: %.2f \n", B);

    //printf("%c", table[2]);
    if(table[2] == '+')
    {
        printf("%.2f + %.2f = %.2f\n", A, B, (A + B));
        return 0;
    }else if(table[2] == '-')
    {
        printf("%.2f - %.2f = %.2f\n", A, B, (A - B));
        return 0;
    }else if(table[2] == '*')
    {
        printf("%.2f * %.2f = %.2f\n", A, B, (A*B));
        return 0;
    }else if(table[2] == '/')
    {
        printf("%.2f / %.2f = %.2f\n", A, B, (double)(A/B));
        return 0;
    }else
    {
        printf("ERROR");
        return 0;
    }

}