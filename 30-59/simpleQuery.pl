#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

#my $Query = $ENV{QUERY_STRING};
my $Query = "bermnz,1";
print "$Query\n";

(my $User, my $Page)=split(/\,/,$Query);

exit;
