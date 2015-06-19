var_1 <- 42
var_2 <- sqrt(var_1)
var_3 <- var_2 * var_2
var_4 <- var_3 * var_2

ls()
# [1] "var_1" "var_2" "var_3" "var_4"

rm ( list = c("var_1", "var_3") )

ls()
# [1] "var_2" "var_4"

#
#   Get rid of everything:
#
rm ( list = ls() )

ls()
# character(0)
