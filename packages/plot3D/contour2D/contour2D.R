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

library(plot3D)
contour2D(z)
