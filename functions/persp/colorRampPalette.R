x <- y <- seq(-10, 10, length = 50);

z <- outer(x, y,
       function(x,y) {
         0.3*sin(0.3*x) * 0.4*cos(0.23*y)
       });

nofColors <- 100;
colorFunc <- colorRampPalette(c('blue', 'red'));
colors_   <- colorFunc(nofColors); # Use underscore because identifier colors already taken.

#
# Assign value of each facet's center coordinates to z.centerValues.
#
# The minus excludes the respective row and column in the matrix, resulting in a matrix
# that has one row and column less than that of z.
#
z.centerValues <- (
   z[      -1  ,      -1  ] +
   z[      -1  , -ncol(z) ] +
   z[ -nrow(z) ,      -1  ] +
   z[ -nrow(z) , -ncol(z) ]
) / 4;

z.colorBin <- cut(z.centerValues, nofColors);

persp(x, y, z,
   theta  = 40,        # Rotation about z-axis, in degrees
   phi    = 35,        # Rotation about x-axis, in degrees
   expand =  1,        # Shrinking/growing of z values
   border = '#222222',
   col    =  colors_[z.colorBin],
   shade  =  0.2
);
