#include <stdio.h>
#include <string.h>

#define MAX_N 50
#define MAX_LENGTH 21 // 20 letras + 1 para o caractere nulo

int main() {
    int N, M;
    char nomeAluno[MAX_LENGTH];
    char assinatura[MAX_LENGTH];
    int assinaturasFalsas;

    while (1) {
        scanf("%d", &N);
        getchar(); // Captura o caractere de nova linha

        if (N == 0) // Verifica se N é igual a 0, se for, termina o programa
            break;

        char assinaturasOriginais[MAX_N][MAX_LENGTH]; // Matriz para armazenar as assinaturas originais

        // Lendo e armazenando as assinaturas originais
        for (int i = 0; i < N; i++) {
            scanf("%s %s", nomeAluno, assinatura);
            strcpy(assinaturasOriginais[i], assinatura); // Armazena a assinatura na matrix
        }

        scanf("%d", &M);
        getchar(); // Captura o caractere de nova linha

        assinaturasFalsas = 0;

        // Verificando as assinaturas na aula
        for (int i = 0; i < M; i++) {
            scanf("%s %s", nomeAluno, assinatura);
            int encontrado = 0; // Flag para verificar se a assinatura foi encontrada na lista original
            // Verifica se a assinatura na aula corresponde a uma assinatura original
            for (int j = 0; j < N; j++) {
                if (strcmp(assinatura, assinaturasOriginais[j]) == 0) {
                    encontrado = 1;
                    break;
                }
            }
            if (!encontrado) // Se não encontrado, conta como assinatura falsa
                assinaturasFalsas++;
        }

        printf("%d\n", assinaturasFalsas);
    }

    return 0;
}