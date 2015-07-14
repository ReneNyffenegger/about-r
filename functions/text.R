X11()

x = c(0.9, 2.2, 2.9, 3.3, 3.8, 4.5, 5.1, 5.6, 6.2)
y = x^2

t = paste0(x, "^2 = ", y)

plot(x, y, pch=19, col="red" )
text(x, y, t     , col="blue", adj=c(-0.2, -0.2), cex=0.8)


z <- locator(1)
