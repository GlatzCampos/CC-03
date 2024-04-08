#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

int main(){
    int start;
    int end;

    scanf("%d %d", &start, &end);

    int size = end - start + 1;
    int numbers[size * 2];

    // Forward loop
    for(int i = start; i <= end; i++) {
        numbers[i - start] = i;
    }
    
    for(int i = end; i >= start; i--) {
        numbers[size + (end - i)] = i;
    }

    // Print the numbers to verify
    for(int i = 0; i < size * 2; i++) {
        printf("%d ", numbers[i]);
    }
    return 0;
}