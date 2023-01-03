#!/usr/bin/ruby

def prime(num)
  for i in 2..num/2 do
    if num % i == 0 then
      return false
    end
  end
  return true
end

def main()
  num = 0
  for i in 2..100000 do
    if prime(i) then
      num = num + 1
    end
  end
  print("number of primes = ", num, "\n")
end

main()
