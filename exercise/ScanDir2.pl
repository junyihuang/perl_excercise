#!/usr/bin/perl -w


use Cwd; 
sub ScanDir ($$);

my $curDIR = $ARGV[0] || "."; 
my $yourfile = $ARGV[1] || ".";

sub ScanDir ($$)
{
     my $curDIR = shift;
     my $yourfile = shift;

     my $startdir = cwd; 
     #print "Current DIR is $curDIR\n";
     #print "Current your file is $yourfile\n";
     chdir "$curDIR" or die "can't enter into $curDIR";
     opendir my $DIR, "." or die "can't open $curDIR";
     my @files = readdir $DIR or die "can't read directory $DIR";
     closedir $DIR;
     for my $file (@files) {
          next if $file eq "." || $file eq ".."; 
          if (-d $file ) {
                ScanDir($file,$yourfile);
                next;
          } else {
                if ($file eq $yourfile ) {
                print "found file $file";
                }
          }

      }
      chdir $startdir or die "can't return back to $startdir";
     
}

ScanDir($curDIR, $yourfile);

exit 0;


