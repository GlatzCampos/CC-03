/*
    Gabriel Glatz Campos
    811445
*/

public class App {
    // método para verificar se a palavra é igual a "FIM"
    public static boolean isFIM(String input){
        return input.equals("FIM");
    }

    // método para criptografar a palavra
    public static String cesar(String palavra, int key){
        StringBuilder result = new StringBuilder();
        for(int i = 0; i < palavra.length();i++){
            char c = palavra.charAt(i);

            // if((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')){
            //     char caseType = (c >= 'a') ? 'a' : 'A';
            //     char newC = (char) (((c - caseType + key) % 26) + caseType);

            //     result.append(newC);
            // }else if(c == ' '){
            //     result.append(c);
            // }else{
            //     result.append(c);
            // }

            char caseType = (c >= 'a') ? 'a' : 'A';
            char newC = (char) ((c - caseType + key) + caseType);

            result.append(newC);

            
        }
        return result.toString();
    }
    
    public static void main(String[] args){
        int key = 3;

        String palavra = MyIO.readLine();

        while(!isFIM(palavra)){
            // Criptografar palavra
            String ciframento = cesar(palavra, key);
            MyIO.println(ciframento);
            palavra = MyIO.readLine();
        }

    }
}
