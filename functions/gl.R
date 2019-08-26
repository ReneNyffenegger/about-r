f_1 <- gl(3, 4);

class(f_1);
#
# "factor"

as.numeric(f_1);
#
# 1 1 1 1 2 2 2 2 3 3 3 3

# ------------------------------------------------------------------------

f_2 <- gl(3, 4, labels = c('foo', 'bar', 'baz'));

as.character(f_2);
#
# "foo" "foo" "foo" "foo" "bar" "bar" "bar" "bar" "baz" "baz" "baz" "baz"

# ------------------------------------------------------------------------

f_3 <- gl(2, 1, length = 8, labels=c('yes', 'no'));

as.character(f_3);
#
# "yes" "no"  "yes" "no"  "yes" "no"  "yes" "no"
