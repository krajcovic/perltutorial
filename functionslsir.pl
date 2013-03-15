#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $string = "thursday";
my $lenght = length("thursday");
print "$lenght\n";

$lenght = length("monday");
print "$lenght\n";

$string = "It was hot on thursday";
my $substring = substr($string, 14);
print "$substring\n";

substr($string, 14, 8, "tuesday");
print "$string\n";

$string = "It was ho on thursday";
$substring = substr($string, index($string, "w"), 3);
print "$substring\n";

$string = "There, here & everywhere";
my $index = index($string, "here");
print "First 'here', position $index\n";

my $rindex = rindex($string, "here");
print "Last 'here', position $rindex\n";

exit;
