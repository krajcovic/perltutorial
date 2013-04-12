#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use LWP::Simple;
require HTML::Parser;
require HTML::LinkExtor;

my $Domain = "www.ageofempires.co.nz";
my $URL    = get("http://$Domain");

mkdir "$Domain";


my $LinkExtor = HTML::LinkExtor->new( \&links );
$LinkExtor->parse($URL);

sub links {
	my $tag;
	my %links;
	my $url;
	my $file;

	( $tag, %links ) = @_;
	if ( $tag eq "a" and $links{href} =~ "$Domain" ) {
		$url  = $links{href};
		$file = $url;		
		$file =~ s/http:\/\/www\.//;			
		$file =~ s/http:\/\///g;				
		$file =~ tr/\//-/;				
		mirror( $url, "$Domain/$file.html" );
		print "Making $file.html\n";
	}
}

exit;
