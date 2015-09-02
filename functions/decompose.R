x11()

periods            <-  5
observations_per_period <- 100
total_observations      <- periods * observations_per_period

x <- seq(0, 1, length=total_observations)

trend    <- 3+ (x+ 0.2)^2                              * 3
seasonal <-    sin(2*pi*x*periods)+cos(6*pi*x*periods) * 1 
random   <-    rnorm(length(x), mean=0, sd=1)          * 0.2

plot(trend, main='Trend', pch=19)
z <- locator(1)

plot(seasonal, main='Seasonal', pch=19)
z <- locator(1)
  
plot(random, main='Random', pch=19)
z <- locator(1)

y <- trend + seasonal + random

# Create a time series
y_ts = ts(y, frequency=observations_per_period)

plot (y_ts, main='Trend+Seasonal+Random', pch=19)
z <- locator(1)

y_dec = decompose(y_ts)
class(y_dec)
# [1] "decomposed.ts"

plot(y_dec)
z <- locator(1)
