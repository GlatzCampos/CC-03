import java.util.Scanner;

// public class lab_02 {
//     public static void main(String[] args) {
        

//         Scanner scanner = new Scanner(System.in);
//         for(int j = 0; j < 3;j++){
//             int start = scanner.nextInt();
//             int end = scanner.nextInt();
            
//             int size = end - start + 1;
//             int[] numbers = new int[size * 2];

//             for(int i = start;i <= end; i++){
//                 numbers[i - start] = i;
//             }

//             for(int i = end; i >= start; i--){
//                 numbers[size + (end - i)] = i;
//             }

//             for(int i = 0; i < size * 2; i++){
//                 System.out.print(numbers[i]);
//             }
            
//             System.out.print("\n");
//         }
//         scanner.close();
//     }
// }
public class lab_02 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        for(int j = 0; j < 3;j++){
            int start = scanner.nextInt();
            int end = scanner.nextInt();
            
            int size = end - start + 1;
            int[] numbers = new int[size * 2];

            for(int i = start;i <= end; i++){
                numbers[i - start] = i;
            }

            for(int i = end; i >= start; i--){
                numbers[size + (end - i)] = i;
            }

            for(int i = 0; i < size * 2; i++){
                if (i < size) {
                    System.out.print(numbers[i]);
                } else {
                    System.out.print(reverseNumber(numbers[i]));
                }
            }
            
            System.out.print("\n");
        }
        scanner.close();
    }

    // Helper function to reverse the digits of a number
    public static int reverseNumber(int num) {
        int reversed = 0;
        while(num != 0) {
            int digit = num % 10;
            reversed = reversed * 10 + digit;
            num /= 10;
        }
        return reversed;
    }
}