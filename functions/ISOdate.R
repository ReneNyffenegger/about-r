year   <- 1970
month  <-    8
day    <-   28
hour   <-   22
minute <-   23
second <-    0

bd <- ISOdate(year, month, day, hour, minute, second)
bd
# [1] "1970-08-28 22:23:00 GMT"

class(bd)
# [1] "POSIXct" "POSIXt"
