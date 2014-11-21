p6 <- c(2, 3, 5, 7, 11, 13)
v  <- c(1, 2, 3, 4,  5,  6)

#
#
#
p6 * v
# [1]  2  6 15 28 55 78

# --------------

w <- 1:4
p6*w
# [1]  2  6 15 28 11 26
# Warning message:
# In p6 * w : longer object length is not a multiple of shorter object length
