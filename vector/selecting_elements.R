vec <- 1:10

# Note: index is 1 based, not 0 based (as for example in
# Perl or C)
vec[4]
# [1] 4

vec[7:9]
# [1] 7 8 9

# Exclude specific elements (2, 4 and 6)
vec[c(-2,-4,-6)]
# [1]  1  3  5  7  8  9 10

# Select elements with TRUE (and excluding others with FALSE):
vec[c(FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE)]
# [1]  2  5  6  7  8 10

# Same idea, but generating TRUE/FALSE
vec[vec <= 5]
# [1] 1 2 3 4 5

# Select all elements that are greater than the mean of the vector:
vec[vec > mean(vec)]
# [1]  6  7  8  9 10

# selecting elements by name
names(vec) <- c('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten')
vec[c('two', 'seven', 'three')]
#   two seven three
#     2     7     3
