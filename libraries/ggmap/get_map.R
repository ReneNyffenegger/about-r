library(ggmap)

x11()

# get_map() returns a specific raster object (a matrix of colors as hexadecimal strings):
wthur <- get_map('Winterthur', zoom=14)
str(wthur)
#  chr [1:1280, 1:1280] "#C4D5BC" "#C4D5BC" "#C4D5BC" "#C0D1B8" ...
#  - attr(*, "class")= chr [1:2] "ggmap" "raster"
#  - attr(*, "bb")='data.frame':  1 obs. of  4 variables:
#   ..$ ll.lat: num 47.2
#   ..$ ll.lon: num 8.28
#   ..$ ur.lat: num 47.8
#   ..$ ur.lon: num 9.16
#  - attr(*, "source")= chr "google"
#  - attr(*, "maptype")= chr "terrain"
#  - attr(*, "zoom")= num 10

# Once get_map() has been executed, ggmap can be invoked to plot the data.
ggmap(wthur)

# TODO: http://stackoverflow.com/questions/40963761/how-do-i-make-an-r-script-wait-for-a-mouse-click
Sys.sleep(10)
