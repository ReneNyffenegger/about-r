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
