#
#  Compare with lapply and rapply
#
m = matrix( c(   1,  19, 513,4173, 
                 8,  12, 281,6932,
                 7,  15, 801,7121),
             nrow=3,
             ncol=4)

m

apply(m, 1, max)            # 2nd parameter 1: per row
# [1] 4173 6932 7121

apply(m, 2, max)            # 2nd parameter 2: per column
# [1]  513 4173 6932 7121
