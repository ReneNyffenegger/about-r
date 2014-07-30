#
#    Compare with -> attach
#
df <- data.frame(foo=c(  1,  2,  3),
                 bar=c( 11, 22, 33),
                 baz=c(111,222,333))

names(df)
# [1] "foo" "bar" "baz"

sum(df$bar)
# [1] 66

with(df, sum(bar))
# [1] 66

