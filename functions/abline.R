x11()

x <- 1:10
y <- x^2

plot(x, y)


abline(h = mean  (y), col='blue') # h stands for horizontal
abline(h = median(y), col='red' )


z <- locator(1) # wait for mouse click or enter pressed

x <- seq(-5, 5, 0.5)

y <- 0.4*x*x + 4*x + 3 + runif(length(x), -2, 2)


plot(x,y)

fit <- lm(y~x)

abline(fit, col=2)

z <- locator(1) # wait for mouse click or enter pressed
