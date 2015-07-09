#
#     S.a. ../examples/printing_characters.R
#

format(19.2, nsmall=3)
# [1] "19.200"

format(10 ^ (0:3), digits=4)
# [1] "   1" "  10" " 100" "1000"

v = sapply(0:5, function(x) paste0(rep('*', 1+2*x), collapse=""))
for (V in format(v, justify='centr')) 
  cat (V, "\n")
#      *
#     ***
#    *****
#   *******
#  *********
# ***********


format(9^10, big.mark = ",")
# [1] "3,486,784,401"
