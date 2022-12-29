#!/usr/bin/python3

def prime(num):
    for i in range(2, int(num / 2)+1):
        if num % i == 0:
            return False
    return True

def main():
    num = 0;
    for i in range(2, 100000+1):
        if prime(i):
            num = num + 1
    print("number of primes = %d" % (num))

main()
