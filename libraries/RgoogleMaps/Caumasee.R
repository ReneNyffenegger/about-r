library(RgoogleMaps)

map <- GetMap(
  center   = c(46.8202087, 9.2949988),
  zoom     =  16,
  destfile = "Caumasee.png", 
  maptype  = "satellite")
