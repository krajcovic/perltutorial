#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use LWP::UserAgent;

my $UserAgent = new LWP::UserAgent;
my $Request = new HTTP::Request('get', 'http://www.scriptsocket.com/');
my $Response = $UserAgent->request($Request);

open(FILE, ">file.txt");
print FILE $Response->{_content};
close(FILE);

exit;
