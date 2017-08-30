    #!/usr/bin/perl

    use strict;
    use warnings;

    my $dir = '.';

    opendir(DIR, $dir) or die $!;

    while (my $file = readdir(DIR)) {

        # We only want files
        #next unless (-f "$dir/$file");

        next unless (-d "$dir/$file");

        opendir(DIR2, "$dir/$file") or die $!;

        while (my $file2 = readdir(DIR2)) {

        #next unless (-f "$dir/$file");
        next unless ($file2 =~ m/\.avi$/);

        print "$file2\n";
        `mv "$dir/$file/$file2" /home/masterli/Downloads/`;


        }

        # Use a regular expression to find files ending in .txt
        # next unless ($file =~ m/\.avi$/);

        
    }

    closedir(DIR);
    exit 0;

    # ls *.avi | sort | xargs  -d'\n' touch
    # ls *.avi *.mkv | sort | xargs  -d'\n' touch
