X11()

r1 <- rnorm(2000, mean =   10, sd =  0.1)
r2 <- rnorm(2000, mean = 1000, sd = 22.2)

qqplot(r1, r2)

z <- locator(1) # wait for mouse click or enter pressed
