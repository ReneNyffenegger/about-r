library(raster)
X11()

ch <- getData('GADM', country='CH', level=3)

# ch[ch$NAME_3 == 'Pfungen',]
# str(ch[ch$NAME_3 == 'Zell',])
# options(width=40)
# ch$NAME_3

colors = rep('#ffffff', length(ch))

colors[ch$NAME_3 == 'Pfungen'] = '#00ff00'
colors[ch$NAME_3 == 'Zell'   ] = '#ff0000' # Two villages by the same name!

plot(ch, col=colors, border=1)

z <- locator(1)
