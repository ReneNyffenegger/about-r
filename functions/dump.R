v <- c(5, 2, 99, 42)
w <- matrix( c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3)

dump(c("v", "w"), "c:\\temp\\dumped")

v <- NA
w <- NA

source("C:\\temp\\dumped")

v
# [1]  5  2 99 42

w
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
