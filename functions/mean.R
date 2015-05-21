d <- c (0:10)

mean(d)
# [1] 5

d <- append(d, NA)

mean(d, na.rm=TRUE )
# [1] 5

mean(d, na.rm=FALSE)
# [1] NA
#


#   See also
#     -> summary
