#!/usr/bin/perl -w 
my @foods;
my $foods;
print "Please input at least 5 items of your favoriate food:(ending the input with 'DONE')\n";
my $items = 0;
while (<STDIN>) {
   chomp ;
   if ($_ =~ /DONE/) {
      if ($items >= 5) {
           last;
      } else {
           print "There are just $items kind of food, please continue to input \n";
           next;
      }
    }
   $items ++;
   $foods .= "$_|";
}
print "the string of your foods are $foods\n";
@foods = split /\|/,$foods;
print "the array of your foods are ", join(",",@foods), "\n";
print "the first item of your foods is $foods[0]\n";
print "the last item of your food is $foods[-1]\n";
my $number = @foods;
print "the number of items of your food is $number\n";
my @food2;
($food2[0],$food2[1],$food2[2]) = @foods;
print "the slice of your foods are ", join(",",@food2),"\n";


      
