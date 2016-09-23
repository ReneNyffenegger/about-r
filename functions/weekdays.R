dev_null <- Sys.setlocale("LC_TIME", "english")

weekdays( c(ISOdate(1970, 8, 28),
            ISOdate(2016, 9, 21)))
# [1] "Friday"    "Wednesday"

weekdays( ISOdate(2000, 1, 1) + 0:6)
# [1] "Saturday" "Saturday" "Saturday" "Saturday" "Saturday" "Saturday" "Saturday"
