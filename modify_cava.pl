#!/usr/bin/env perl
#perl -pi -e 's/Fred/Barney/' inFile.txt

use strict; use warnings;

my $str;
my @set = ('0' ..'9', 'A' .. 'F');
#my $str = join '' => map $set[rand @set], 1 .. 6;

#print "#$str\n";

#open my $in,  '<',  "/home/masterli/.cava.conf"      or die "Can't read old file: $!";
#open my $out, '>', "/home/masterli/.cava.conf" or die "Can't write new file: $!";

#print $out "# Add this line to the top\n";
#    s/\b('#FF479C')\b/#$str/g;

open(FILE, "</home/masterli/.cava.conf") || die "File not found";
my @lines = <FILE>;
close(FILE);

$str = join '' => map $set[rand @set], 1 .. 6;
$str = "foreground = '#".$str."'";
my @newlines;
foreach(@lines) {
   
   $_ =~ s/^foreground.*$/$str/ge;
   push(@newlines,$_);

} 

open(FILE, ">/home/masterli/.cava.conf") || die "File not found";
print FILE @newlines;
close(FILE);
