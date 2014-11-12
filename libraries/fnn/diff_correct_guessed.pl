use warnings;
use strict;

open my $correct, '<', 'correct.txt' or die;
open my $guessed, '<', 'guessed.txt' or die;

my @correct = <$correct>;
my @guessed = <$guessed>;

close $correct;
close $guessed;

chomp @correct;
chomp @guessed;

if (@correct != @guessed) {
  die "correct: " . scalar (@correct) . ', guessed: ' . scalar(@guessed);
}

my $nok_counter = 0;
for my $c (@correct) {
  my $g = shift @guessed;

  print "$c $g";

  if ($c != $g) {
    print " NOK";
    $nok_counter ++;
  }

  print "\n";
}

print "NOKs found: $nok_counter\n";


