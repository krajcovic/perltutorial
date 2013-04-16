#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

foreach my $key (sort (keys %ENV)) {
	print "$key = $ENV{$key}\n";
}

my $Query = $ENV{QUERY_STRING};
my $Referer = $ENV{HTTP_REFERER};
my $IP = $ENV{REMOTE_ADDR};
my $Host = $ENV{REMOTE_HOST};
my $UserAgent = $ENV{HTTP_USER_AGENT};

exit;
