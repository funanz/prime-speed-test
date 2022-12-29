#!/usr/bin/julia
using Printf

function prime(num)
    for i in 2:num/2
        if num % i == 0
            return 0
        end
    end
    return 1
end

num = sum(prime(i) for i in 2:100000)
@printf("number of primes = %d\n", num)
