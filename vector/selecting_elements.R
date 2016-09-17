vec <- 1:20

# Note: index is 1 based, not 0 based (as for example in
# Perl or C)
vec[4]
# [1] 4

vec[8:10]
# [1]  8  9 10

# Exclude specific elements (2, 4 and 6)
vec[c(-2,-4,-6)]
# [1]  1  3  5  7  8  9 10 11 12 13 14 15 16 17 18 19 20
