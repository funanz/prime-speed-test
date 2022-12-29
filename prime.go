package main

import "fmt"

func prime(num int) bool {
	for i := 2; i <= num/2; i++ {
		if num%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var num = 0
	for i := 2; i <= 100000; i++ {
		if prime(i) {
			num++
		}
	}
	fmt.Printf("number of primes = %d\n", num)
}
