#
#    Compare with -> read.fwf
#

data <- read.csv("data.csv")

show(data)
#   col_1 col_2 col_3
# 1   foo   bar   baz
# 2   one   two three

data$col_1
# [1] foo one
# Levels: foo one
