d <- data.frame (
  c1 = rnorm (100, mean =  5, sd = 0.3),
  c2 = rnorm (100, mean =  7, sd = 4.0),
  c3 = rnorm (100, mean =  2, sd = 2.0),
  c4 = rnorm (100, mean =  4, sd = 3.0)
)

X11()

boxplot(d)

z <- locator(1) # wait for mouse click or enter pressed
