#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#
#use strict;
#use warnings;

print "Content-type: text/html\n\n";

%hash = qw(
	breakfast cereal
	lunch sandwitch
	dinner pie
	);

%reversed = reverse %hash;

foreach $key (keys %reversed) {
	print "$key - $reversed{$key}\n"
}

foreach $key (sort keys %hash) {
	print "$key\n"
}

foreach $value (sort values %hash) {
	print "$value\n"
}

%hash2 = qw (
	drink coffe
	sugar 1
	milk yes
	);

%hash3 = (%hash, %hash2);
print "$hash3{drink}\n";

exit;
