m <- matrix ( 1:6, nrow=3, byrow=TRUE)

dimnames(m) <- list( Rows=c('one', 'two', 'three'), Cols=c('A', 'B'))
m
#        Cols
# Rows    A B
#   one   1 2
#   two   3 4
#   three 5 6
