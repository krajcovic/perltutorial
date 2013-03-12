#!/usr/bin/perl
print "Content-type: text/html\n\n";

@array1 = ("one", "two", "three");
@array2 = ("four", "five", "six");

@array3 = (@array1, @array2);
print "@array3\n";

@reversed = reverse(@array3);
print "@reversed\n";

@array = (4,8,2,9,0,4,1);
@sorted = sort(@array);
print "@sorted\n";

@array = (4,8,2,9,0,4,1);
@sorted = sort {$a <=> $b}(@array);
print "@sorted\n";

@array = (4,8,2,9,0,4,1);
@sorted = sort {$b <=> $a}(@array);
print "@sorted\n";

@array = ("orange", "green", "blue", "black", "red");
print "@array\n";

@sorted = sort({$b cmp $a}@array);
print "@sorted\n";


exit;

