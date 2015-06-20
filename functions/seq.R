#
#  Compare with -> colon operator
#


seq(20, 41, by=4)
# [1] 20 24 28 32 36 40

seq(10, 26, length=4)
# [1] 10.00000 15.33333 20.66667 26.00000


x11(width=20,height=10)

x <- seq(-5, 5, by=.1)

y <- sin(x)

plot(x,y)

# Wait for mouse click or enter pressed
z <- locator(1)
