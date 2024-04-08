/*  
    Nome: Gabriel Glatz Campos
    Matricula: 811445
*/

#include <stdio.h>
#include <string.h>
#include <stdbool.h>

// Function to check if the input line is "FIM"
bool isFIM(char* input) {
    return strcmp(input, "FIM\n") == 0; // '\n' is included because fgets() captures the newline character
}

// Function to check if the input line is a palindrome
bool palin(char* input) {
    int length = strlen(input) - 1; // -1 to ignore the newline character
    bool resp = true;
    
    for (int i = 0; i < length / 2; i++) {
        if (input[i] != input[length - (i + 1)]) {
            resp = false;
            break;
        }
    }
    return resp;
}

int main() {
    char palavra[1000]; // Assuming no line will be longer than 999 characters

    while (fgets(palavra, 1000, stdin)) {
        if (isFIM(palavra)) {
            break;
        }

        bool resp = palin(palavra);

        if (resp) {
            printf("SIM\n");
        } else {
            printf("NAO\n");
        }
    }

    return 0;
}