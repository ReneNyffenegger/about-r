X11(width=5, height=3)

f <- factor(c('foo', 'bar', 'foo', 'baz', 'bar', 'foo', 'foo', 'bar'))

# png(file = 'img/factor.png', width=300, height=180)
par(mar=c(2, 2, 0.4, 0.4))
plot(f, col='#5522cc')
# dev.off()

z <- locator(1)
