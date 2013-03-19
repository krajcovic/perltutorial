#!/usr/bin/perl
print "Content-type: text/html\n\n";


@array = qw(red orange blue green purple);

$count = 1;
foreach $color (@array) {
	print "Color $count: $color\n";
	$count++;
}

@numbers = (1..10);

foreach $number (@numbers) {
	$number = $number + 10;
	print "$number\n";
}



exit;
