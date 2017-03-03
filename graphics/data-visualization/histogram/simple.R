x11()

set.seed(280872)

values <- c(rnorm(10000, 50, 30),
            rnorm( 5000,110, 15))        

hist(values)

# wait for mouse click or enter pressed
z <- locator(1)
