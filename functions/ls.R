#
#   See also  -> objects(), search()
#
var_1 <- 42
var_2 <- sqrt(var_1)
var_3 <- var_2 * var_2
.hidden <- "Not shown by ls"

ls()
# [1] "var_1" "var_2" "var_3"

ls(all.names = TRUE)
# [1] ".hidden" "var_1"   "var_2"   "var_3"

.hidden
# [1] "Not shown by ls"


ls('package:base')
#
#  Compare with apropos()
#
