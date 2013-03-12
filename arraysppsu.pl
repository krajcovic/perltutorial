#!/usr/bin/perl
print "Content-type: text/html\n\n";

push(@array, "one");
push(@array, "two");
push(@array, "three");
push(@array, "four");

print "@array\n";

$variable = pop(@array);
print "$variable\n";

pop(@array);
print "@array\n";

@array = ("one", "two", "three");
unshift(@array, "zero");
print "@array\n";

shift(@array);
print "@array\n";


exit;
