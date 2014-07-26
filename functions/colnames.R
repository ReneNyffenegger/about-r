
col_1 <-  c(   1 ,    2 ,    3 )
col_2 <-  c("foo", "bar", "baz")

c <- cbind(col_1, col_2)

colnames(c) <- c("Num", "Ident")

c
#      Num Ident
# [1,] "1" "foo"
# [2,] "2" "bar"
# [3,] "3" "baz"
