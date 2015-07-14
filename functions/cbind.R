# cbind stands for «column-bind». See also -> rbind

a <- 100:104
b <- 10 + 5*0:4
c <- c(17, 13, 22, 21, 18)

mat <- cbind(a, b, c)

mat
#        a  b  c
# [1,] 100 10 17
# [2,] 101 15 13
# [3,] 102 20 22
# [4,] 103 25 21
# [5,] 104 30 18

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
