#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void solve(double A, char sign, double B)
     {
        //printf("%f \n", A);
        //printf("%f \n", B);
        
        #ifdef FULL
            switch (sign){
                case '+':
                    printf("%.2f + %.2f = %.2f\n", A, B, A + B);
                break;
                case '-':
                    printf("%.2f - %.2f = %.2f\n", A, B, A - B);
                break;

                case '*':
                    printf("%.2f * %.2f = %.2f\n", A, B, A * B);
                break;

                case '/':
                    printf("%.2f / %.2f = %.2f\n", A, B, A / B);
                break;
                default : 
                    printf("ERROR \n");
            }
        #else
            if(sign == '+')  
            {
                printf("%.2f + %.2f = %.2f\n", A, B, A + B);
            }
            else
            {
                printf("This option is not available in demo version! \n");
            }
        #endif

       
     }



int main(int argc, char * argv[]) {
	

    if(argc < 3 || argc > 4)
    {
        printf("ERROR \n");
        return 0;
    }
    else if(argc == 3)
    {
        //printf("Two args \n");
        if (isdigit(argv[1][0]) && isdigit(argv[2][0]))
        {
            printf("Missing operator \n");
        }else if (isdigit(argv[1][0]) && !(isdigit(argv[2][0])))
        {
            printf("Missing number\n");
        }else if (!(isdigit(argv[1][0])) && isdigit(argv[2][0]))
        {
            printf("Missing number\n");
        }else
        {
            printf("ERROR: No number\n");
        }

       return 0;
    }

    else if (argc == 4)
    {
        //printf("Three args \n")
        
        if((argv[2][0] == '+' || argv[2][0] == '-' || argv[2][0] == '*' || argv[2][0] == '/'))
        {
            
            if (isdigit(argv[1][0]) && isdigit(argv[3][0]))
            {
                double A = atof(argv[1]);
                double B = atof(argv[3]);

                solve(A, argv[2][0], B);
                
            }else if (argv[1][0] == '-' && isdigit(argv[1][1]) && isdigit(argv[3][0]))  
            {
                // -A + B
                double A = atof(argv[1]);
                double B = atof(argv[3]);

                solve(A, argv[2][0], B);

            }else if (isdigit(argv[1][0]) && argv[3][0] == '-' && isdigit(argv[3][1])) 
            {
                // A + -B
                double A = atof(argv[1]);
                double B = atof(argv[3]);

                solve(A, argv[2][0], B);


            }else if (argv[1][0] == '-' && isdigit(argv[1][1]) && argv[3][0] == '-' && isdigit(argv[3][1])) 
            {
                // A + -B
                double A = atof(argv[1]);
                double B = atof(argv[3]);
                solve(A, argv[2][0], B);
            }else
            {
                printf("Missing number! \n");
            }
        }else
        {
            printf("Wrong operator! \n");
        }

        
//#ifdef FULL
        
//#else
        
//#endif
    }
     
     
}

