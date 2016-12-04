library(RgoogleMaps)

map <- GetMap.bbox(
  lonR     = c( 8.3 ,  8.63),
  latR     = c(46.88, 47.09),
  destfile = "Vierwaltstaettersee.png", 
  maptype  = "terrain")
