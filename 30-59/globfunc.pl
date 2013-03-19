#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my @files = glob('/tmp/*');
print "@files\n";

@files = glob('/tmp/*.txt');
print "@files\n";

my @many =  glob "{apple,tomato,cherry}={green,yellow,red}";
print "@many\n";

my @files2;
push (@files2, glob('/tmp/*'));
print "@files2\n";

print join ("\n", glob ('/tmp/*'));
print join ("\n", @many);

while (</tmp/*>) {
	print "$_\n";
}

exit;
