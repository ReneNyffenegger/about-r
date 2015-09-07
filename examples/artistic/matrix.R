#
#  Idea pilfered from http://gastonsanchez.com/work/rtist/matrix.html
#
x11()

par( bg='black', mar=c(0.05, 0.05, 0.05, 0.05))
plot(c(0,0), c(100, 100), xlim=c(0, 100), ylim=c(0,100))

for (x in 0:100) {

   y_ = sample(30:100, 1)

   points (
      rep(x, y_),
      100- 1:y_,
      pch=sample(letters, y_, replace=TRUE),
      col=hsv(0.35, 1, 1, runif(y_, 0.3)),
      cex=runif(y_, 0.3)
   )

}

z <- locator(1)
