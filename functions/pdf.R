setwd("C:/temp")

pdf ("test.pdf")

hist(rnorm(10000, 0, 1), 20)
hist(rnorm(10000, 0, 4), 40)

dev.off()
