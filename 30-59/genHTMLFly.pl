#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;
use CGI;
use CGI::Carp;

my $cgi = CGI->new();
print $cgi->header, 
$cgi->start_html(-title=>'My Page Title'),
$cgi->h1('My Page Header'),
"A line of text.",
$cgi->end_html;

exit;
