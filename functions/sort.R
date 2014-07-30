v <- c (5, 3, 6, 1, NA, 2, 7, 4 )

sort(v)
# [1] 1 2 3 4 5 6 7

sort(v, decreasing=TRUE)
# [1] 7 6 5 4 3 2 1

sort(v, na.last=TRUE)
# [1]  1  2  3  4  5  6  7 NA

sort(v, na.last=FALSE)
# [1] NA  1  2  3  4  5  6  7

sort(v, na.last=NA)
# [1] 1 2 3 4 5 6 7

is.unsorted(v)
# [1] NA

w<-sort(v)
is.unsorted(w)
# [1] FALSE
