#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $string = "hErE Is a STriNg";
if($string =~ m/here is a string/i) {
	print "It's a match!\n";
}

# i = ignore case
$string =~ s/here/There/i;
print "$string\n";

$string = "I see the road.";
$string =~ tr/r/t/;
print "$string\n";

$string = "Perl is cooooooooooool!";
$string =~ s/o+/oo/g;
print "$string\n";

$string = "Perl is hoooooooooooot coooool!";
$string =~ s/o+/o/;
print "$string\n";

# g = Matches more than one match.
$string = "Perl is hoooooooooooot coooool!";
$string =~ s/o+/o/g;
print "$string\n";

my $number = 123;
if ($number =~ /^\d+$/) {
	print "It's a number!\n";
}

$number = "123";
if ($number =~ /^\d+$/) {
	print "It's a number!\n";
}

my $letters = "abcdefghijklmnopqrst";
if ($letters =~ /^\w+$/) {
	print "It's a word!\n";
}

$letters = "abcdefghijklmnopqrst";
if ($letters =~ /^[A-Za-z]+$/) {
	print "Found only letters!\n";
}

my $string1 = "    Leading whitespace.";
my $string2 = "Trailing whitespace.   ";
$string1 =~ s/^\s+//;
$string2 =~ s/\s+$//;
print "$string1\n";
print "$string2\n";


exit;
