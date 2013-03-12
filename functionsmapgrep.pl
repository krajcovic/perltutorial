#!/usr/bin/perl
print "Content-type: text/html\n\n";

@array = (1.. 10);
print "@array\n";

map {$_ = $_ * 2} (@array);
print "@array\n";

map {$_ *= 2} (@array);
print "@array\n";

@array = qw(apple orange banana plum);
map {$_ = uc($_)} (@array);
print "@array\n";

@array = (1..10);
@array2 = grep {$_ > 5} @array;
print "@array2\n";


# Ty ktere obsahuji 'n'
@array = qw(apple orange banana plum);
@array2 = grep {$_ =~ "n"} @array;
print "@array2\n";

# Ty ktere obsahuji 'pl'
@array = qw(apple orange banana plum);
@array2 = grep {$_ =~ "pl"} @array;
print "@array2\n";

exit;


