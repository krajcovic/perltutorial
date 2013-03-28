#!/usr/bin/perl
#
#	Author: Dusan Krajcovic
#

use strict;
use warnings;

print "Content-type: text/html\n\n";

chmod 0755, 'formpost.pl';

read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
@pairs = split(/$/, $buffer);
foreach $pair (@pairs) {
	($name, $value) = split (/=/, $pair);
	$value =~ tr/+/ /;
	$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
	$FORM{$name} = $value;
}

# http://www.scriptsocket.com/code.php

$Name = $FORM{'name'};
$Burger = $FORM{'burger'};
$Fries = $FORM{'fries'};
$Coke = $FORM{'coke'};
$Coffe = $FORM{'coffe'};
$Tea = $FORM{'tea'};
$Payment = $FORM{'payment'};
$FirstTime = $FORM{'firsttime'};
$Comments = $FORM{'comments'};
$Store = $FORM{'store'};

print <<EOF
Thankyou $Name!<br>
Here is your order.<br>
<br>
Burger: $Burger<br>
Fries: $Fries<br>
<br>
Payment: $Payment<br>
<br>
First Time Customer: $FirstTime<br>
Comments: $Comments<br>
Store: $Store<br>
EOF


exit;
