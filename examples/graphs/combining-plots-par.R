X11()

x <- seq(-1, 1, length.out=50)

par(mfrow=c(3, 2)) # 3 rows, 2 columns

plot(x, sin(x*3))
plot(x, cos(x))
plot(x, x^2-0.5*x)
plot(x, 10^x/10)
plot(x, 0.5*sin(x) + 0.25*(sin(3*x)) + 0.125*(sin(5*x)))
plot(x, -x)

z <- locator(1)
