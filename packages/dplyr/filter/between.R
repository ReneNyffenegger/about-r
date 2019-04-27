library(dplyr)

df <- data.frame(
  col_1 = c('one', 'two', 'three', 'four', 'five'),
  col_2 = c( 7.2 ,  4.1 ,    1.8 ,   2.0 ,   6.2 )
)

filter(df,
  between(col_2, 2, 7)
)
