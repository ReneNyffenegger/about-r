m <- matrix( c(   1,    2,
                 11,   22,
                111,  222,
               1111, 2222),
              nrow=2)

m
#      [,1] [,2] [,3] [,4]
# [1,]    1   11  111 1111
# [2,]    2   22  222 2222

cat("\n\n")

t(m)
#      [,1] [,2]
# [1,]    1    2
# [2,]   11   22
# [3,]  111  222
# [4,] 1111 2222

colnames(m) <- paste('Col ', seq(1,4))
rownames(m) <- paste('Row ', seq(1,2))
t(m)
#        Row  1 Row  2
# Col  1      1      2
# Col  2     11     22
# Col  3    111    222
# Col  4   1111   2222
