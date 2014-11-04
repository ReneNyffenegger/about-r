use warnings;
use strict;

open my $known,   '>', 'known.csv'   or die;
open my $unknown, '>', 'unknown.csv' or die;


for (my $i=0; $i<1000; $i++) {
  write_csv_line($known, 1);
}
for (my $i=0; $i<10; $i++) {
  write_csv_line($unknown, 0);
}


sub write_csv_line {

  my $file       = shift;
  my $with_what  = shift;

  my $what       = int(4 * rand);

  if ($with_what) {
    print $file "$what,";
  }
  else {
    print "$what\n";
  }


  my @d = ();
  if    ($what == 0) {
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.7 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand; 
     push @d, 0.6 + 0.3 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.5 + 0.4 * rand;
     push @d, 0.5 + 0.3 * rand;
  }
  elsif ($what == 1) {
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.6 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.6 + 0.3 * rand;
     push @d, 0.2 + 0.2 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.8 + 0.2 * rand;
  }
  elsif ($what == 2) {
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.4 + 0.3 * rand;
     push @d, 0.4 + 0.4 * rand;
     push @d, 0.3 + 0.2 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.6 + 0.2 * rand;
     push @d, 0.5 + 0.3 * rand;
  }
  else               {
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.3 + 0.3 * rand;
     push @d, 0.4 + 0.4 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.7 + 0.3 * rand;
     push @d, 0.8 + 0.2 * rand;
     push @d, 0.5 + 0.3 * rand;
     push @d, 0.5 + 0.3 * rand;
  }

  my $d = join ',', @d;
  my $s = int(3*rand);

  if    ($s == 0) {
    print $file "0,0,$d\n";
  }
  elsif ($s == 1) {
    print $file "0,$d,0\n";
  }
  else {
    print $file "$d,0,0\n";
  }

}
