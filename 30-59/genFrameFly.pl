#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;
use CGI;

my $cgi = CGI->new();

print $cgi->header, $cgi->frameset(
	{ -rows => '40%, 60%' }, "\n",
	$cgi->frame( { -name => 'top', -src => 'http://www.utb.cz' } ),
	"\n",
	$cgi->frame( { -name => 'bottom', -src => 'http://www.scriptsocket.com' } ),
	"\n",
);

exit;
