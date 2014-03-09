#!/usr/bin/perl -w 
#no warnings 'recursion';

sub f($) {
   my $n = shift;
   return 1 if ($n == 0 );
   return (f($n-1) + 2) if ($n >= 1);
}


print "F(n) = F(n-1) +2 , F=1 if n=0, so F(100) is " . f(100) . "\n";



