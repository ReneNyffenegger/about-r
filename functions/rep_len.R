#
#   See also rep()
#

a <- 1:5

b <- rep_len(a, 12)

length(b)
# [1] 12

b
# [1] 1 2 3 4 5 1 2 3 4 5 1 2
