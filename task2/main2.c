#include <stdio.h>
#include <stdlib.h>

int main(int args, char * argv[]) {
	
    float sum = 0;
    for(int i = 1; i < args; i++)
    {
        //int temp = atoi(argv[i]);
        sum = sum + atoi(argv[i]);
        //printf("%d \n", temp);
    }
    printf("%.2f \n", sum / (args - 1));
}