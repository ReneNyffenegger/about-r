# rnorm: the normal distribution

n <- rnorm(1000000, mean = 100, sd = 36)

x11();
hist(n, breaks = 50, col = "orange", main = "rnorm")


z <- locator(1) # wait for mouse click or enter pressed
