library(ggmap)

x11()

set.seed(28870)

zuerich = geocode('Zürich')

rx=0.03
ry=0.02

coords <- data.frame(
  zuerich$lon + jitter(rx*sin(seq(0, 6, length=15)), 35),
  zuerich$lat + jitter(ry*cos(seq(0, 6, length=15)), 35)
)


map <- get_googlemap(
          center  = c(lon=zuerich$lon, lat=zuerich$lat),
          markers = coords,
          path    = coords,
          scale   = 2,
          zoom    =13)

ggmap(map, extent = 'device')

readLines('stdin', n=1)
