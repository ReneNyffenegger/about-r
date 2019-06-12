df <- data.frame(
   col_one = c(   1 ,    2 ,      3 ),
   col_two = c('one', 'two', 'three')
);

for (col in df) {
   print('Iterating over a column (vector) of df');

  for (cell in col) {
     print(paste(' ', cell));
  }
}

#
# Iterating over a column (vector) of df
#    1
#    2
#    3
# Iterating over a column (vector) of df
#    one
#    two
#    three
#
