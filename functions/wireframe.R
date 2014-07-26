#
#  TODO Should this file not be under a special
#       folder named package/lattice?
#
x <- seq(-1, 1, by=0.1)
y <- x

options(width = 300)
z <- outer(x, y, FUN = function(x, y) { sin(x) * cos(y)})

x11()
library(lattice)
plot.new()
wireframe(z)
z <- locator(1) # wait for mouse click or enter pressed


