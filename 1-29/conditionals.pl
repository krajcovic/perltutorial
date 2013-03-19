#!/usr/bin/perl
print "Content-type: text/html\n\n";


$number = 10;

if ($number > 10) {
	print "The number is greater than 10.";
}
elsif ($number < 10) {
	print "The number is less than 10";
}
else {
	print "The number is 10.";
};

exit;
