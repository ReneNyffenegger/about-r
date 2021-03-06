a = c(0, 0, 0)
b = c(0, 0, 3)
c = c(0, 4, 3)

dist(rbind(a, b))
#   a
# b 3

cat("\n\n")

abc <- rbind (a, b, c)
dist(abc)
#   a b
# b 3
# c 5 4

# Interpretation:
# A's (euclidian) distance from b is 3, from c is 5.
# B's (euclidian) distance from c is 4

cat("\n\n")
dist(abc, 'manhattan')
#   a b
# b 3
# c 7 4

# -----------------------------------------

m <- matrix ( 
      c( 2, 1, 8, 5,
         7, 6, 3, 4,
         9, 3, 2, 8,
         1, 3, 7, 4),
      nrow  = 4,
      ncol  = 4,
      byrow = TRUE)

rownames(m) <- c('A', 'B', 'C', 'D')

cat("\n\n")
dist_m <- dist(m)
dist_m
#           A         B         C
# B  8.717798
# C  9.899495  5.477226
# D  2.645751  7.810250 10.246951
#
# The «closest» two rows are D and A

cat("\n\n")

as.matrix(dist_m)
#          A        B         C         D
# A 0.000000 8.717798  9.899495  2.645751
# B 8.717798 0.000000  5.477226  7.810250
# C 9.899495 5.477226  0.000000 10.246951
# D 2.645751 7.810250 10.246951  0.000000

cat("\n\n")

sort(dist_m)
