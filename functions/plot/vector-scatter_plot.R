X11(width=5, height=3)

x <- runif(20)
y <- runif(20) * x

# png(file = 'img/vector-scatter_plot.png', width=300, height=180)
par(mar=c(2, 2, 0.1, 0.1))
plot(x, y, type='p', pch=16, col='#ff7733')
# dev.off()

# Wait for mouse click or enter pressed
z <- locator(1)
