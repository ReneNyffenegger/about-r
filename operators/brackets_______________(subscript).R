v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

v[4]
# [1] 4

v[3:6]
# [1] 3 4 5 6

v[6:3]
# [1] 6 5 4 3

v[-2]
# [1]  1  3  4  5  6  7  8  9 10
#
#   Note the 2nd element!
#

#  --- subscripting with boolean vectors:

cities <- c("New York", "Paris", "Tokyo", "Amsterdam", "Johannesburg", "Berlin", "Berne", "Frankfurt")
cityname.shorter.8 <- nchar(cities) < 8
cityname.shorter.8
# [1] FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE

cities[cityname.shorter.8]
# [1] "Paris"  "Tokyo"  "Berlin" "Berne"
