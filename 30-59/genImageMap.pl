#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;
use CGI;
use Padre::Document::Perl;
use Padre::Document::Perl::Autocomplete;

my $cgi = CGI->new();

print $cgi->header,

  $cgi->start_html( -title => 'CGI.pm Image Map' ),
  $cgi->start_form,
  
    $cgi->image_button(),
  $cgi->end_form,

 print $cgi->end_html;

exit;
