x = c('1', '2', '3')
y = c('4', '5', '6')

# x + y # Error in x + y : non-numeric argument to binary operator

as.numeric(x) + as.numeric(y)
# [1] 5 7 9
