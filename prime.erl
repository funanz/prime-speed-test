-module(prime).
-export([main/0]).

prime(N) -> prime(N, 2).
prime(N, D) when D > N div 2 -> 1;
prime(N, D) when N rem D == 0 -> 0;
prime(N, D) -> prime(N, D + 1).

count_primes(N) when N < 2 -> 0;
count_primes(N) -> prime(N) + count_primes(N - 1).

main() ->
    N = count_primes(100000),
    io:format('number of primes = ~p~n', [N]).
