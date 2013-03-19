#!/usr/bin/perl

use strict;
use warnings;

print "Content-type: text/html\n\n";

my %hash = qw(
	bird albatros
	fish shark
	insect spider
	animal dog
	);

if (exists($hash{animal})) {
	print "Key does exist!\n";
} else {
	print "Key doesn't exist!\n";
}

if (defined($hash{animal})) {
	print "Key defined!\n";
} else {
	print "Key not defined!\n";
}

delete ($hash{fish});

if (exists($hash{fish})) {
	print "Key does exist!\n";
} else {
	print "Key doesn't exist!\n";
}


exit;
