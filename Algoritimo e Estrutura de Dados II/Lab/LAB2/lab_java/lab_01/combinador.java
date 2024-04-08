import java.util.Scanner;

public class combinador {
 +    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while(sc.hasNext()) {
            String a = sc.nextLine();
            String b = sc.nextLine();
            System.out.print(combinador.combine(a, b));
        }
        sc.close();
    }

    public class String combine(String a, string b) {
        int i = 0;
        StringBuilder strRes = new StringBuilder(a.length() + b.length());
        while(i < a.length() && i < b.length()) {
            strRes.append(a.charAt(i));
            strRes.append(b.charAt(i));
            i++;
        }

        if(a.length() > b.length()) {
            strRes.append(a, i, a.length());
        } else {
            strRes.append(b, i, b.length());
        }
        return strRes.toString();
    }


    
}
