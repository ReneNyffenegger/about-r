X11()

m <- outer (
     seq(0, 1, 0.01),
     seq(0, 1, 0.01),
     function (x,y)   10^y/10 + 0.6*sin(x/3) + 0.3*sin(x/9) + 0.1*sin(x/15)
)


filled.contour(
         m,
         col   = ( colorRampPalette(c('red', 'orange', 'blue') ))(20)
)

z <- locator(1)


x <- seq(-10, 10, length=200)
y <- seq(-10, 10, length=200)

z <- matrix (
  outer(x, y,
        function(x, y) {
          14 - 
          sqrt( (x+cos(y)/10) ^2 + (y - sin(x)/5) ^2) +
          cos((x-2)/3)*sin(x) + 
          cos((y-2)/4)*cos(y) +
        # 
          sqrt( (x+3) ^ 2 + (y/2-2) ^2)
        }
  ),
  nrow=length(x)
)

# filled.contour(z)
filled.contour(x,y,z,col=rainbow(200),nlevels=200)

locator(1)
