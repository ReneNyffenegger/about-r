library(maps)

coordinates <- data.frame (
  lon = c(-118, -28,  30, 68, 82, -13),
  lat = c(   5, - 8, -45,  0, 42,  78)
)

png('img/coordinates.png', width=600, height=300)
map('world', col="#ccdee1", fill=TRUE,  mar=rep(0,4), lwd=0.01)
points(
   x  = coordinates$lon,
   y  = coordinates$lat,
   col='#ff7722',
   cex= 1.2,
   pch= 16
)
text(
   paste(coordinates$lon, ' /', coordinates$lat),
   x   = coordinates$lon,
   y   = coordinates$lat,
   pos = 4,
   cex = 1.2
)
