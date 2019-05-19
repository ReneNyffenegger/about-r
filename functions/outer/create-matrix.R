x <- 0:2; # three columns
y <- 0:4; # five rows

m <- outer (
   y,     # First dimension:  the columns (y)
   x,     # Second dimension: the rows    (x)
   function (x, y)   x+2*y
);

class(m);
#
# "matrix"
#

dim(m);
#
# 3 5

print(m);
#
#      [,1] [,2] [,3]
# [1,]    0    2    4
# [2,]    1    3    5
# [3,]    2    4    6
# [4,]    3    5    7
# [5,]    4    6    8
