/*
    Nome: Gabriel Glatz Campos
    Matricula: 811445
*/

#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#define MAXLEN 1000

bool isFim(char input[]);
bool isPalindromoRecu(char ptr[], int index);
bool isPalindromo(char input[]);

bool isFim(char input[]){
	return strlen(input)==3 && input[0] == 'F' && input[1] == 'I' && input[2] == 'M';
}


bool isPalindromo(char input[]){
	return isPalindromoRecu(input, 0);
}


bool isPalindromoRecu(char ptr[], int index){
	bool palindromo = true;
	if(index < strlen(ptr) && palindromo){
		if(ptr[index] != ptr[strlen(ptr)-index-1]){
			palindromo = false;
		} else{
			palindromo = isPalindromoRecu(ptr, index+1);
		}
	}
	return palindromo;
}
//MAIN
int main(){
	char str[MAXLEN];
	fgets(str,sizeof(str),stdin);
	str[strcspn(str,"\n")] = '\0';
	while(!isFim(str)){
		if(isPalindromo(str)) puts("SIM");
		else puts("NAO");
		fgets(str,sizeof(str),stdin);
		str[strcspn(str,"\n")] = '\0';
	}
	return 0;
}