dt <- ISOdate(2016, 9, 23)

Sys.setlocale("LC_TIME","English")
# [1] "English_United States.1252"

weekdays(dt)
# [1] "Friday"

Sys.setlocale("LC_TIME", "French")
# [1] "French_France.1252"

weekdays(dt)
# [1] "vendredi"
