f <- cut(1:4, 2*0:2)
class(f)
#
# [1] "factor"

levels(f)
#
# [1] "(0,2]" "(2,4]"

typeof(attr(f, 'levels'))
#
# [1] "character"
