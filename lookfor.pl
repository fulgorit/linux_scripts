#!/usr/bin/perl

    use strict;
    use warnings;
    use Term::ANSIColor;
    use File::Copy;

    my $i=0;	
    my $filename = '/mnt/aldi/mylibrary/PDF_REPO/TMP/filelist.txt';
    open(my $fh, '<:encoding(UTF-8)', $filename)
      or die "Could not open file '$filename' $!";
     
    while (my $row = <$fh>) {
      chomp $row;
      if( $row =~ $ARGV[0] )
{
$i++;
my @words = split /\|/, $row, 2;
#print "$words[0]\n";
my @words2 = split /\|\|/, $words[1], 2;

#print "$words2[1]\n";
#print "$words[0]\n";

printf "%s\n", colored( $words2[1], 'red' );
printf "%s\n", colored( $words[0], 'blue' );

my $num = $#ARGV + 1;
#print $num;
if ($num == 2) {
copy($words[0], $ARGV[1].$words2[1]) or die "File cannot be copied.";
print "$words2[1] --> $ARGV[1]$words2[1]\n";
}

}
    
}
printf "%s\n", colored( "$i file(s) found with $ARGV[0]", 'magenta' );

# perl lookfor.pl <keyword with case sensitive> <path to copy files found>