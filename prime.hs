import Text.Printf

prime :: Int -> Int
prime n = prime' n 2

prime' :: Int -> Int -> Int
prime' n d
  | d > n `div` 2       = 1
  | n `mod` d == 0      = 0
  | otherwise           = prime' n (d + 1)

count_prime :: Int -> Int
count_prime n
  | n < 2       = 0
  | otherwise   = prime n + count_prime (n - 1)

main = printf "number of primes = %d\n" n
  where n = count_prime 100000
