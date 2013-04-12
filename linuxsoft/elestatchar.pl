#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

my ($a, $b, $c);
my ($soucet, $prumer, $max, $min);

print "Zadje 1. hodnot:"; chomp($a = <STDIN>);
print "Zadje 2. hodnot:"; chomp($b = <STDIN>);
print "Zadje 3. hodnot:"; chomp($c = <STDIN>);

$soucet = $a + $b + $c;
$prumer = $soucet / 3;

if ($a > $b and $a > $c){
    $max = $a;
}
elsif($b > $c){
    $max = $b;
}
else{
    $max = $c;
}

if ($a < $b and $a < $c){
    $min = $a;
}
elsif($b < $c){
    $min = $b;
}
else{
    $min = $c;
}

print "Součet zadaných čísel je $soucet\n";
print "Průměr zadaných čísel je $prumer\n";
print "Největší ze zadaných čísel je číslo $max\n";
print "Nejmenší ze zadaných čísel je číslo $min\n";

exit;
