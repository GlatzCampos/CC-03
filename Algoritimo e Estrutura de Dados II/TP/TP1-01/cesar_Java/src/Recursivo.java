public class Recursivo {
    // método para verificar se a palavra é igual a "FIM"
    public static boolean isFIM(String input){
        return input.equals("FIM");
    }

    // método recursivo para criptografar a palavra
    public static String cesarRecursivo(String palavra, int key, int index, StringBuilder result){
        if(index == palavra.length()) {
            return result.toString();
        }

        char c = palavra.charAt(index);
        char caseType = (c >= 'a') ? 'a' : 'A';
        char newC = (char) ((c - caseType + key) + caseType);

        result.append(newC);

        return cesarRecursivo(palavra, key, index + 1, result);
    }

    public static void main(String[] args){
        int key = 3;

        String palavra = MyIO.readLine();

        while(!isFIM(palavra)){
            // Criptografar palavra
            String ciframento = cesarRecursivo(palavra, key, 0, new StringBuilder());
            MyIO.println(ciframento);
            palavra = MyIO.readLine();
        }
    }
}
