

df_1 <- data.frame (
                 col_1 = c("Foo", "Bar", "Baz"),
                 col_2 = c(  11 ,   22 ,   33 ),
                 col_3 = c("abc", "def", "ghi") )

df_2 <- data.frame (
                 col_a = c("one", "two", "three"),
                 col_b = c(" X ", " Y ", " Z "  ) )


# combine by columns

df_3 <- cbind(df_1, df_2)

df_3
#   col_1 col_2 col_3 col_a col_b
# 1   Foo    11   abc   one    X
# 2   Bar    22   def   two    Y
# 3   Baz    33   ghi three    Z
