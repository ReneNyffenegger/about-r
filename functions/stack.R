vec_1 <- 1:5
vec_2 <- c('foo', 'bar', 'baz')
vec_3 <- '?'

s <- stack(list(col_1 = vec_1, col_2 = vec_2, col_3 = vec_3))

s
#   values   ind
# 1      1 col_1
# 2      2 col_1
# 3      3 col_1
# 4      4 col_1
# 5      5 col_1
# 6    foo col_2
# 7    bar col_2
# 8    baz col_2
# 9      ? col_3
