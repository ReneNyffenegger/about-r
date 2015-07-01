#
#     http://stackoverflow.com/a/30970632/180275
#
x11()

x1 <- seq(50,200,length=1000)
a1 <- dnorm(x1,134,20)
b1 <- dnorm(x1,130,14)
c1 <- dnorm(x1,132,12)
d1 <- dnorm(x1,105,10)

dists <- list(a1,b1,c1,d1)

# specify color names then convert them to RGB+alpha values
col <- c("red","green","blue","yellow")
col.rgba <- rgb(t(col2rgb(col))/255, alpha=0.2)

plot(NA, NA, xlim=range(x1), ylim=range(unlist(dists)), xlab="Variable X", ylab="")

# loop through each distribution
for (i in 1:length(dists)) {
  lines(x1, dists[[i]], type='h', lwd=2, col=col.rgba[i]) # add shaded region
  lines(x1, dists[[i]], type='l') # add solid line at top
}

z <- locator(1) # wait for mouse click or enter pressed
