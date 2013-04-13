#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use LWP::Simple;
use Egg::Plugin::HTTP::HeadParser;

my $url = get("http://www.scriptsocket.com");
my $header = HTML::HeadParser->new;
$header->parse("$url");

say "Title:";
say $header->header('Title');
my $title = $header->header('Title');

say "Description:";
say $header->header('X-Meta-Descriptions');
say "Keywords:";
say $header->header('X-Meta-Keywords');
say "Robots:";
say $header->header('X-Meta-Robots');
say "Revision-After:";
say $header->header('X-Meta-Revision-After');
say "Type:";
say $header->header('Content-Type');
say "Language:";
say $header->header('Content-Language');
say "Base:";
say $header->header('Content-Base');



exit;
