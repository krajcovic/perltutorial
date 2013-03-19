#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $random = rand(100);
print "$random\n";

my @counter;
my $max = 1000000;

for (my $var = 0; $var < $max; $var++) {
	$random = int rand(6);
	$counter[$random]++;
}

# Preved na procenta
map {$_ = sprintf "%.2f", ($_ * 100 / $max)} (@counter);
print "@counter\n";

$random = int rand(6);
print "$random\n";

my @array = qw(hat mat cat bat rat dadb);
print "$array[$random]\n";

$random = rand(100);
print "$random\n";
my $rounded = sprintf "%.2f", $random;
print "$rounded\n";

exit;
