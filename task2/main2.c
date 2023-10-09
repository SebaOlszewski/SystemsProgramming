#include <stdio.h>
#include <stdlib.h>

int main(int args, char * argv[]) {
	int A = atoi(argv[1]);
    //printf("Enter A: ");
    //scanf("%d", &A);

    int B = atoi(argv[2]);
    //printf("Enter B: ");
    //scanf("%d", &B);


    printf("Smaller number: ");
    if (A > B)
    {
        printf("%d", B);
    }else{
        printf("%d", A);
    }
    printf("\n");
}