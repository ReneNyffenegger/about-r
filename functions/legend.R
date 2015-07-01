#
#   See also ../examples/graphs/legend.R
#

x       <- seq(-5, 5, 0.1)

y_norm  <- dnorm (x)
y_t     <- dt    (x,  1)
y_chisq <- dchisq(x,  0.5)

x11()

plot  (x, y_norm   , pch=2, col=2, xlab="x", ylab="distribution", main="Example for legend()")
points(x, y_t      , pch=3, col=3)
points(x, y_chisq  , pch=4, col=4)

legend(-4.8, 0.38, c("norm", "t", "chisq"), col=c(2,3,4), pch=c(2,3,4))

z <- locator(1) # wait for mouse click or enter pressed
