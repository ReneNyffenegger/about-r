#
#  The c stands for «combine» (or «concatenate»?)
#

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

# Subscripting the list, note the indeces
# are 1-based...
#
v[2]
# [1] 2

# The 0-entry (or index) indicates how the
# environment treats the date (here: as numeric)
#
v[0]
# numeric(0)

v[2:4]
# [1] 2 3 4

dim(v)
# NULL
