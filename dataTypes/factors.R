vec <- c(1:10)
summary (vec)
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
#  1.00    3.25    5.50    5.50    7.75   10.00

fac <- factor(vec)
summary (fac)
#  1  2  3  4  5  6  7  8  9 10
#  1  1  1  1  1  1  1  1  1  1


is.factor(vec)
# [1] FALSE

is.factor(fac)
# [1] TRUE
