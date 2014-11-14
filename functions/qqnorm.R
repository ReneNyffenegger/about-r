set.seed(42)

x <- rnorm(20, mean = 5, sd = 0.3)
show(x)

x11()

qqnorm(x)
qqline(x)

z <- locator(1) # wait for mouse click or enter pressed
