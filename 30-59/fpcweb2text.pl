#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use LWP::Simple;
use HTML::TreeBuilder;
use HTML::FormatText;

my $URL = get("http://www.scriptsocket.com");
my $Format = HTML::FormatText->new(leftmargin => 0, rightmargin => 50);
my $TreeBuilder = HTML::TreeBuilder->new;

$TreeBuilder->parse($URL);
my $Parsed = $Format->format($TreeBuilder);

say $Parsed;

open (FILE, ">file.txt");
print FILE "$Parsed";
close FILE;

exit;
