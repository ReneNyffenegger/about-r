library(ggmap)

x11()
qmap('Hauptbahnhof Zürich', zoom=18, source='osm')

# TODO: http://stackoverflow.com/questions/40963761/how-do-i-make-an-r-script-wait-for-a-mouse-click
Sys.sleep(10)
