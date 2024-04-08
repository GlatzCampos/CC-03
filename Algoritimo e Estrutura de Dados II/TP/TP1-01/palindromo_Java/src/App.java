/*  
    Nome: Gabriel Glatz Campos
    Matricula: 811445
*/

public class App {

    // método para verificar se a palavra é igual a "FIM"
    public static boolean isFIM(String input){
        return input.equals("FIM");
    }

    // método para verificar se a palavra é um palindromo
    public static boolean palin(String input){
        int tam = input.length();
        boolean resp = true;

        for(int i = 0; i < tam/2; i++){
            if(input.charAt(i) != input.charAt(tam-(i+1))){
                resp = false;
            }
        }
        return resp;
    }

    
    
    public static void main(String[] args){
        
        
        String palavra = MyIO.readLine();
        while(!isFIM(palavra)){

            boolean resp = palin(palavra);

            if(resp == true){
                MyIO.println("SIM");
            }else{
                MyIO.println("NAO");
            }
            palavra = MyIO.readLine();
        }


    }
}
