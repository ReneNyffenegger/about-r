#
#   ?scatterplot3d::scatterplot3d
#   -> example 1
#

library(scatterplot3d)

z <- seq(-10, 10, 0.01);
x <- cos(z);
y <- sin(z);

scatterplot3d(x, y, z,
   highlight.3d =  TRUE,
   col.axis     = 'blue',
   col.grid     = 'lightblue',
   main         = 'scatterplot3d - 1',
   pch          =  20
);
