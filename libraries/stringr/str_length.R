library(stringr)

words <- c('Foo', NA, 'Bar', 'Baz')

str_length(words)
# [1]  3 NA  3  3

nchar     (words)
# [1] 3 2 3 3
