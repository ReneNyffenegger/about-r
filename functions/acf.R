x11()

periods                 <-  5
observations_per_period <- 100
total_observations      <- periods * observations_per_period

x <- seq(0, 1, length=total_observations)

trend    <- 3+ (x+ 0.2)^2                              * 3
seasonal <-    sin(2*pi*x*periods)+cos(6*pi*x*periods) * 1 
random   <-    rnorm(length(x), mean=0, sd=1)          * 0.2

y <- trend + seasonal + random

acf(y)
z <- locator(1)
