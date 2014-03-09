#!/usr/bin/perl -w

use strict; 

my $curDIR = $ARGV[0] || ".";
my $yourfile = $ARGV[1] || ".";

sub ScanDir ($$);

sub ScanDir ($$)
{
     my $curDIR = shift;
     my $yourfile = shift;
     #print "Current DIR is $curDIR\n";
     #print "Current your file is $yourfile\n";
     chdir "$curDIR" or die "can't enter into $curDIR";
     opendir my $DIR, "." or die "can't open $curDIR";
     my @files = readdir $DIR or die "can't read directory $DIR";
     closedir $DIR;
     for my $file (@files) {
          if (-d $file ) {
               next if $file eq "." || $file eq ".."; 
                ScanDir($file,$yourfile);
                next;
          } else {
                if ($file eq $yourfile ) {
                print "found file $file";
                }
          }

      }
     
}

ScanDir($curDIR, $yourfile);

exit 0;


