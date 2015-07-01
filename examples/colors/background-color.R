X11()

x <- seq(-1, 1, length.out=20)
y <- x^3-0.5*x

par(bg='light blue')
plot(x, y, pch=16, col='red', cex=1)

z <- locator(1)
