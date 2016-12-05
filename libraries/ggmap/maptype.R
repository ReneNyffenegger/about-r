library(ggmap)

x11()

qmap('Winterthur', zoom=14, source='google', maptype='terrain') # default for google
# TODO: http://stackoverflow.com/questions/40963761/how-do-i-make-an-r-script-wait-for-a-mouse-click
Sys.sleep(2)

qmap('Winterthur', zoom=14, source='google', maptype='satellite')
Sys.sleep(2)

qmap('Winterthur', zoom=14, source='google', maptype='roadmap')
Sys.sleep(2)

qmap('Winterthur', zoom=14, source='google', maptype='hybrid')
Sys.sleep(2)

#? qmap('Winterthur', zoom=14, source='stamen', maptype='terrain') # Doesn't seem to work (png instead of jpg?)
#? Sys.sleep(2)

# qmap('Winterthur', zoom=14, source='stamen', maptype='watercolor')
Sys.sleep(2)

qmap('Winterthur', zoom=14, source='stamen', maptype='toner')
Sys.sleep(2)

qmap('Winterthur', zoom=14, source='osm') # only one option
Sys.sleep(2)
