#include <stdio.h>
long global = 10;
int main(void) {
    static long i = 100;
	return i;
}

