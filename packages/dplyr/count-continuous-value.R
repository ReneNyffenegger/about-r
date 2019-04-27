library(dplyr)
library(ggplot2)

df <- read.table (
  header = TRUE,
  text   = 'item val
foo  17
bar  39
foo  22
bar  18
foo  31
baz  24
foo  24
bar  19
baz  17
foo  21
bar  31
baz  22
bar  11
foo  23'
)

df %>% count(cut_width(val, 5))
#
#   # A tibble: 6 x 2
#     `cut_width(val, 5)`     n
#     <fct>               <int>
#   1 [7.5,12.5]              1
#   2 (12.5,17.5]             2
#   3 (17.5,22.5]             5
#   4 (22.5,27.5]             3
#   5 (27.5,32.5]             2
#   6 (37.5,42.5]             1
#
