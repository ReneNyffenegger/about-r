# 0 seconds after 1970-01-01 in timezone UTC:
#
dt <- as.POSIXct('1970-01-01 00:00:00', format='%Y-%m-%d %H:%M:%S', tz='UTC')
as.numeric(dt)
#
# [1] 0

# 1 hours, 2 minutes and 3 seconds are 3600 + 120 + 3 seconds = 3723 seconds:
dt <- as.POSIXct('1970-01-01 01:02:03', format='%Y-%m-%d %H:%M:%S', tz='UTC')
as.numeric(dt)
#
# [1] 3723
