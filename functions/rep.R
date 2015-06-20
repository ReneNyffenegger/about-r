#
#   See also rep_len()
#

foo <- 1:5

foo_x3 <- rep(foo, 3)

foo_x3
#  [1] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5

rep(foo, each=3)
#  [1] 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5

rep(c('foo', 'bar', 'baz'), c(2, 3, 1))
# [1] "foo" "foo" "bar" "bar" "bar" "baz"
