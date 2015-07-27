library(rgl)

open3d()


a  <- seq(0, 4*pi, length=100)

x <- sin(a)
y <- cos(a)
z <- a / max(a)

plot3d(x, y, z)

readLines("stdin", n = 1)
