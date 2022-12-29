using System;

class Program
{
    static bool prime(int num) {
        for (var i = 2; i <= num/2; i++)
            if (num % i == 0)
                return false;
        return true;
    }

    public static void Main() {
        var num = 0;
        for (var i = 2; i <= 100000; i++)
            if (prime(i))
                num++;
        Console.WriteLine("number of primes = {0}", num);
    }
}
