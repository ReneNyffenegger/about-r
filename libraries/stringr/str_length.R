library(stringr)

words <- c('Foo', NA, 'Bar', 'Baz')

str_length(words)
# [1]  3 NA  3  3

nchar     (words)
# [1] 3 2 3 3

# { converting factors to characters

f = factor(c(1, 2, 1, 3, 2), labels = c('foo', 'barr', 'bazzz'))
str_length(f)
# [1] 3 4 3 5 4

# nchar(f)
# Error in nchar(f) : 'nchar()' requires a character vector

# }
