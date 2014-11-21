#
#  Compare with -> colon operator
#
x11(width=20,height=10)

x <- seq(-5, 5, by=.1)

y <- sin(x)

plot(x,y)

# Wait for mouse click or enter pressed
z <- locator(1)
