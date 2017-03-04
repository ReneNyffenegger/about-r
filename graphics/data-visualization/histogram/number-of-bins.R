x11()

set.seed(280872)

values <- c(rnorm(10000, 50, 30),
            rnorm( 5000,110, 15))        

# Note the 2nd argument to specify the number of bins
hist(values, 40)

# wait for mouse click or enter pressed
z <- locator(1)
