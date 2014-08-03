#
#    Reads a «fixed width value» file.
#
#    Compare with -> read.csv
#

data <- read.fwf("data.fixed_width", width=c(5, 7, 7, 5), header=FALSE, col.names=c('col 1', 'col 2', 'col 3', 'col 4'))

show(data)

#   col.1   col.2   col.3 col.4
# 1 foo   bar     baz       qux
# 2 one   two     three    four
# 3 12345 abcdefg 7654321 fedcb
