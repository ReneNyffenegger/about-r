df <- data.frame(
  col_1 = c(   1 ,    2 ,    3 ,    4 ,    5 ,    6 ,    7 ,    8 ),
  col_2 = c('Foo', 'Foo', 'Bar', 'Foo', 'Baz', 'Baz', 'Foo', 'Bar')
)

sp <- split(df, df$col_2)

typeof(sp)
# [1] "list"

names(sp)
# [1] "Bar" "Baz" "Foo"

sp$Baz
#   col_1 col_2
# 5     5   Baz
# 6     6   Baz

sp2 <- split(df, c('A', 'A', 'A', 'B', 'A', 'B', 'B', 'A'))
sp2$B
#   col_1 col_2
# 4     4   Foo
# 6     6   Baz
# 7     7   Foo
