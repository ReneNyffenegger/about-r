X11()

#           |     |    |
v <- c(3, 3, 4, 5, 5, 8, 11, 14)

boxplot(v)


z <- locator(1) # wait for mouse click or enter pressed

d <- data.frame (
  c1 = rnorm (100, mean =  5, sd = 0.3),
  c2 = rnorm (100, mean =  7, sd = 4.0),
  c3 = rnorm (100, mean =  2, sd = 2.0),
  c4 = rnorm (100, mean =  4, sd = 3.0)
)


boxplot(d)

z <- locator(1) # wait for mouse click or enter pressed
