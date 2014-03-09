#!/usr/bin/perl -w

my $test1 = "this is a test to show different of exec and system in perl";
system ("echo \'$test1 , this is from system() ; \n\'");
exec ("echo \'$test1, this is from exec() ; \n\'");
print "echo $test1, this is from $0 ";

exit (0);
