#!/usr/bin/perl
print "Content-type: text/html\n\n";


$number = 10;

if ($number > 10) {
	print "The number is greater than 10.";
}
elsif ($number < 10) {
	print "The number is less than 10.";
}
else {
	print "The number is 10.";
};

print "\n";

$number = 20;
unless($number == 20) {
	print "The number is not 20.";
} else {
		print "The number is 20.";
}

print "\n";

exit;
