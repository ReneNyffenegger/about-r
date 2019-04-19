df <- data.frame(
  col_1 = c(   1 ,    2 ,    3 ,    4 ,    5 ,    6 ,    7 ,    8 ),
  col_2 = c('Foo', 'Foo', 'Bar', 'Foo', 'Baz', 'Baz', 'Foo', 'Bar')
)
df.splitted <- split(df, 
          c(  'A',   'A',   'A',   'B',   'A',   'B',   'C',   'C')
)

df.splitted
seq(along=df.splitted)
# [1] 1 2 3
