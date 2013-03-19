#!/usr/bin/perl
print "Content-type: text/html\n\n";

@numbers = (1,2,3,4,5);
print "@numbers\n";

print "$numbers[0]\n";
print "$numbers[2]\n";

@words = ("one", "two", "three");
print "@words\n";

print "$words[0]\n";

$words[3] = "four";

print "@words\n";

$total = $#words + 1;
print "$total\n";

$#words = 2;
print "@words\n";

@words = ();
print "nothing: @words\n";

exit;
