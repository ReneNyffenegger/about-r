pdt <- as.POSIXlt(ISOdate(2016, 8, 28))

pdt$mday
# [1] 28

pdt$mon + 1
# [1] 8

pdt$year + 1900
# [1] 2016

# wday weekday. 0 = Sunday, 6 = Saturday
pdt$wday
# [1] 0

# Day of the year (0-365)
pdt$yday

# Daylight savings time flag
pdt$isdst
# [1] 0
# [1] 240
