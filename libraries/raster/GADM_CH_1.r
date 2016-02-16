# require(graphics)
library(raster)
X11()

ch <- getData('GADM', country='CH', level=1)
plot(ch, col=rainbow(length(ch)), border=1)

z <- locator(1)
