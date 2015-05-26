# rbind stands for «row-bind». See also -> cbind

a <- 100:104
b <- 10 + 5*0:4
c <- c(17, 13, 22, 21, 18)

mat <- rbind(a, b, c)

mat
#   [,1] [,2] [,3] [,4] [,5]
# a  100  101  102  103  104
# b   10   15   20   25   30
# c   17   13   22   21   18
