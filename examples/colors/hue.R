X11()

hue <- seq (0, 1, by=1/40)

pie(
  rep(1, 40),
  labels= formatC(hue, digits=3, format='f'),
  cex   = 0.75,
  col   = hsv(hue, 1, 1),
  main  ='HSV (S=1, V=1)'
)

z <- locator(1)
