vec <- c('foo', 'bar', 'baz');
attributes(vec);
#
#  NULL
#

fac <- factor(vec);
attributes(fac);
#
#  $levels
#  [1] "bar" "baz" "foo"
# 
#  $class
#  [1] "factor"
#
