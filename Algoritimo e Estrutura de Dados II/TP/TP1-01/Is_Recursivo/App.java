public class App {

    // método para verificar se a palavra é igual a "FIM"
    public static boolean isFIM(String input){
        return input.equals("FIM");
    }

    public static String toString(boolean input){
        if(input) return "SIM";
        else return "NAO";
    }

    public static boolean vogalRecursivo(String input, int index){
        if(index == input.length()) return true;

        char c = input.charAt(index);
        c = Character.toLowerCase(c);

        if(c != 'a' && c != 'e' && c != 'i' && c != 'o' && c != 'u' && c != ' ') {
            return false;
        }

        return vogalRecursivo(input, index + 1);
    }

    public static boolean consRecursivo(String input, int index){
        if(index == input.length()) return true;

        char c = input.charAt(index);
        c = Character.toLowerCase(c);

        if(c == ' ' || (c >= '0' && c <= '9') || vogalRecursivo(Character.toString(c), 0)) {
            return false;
        }

        return consRecursivo(input, index + 1);
    }

    public static boolean inteRecursivo(String input, int index){
        if(index == input.length()) return true;

        char c = input.charAt(index);

        if(c < '0' || c > '9') {
            return false;
        }

        return inteRecursivo(input, index + 1);
    }

    public static boolean realRecursivo(String input, int index, int countVP){
        if(index == input.length()) return countVP <= 1;

        char c = input.charAt(index);

        if(c >= '0' && c <= '9') {
            return realRecursivo(input, index + 1, countVP);
        } else if(c == '.' || c == ',') {
            countVP++;
            return realRecursivo(input, index + 1, countVP);
        } else {
            return false;
        }
    }

    public static void main(String[] args){
        String input = MyIO.readLine();
        
        while(!isFIM(input)){
            boolean x1 = vogalRecursivo(input, 0);
            MyIO.print(toString(x1) + " ");
            
            boolean x2 = consRecursivo(input, 0);
            MyIO.print(toString(x2) + " ");
            
            boolean x3 = inteRecursivo(input, 0);
            MyIO.print(toString(x3) + " ");
            
            boolean x4 = realRecursivo(input, 0, 0);
            MyIO.print(toString(x4) + "\n");
            
            input = MyIO.readLine();
        }
    }
}
