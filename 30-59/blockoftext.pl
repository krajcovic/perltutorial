#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

print "A line of text<br>\n";
print "Another line of text<br>\n";

print <<EOF;
A line of text <br>
Another line of text<br>
EOF

print <<HTML;
A line of text <br>
Another line of text<br>
HTML

exit;
