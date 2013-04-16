#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;
use CGI;

my $cgi = CGI->new();

print $cgi->header,

$cgi->start_html(	-title=>'CGI.pm Tables'),
$cgi->start_table({-width=>'400', -border=>'1' }), "\n",
$cgi->start_Tr, "\n",
	$cgi->start_td({-width=>'200',-align=>'center'}),
	"Cell 1",
	$cgi->end_td(), "\n",
		$cgi->start_td({-width=>'200',-align=>'center'}),
	"Cell 2",
	$cgi->end_td(), "\n",
$cgi->end_Tr, "\n",
$cgi->start_Tr, "\n",
	$cgi->start_td({-colspan=>'2',-align=>'right', -bgcolor=>'red'}),
	"Cell 1",
	$cgi->end_td(), "\n",
$cgi->end_Tr, "\n",
$cgi->end_table,
$cgi->end_html;

exit;
