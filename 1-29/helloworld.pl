#!/usr/bin/perl
print "Content-type: text/html\n\n";

# Variable
$x = 1;

# List variable
($x,$y) = (1,2);

$number = 1;
$string = "Perl tutorial";

print "$number\n";
print "$string\n";

$x = 1;
$y = 2;
$z = $x + $y;
print "$z\n";

$word1 = "Perl";
$word2 = "Tutorial";

$string = "$word1 $word2\n";
print $string;


exit;
