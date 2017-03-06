library(oce)

X11()

t_start <- as.POSIXct("2017-02-25", tz='UTC')
t_end   <- t_start + 35 * 24 * 3600  # 35 days

tm <- seq(from = t_start,
           to  = t_end,
           by  = 10000
        )

moon     <- moonAngle(t=tm, longitude=-8, latitude=47)
fraction <- moon$illuminatedFraction

plot(tm, fraction, type="l", xlab="Day of 2013", ylab="Moon fraction")

grid()

# wait for mouse click or enter pressed
locator(1)
