library(ggmap)

x11()
qmap('Hauptbahnhof Zürich', zoom=18, source='osm')

readLines('stdin', n=1)
