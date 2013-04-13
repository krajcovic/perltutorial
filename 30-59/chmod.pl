#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

chmod 0644, 'directory1/file.txt';
chmod 0755, 'directory1';

my @files = ("directory1/file.txt", "directory1/zero.txt");
chmod 0644, @files;

#files 0644, 0666
#directories 0755, 0777
#perl scripts 0755

exit;
