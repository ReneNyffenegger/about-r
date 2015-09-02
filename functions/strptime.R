dt_str <- "May 4 2016"

#  does that work on windows only? See http://stackoverflow.com/a/22927566/180275
dummy <- Sys.setlocale(category = "LC_ALL", locale = "English_United States.1252")

#
# See ?strptime for a list of %-modifiers
#
dt_    <- strptime(dt_str, "%b %e %Y")

dt_
# [1] "2016-05-04 CEST"

