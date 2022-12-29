
fn prime(num: i32) -> bool {
    for i in 2..=num/2 {
        if (num % i) == 0 {
            return false
        }
    }
    return true
}

fn main() {
    let mut num = 0;
    for i in 2..=100000 {
        if prime(i) {
            num = num + 1;
        }
    }
    println!("number of primes = {}", num)
}
