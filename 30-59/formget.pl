#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

#use strict;
#use warnings;

print "Content-type: text/html\n\n";

#$buffer = $ENV{'QUERY_STRING'};
$buffer = "q=travel&l=nz";
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
	($name, $value) = split(/=/, $pair);
	$value =~ tr/+/ /;
	$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
	$value =~ s/~!/ ~!/g;
	$query{$name} = $value;
}

# http://www.scriptsocket.com/code.php

$SearchTerm = $query{'q'};
$Location = $query{'l'};

print <<EOF;
Yout searched '$Location' for '$SearchTerm'<br>
<br>
Result 1<br>
Result 2<br>
Result 3<br>
etc ..
EOF


exit;
