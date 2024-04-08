/*  
    Nome: Gabriel Glatz Campos
    Matricula: 811445
*/

public class App {

    public static String replace(String x, char target, char replace) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < x.length(); i++) {
            if (x.charAt(i) == target) {
                result.append(replace);
            } else {
                result.append(x.charAt(i));
            }
        }
        return result.toString();
    }

    public static String replace(String x, String target, String replace) {
        StringBuilder result = new StringBuilder();
        int index = 0;
        while (index < x.length()) {
            if (x.substring(index).startsWith(target)) {
                result.append(replace);
                index += target.length();
            } else {
                result.append(x.charAt(index));
                index++;
            }
        }
        return result.toString();
    }

    public static String substring(String x, int start, int end) {
        StringBuilder result = new StringBuilder();
        for (int i = start; i < end; i++) {
            result.append(x.charAt(i));
        }
        return result.toString();
    }

    public static String substring(String x, int start) {
        return substring(x, start, x.length());
    }

    public static String algebra(String x) {
        String resp = "";
        if (x.charAt(0) == '2') {
            if (x.charAt(2) == '1') {
                x = replace(x, 'A', '1');
            } else {
                x = replace(x, 'A', '0');
            }
            if (x.charAt(4) == '1') {
                x = replace(x, 'B', '1');
            } else {
                x = replace(x, 'B', '0');
            }
            resp = alteracao(x.substring(6));
        } else {
            if (x.charAt(2) == '1') {
                x = replace(x, 'A', '1');
            } else {
                x = replace(x, 'A', '0');
            }
            if (x.charAt(4) == '1') {
                x = replace(x, 'B', '1');
            } else {
                x = replace(x, 'B', '0');
            }
            if (x.charAt(6) == '1') {
                x = replace(x, 'C', '1');
            } else {
                x = replace(x, 'C', '0');
            }
            resp = alteracao(x.substring(8));
        }
        return resp;
    }

    public static String alteracao(String in) {
        StringBuilder result = new StringBuilder(in);
        for (int i = in.length() - 1; i >= 0; i--) {
            if (in.charAt(i) == '(') {
                int end = i;
                while (!(in.charAt(end) == ')')) {
                    end++;
                }
                switch (in.charAt(i - 1)) {
                    case 't':
                        String sub = in.substring(i - 3, end + 1);
                        String resp = NOT(sub);
                        result.replace(i - 3, end + 1, resp);
                        in = result.toString();
                        i = in.length() - 1;
                        break;
                    case 'd':
                        sub = in.substring(i - 3, end + 1);
                        resp = AND(sub);
                        result.replace(i - 3, end + 1, resp);
                        in = result.toString();
                        i = in.length() - 1;
                        break;
                    case 'r':
                        sub = in.substring(i - 2, end + 1);
                        resp = OR(sub);
                        result.replace(i - 2, end + 1, resp);
                        in = result.toString();
                        i = in.length() - 1;
                        break;
                    default:
                        System.out.println("ERRO no switch!");
                        break;
                }
            }
        }
        return result.toString();
    }

    public static String NOT(String x) {
        return x.charAt(4) == '1' ? "0" : "1";
    }

    public static String AND(String x) {
        String resp = "1";
        for (int i = 0; i < x.length(); i++) {
            if (x.charAt(i) == '0') {
                resp = "0";
                break;
            }
        }
        return resp;
    }

    public static String OR(String x) {
        String resp = "0";
        for (int i = 0; i < x.length(); i++) {
            if (x.charAt(i) == '1') {
                resp = "1";
                break;
            }
        }
        return resp;
    }

    public static boolean isFim(String x) {
        return x.length() == 1 && x.charAt(0) == '0';
    }

    public static void main(String[] args) {
        String input = MyIO.readLine();

        while (!isFim(input)) {
            String resp = algebra(input);
            MyIO.println(resp);
            input = MyIO.readLine();
        }
    }
}
