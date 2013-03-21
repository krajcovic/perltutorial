#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $words = "NEW ZEALAND";
$words = lc($words);
print "$words\n";

$words = "chine";
$words = uc($words);
print "$words\n";

$words = "AUSTRALIA";
$words = lcfirst($words);
print "$words\n";

$words = "australia holiday";
$words = ucfirst($words);
print "$words\n";

$words = "a title of a webpage";
$words = join ' ', map {ucfirst lc} split / /, $words;
print "$words\n";

exit;
