#!/usr/bin/perl -w
## 1. use defined($var) to test if a $var is null or not 
## 2. use "" or qq() with print can print out formatted text
## 3. use Getopt::Long's export funtion Getoptions, use hash as its parameters, 'h|help=s' ,s means string , 's|size=i' ,i here means int, the hash's key can be a code block. 
## 4. use File::Find ,  find(\&wanted, @directories) , sub wanted{ } defined as follow, use $File::Find::name to refer to the name it is traversed, it either is a sub-directory, or a regular file'

use warnings;
use strict ;

use File::Find;
use Getopt::Long;

my $opt_path;
my $opt_size;

sub usage {
    print " Usage:
          $0 -p path_of_directory -s size ;
";
}

GetOptions(
      'p|path=s' => \$opt_path,
      's|size=i' => \$opt_size,
      'h|help'   => sub {usage; exit 0 },
) or die("Error in command line arguments\n");

#check options from command line
if (! defined ($opt_path) ) {
    print "please input a direcotry you want to search \n";
    exit 1 ;
}
if (! -d $opt_path) {
    print " the direcotry you give \'$opt_path\' is not existed\n";
    exit 1 ;
}
if (!defined ($opt_size) || $opt_size <= 0) {
    print " the size you give  $opt_path is not valid\n";
    exit 1 ;
}


sub wanted {
   return if -d $File::Find::name;
   my @file_stat_info = stat($File::Find::name) ;
   my $file_size = $file_stat_info[7] ;
   print "detecting $File::Find::name ...  against size: $opt_size \n";
   print  "Found $File::Find::name 's size : $file_size > $opt_size\n" if $file_size > $opt_size;
}

sleep 10000;
find(\&wanted,$opt_path);

exit 0;
