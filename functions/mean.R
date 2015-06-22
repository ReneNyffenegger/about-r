#   See also
#     -> summary()
#

d <- c (0:10)

mean(d)
# [1] 5

#
# The mean can also more verbosely be expressed like so:
#
sum(d) / length(d)
# [1] 5

d <- append(d, NA)

mean(d, na.rm=TRUE )
# [1] 5

mean(d, na.rm=FALSE)
# [1] NA
#

#
#      Trimmed mean:
#

e <- c(  12, 19, 36, 38, 39, 40, 42, 44, 66, 91)
mean(e, trim=0.2) # Trim 20% on either side
# [1] 39.83333
