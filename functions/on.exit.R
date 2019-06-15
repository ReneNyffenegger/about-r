f_two <- function() {
  on.exit(print('f_two exited'));

  print('I am in f_two');
}

f_one <- function() {
  on.exit(print('f_one exited'));

  print('I am in f_one and am going to call f_two');
  f_two();
}

f_one();
#
#  I am in f_one and am going to call f_two
#  I am in f_two
#  f_two exited
#  f_one exited
