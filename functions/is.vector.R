#
#    is.vector() does not test if an object is a vector. Instead it returns
#    TRUE only if the object is a vector with no attributes apart from names.
#
#    Use
#      is.atomic(x) || is.list(x) 
#    to test if an object is actually a vector.
# 

is.vector( vector() )
# [1] TRUE

is.vector( c(1:10) )
# [1] TRUE

is.vector(  1:5    )
# [1] TRUE
