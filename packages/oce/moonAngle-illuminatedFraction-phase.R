library(oce)

X11()

Sys.setlocale("LC_TIME", "en_US.UTF-8")

t_start <- as.POSIXct("2017-02-23", tz='UTC')
t_end   <- t_start + 75 * 24 * 3600  # 35 days

tm <- seq(from = t_start,
           to  = t_end,
           by  = 10000
        )

moon     <- moonAngle(t=tm, longitude=-8, latitude=47)
fraction <- moon$illuminatedFraction
phase    <- moon$phase - floor(moon$phase)

plot (tm, fraction, type="l", col='blue', xlab='', ylab='')
lines(tm, phase   , type="l", col='red' )

grid()

# wait for mouse click or enter pressed
locator(1)
