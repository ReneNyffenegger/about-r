library (reshape2)

d <- data.frame (
   foo = c(    1 ,      42 ,  -13 ,    99 ),
   bar = c('good', 'better', 'and', 'best'),
   baz = c(   17 ,      22 ,   13 ,    18 )
)

d

cat("\n\n")

melt(d)
# Using bar as id variables
#      bar variable value
# 1   good      foo     1
# 2 better      foo    42
# 3    and      foo   -13
# 4   best      foo    99
# 5   good      baz    17
# 6 better      baz    22
# 7    and      baz    13
# 8   best      baz    18
