max( c( 4, 9, 7, 12, 3, 6) )
# [1] 12

vector_with_NA <- c( NA, NA, 5, 6, 4, NA )

max( vector_with_NA, na.rm=TRUE  )
# [1] 6

max( vector_with_NA, na.rm=FALSE )
# [1] NA

#
# If the parameter na.rm is not specified, it defaults to false:
#
max( vector_with_NA )
# [1] NA
