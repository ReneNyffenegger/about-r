dt_str <- "May 4 2016"

dummy <- Sys.setlocale(category = "LC_ALL", locale = "en_US.UTF-8")

#
# See ?strptime for a list of %-modifiers
#
dt_    <- strptime(dt_str, "%b %e %Y")

class(dt_)
# [1] "POSIXlt" "POSIXt"

dt_
# [1] "2016-05-04 CEST"

