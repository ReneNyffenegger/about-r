rating <- c( 7, 3, 2, 6, 9, 8, 5)
code   <- cut(rating, c(0, 3.5,  6.5, 10), labels = c('low', 'medium', 'high'))

data.frame (
  rating,
  code
)
#
#   rating   code
# 1      7   high
# 2      3    low
# 3      2    low
# 4      6 medium
# 5      9   high
# 6      8   high
# 7      5 medium
