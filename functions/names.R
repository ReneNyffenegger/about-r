#
#    S.a. ../examples/having_a_look_at_data.R
#

l <- list(foo = 42, bar = 1:10, baz = 1:3 )

n <- names(l)
n
# [1] "foo" "bar" "baz"

# ----------------------------

v <- 1:4
names(v) <- c("one", "two", "three", "four")
v
#   one   two three  four
#     1     2     3     4

v["two"]
# two
#   2

v[c('two', 'four')]
# two four
#   2    4

cat("\n\n\n")


w <- read.csv("data.csv")
names(w)
# [1] "col_1" "col_2" "col_3"
