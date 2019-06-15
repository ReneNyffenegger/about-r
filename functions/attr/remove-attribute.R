three <- 3;
attr(three, 'A') <- 'foo';
attr(three, 'B') <- 'bar';
attr(three, 'C') <- 'baz';

attr(three, 'B') <- NULL;
attributes(three);
#
# $A
# [1] "foo"
# 
# $C
# [1] "baz"
