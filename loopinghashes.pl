#!/usr/bin/perl
print "Content-type: text/html\n\n";

%hash = qw(
	food sandwitch
	desert donut
	dring coke
	);

while(($key, $value) = each(%hash)) {
	print "$key - $value\n";
}

print "Keys: \n";
foreach $key (keys %hash) {
	print "$key\n";
}

print "Values: \n";
foreach $value (values %hash) {
	print "$value\n";
}

exit;


