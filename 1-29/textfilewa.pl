#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

open(FILE, ">file27-1.txt");
flock(FILE, 2);
print FILE "Hello\n";
close(FILE);

open(FILE, ">>file27-2.txt");
flock(FILE, 2);
print FILE "append\n";
close(FILE);

exit;
