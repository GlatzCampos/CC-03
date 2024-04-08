public class App {
    public static boolean isFIM(String input){
        return input.equals("FIM");
    }

    public static boolean isPalin(String input){
        return isPali(input, 0, input.length() - 1);
    }

    public static boolean isPali(String input, int start, int end){
        if(start >= end) {
            return true; // Se chegarmos ao meio da string e não encontrarmos diferenças, é um palíndromo
        }

        if(input.charAt(start) != input.charAt(end)) {
            return false; // Se os caracteres em ambas as extremidades não forem iguais, não é um palíndromo
        }

        // Chamada recursiva para verificar o restante da string
        return isPali(input, start + 1, end - 1);
    }

    public static void main(String[] args){
        String input = MyIO.readLine();
        
        while(!isFIM(input)){
            if(isPalin(input)){
                MyIO.println("SIM");
            } else {
                MyIO.println("NAO");
            }
            input = MyIO.readLine();
        }
    }
}
