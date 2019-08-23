x <- y <- seq(-10, 10, length = 50);

z <- outer(x, y,
       function(x,y) {
         r <- sqrt(x^2 + y^2)+3;
         sin(r)/r
       });

persp(x, y, z,
   theta  = 15,        # Rotation about z-axis, in degrees
   phi    = 40,        # Rotation about x-axis, in degrees
   expand =  1,        # Shrinking/growing of z values
   border = '#333333',
   col    = c('#bbddff', '#ddbbff'),
   shade  =  0.2
);
