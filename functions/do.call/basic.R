func <- function(a,b) { a * b }
data <- list(c(7, 9, 2),
             c(6, 2, 8))

do.call(func, data)
# [1] 42 18 16
