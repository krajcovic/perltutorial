#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

my $radek;

while ($radek = <STDIN>) {
	chomp($radek);
	
	if($radek eq "exit") {
		last;
	}
	
	print "Napsal jste: $radek\n";	
}

exit;
