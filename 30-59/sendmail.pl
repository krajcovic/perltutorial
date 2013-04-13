#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

my $message = "Testovaci zprava [zkouska]";
my $subject = "Predmet zpravy";
($message = $message) =~ s/<[^>]*//gs;
my @rudewords = qw(rudeword1 rudeword2);
my $rude = "no";
foreach my $word (@rudewords) {
	if($message =~ m/$word/gi or $subject =~ m/$word/gi) {
		$rude = "yes";
	}
}

unless ($rude eq "yes") {
open (MAIL, '| /usr/sbin/sendmail -t -oi');
print MAIL <<EOF;
To: dusan.krajcovic\@gmail.com
From: xxx\@xxx.com
Subject: $subject

$message
EOF

close MAIL;
}

print "Thanks for your email!\n";

exit;
