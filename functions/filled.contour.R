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
