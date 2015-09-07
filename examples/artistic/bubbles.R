#
#  Idea pilfered from http://gastonsanchez.com/work/rtist/blue_bubbles.html
#

x11()

x        =rnorm(300)
y        =rnorm(300)
diameters=rnorm(300) * 4 + 2

par(bg='black', mar=c(0,0,0,0))
plot(1, 1, xlim=c(-2, 2), ylim=c(-2, 2))



points(x, y,
       pch  =19,
       cex  =diameters,
       col  =hsv(      0.7 + rnorm(300, 0, 0.03), 
                 alpha=0.5 + rnorm(300, 0, 0.1))
)

points (x, y,
        pch =19,
        cex =diameters/2,
        col =rgb(1,1,1,0.1))


z <- locator(1)
