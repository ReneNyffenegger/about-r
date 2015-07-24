d <- data.frame ( 
   COL_1  = c('foo', 'bar', 'baz'),
   COL_2  = c(   1 ,    2 ,    3 ),
   COL_3  = c(  42 ,   99 ,  100 )
)

d
#   COL_1 COL_2 COL_3
# 1   foo     1    42
# 2   bar     2    99
# 3   baz     3   100

cat ("\n\n")

subset(d, COL_1 == 'bar' |  COL_3 ==100 )
#   COL_1 COL_2 COL_3
# 2   bar     2    99
# 3   baz     3   100
