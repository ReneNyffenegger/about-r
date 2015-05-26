#
#  Standard distribution (or deviation?)

d <- rnorm(10000, 10, 4)
#
#  We expect a result of ca 4 because the 3rd 
#  argument to rnorm is the standard deviation
#
sd(d)

#
#  The standard deviation can also be more verbosely
#  be expressed like so:
#
m <- mean(d)
sqrt(sum((d - m)^2) / (length(d)-1))

