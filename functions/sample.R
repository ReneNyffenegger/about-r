sample(1:10)
#  [1]  5  4 10  1  6  7  8  9  2  3


# Generate 100 zeroes or ones:
sample(c(0,1), 100, replace = TRUE)

cat ("\n\n")

# Make zeroes much more probable:
sample(c(0,1), 100, replace = TRUE, prob=c(0.9, 0.1))
