#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

open( FILE, "data.txt" );

my @data = <FILE>;
shift(@data);

#print "<b>Countries of the World</b><br>\n";
print "Countries of the World\n";

my $oldname = "";

foreach my $line (@data) {
	chomp($line);
	(
		my $name, my $alpha2, my $alpha3, my $countrycode,
		my $iso,
		my $regioncode,
		my $subregioncode
	) = split( /\,/, $line );

	if ( $name ne $oldname ) {

		#print "<br><b>$name</b><br>";
		#print "$alpha2 ($alpha3)<br>\n";
		print "$name\n";
		print "\t$alpha2 ($alpha3)\n";
	}
	else {
		print "\t$alpha2 ($alpha3)\n";
	}

	$oldname = $name;
}

close FILE;

exit;
