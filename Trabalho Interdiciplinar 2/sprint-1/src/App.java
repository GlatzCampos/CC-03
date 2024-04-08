import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        int a;
        int b;

        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the first number: ");
        a = scanner.nextInt();

        System.out.println("Enter the second number: ");
        b = scanner.nextInt();

        System.out.println("A soma de " + a + " e " + b + " = " + (a + b));

        scanner.close();
    }
}
