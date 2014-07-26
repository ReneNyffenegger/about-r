c(4,6,8:11,14)
# [1]  4  6  8  9 10 11 14

-c(4,6,8:11,14)
# [1]  -4  -6  -8  -9 -10 -11 -14

c("foo", "bar", "baz") 
# [1] "foo" "bar" "baz"


v <- c(1, 2, 3)
v <- append(v, c(4, 5, 6))
v
# [1] 1 2 3 4 5 6

is.vector(v)
# [1] TRUE

dim(v)
# NULL
