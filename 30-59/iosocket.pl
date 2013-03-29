#!/usr/bin/perl
#
# Author: Dusan Krajcovic
#

use strict;
use warnings;
use v5.10;

print "Content-type: text/html\n\n";

use IO::Socket;
my $Socket = IO::Socket::INET->new(
	Proto    => "tcp",
	PeerAddr => "www.berm.co.nz",
	PeerPort => 80
);

$Socket->autoflush(1);
print $Socket "get /video/index.php HTTP/1.0\015\012\015\012";

open FILE, ">file.txt";
while (<$Socket>) {
	print FILE;
}
close FILE;
close $Socket;

exit;
