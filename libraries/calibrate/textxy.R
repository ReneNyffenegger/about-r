X11()

library(calibrate)

# Example from documentation {

x <- rnorm(50)
y <- rnorm(50)
plot(x,y,asp=1)
textxy(x,y,1:50,m=c(mean(x),mean(y)))

z <- locator(1)

# }

# http://stackoverflow.com/a/9500153/180275 {

x =     c(102856  , 17906 , 89697 , 74384 , 91081 , 52457 , 73749 , 29910 , 75604 , 28267 , 122136 , 54210 , 48925 , 58937 , 76281 , 67789 , 69138 , 18026 , 90806 , 44893)
y =     c(2818    , 234   , 2728  , 2393  , 2893  , 1015  , 1403  , 791   , 2243  , 596   , 2468   , 1495  , 1232  , 1746  , 2410  , 1791  , 1706  , 259   , 1982  , 836  )
names = c("A"     , "C"   , "E"   , "D"   , "G"   , "F"   , "I"   , "H"   , "K"   , "M"   , "L"    , "N"   , "Q"   , "P"   , "S"   , "R"   , "T"   , "W"   , "V"   , "Y"  )

plot  (x, y, main="Scatterplot ", xlab="xaxis ", ylab="yaxis ", pch=19)
textxy(x, y, labs=names, cex = 0.8, col = "blue", m = c(0, 0))

z <- locator(1)

# }

