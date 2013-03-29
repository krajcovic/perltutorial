#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use LWP::Simple;
use HTML::LinkExtor;

my $url       = get("http://www.scriptsocket.com");
my $linkExtor = HTML::LinkExtor->new( \&printImgs );
$linkExtor->parse($url);

sub printLinks {
	( my $tag, my %links ) = @_;
	if ( $tag eq "a" ) {
		foreach my $key ( keys %links ) {
			if ( $key eq "href" ) {
				say $links{$key};
			}
		}
	}
}

sub printImgs {
	( my $tag, my %links ) = @_;
	if ( $tag eq "img" ) {
		foreach my $key ( keys %links ) {
			say $links{$key};
		}
	}
}

exit;
