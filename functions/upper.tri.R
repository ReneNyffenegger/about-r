#
#   S.a. -> lower.tri
#

m <- matrix ( rep(42, 7*5),
              nrow = 5)

m
#      [,1] [,2] [,3] [,4] [,5] [,6] [,7]
# [1,]   42   42   42   42   42   42   42
# [2,]   42   42   42   42   42   42   42
# [3,]   42   42   42   42   42   42   42
# [4,]   42   42   42   42   42   42   42
# [5,]   42   42   42   42   42   42   42

cat("\n\n")

upper.tri(m)
#       [,1]  [,2]  [,3]  [,4]  [,5] [,6] [,7]
# [1,] FALSE  TRUE  TRUE  TRUE  TRUE TRUE TRUE
# [2,] FALSE FALSE  TRUE  TRUE  TRUE TRUE TRUE
# [3,] FALSE FALSE FALSE  TRUE  TRUE TRUE TRUE
# [4,] FALSE FALSE FALSE FALSE  TRUE TRUE TRUE
# [5,] FALSE FALSE FALSE FALSE FALSE TRUE TRUE

cat("\n\n")

m[upper.tri(m)] = 0
m
#      [,1] [,2] [,3] [,4] [,5] [,6] [,7]
# [1,]   42    0    0    0    0    0    0
# [2,]   42   42    0    0    0    0    0
# [3,]   42   42   42    0    0    0    0
# [4,]   42   42   42   42    0    0    0
# [5,]   42   42   42   42   42    0    0
