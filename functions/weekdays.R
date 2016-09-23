dev_null <- Sys.setlocale("LC_TIME", "english")

weekdays( c(ISOdate(1970, 8, 28),
            ISOdate(2016, 9, 21)))
[1] "Friday"    "Wednesday"
