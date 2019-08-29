n      <- c (876, 54, 3, 10, 100, 99, 999)
digits <- cut(n, c(1, 9, 99, 999), labels=FALSE)

digits
#
# [1] 3 2 1 2 3 2 3

class(digits)
#
# [1] "integer"
