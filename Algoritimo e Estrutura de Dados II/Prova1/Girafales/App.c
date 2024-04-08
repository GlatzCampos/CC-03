#include <stdio.h>
#include <string.h>

#define MAX_N 50
#define MAX_LENGTH 21 

int comparar(char presenca[][], char nomeAluno[][]){
    for(int i = 0; i < )
}

int main(){
    int N = 1,M;
    char nomeAluno[MAX_N][MAX_LENGTH];
    char presenca[MAX_N][MAX_LENGTH];
    int qntAssFalsa = 0;
    
    
    while(N != 0){
        for(int i = 0; i < 2; i++){
            scanf("%d", &N);
            for(int i = 0; i < N; i++){
                fgets(nomeAluno[i], 100, stdin);
            }

            scanf("%d", &M);
            for(int i = 0; i < M; i++){
                fgets(presenca[i], 100, stdin);
            }

            for(int i = 0; i < N; i++){
                for(int j = 0; j < M; j++){
                    if(strcmp(presenca[j],nomeAluno[i])==1){
                        qntAssFalsa++;
                    }
                }
            }
        }

        printf("%d\n", qntAssFalsa);
    }

    
}