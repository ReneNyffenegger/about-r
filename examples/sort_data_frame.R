df <- data.frame (
  col_1 = c('ABC', 'DEF', 'GHI', 'JKL', 'MNO'),
  col_2 = c(   5 ,    3 ,    4 ,    2 ,    6 ),
  col_3 = c( 'pq',  'vw',  'rs',  'xy',  'tu')
)

df
# 
#   col_1 col_2 col_3
# 1   ABC     5    pq
# 2   DEF     3    vw
# 3   GHI     4    rs
# 4   JKL     2    xy
# 5   MNO     6    tu

# sorting on col_2
df[order(df$col_2),]
#
#   col_1 col_2 col_3
# 4   JKL     2    xy
# 2   DEF     3    vw
# 3   GHI     4    rs
# 1   ABC     5    pq
# 5   MNO     6    tu
