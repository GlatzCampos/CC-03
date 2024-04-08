#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdbool.h>
#include <stdlib.h>

#define tam 50

char *entreBarras(char *input){
    int barra1 = -1;
    int barra2 = -1;
    int tamBarra;

    for(int i = 0; i <= strlen(input);i++){
        if(input[i] == '['){
            barra1 = i;
        } else if(input[i] == ']'){
            barra2 = i;
        }else{
            continue;
        }
    }

    if(barra1 == -1 || barra2 == -1){
        //se não encontrar '[' e ']', retornar NULL
        return NULL;
    }

    tamBarra = barra2 - barra1 - 1;//-1 para não pegar as barrar tambem
    char *input2 = malloc((tamBarra + 1) * sizeof(char));
    strncpy(input2,input + barra1 + 1, tamBarra);
    input2[tamBarra] = '\0';

    return input2;
}

char *entreBarras(char *input){
    int barra1 = -1;
    int barra2 = -1;
    int tamBarra;
    char* copy;
    char tmp;

    strcpy(copy,input);


    for(int i = 0; i <= strlen(input);i++){
        if(input[i] == '['){
            barra1 = i;
        } else if(input[i] == ']'){
            barra2 = i;
        }else{
            continue;
        }
    }

    if(barra1 == -1 || barra2 == -1){
        //se não encontrar '[' e ']', retornar NULL
        return NULL;
    }

    tamBarra = barra2 - barra1 - 1;//-1 para não pegar as barrar tambem
    char *input2 = malloc((tamBarra + 1) * sizeof(char));
    strncpy(input2,input + barra1 + 1, tamBarra);
    input2[tamBarra] = '\0';

    return input2;
}

char *tudao(char *input){
    static char result[tam];
    strcpy(result, input);

    int dtr = 0;
    int j = 0;

    for(int i = 0; i <= strlen(input); i++){
        if(input[i] == '['){
            dtr = 1;
        } else if(input[i] == ']'){
            dtr = 0;
        } else if(!dtr){
            result[j] = input[i];
            j++;
        }
    }
    result[j] = '\0';

    return result;
}

void main(){
    char input[tam];


    for(int i = 0; i < 2; i++){
        fgets(input,tam,stdin);

        char *input2 = entreBarras(input);
        char *input3 = tudao(input);

        printf("%s%s", input2,input3);
        
    }  

}