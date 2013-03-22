#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;
use File::Copy;

print "Content-type: text/html\n\n";

open(FILE,">file28.txt");
flock(FILE,0);
print FILE "Hello";
close(FILE);

copy("file28.txt", "file28.copied.txt");

rename "file28.txt", "file28.renamed.txt" or die "Rename failed: $!";
#rename "file29.txt", "file28-renamed.txt" or die "Rename failed: $!";

unlink "file28.txt";

my $file = "file28.copied.txt";
my $size = (stat $file)[7];

print "File $file is $size bytes\n";

exit;
