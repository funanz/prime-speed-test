#!/usr/bin/perl
main();

sub prime {
    for (2..int($_[0]/2)) {
        return 0 if ($_[0] % $_ == 0);
    }
    return 1;
}

sub main() {
    my $num = 0;
    for (2..100000) {
        $num++ if (prime($_));
    }
    print("number of primes = $num\n");
}
