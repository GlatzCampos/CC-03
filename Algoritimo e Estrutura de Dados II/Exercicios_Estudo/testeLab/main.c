#include <stdio.h>
#include <math.h>

double changeIntegerFail(int b){b = 2; return b;}

int main(char* argsv[]){
    int b = 10;
    int a [5] = {1,2,3,4,5};

    printf("Valor b: %d \n", b);

    changeIntegerFail(b);
    printf("Valor b: %d \n", b);
}