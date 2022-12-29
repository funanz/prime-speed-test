#!/usr/bin/lua

function prime(num)
   for i = 2, num/2, 1 do
      if num % i == 0 then
         return false
      end
   end
   return true
end

function main()
   num = 0;
   for i = 2, 100000, 1 do
      if prime(i) then
         num = num + 1
      end
   end
   print("number of primes = " .. num);
end

main()
