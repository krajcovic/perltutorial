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

exit;
