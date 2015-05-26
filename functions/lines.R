

x <- 0:10

y <- x*3 - 12 + rnorm(length(x), 0, 3)

x11()

plot (x, y, col=4)

lines(x, x*3-12, col=2)


z <- locator(1) # wait for mouse click or enter pressed
