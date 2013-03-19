#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

# exist
print -e "directory1/file.txt";
print "\n";

# exist
print -e "directory1";
print "\n";

# no return for noexist
#print -e "directory1/files.txt";
#print "\n";

if (-e "directory1/file.txt") {
	print "File exists\n";
} else {
	print "File doesn't exist\n";
}

# zero length
print -z "directory1/zero.txt";
print "\n";

# size of lenght
print -s "directory1/file.txt";
print " bytes \n";

#
print -d "directory1";
print "\n";

exit;
