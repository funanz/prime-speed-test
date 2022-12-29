public class prime {
    private static boolean prime(int num) {
        for (int i = 2; i <= num/2; i++)
            if (num % i == 0)
                return false;
        return true;
    }

    public static void main(String[] args) {
        int num = 0;
        for (int i = 2; i <= 100000; i++)
            if (prime(i))
                num++;
        System.out.println("number of primes = " + num);
    }
}
