set.seed(123)

r <- runif(10, -1, 1)
r
# [1] -0.46469398 -0.45269714  0.18161681  0.03550296  0.08549162  0.35735277
# [7]  0.47083597 -0.84420644  0.77130939  0.87615484

X11()

r <- runif(1000, 0, 1)

plot(1:1000, r)

z <- locator(1) # wait for mouse click or enter pressed

hist(r)

z <- locator(1) # wait for mouse click or enter pressed
