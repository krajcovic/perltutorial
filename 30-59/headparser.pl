#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use LWP::Simple;
use HTTP::HeadParser;

my $url = get("http://www.scriptsocket.com");
my $header = HTML::HeadParser->new;
$header->parse("$url");

say $header->header('Title');
my $title = $header->header('Title');

say $header->header('X-Meta-Descriptions');

say $header->header('X-Meta-Keywords');

say $header->header('X-Meta-Robots');

say $header->header('X-Meta-Revision-After');

say $header->header('Content-Type');

say $header->header('Content-Language');

say $header->header('Content-Base');



exit;
