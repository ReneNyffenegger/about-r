dt1 <- ISOdate(2019, 02, 03, 10, 12, 14)
dt2 <- ISOdate(2019, 02, 05, 11, 20, 30)

diff <- difftime(dt2, dt1)

diff
# Time difference of 2.047407 days

class (diff)
# [1] "difftime"
