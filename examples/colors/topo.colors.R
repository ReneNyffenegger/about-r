#
#  Compare with ->heat.colors, ->rainbow, ->terrain.colors
#

X11()

drawRainbow <- function(n) {

  barplot(
    rep(1,n),
    col=topo.colors(n),
    yaxt='n')
  
  z <- locator(1)
}

drawRainbow (  4)
drawRainbow ( 10)
drawRainbow ( 20)
drawRainbow ( 40)
