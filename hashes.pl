#!/usr/bin/perl
print "Content-type: text/html\n\n";

%hash = ();

$hash{'first name'} = "john";
$hash{age} = 25;
$hash{city} = "London";

print "@{[%hash]}\n";
print uc($hash{city}), "\n";
print lc($hash{city}), "\n";

print $hash{'first name'}, "\n";

%testhash = (
	'name','john',
	'age','25',
	'city','london'
);

print $testhash{age}, "\n";

%testhash2 = qw(
	name dusan
	age 30
	city london);
print $testhash2{name}, "\n";
print $testhash2{'age'}, "\n";

exit;


