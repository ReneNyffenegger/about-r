
data <- data.frame (
  foo = c( 3, 9, 5, 4),
  bar = c( 4, 8, 6, 6),
  baz = c( 2, 7, 3, 4)
)

row.names(data) <- c('abc', 'def', 'ghi', 'jkl')

rbind(data, Total = colSums(data))
# 
#       foo bar baz
# abc     3   4   2
# def     9   8   7
# ghi     5   6   3
# jkl     4   6   4
# Total  21  24  16
