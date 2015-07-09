m <- matrix ( 
      c( 2, 1, 8, 5,
         7, 6, 3, 4,
         9, 3, 2, 8,
         1, 3, 7, 4),
      nrow  = 4,
      ncol  = 4,
      byrow = TRUE)

rownames(m) <- c('A', 'B', 'C', 'D')

dist(m)
#           A         B         C
# B  8.717798
# C  9.899495  5.477226
# D  2.645751  7.810250 10.246951
#
# The «closest» two rows are D and A
