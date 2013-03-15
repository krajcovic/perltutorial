#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $value = int rand(20);
my $sum = 0;
my $message;

sub printSum1 {
	print "$message\n";
	$sum = $value * 10;
	print "$value * 10 = $sum\n";
}

sub printSum2($) {
	print shift;
	print "\n";
	$sum = $value * 10;
	print "$value * 10 = $sum\n";
}

if ($value < 10) {
	$message = "Value less than 10!";
	printSum1;
	printSum2("Value less than 10!");
} elsif ($value > 10) {
	$message = "Value greater than 10!";
	printSum1;
	printSum2("Value greater than 10!");
} else {
	$message = "Value is 10!";
	printSum1;
	printSum2("Value is 10!");
}

exit;
