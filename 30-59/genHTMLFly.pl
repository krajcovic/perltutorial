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

  $cgi->start_html(
	-title => 'My Page Title',
	-meta  => { 'keywords' => 'kw1, kw2', 'description' => 'My description.' },
	-bgcolor => 'yellow',
	-vlink   => 'orange'
  ),

  $cgi->center( $cgi->h1('My Page Header') ), "\n",
  "A line of text .",
  $cgi->br, "\n",
  $cgi->br, "\n",
  $cgi->img( { -src => 'fish.jpeg', -alt => 'A fish' } ),
  $cgi->br, "\n",
  $cgi->a( { -href => 'http://www.scriptsocket.com/', -target => '_blink'}, "ScriptSocket.com" ),
  $cgi->end_html;

exit;
