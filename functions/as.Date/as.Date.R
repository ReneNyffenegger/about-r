a_date <- as.Date("2014-06-26")

a_date
# [1] "2014-06-26"

a_date + 1   # one day later
# [1] "2014-06-27"

another_date <- as.Date("08/28/1970", format="%m/%d/%Y")
another_date
# [1] "1970-08-28"

mode(a_date)
# [1] "numeric"

length(a_date)
# [1] 1

class(a_date)
# [1] "Date"
