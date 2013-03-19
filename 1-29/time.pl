#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $time = localtime(time);
print "$time\n";

$time = gmtime(time);
print "$time\n";

$time = time;
print "$time\n";

(my $sec,my $min, my $hour, my $mday, my $mon, my $year, my $wday, my $yday, my $isdst) = localtime(time);
print "$sec,$min,$hour,$mday, $mon, $year, $wday, $yday, $isdst\n";

my @months = (1..12);
my @days = qw(Sun Mon Tue Wed Thu Fri Sat);

$year = $year + 1900;;
my $date = "$days[$wday] $months[$mon]/$mday/$year";
$time = "$hour:$min:$sec";
print "$date : $time\n";

exit;
