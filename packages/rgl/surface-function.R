library(rgl);

open3d(windowRect=c(34, 57, 727, 707));

plot3d(
 # ----------------------------------------
   function(x, y) {
     ( ((x+1.1*y)^2) + (3*(y+0.09)^2) ) * exp(-(x^2)-(y^2 ))
   },
 # ----------------------------------------
   col    = colorRampPalette(c('#4499ff', '#ee9933')),
   xlab   = 'x',
   ylab   = 'y',
   zlab   = 'f(x,y)',
   xlim   = c(-3, 3),
   ylim   = c(-3, 3),
   aspect = c(1, 1, 0.5)
);

#
# After rotating the plot with the mouse,
# the matrix data can be determined with:
#
#   par3d()$userMatrix
#
view3d(
  userMatrix = matrix(
     c(
        0.8091025 ,  0.5799688 , -0.09481177 , 0,
       -0.1589791 ,  0.3713353 ,  0.91478717 , 0,
        0.5657551 , -0.7250838 ,  0.39265123 , 0,
        0.0000000 ,  0.0000000 ,  0.00000000 , 1
      ),
      nrow = 4,
      byrow = TRUE
    )
);
