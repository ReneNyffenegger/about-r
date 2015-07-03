#
#    See also -> resid
#
x <- c(25, 23, 22, 18, 29, 19, 24, 28, 21, 26, 23, 31, 26, 27, 30, 24, 22)

A =   3
B =  -4
E = rnorm(length(x), mean = 0, sd = 3)

y <- A + B*x + E

X11()
plot (x, y, col='red', pch=16)

fit <- lm (y~x)

points(x, fitted(fit), col='blue', pch=16)
abline(coef(fit)[1], coef(fit)[2], col='blue')

z <- locator(1)
