library(rgl)

#
# volcano is a matrix that stores z values. Make this
# fact more explicit:
#
z <- volcano

#
# Two vectors that contain the «meters» from the zero point
# in x and y direction.
# A cell in the grid is 10x10 meters, so we need to multiply
# the vectors by 10:
#
x <- 10 * (1:nrow(z)) # Should that not be ncol?
y <- 10 * (1:ncol(z)) # Should that not be nrow?

z_min = min(z)

z_diff = max(z) - z_min + 1

height_to_color <- terrain.colors(z_diff)

colors <- height_to_color[ z - z_min + 1 ];

rgl.open()
rgl.bg(color='white');
par3d(windowRect=c(34, 57, 727, 707))
rgl.surface(x, y, z, color=colors);

view3d(
   userMatrix = matrix(
      c(
          0.9372320 , 0.0000000 ,  0.3487064 , 0,
          0.2481279 , 0.7026186 , -0.6669031 , 0,
         -0.2450076 , 0.7115667 ,  0.6585166 , 0,
          0.0000000 , 0.0000000 ,  0.0000000 , 1
      ),
      nrow = 4,
      byrow = TRUE
  )
)

rgl.bringtotop()
