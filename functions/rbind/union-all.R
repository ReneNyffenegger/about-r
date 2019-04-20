wf_1 <- data.frame(
  col_1 = c('Foo', 'Bar', 'Baz'),
  col_2 = c(  11 ,   22 ,   33 )
)

df_2 <- data.frame(
  col_1 = c('one', 'two', 'three'),
  col_2 = c(    1,    2 ,     3  )
)

df_1
#   col_1 col_2
# 1   Foo    11
# 2   Bar    22
# 3   Baz    33

df_2
#   col_1 col_2
# 1   one     1
# 2   two     2
# 3 three     3


#
#  Note, column names bust be the same for rbind to work,
#  otherwise «names do not match previous names» error is
#  thrown.
#
rbind (df_1, df_2)
#   col_1 col_2
# 1   Foo    11
# 2   Bar    22
# 3   Baz    33
# 4   one     1
# 5   two     2
# 6 three     3
