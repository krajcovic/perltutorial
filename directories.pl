#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

opendir(DIR, "/tmp");
my @files = readdir(DIR);
closedir(DIR);

print "@files\n";

chdir '.';
mkdir 'newdirectory';
rmdir 'newdirectory';

chdir "..";
opendir (DIR, "..");
@files = sort readdir(DIR);
closedir(DIR);

print "@files\n";

exit;
