#
#    Compare with -> with and -> detatch
#
df <- data.frame(foo=c(  1,  2,  3),
                 bar=c( 11, 22, 33),
                 baz=c(111,222,333))

names(df)
# [1] "foo" "bar" "baz"

sum (df$bar)
# [1] 66

attach(df)

sum(bar)
# [1] 66


# { attach creates a copy of the data
#   The mulitplication of bar doesn't
#   affect df$bar:

bar = bar * 2

df$bar
# [1] 11 22 33

# }

detach(df)

# After detach'ing df, the variable foo is not available
# anymore. However, bar is, because it was modified
# earlier.

# foo  # Error: object 'foo' not found

bar
# [1] 22 44 66
