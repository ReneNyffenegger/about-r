library(rgl)
open3d()
plot3d( cube3d(col="green") )

M <- par3d("userMatrix")

movie3d(
  par3dinterp(
     userMatrix=list(M, rotate3d(M, pi/2, 1, 0, 0),
                        rotate3d(M, pi/2, 0, 1, 0) )
  ),
  dir     = '.',
  clean   = FALSE,
  duration= 4
)

readLines("stdin", n = 1)
