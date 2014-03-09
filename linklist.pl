#!/usr/bin/perl -w

# construct a single linked list to store a set of employees 

my $head = undef;
my $p;
my @employee = (Chuan,Eric,Vito,Yu,Ran,Xiao,Ya,Long,Song);
print "number of employee is ", scalar(@employee) , ":  @employee\n";
# form a linked list with the original order
foreach my $member (@employee) {
       my $new_node = {
            'Name' => $member,
            'Next' => undef
       };
       if (defined ($head)) {
              $p = $head;
           while (defined($p->{Next})) {
              $p = $p->{'Next'};  
           }
           $p->{'Next'} =  $new_node;
       } else {
          $head = $new_node;
       }
}

&print_linked_list($head);

# form a linked list with reversal order

my $head2 = undef;
foreach my $member(@employee) {
      my $new_node = {
                 'Name' => $member,
      };
      $new_node->{Next} = $head2;
      $head2 = $new_node;
}
print "This time we created with a reversal linked list:\n";
&print_linked_list($head2);

sub print_linked_list {

    my $h = shift;
    my $n=1;
    while ( defined($h) ) {
        print "$h->{'Name'}" , defined($h->{'Next'})?"->":"\n";
        $n++;
        $h = $h->{'Next'};
    }

}


exit 0;
