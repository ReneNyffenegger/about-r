library(stringr)

words <- c('foo bar baz', 'one two three four')

# extract second words
word(words, 2)
# [1] "bar" "two"


# extract last words
word(words, -1)
# [1] "baz"  "four"
