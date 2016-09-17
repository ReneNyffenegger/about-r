#
#   See also  -> ls(), search()
#
var_1 <- 42
var_2 <- sqrt(var_1)
var_3 <- var_2 * var_2

objects()
# [1] "var_1" "var_2" "var_3"


objects('package:base')
#
#  Compare with apropos()
#
