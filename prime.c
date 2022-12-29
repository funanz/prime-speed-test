#include <stdio.h>

static int prime(int num)
{
    int i;
    for (i = 2; i <= num/2; i++)
        if (num % i == 0)
            return 0;
    return 1;
}

int main()
{
    int num = 0;
    int i;
    for (i = 2; i <= 100000; i++)
        if (prime(i))
            num++;
    printf("number of primes = %d\n", num);

    return 0;
}
