#
#     How many sets with n elements can I choose from a set
#     with k elements:
#

n <- 3
k <- 7

choose(k, n)
# [1] 35

# Alternative calculation:
a <- 1
b <- 1

for (i in 1:n) {
  a <- a *  i
  b <- b * (k-i+1)
}

paste("alternatively calculated:",b/a)
# [1] "alternatively calculated: 35"
