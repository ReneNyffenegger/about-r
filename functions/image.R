X11()

smiley <- matrix (
        c(9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
          9, 9, 9, 1, 1, 1, 1, 9, 9, 9,
          9, 9, 2, 9, 9, 9, 9, 3, 9, 9,
          9, 2, 9, 9, 9, 2, 9, 9, 4, 9,
          9, 9, 9, 9, 9, 2, 9, 9, 9, 9,
          9, 9, 9, 9, 9, 6, 9, 9, 9, 9,
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
          9, 9, 2, 5, 2, 9, 9, 4, 2, 9,
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9
        ),
        nrow=10
)

image(smiley)

z <- locator(1)

# ------------------------------------

m <- outer (
  
      seq(-10, 10, length.out=200),
      seq(-10, 10, length.out=200),
      function (x, y) {
         sin(x) + cos(y)
      }
)

image(m)
z <- locator(1)


x <- seq(-10, 10, length=200)
y <- seq(-10, 10, length=200)

z <- matrix (
  outer(x, y,
        function(x, y) {
          14 - 
          sqrt( (x+cos(y)/10) ^2 + (y - sin(x)/5) ^2) +
          cos((x-2)/3)*sin(x) + 
          cos((y-2)/4)*cos(y) +
        # 
          sqrt( (x+3) ^ 2 + (y/2-2) ^2)
        }
  ),
  nrow=length(x)
)

image(z)

locator(1)
