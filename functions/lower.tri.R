#
#   S.a. -> upper.tri
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

lower.tri(m)
#       [,1]  [,2]  [,3]  [,4]  [,5]  [,6]  [,7]
# [1,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
# [2,]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
# [3,]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
# [4,]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE
# [5,]  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE

cat("\n\n")

m[lower.tri(m)] = 0
m
#      [,1] [,2] [,3] [,4] [,5] [,6] [,7]
# [1,]   42   42   42   42   42   42   42
# [2,]    0   42   42   42   42   42   42
# [3,]    0    0   42   42   42   42   42
# [4,]    0    0    0   42   42   42   42
# [5,]    0    0    0    0   42   42   42
