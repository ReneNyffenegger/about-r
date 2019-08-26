library(rgl)

open3d()

x <- sort(rnorm(1000))
y <-      rnorm(1000)
z <-      rnorm(1000) + atan2(x,y)

plot3d(x, y, z, col=rainbow(1000))
