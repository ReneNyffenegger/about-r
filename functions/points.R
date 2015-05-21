x2 <- c(-10:20)
y2 <- x2*x2/4 + 5*x2 + 3

x1 <- c(-15:25)
y1 <- x1*x1*x1/22 - x1*x1*1.505 + 11*x1 - 10

x11()

plot(x2, y2, col=2)

z <- locator(1) # wait for mouse click or enter pressed


# Add a few new plots
# Note: doesn't resize the plot area!
points(x1, y1, col=3)


z <- locator(1) # wait for mouse click or enter pressed
