#!/usr/bin/perl -w
no warnings 'recursion';

sub f {
    my $n = shift;
    return 0 if ($n == 0); 
    return 1 if ($n == 1);
    my $m = int($n/2);
    if ( ($n%2) == 0 ) {
       return  f($m) ; 
    } else {
       return ( f($m) + 1);
    }

}

print "F(N) = F(N/2) +1 , while F(127) = " . f(127) . "\n";
