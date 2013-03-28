#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

print 9 > 6;
print 9 > 18; print "\n";

print print ""; print "\n";

$a = 3;
$b = 2;

if($a > $b)
{
	print '$a je vetsi nez $b'; print "\n";

	print "$a je vetsi nez $b"; print "\n";
}

if($a == 0)
{
	print "TRUE\n";
} else {
	print "FALSE\n";
}

exit;
