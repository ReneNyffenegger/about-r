x <- c(1:10)
y <- x*x - 7*x - 20

x11()
plot(x, y, main="Plot Example", xlab="x", ylab="f(x)")

z <- locator(1) # wait for mouse click or enter pressed
