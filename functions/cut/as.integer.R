bucket <- cut( c( 4, 7 ), c(0, 5, 10) )

bucket
#
# [1] (0,5]  (5,10]
# Levels: (0,5] (5,10]

as.integer(bucket)
#
# [1] 1 2
