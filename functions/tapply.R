items <- data.frame (
  color = c('red', 'blue', 'blue', 'red', 'green', 'green', 'yellow', 'blue', 'green', 'yellow', 'red', 'blue', 'blue', 'green', 'red', 'yellow'),
  size  = c(   5 ,    10 ,    11 ,    6 ,     15 ,     16 ,      20 ,     9 ,     13 ,      18 ,    7 ,    14 ,     8 ,     13 ,    6 ,      18 )
)

items$color == 'red'

tapply(items$size, items$color, mean)
# 
#     blue    green      red   yellow 
# 10.40000 14.25000  6.00000 18.66667 
