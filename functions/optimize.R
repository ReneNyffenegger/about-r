#
#  Find minimum of function between x1 and x2
#

f <- function(x) { 0.9*(x-1)^2 + 2*(x+1) + x -4 }

X11()

curve(f, -3, 3)
z <- locator(1)


optimize(f, interval=c(-3, 3))
#
# $minimum
# [1] -0.6666667
# 
# $objective
# [1] -1.5
