l <- c(1, 4, 2, NA, 3, 5)

sum(l)
# [1] NA

sum(l, na.rm=TRUE)
# [1] 15

#
#    See also -> cumsum
