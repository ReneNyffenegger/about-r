X11(width=6, height=6)

set.seed(280870)

x <- c(4, 3, 1, 2, 2, 4, 6, 4, 5, 5, 4, 4, 5, 4, 4, 8, 4, 1, 2, 7)
y <- x * rnorm(20, 1, 0.3)
z <- x * y

df <- data.frame (x, y, z)

# png(file = 'img/data-frame.png', width=400, height=400)
par(mar=c(0.1, 0.1, 0.1, 0.1))
plot(df, col='#34b254', pch=16, cex=1.5)
# dev.off()

# Wait for mouse click or enter pressed
z <- locator(1)
