x11(width=5,height=3)

x <- seq(0, 30, by=.1)
y <- exp(-x*0.2) * sin(x)

# png(file = 'img/x-y-plot.png', width=300, height=180)
par(mar=c(2, 2, 0.1, 0.1))
plot(x, y, type='l')
# dev.off()

# Wait for mouse click or enter pressed
z <- locator(1)
