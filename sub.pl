#!/usr/bin/perl -w

sub test_var1 {
   my $name = shift ;
   $name = "changed in the sub1";
}

sub test_var2 {
   $_[0] = "changed in the sub2";
}

sub test_var3 {
   my $name = shift;
   $$name = "changed in the sub3";
}
my $name = "in main";

print "before call any subroutine, the name is $name\n";

&test_var1($name);
print "after call test_var1, the name is $name\n";

&test_var2($name);
print "after call test_var2, the name is $name\n";

&test_var3(\$name);
print "after call test_var3, the name is $name\n";

exit 0;
