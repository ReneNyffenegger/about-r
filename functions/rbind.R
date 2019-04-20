# rbind stands for «row-bind». See also -> cbind

a <- 100:104
b <- 10 + 5*0:4
c <- c(17, 13, 22, 21, 18)

mat <- rbind(a, b, c)

class(mat)
# "matrix"

colnames(mat) <- c('val_1', 'val_2', 'val_3', 'val_4', 'val_5')

mat
#
#   val_1 val_2 val_3 val_4 val_5
# a   100   101   102   103   104
# b    10    15    20    25    30
# c    17    13    22    21    18
