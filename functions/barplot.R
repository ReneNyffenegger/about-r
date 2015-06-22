x11(width="28")
foo <- c(2, 1, 2, 4, 4, 1, 2, 2, 1, 3, 4, 2)

barplot(foo)
z <- locator(1) # wait for mouse click or enter pressed

barplot(table(foo))
z <- locator(1)

# ---- Prices

prices <- c(81, 76, 92)
names(prices) <- c('Foo', 'Bar', 'Baz')

barplot(prices, main='Prices', ylab='Euros')
z <- locator(1)

barplot(prices, main='Prices', ylab='Euros', ylim=c(70, 95), xpd=FALSE) # xpd: Should bars be allowed to go outside region?
z <- locator(1)


# ---- Temperatures

temperatures_august = round(rnorm(31, 18, 3.5), 1)

barplot(temperatures_august, names.arg=1:31, xlab="Day", ylab="Max Temp.")
z <- locator(1)

names(temperatures_august) <- 1:31
y_coords = barplot(temperatures_august)
text(y_coords, temperatures_august, labels=temperatures_august, pos=1)
z <- locator(1)
