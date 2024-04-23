#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <ctype.h>

#define MAX_PERSONAGENS 420
#define MAX_INFO_LENGTH 400
#define TOTAL_ATRIBUTOS 18
#define MAX_NUM_CHAR 50

struct Personagem{
    char id[MAX_NUM_CHAR];
    char name[MAX_NUM_CHAR];
    char alternateNames[130];
    char house[MAX_NUM_CHAR];
    char ancestry[MAX_NUM_CHAR];
    char species[MAX_NUM_CHAR];
    char patronus[MAX_NUM_CHAR];
    bool hogwartsStaff;
    bool hogwartsStudent;
    char actorName[MAX_NUM_CHAR];
    bool alive;
    char alternateActors[130];
    char dateOfBirth[20];
    int yearOfBirth;
    char eyeColour[20];
    char gender[10];
    char hairColour[20];
    bool wizard;
};

bool stringBool(char* str){
    return strlen(str) >= strlen("VERDADEIRO");
}

void setPersonagem(char* info, struct Personagem *personagem){
    int count = 0;

    char *sinal = strtok(info, ";");

    while(sinal != NULL && count < TOTAL_ATRIBUTOS){
        switch(count) {
            case 0:
                strcpy(personagem->id, sinal);
                break;
            case 1:
                strcpy(personagem->name, sinal);
                break;
            case 2:
                strcpy(personagem->alternateNames, sinal);
                break;
            case 3:
                strcpy(personagem->house, sinal);
                break;
            case 4:
                strcpy(personagem->ancestry, sinal);
                break;
            case 5:
                strcpy(personagem->species, sinal);
                break;
            case 6:
                strcpy(personagem->patronus, sinal);
                break;
            case 7:
                personagem->hogwartsStaff = stringBool(sinal);
                break;
            case 8:
                personagem->hogwartsStudent = stringBool(sinal);
                break;
            case 9:
                strcpy(personagem->actorName, sinal);
                break;
            case 10:
                personagem->alive = stringBool(sinal);
                break;
            case 11:
                strcpy(personagem->alternateActors, sinal);
            case 12:
                strcpy(personagem->dateOfBirth, sinal);
                break;
            case 13:
                personagem->yearOfBirth = atoi(sinal);
                break;
            case 14:
                strcpy(personagem->eyeColour, sinal);
                break;
            case 15:
                strcpy(personagem->gender, sinal);
                break;
            case 16:
                strcpy(personagem->hairColour, sinal);
                break;
            case 17:
                personagem->wizard = stringBool(sinal);
                break;
            default:
                printf("Atributo não reconhecido: %s\n", sinal);
                break;
        }

        sinal = strtok(NULL,";");
        count++;
    }
}

void printPersonagem(struct Personagem personagem){
    printf("[");
    printf("%s ## ", personagem.id);
    printf("%s ## ", personagem.name);
    printf("%s ## ", personagem.alternateNames);
    printf("%s ## ", personagem.house);
    printf("%s ## ", personagem.ancestry);
    printf("%s ## ", personagem.species);

    if(strlen(personagem.patronus) > 1) printf("%s", personagem.patronus);
    printf(" ## ");
    printf("%s ## ", personagem.hogwartsStaff ? "true" : "false");
    printf("%s ## ", personagem.hogwartsStudent ? "true" : "false");

    if(strlen(personagem.actorName) > 1) printf("%s", personagem.actorName);
    printf(" ## ");
    printf("%s ## ", personagem.alive ? "true" : "false");
    //printf("{%s} ## ", personagem.alternateActors);
    printf("%s ## ", personagem.dateOfBirth);
    printf("%d ## ", personagem.yearOfBirth);
    printf("%s ## ", personagem.eyeColour);
    printf("%s ## ", personagem.gender);
    printf("%s ## ", personagem.hairColour);
    printf("%s", personagem.wizard ? "true" : "false");
    printf("]\n");
}

struct Registrar{
    char path[100];
    struct Personagem listaPersonagem[MAX_PERSONAGENS];
    int tam;
};

void newRegistrar(struct Registrar *registrar, int OpPath){
    registrar->tam = 0;

    if(OpPath == 0){
        strcpy(registrar->path, "/media/gabrielglatz/SSD/Documents/CC-03/Algoritimo e Estrutura de Dados II/TP/TP2/characters.csv");
    }else{
        strcpy(registrar->path, "/tmp/characters.csv");
    }
}

bool isFim(char* id){
    return strcmp(id,"FIM") == 0;
}

void getPersonagemInfo(char* info, const char* id, struct Registrar *registrar){
    FILE *file = fopen(registrar->path, "r");
    if(file == NULL){
        perror("Error opening file");
        return;
    }

    bool hasFoundId = false;

    char csvLine[MAX_INFO_LENGTH];
    while ((hasFoundId == false) && (fgets(csvLine, MAX_INFO_LENGTH, file) != NULL)) {
        char tmp[MAX_INFO_LENGTH] = {0};
        strcpy(tmp, csvLine);
        char *idAtual = strtok(tmp,";");

        if(strcmp(idAtual,id) == 0){
            hasFoundId = true;
            strcpy(info,csvLine);
        }
    }

    fclose(file);
}

void removeBars(char *str, char c){
    int wt = 0, rd = 0;

    while(str[rd]){
        if(str[rd] != c){
            str[wt++] = str[rd];
        }
        rd++;
    }
    str[wt] = 0;
}

void trocaC(char *str, char charOrigin, char charTroca){
    char *ret = strchr(str, charOrigin);
    str[strlen(str) - strlen(ret)] = charTroca;
}

void tiraPvDuplo(char *info){
    int i = 0;

    while(info[i] != '\0'){
        if(info[i] == ';' && info[i+1] == ';'){
            for(int j = strlen(info);j > i+1; j--){
                info[j] = info[j - 1];
            }

            info[i+1] = ' ';
        }
        i++;
    }
}

void addPersonagem(const char *id ,struct Registrar *registrar){
    char info[MAX_INFO_LENGTH] = {0};
    getPersonagemInfo(info, id, registrar);
    
    tiraPvDuplo(info);
    removeBars(info, '\'');
    trocaC(info, '[', '{');
    trocaC(info, ']', '}');

    struct Personagem personagem;
    setPersonagem(info, &personagem);

    if(registrar->tam >= MAX_PERSONAGENS){
        printf("Registro cheio!\n");
        return;
    }
    registrar->listaPersonagem[registrar->tam] = personagem;
    registrar->tam++;
}

void printRegistrar(struct Registrar registrar){
    for(int i = 0; i < registrar.tam; i++){
        printPersonagem(registrar.listaPersonagem[i]);
    }
}

int main(){
    struct Registrar registrar;
    newRegistrar(&registrar, 1);

    char id[50] = {0};
    scanf("%s", id);

    while(!isFim(id)){
        addPersonagem(id, &registrar);
        scanf("%s", id);
    }

    printRegistrar(registrar);

    return 0;
}