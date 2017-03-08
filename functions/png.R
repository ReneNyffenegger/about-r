

#   Create first png file
#
x <- rnorm(10000)
png(file='rnorm_300x200.png', width=300, height=200)
hist(x)
invisible(dev.off())

#   Create second png file
#
x <- rnorm(50000)
png(file='rnorm_600x400.png', width=600, height=400)
hist(x)
invisible(dev.off())
