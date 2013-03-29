#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

#use strict;
#use warnings;
use v5.10;

print "Content-type: text/html\n\n";

say "1st block of code.";

$Second = "2nd";

require "file.cgi";

say "$Third block fo code.\n";

exit;
