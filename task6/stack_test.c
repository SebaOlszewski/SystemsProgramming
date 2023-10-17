#include <stdio.h>

void recurse(int level){
    char array[10240];
    printf("%d\n", level);
    recurse(level+1);
}

int main(void) {

#ifndef TEST    
    recurse(1);
#else
    printf("no\n");
#endif
	return 0;
}

