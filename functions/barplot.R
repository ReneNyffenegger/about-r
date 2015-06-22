x11()
foo <- c(2, 1, 2, 4, 4, 1, 2, 2, 1, 3, 4, 2)

barplot(foo)
z <- locator(1) # wait for mouse click or enter pressed

barplot(table(foo))
z <- locator(1)


prices <- c(81, 76, 92)
names(prices) <- c('Foo', 'Bar', 'Baz')

barplot(prices, main='Prices', ylab='Euros')
z <- locator(1)

barplot(prices, main='Prices', ylab='Euros', ylim=c(70, 95), xpd=FALSE) # xpd: Should bars be allowed to go outside region?
z <- locator(1)
