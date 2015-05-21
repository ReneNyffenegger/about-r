#
#    Compare with -> read.fwf (for reading «fixed width field» files).
#
#    Use -> names to show column-names of csv.
#


# Assume data.csv with a header and values
# to be seperated by commas (","):
data <- read.csv("data.csv")

cat("\n\n")

show(data)
#   col_1 col_2 col_3
# 1   foo   bar   baz
# 2   one   two three

cat("\n\n\n")

data$col_1
# [1] foo one
# Levels: foo one

cat("\n\n\n")

# Read a semicolon seperated file:
data_ssv <- read.csv("data-no-header.ssv", head=FALSE, sep=";")
show(data_ssv)
#
#       V1  V2     V3
# 1    foo bar    baz
# 2      1   2      3
# 3 orange     banana
