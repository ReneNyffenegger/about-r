x <- c(1:50)
y <- x/4 + cos(x/50.0*4.0*pi)

x11()

stripchart(y)

z <- locator(1) # wait for mouse click or enter pressed

foo <- c(10, 12, 17, 21)
stripchart(foo, vertical=TRUE, method="jitter")

z <- locator(1)

bar <- c(17, 17, 17, 19, 22, 22, 22, 22, 22, 23, 23, 27, 27, 31, 31, 31)
stripchart(bar, method='stack', xlab='Bar', pch=1, offset=1, cex=2)
z <- locator(1)
