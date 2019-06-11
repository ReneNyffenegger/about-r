n <- 3
k <- 7

a <- 1
b <- 1

for (i in 1:n) {
  a <- a *  i
  b <- b * (k-i+1)
}

paste0('choose(', k, ',', n, '), alternatively calculated: ', b/a)
#
#   choose(7,3), alternatively calculated: 35
