#
#  % … % allows to create user defined binary operators
#
#  Some are already defined, for example
#    %/% : integer division
#    %*% : Matrix mulitplication
#


# Defining my own binary operator. Note the apostrophes:
'%foo%' <- function (x, y) {

  (x-y)*min(x,y)
  
}

7 %foo% 5
# [1] 10

7 %foo% 3
# [1] 12
