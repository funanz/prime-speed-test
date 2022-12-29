#!/usr/bin/node

function prime(num) {
    for (var i = 2; i <= num/2; i++)
        if (num % i == 0)
            return false;
    return true;
}

function main() {
    var num = 0;
    for (var i = 2; i <= 100000; i++)
        if (prime(i))
            num++;
    console.log("number of primes = %d", num);
}

main();
