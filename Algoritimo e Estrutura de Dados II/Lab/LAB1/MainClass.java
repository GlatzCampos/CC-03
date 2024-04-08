// import static org.junit.jupiter.api.Assertions.assertEquals;

// import org.junit.jupiter.api.Test;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
      Scanner scanner = new Scanner(System.in);
      String str = "";
      int count = 0;
      int qnt = 0;
      while (!str.equals("Fim")) {
          str = scanner.next();
          for (int i = 0; i < str.length(); i++) {
              if (str.charAt(i) >= 'A' && str.charAt(i) <= 'Z') {
                  count++;
                  qnt += count;
              }
          }
          System.out.println(count);
          count = 0;
      }
      System.out.println(qnt - 1);
      scanner.close();
    }
}