#
#   S.a. ../examples/printing_characters.R
#

sprintf("%.3f", pi)
# [1] "3.142"

sprintf("%5.2f", pi)
# [1] " 3.14"

sprintf("%+f", pi) # with sign
# [1] "+3.141593"

sprintf("%-10f", pi) # left adjustment
# [1] "3.141593  "
