r <- runif(1000, -1, 1)

v <- r * r * sin(r)

x11()

hist(v, 
     breaks = 20,
     col    ="orange",
     main   ="Histogram",
     freq   = FALSE)



z <- locator(1) # wait for mouse click or enter pressed
