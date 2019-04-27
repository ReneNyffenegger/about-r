library(dplyr)

df <- data.frame (
  item = c('foo', 'bar', 'foo', 'foo', 'bar', 'foo', 'baz', 'bar'),
  val  = c(   4 ,    7 ,    3 ,    3 ,    5 ,    6 ,    5 ,    4 )
)

df %>% count(item)
#   
#   # A tibble: 3 x 2
#     item      n
#     <fct> <int>
#   1 bar       3
#   2 baz       1
#   3 foo       4
#
