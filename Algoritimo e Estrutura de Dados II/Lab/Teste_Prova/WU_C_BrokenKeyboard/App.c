#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main() {
    char str[50] = "Hello, how are you - my name is - GitHub Copilot";
    char *token = strtok(str, " -");

    char word_to_move[50] = "GitHub";
    char new_str[50] = "";

    while (token != NULL) {
        if (strcmp(token, word_to_move) == 0) {
            strcat(new_str, token);
            strcat(new_str, " ");
        }
        token = strtok(NULL, " -");
    }

    token = strtok(str, " -");
    while (token != NULL) {
        if (strcmp(token, word_to_move) != 0) {
            strcat(new_str, token);
            strcat(new_str, " ");
        }
        token = strtok(NULL, " -");
    }

    printf("%s\n", new_str);

    return 0;
}