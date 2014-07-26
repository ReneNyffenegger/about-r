# Data Frames: Store vectors of different types

df <- data.frame(foo=c(  1,  2,  3),
                 bar=c( 11, 22, 33),
                 baz=c(111,222,333))
df
#   foo bar baz
# 1   1  11 111
# 2   2  22 222
# 3   3  33 333

df$bar
# [1] 11 22 33

df[2,3]
# [1] 222

df[c(2,3)]
#   bar baz
# 1  11 111
# 2  22 222
# 3  33 333

df[-c(2,3)] # note the -, exclude columns 2 and 3
#   foo
# 1   1
# 2   2
# 3   3
