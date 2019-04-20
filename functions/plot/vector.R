X11(width=5, height=3)

x <- 3*runif(20) + (1:20)

# png(file = 'img/vector.png', width=300, height=180)
par(mar=c(2, 2, 0.1, 0.1))
plot(x, type='l', col='#ff7733')
# dev.off()

# Wait for mouse click or enter pressed
z <- locator(1)
