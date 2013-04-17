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

  $cgi->start_html( -title => 'CGI.pm Forms' ),

  $cgi->start_form(
	-method => 'post',
	-action => ''
  ),
  "\n",

  "Textbox: ",
  $cgi->textfield( -name => 'textbox', -size => 15 ), $cgi->br,
  "\n",
  "Password: ", $cgi->password_field( -name => 'password', -size => 15 ),
  $cgi->br, "\n",

  "Radio: ",
  $cgi->radio_group(
	-name   => 'radio',
	-values => [ 'Red', 'Blue', 'Green' ],
	default => 'Blue'
  ),
  $cgi->br, "\n",

  "Checkboxes: ",
  $cgi->checkbox_group(
	-name     => 'checkboxes',
	-values   => [ 'Burger', 'Fries', 'Coke' ],
	-defaults => ['Coke']
  ),
  $cgi->br, "\n",

  "Scrollbox: ",
  $cgi->scrolling_list(
	-name     => 'scrollbox',
	-size     => 1,
	-value    => [ 'Hat', 'Coat', 'Jacket' ],
	-defaults => ['Jacket']
  ),
  $cgi->br, "\n",

  "Commetns: ", $cgi->br, "\n",
  $cgi->textarea( -name => 'textarea', -columns => 20, -rows => 5 ), $cgi->br,
  "\n",

  $cgi->hidden( -name => 'hidden', -value => 'Toys' ), "\n",

  $cgi->submit( -value => 'Submit' ), "\n", $cgi->reset, "\n",

  $cgi->end_form;

#results
print "<br>\n";

foreach ($cgi->param) {
	&printParam($_);
}

exit;

sub printParam() {
	if ( $cgi->param( $_[0] ) ) {
		print "$_[0]: ", $cgi->param( $_[0] ), $cgi->br, "\n";
	}
}
