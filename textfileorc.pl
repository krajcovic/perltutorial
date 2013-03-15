#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

#open (FILE, "./file2.txt") or die("File not found!");
open (FILE, "./file.txt") or die("Error");
print <FILE>;
close(FILE);

open (FILE, "./file.txt") or die("Error");
my @array = <FILE>;
close(FILE);

print @array;

foreach my $line (@array) {
	chomp($line);
	$line = uc($line);
	print "$line\n";
}

exit;
