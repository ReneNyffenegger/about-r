v <- c( 1:10, 12:15, 20)

is.unsorted(v)
# [1] FALSE

w <- c(12:15, 1:10, 20)
is.unsorted(w)
# [1] TRUE

u <- sort(v)
is.unsorted(u)
# [1] FALSE
