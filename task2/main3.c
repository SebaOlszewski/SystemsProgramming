#include <stdio.h>
#include <stdlib.h>

int main(int args, char * argv[]) {
	double weight = atof(argv[1]);
    double height = atof(argv[2]);
    printf("Your weight: %.2f \n", weight);
    printf("Your height: %.2f \n", height);


    float BMI = weight / (height * height);
    printf("Your BMI: %.2f \n", BMI);
    if (BMI < 18.5)
    {
        printf("You are underweight\n");
    }else if (BMI >= 18.5 && BMI < 24.9)
    {
        printf("You have normal BMI\n");
    }else if (BMI >= 25 && BMI < 29.9)
    {
        printf("You are overweight!\n");
    }else if (BMI >= 30)
    {
        printf("You are obese!!!!\n");
    }else{
        printf("error\n");
    };
}