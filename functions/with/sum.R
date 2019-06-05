df <- data.frame(foo=c(  1,  2,  3),
                 bar=c( 11, 22, 33),
                 baz=c(111,222,333))

sum(df$bar + df$baz)
# 732

with(
  df,
  sum(bar + baz)
)
# 732
