/*  
    Nome: Gabriel Glatz Campos
    Matricula: 811445
*/

public class App {

    // método para verificar se a palavra é igual a "FIM"
    public static boolean isFIM(String input){
        return input.equals("FIM");
    }

    public static String toString(boolean input){

        if(input == true) return "SIM";
        else return "NAO";

    }

    public static boolean vogal(String input){
        boolean resp = true;
        input = input.toLowerCase();

        for(int i = 0; i < input.length() && resp == true; i++){
            
            char c = input.charAt(i);

            if( c != 'a' && c != 'e' && c != 'i' && c != 'o' && c != 'u'){
                resp = false;
            }
        }

        return resp;

    }

    public static boolean cons(String input){
        boolean resp = true;
        input = input.toLowerCase();

        for(int i = 0; i < input.length() && resp == true; i++){
            char c = input.charAt(i);

            if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == ' ' || (c >= '0' && c <= '9')) {
                resp = false;
            }

        }
            
        return resp;
    }

    public static boolean inte(String input){
        boolean resp = true;
        
        for(int i = 0; i < input.length() && resp == true; i++){
            char c = input.charAt(i);
            if(c < '0' || c > '9'){
                resp = false;
            }
        }
        return resp;
    }

    public static boolean real(String input){
        boolean resp = true;
        int countVP = 0;
        for(int i = 0; i < input.length() && resp == true; i++){
            char c = input.charAt(i);

            if(c >= '0' && c <= '9'){
                continue;
            }else if(c == '.' || c == ','){
                countVP++;
            }else{
                resp = false;
            }

        }
        if(countVP > 1) resp = false;

        return resp;
    }

    
    public static void main(String[] args){
        
        
        String input = MyIO.readLine();
        
        while(!isFIM(input)){
            boolean x1 = false, x2 = false, x3 = false, x4 = false;
            
            x1 = vogal(input);
            MyIO.print(toString(x1) + " ");
            
            x2 = cons(input);
            MyIO.print(toString(x2) + " ");
            
            x3 = inte(input);
            MyIO.print(toString(x3) + " ");
            
            x4 = real(input);
            MyIO.print(toString(x4) + "\n");
            
            input = MyIO.readLine();
        }
    }
}
