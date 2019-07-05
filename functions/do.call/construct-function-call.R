f <- function(p_1 = 'foo', p_2 = 'bar', p_3 = 'baz') {

  print(paste('f was called with p_1 =', p_1, ', p_2 =', p_2, 'and p_3 =', p_3))

}

f(p_2 = 'X');
#
#  f was called with p_1 = foo , p_2 = X and p_3 = baz

#
#  Construct a function call

args <- list(
   p_2 = 'B',
   p_1 = 'A'
);

do.call(f, args);
#
#  f was called with p_1 = A , p_2 = B and p_3 = baz

#
#  The name of the function can by passed as a
#  string
#
func_name <- 'f';
do.call(func_name, args)

#
#  f was called with p_1 = A , p_2 = B and p_3 = baz
