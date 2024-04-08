#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// Função para verificar se a palavra é igual a "FIM"
int isFIM(char *input) {
    return strcmp(input, "FIM") == 0;
}

// Função recursiva para substituir letras
void substituirLetrasRecursivo(char *texto, char letra1, char letra2, int index) {
    if (texto[index] == '\0') {
        return; // Se chegarmos ao final da string, retornamos
    }

    char caractere = texto[index];
    char novoCaractere = (caractere == letra1) ? letra2 : caractere;
    texto[index] = novoCaractere;

    substituirLetrasRecursivo(texto, letra1, letra2, index + 1); // Chamada recursiva com o próximo índice
}

int main() {
    srand(4); // Define a semente para gerar números aleatórios

    char linha[1000];
    while (1) {
        fgets(linha, 1000, stdin);
        linha[strcspn(linha, "\n")] = '\0'; // Remove o caractere de nova linha

        if (isFIM(linha)) {
            break; // Se a linha for "FIM", encerra o loop
        }

        char letra1 = 'a' + (rand() % 26); // Gerar uma letra aleatória entre 'a' e 'z'
        char letra2 = 'a' + (rand() % 26);

        substituirLetrasRecursivo(linha, letra1, letra2, 0); // Chama a função recursiva para substituir letras

        printf("%s\n", linha); // Imprime a linha modificada
    }

    return 0;
}