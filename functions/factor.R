g <- c(1,2,3,1,4,1,5,4)
summary(g)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
#   1.000   1.000   2.500   2.625   4.000   5.000

cat("\n\n")
f <- factor(g)
summary(f)
# 1 2 3 4 5
# 3 1 1 2 1
