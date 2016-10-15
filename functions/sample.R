set.seed(280870)


# Generate a random permutation of a vector:
sample(1:10)
# [1]  4  2  1  6 10  7  8  5  3  9

# get five «random» elements:
sample(1:10, 5)
# [1]  9  3  7  4 10

# Sample normally returns an element at most once. This can
# be changed with the replace argument.
#
# Generate 100 zeroes or ones:
sample(c(0,1), 100, replace = TRUE)
#  [1] 1 0 0 0 0 0 0 0 0 0 1 1 1 0 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 0 0 1 1
# [38] 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 1 0 0 0 0 1 0 1 1 1 0 0 1 0 0 1 0 1 1 1 1 1
# [75] 1 0 1 0 0 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0 1 1 0 0

cat ("\n\n")

# Make zeroes much more probable:
sample(c(0,1), 100, replace = TRUE, prob=c(0.9, 0.1))
#  [1] 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1
# [38] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
# [75] 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
