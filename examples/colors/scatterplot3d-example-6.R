#
#   ?scatterplot3d::scatterplot3d
#   -> example 6
#   by Martin Maechler

library(scatterplot3d)

X11()

cubedraw <- function(res3d, min = 0, max = 255, cex = 2, text. = FALSE) {
  # Purpose: Draw nice cube with corners
  cube01 <- rbind(c(0,0,1), 0, c(1,0,0), c(1,1,0), 1, c(0,1,1), # < 6 outer
                  c(1,0,1), c(0,1,0)) # <- "inner": fore- & back-ground

  cub <- min + (max-min)* cube01

  # visibile corners + lines:
  res3d$points3d(cub[c(1:6,1,7,3,7,5) ,], cex = cex, type = 'b', lty = 1)

  # hidden corner + lines
  res3d$points3d(cub[c(2,8,4,8,6),     ], cex = cex, type = 'b', lty = 3)

  if (text.) # debug
      text(res3d$xyz.convert(cub), labels=1:nrow(cub), col='tomato', cex=2)
}

# 6 a) The named colors in R, i.e. colors()
cc <- colors()
crgb <- t(col2rgb(cc))
par(xpd = TRUE)
rr <- scatterplot3d(crgb, color = cc, box = FALSE, angle = 24,
    xlim = c(-50, 300), ylim = c(-50, 300), zlim = c(-50, 300)
)

cubedraw(rr)

z <- locator(1)

# 6 b) The rainbow colors from rainbow(201)
rbc <- rainbow(201)
Rrb <- t(col2rgb(rbc))
rR <- scatterplot3d(Rrb, color = rbc, box = FALSE, angle = 24,
    xlim = c(-50, 300), ylim = c(-50, 300), zlim = c(-50, 300))
cubedraw(rR)
rR$points3d(Rrb, col = rbc, pch = 16)

z <- locator(1)
