x <- c(1:50)
y <- x/4 + cos(x/50.0*4.0*pi)

x11()

stripchart(y)

z <- locator(1) # wait for mouse click or enter pressed

foo <- c(10, 12, 17, 21)
stripchart(foo, vertical=TRUE, method="jitter")

z <- locator(1)
