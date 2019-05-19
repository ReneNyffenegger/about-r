x <- y <- seq(-1, 1, len=51);

grid <- outer(
        x,
        y,
        function(x, y) {
           sin(x) * exp(y)
        }
      );

filled.contour(grid, axes = FALSE, color.palette=rainbow, asp=1);
