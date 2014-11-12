use warnings;
use strict;

open my $known,   '>', 'known.csv'   or die;
open my $unknown, '>', 'unknown.csv' or die;
open my $correct, '>', 'correct.txt' or die;


for (my $i=0; $i<1000; $i++) {
  write_csv_line($known, 0);
}
for (my $i=0; $i<1000; $i++) {
  write_csv_line($unknown, $correct);
}

close $known;
close $unknown;
close $correct;


sub write_csv_line {

  my $file         = shift;
  my $correct_file = shift;

  my $classif = int(4 * rand);

  if ($correct_file) {
    print $correct_file "$classif\n";
  }
  else {
    print $file "$classif,";
  }


  my @d = ();
  if    ($classif == 0) {
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.7 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand; 
     push @d, 0.6 + 0.3 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.5 + 0.4 * rand;
     push @d, 0.8 + 0.2 * rand;
  }
  elsif ($classif == 1) {
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.6 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.6 + 0.3 * rand;
     push @d, 0.2 + 0.2 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.8 + 0.2 * rand;
  }
  elsif ($classif == 2) {
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.4 + 0.4 * rand;
     push @d, 0.3 + 0.2 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.6 + 0.2 * rand;
     push @d, 0.8 + 0.2 * rand;
  }
  else               {
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.4 + 0.4 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.7 + 0.3 * rand;
     push @d, 0.8 + 0.2 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.8 + 0.2 * rand;
  }

  my $d = join ',', @d;
  my $s = int(3*rand);

  if    ($s == 0) {
    print $file rand , "," , rand , ",$d\n";
  }
  elsif ($s == 1) {
    print $file rand , ",$d," , rand , "\n";
  }
  else {
    print $file "$d,", rand , "," , rand , "\n";
  }

}
