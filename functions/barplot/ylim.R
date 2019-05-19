      prices  <- c(  81 ,   76 ,   92 );
names(prices) <- c('Foo', 'Bar', 'Baz');

barplot(prices, main='Prices', ylab='Euros', ylim=c(70, 95), xpd=FALSE) # xpd: Should bars be allowed to go outside region?
