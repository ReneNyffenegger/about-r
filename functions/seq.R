#
#  Compare with -> colon operator
#


seq(20, 41, by=4)
# [1] 20 24 28 32 36 40

seq(10, 26, length=4)
# [1] 10.00000 15.33333 20.66667 26.00000


# { Parameter along
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
# }

# { Using seq for a plot
x11(width=20,height=10)

x <- seq(-5, 5, by=.1)

y <- sin(x)

plot(x,y)

# Wait for mouse click or enter pressed
z <- locator(1)
# }
