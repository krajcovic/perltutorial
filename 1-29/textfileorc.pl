#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

open (FILE, "./file.txt");

print <FILE>;

close(FILE);

exit;
