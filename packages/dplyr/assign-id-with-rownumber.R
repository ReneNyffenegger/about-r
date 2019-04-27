library(dplyr)

df <- data.frame(
  col_1 = c('foo', 'bar', 'foo', 'baz'),
  col_2 = c( 7.2 ,  1.8 ,  2.0 ,  4.1 )
)

df                          %>%
  mutate(id = row_number()) %>%  # Assign (unique) id with row_number
  select(id, col_1, col_2 )      # Re-order columns
