#
#   Use mouse to click near a point, returns index of
#   corresponding point.
#
X11()

x = seq(0, pi, length.out=20)
y = sin(x)

plot(x,y)
i = identify(x,y)

z <- locator(1)

i
