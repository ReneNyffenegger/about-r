library(raster)
X11()

ch <- getData('GADM', country='CH', level=2)
zh <- ch[ch$NAME_1 == 'Zürich',]

pfungen <- data.frame(name="Pfungen", lon=8.6423 , lat=47.51394)

plot(zh, border='gray', col='light gray')
points(pfungen[, 2:3], col='red', pch=20)
text  (pfungen[, 2:3], labels= pfungen[,1], pos=4)

z <- locator(1)
