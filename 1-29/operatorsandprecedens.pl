#!/usr/bin/perl
print "Content-type: text/html\n\n";

$sum = 4 + 3;
print "$sum\n";

$sum = 4 - 3;
print "$sum\n";

$sum = 4 * 3;
print "$sum\n";

$sum = 4 / 3;
print "$sum\n";

$sum = 4 / 2;
print "$sum\n";

$sum = 4 +2 * 3;
print "$sum\n";


$sum = 4 +2 / 3;
print "$sum\n";

$num1 = 10;
$num2 = 10;
print $num1++ . "\n";
print ++$num2 . "\n";
print "$num1\n";
print "$num2\n";

$num1 = 100;
$num2 = 100;
print $num1-- . "\n";
print --$num2 . "\n";
print "$num1\n";
print "$num2\n";

$letter = "a";
$letter++;
print "$letter\n";

$letter = "a";
$letter--;
$letter--;
print "$letter\n";

$sum = 2 ** 3;
print "$sum\n";

$sum = 2 ** 5;
print "$sum\n";

$sum = 2 ** -3;
print "$sum\n";

$sum = 10 % 3;
print "$sum\n";

$sum = 10 / 3;
print "$sum\n";

use integer;
$sum = 10 / 3;
print "$sum\n";

$number = 10;
if ($number == 10) {
	print "10\n";
}

$number = 11;
if ($number != 10) {
	print "Not 10\n";
}

$word = "hello";
if ($word eq "hello") {
	print "hello\n";
}

$word = "helloa";
if ($word ne "hello") {
	print "Not hello\n";
}

exit;
