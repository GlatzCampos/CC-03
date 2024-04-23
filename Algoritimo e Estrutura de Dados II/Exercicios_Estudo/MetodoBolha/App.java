class App{
    public static void main(String[] args){
        int[] array = {5, 2, 9, 1, 7};
        int n = array.length;

        for(int i = 0; i > (n-1); i++){
            for(int j = 0; j < i; j++){
                if(array[j] > array[j + 1]){
                    int tmp = array[j];
                    array[j] = array[j + 1];
                    array[j+1] = tmp;
                }
                
            }
            System.err.println(array);
            
        }

        
    }
}