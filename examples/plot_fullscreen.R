x <- seq (-3, 3, by=.1)
y <- sin (x*x)

X11()
plot(function(x) sin(x*cos(x)), -5, 5)
system("python plot_fullscreen.py")
z <- locator(1)
