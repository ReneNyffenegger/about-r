#
# Compare with -> rank
#

v <- c ( 41, 18, 37, 26)
order(v)
# [1] 2 4 3 1

# Definition of order:
#  v[order(v)] is in increasing order:

v[order(v)]
# [1] 18 26 37 41

df <- data.frame(foo=c(  2,  3,  1),
                 bar=c( 22, 11, 22),
                 baz=c(111,333,222))


order(df$bar)
# [1] 2 1 3


df[order(df$bar)        , ] # NOTE! the empty parameter «, ]»
#   foo bar baz
# 2   3  11 333
# 1   2  22 111
# 3   1  22 222

order(df$bar, df$foo)
# [1] 2 3 1

df[order(df$bar, df$foo), ]
#   foo bar baz
# 2   3  11 333
# 3   1  22 222
# 1   2  22 111

df[order(df$bar, df$baz), ]
#   foo bar baz
# 2   3  11 333
# 1   2  22 111
# 3   1  22 222

df[order(df$bar, df$baz)  ]
#   bar foo baz
# 1  22   2 111
# 2  11   3 333
# 3  22   1 222

