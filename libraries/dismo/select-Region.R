library(dismo )

x11()

map <- gmap('Switzerland', type='satellite')
plot(map)

# Click twice on drawn map
area <- drawExtent()
map  <- gmap(area)
plot(map)

z <- locator(1)
