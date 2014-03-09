#!/usr/bin/perl -w


use  IPC::System::Simple qw(system);

# run my own perl script by calling system funtion

system("perl ./find_by_size.pl -p ~/perl -s 100");

sleep 1000;


exit(0);

