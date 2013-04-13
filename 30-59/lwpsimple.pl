#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use LWP::Simple;
my $URL = get("http://www.scriptsocket.com");

open(FILE, ">file.txt");
print FILE $URL;
close FILE;

exit;