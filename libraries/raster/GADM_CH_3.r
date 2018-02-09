library(raster)
X11()

ch <- getData('GADM', country='CH', level=3)
plot(ch, col=rainbow(length(ch)), border=0)

z <- locator(1)
