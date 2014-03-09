#!/usr/bin/perl -w 

use warnings;
use strict ;

print '"Ouch," cried Mrs. O\'Neil, "You mustn\'t do that Mr. O\'Neil!"'."\n";

# need print to $34.67 if it is $34.666666, use printf

my $number = 34.66666;
printf ("%s%.2f\n","\$",$number);

exit 0;
