#
#   S.a. ../examples/set_operations.R
#

a <- c(5, 2, 9, 6, 3, 8)
b <- c(   2,    6      , 7)

setdiff(a, b)
# [1] 5 9 3 8

a <- c(1, 1, 1, 2, 2, 2    , 4, 4, 4)
b <- c(1      , 2      , 3)
setdiff(a, b)
# [1] 4
