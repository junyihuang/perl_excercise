#!/usr/bin/perl -w 

#use YAML::Syck;
use YAML;
use Data::Dumper;

my $yml_file = $ARGV[0] || "sample2.yaml";

my $yml_data = LoadFile("./$yml_file");

print "the Yaml file data is : \n";
print Dumper($yml_data);

#my $VAR1=$yml_data;

#print q($yml_data->{'women'}[1]{'step'}->{spotSize} =  );
#print "$yml_data->{'women'}[1]{'step'}->{spotSize}\n";
#print q($yml_data->{'women'}[1]{'step'}->{pulseEnergy} =  );
#print "$yml_data->{'women'}[1]{'step'}->{pulseEnergy}\n";
#
#print q($yml_data->{'women'}[0]{'step'}->{spotSize} =  );
#print "$yml_data->{'women'}[0]{'step'}->{spotSize}\n";
#print q($yml_data->{'women'}[0]{'step'}->{pulseEnergy} =  );
#print "$yml_data->{'women'}[0]{'step'}->{pulseEnergy}\n";

exit 0;


