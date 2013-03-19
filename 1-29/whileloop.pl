#!/usr/bin/perl
print "Content-type: text/html\n\n";

$count = 1;
while ($count <= 5) {
	print "Hello\n";
	$count++;
}

print "------------------------------------\n";
@array = qw(frog dog cat bird elephant);
$count = 0;
while ($count <= $#array) {
	# body...
	print "$array[$count]\n";
	$count++;
}

print "------------------------------------\n";
@array = qw(frog dog cat bird elephant);
$count = 0;
until($array[$count] eq "bird") {
	print "$array[$count]\n";
	$count++;
}



exit;


