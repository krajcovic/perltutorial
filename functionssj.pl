#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $words = "The cat is white";
my $w1;
my $w2;
my $w3;
my $w4;
($w1, $w2, $w3, $w4) = split(/ /,$words);
print "$w1\n";
print "$w2\n";
print "$w3\n";
print "$w4\n";

my @words;
(@words) = split(/ /,$words);
print "@words\n";

my $joined = join(" ", ("A","black","dog"));
print "$joined\n";

exit;
