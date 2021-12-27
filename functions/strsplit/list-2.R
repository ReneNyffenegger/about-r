splits <- strsplit(c('foo bar baz', 'one two three four'), ' ')
length(splits)
#
# 2

splits[[2]][3]
#
# [1] "three"
