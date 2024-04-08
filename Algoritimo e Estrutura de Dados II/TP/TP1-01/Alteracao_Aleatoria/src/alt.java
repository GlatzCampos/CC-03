import java.util.Random;

public class alt {
    // método para verificar se a palavra é igual a "FIM"
    public static boolean isFIM(String input){
        return input.equals("FIM");
    }

    public static void main(String[] args) {
        Random gerador = new Random();
        gerador.setSeed(4);

        String linha;
        while (!(linha = MyIO.readLine()).equals("FIM")) {
            char letra1 = (char) ('a' + (Math.abs(gerador.nextInt()) % 26));
            char letra2 = (char) ('a' + (Math.abs(gerador.nextInt()) % 26));

            String resultado = substituirLetras(linha, letra1, letra2);

            MyIO.println(resultado);
        }
    }

    public static String substituirLetras(String texto, char letra1, char letra2) {
        StringBuilder resultado = new StringBuilder();

        for (char caractere : texto.toCharArray()) {
            if (caractere == letra1){
                resultado.append(letra2) ;
            }else{
                resultado.append(caractere);
            } 
        }

        return resultado.toString();
    }
    
    


}
