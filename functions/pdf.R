setwd("C:/temp")

pdf ("test.pdf")

hist(rnorm(10000, 0, 1), 20)

# It seems that messages don't go into the pdf:
message("Do messages work, too?")

hist(rnorm(10000, 0, 4), 40)

dev.off()
