vec <- c('foo', 'bar', 'baz', 1, 2, 3);

#
#  Create a matrix from a vector:
#
mat <- matrix(vec, ncol=2);
mat;
#
#  vec <- c('foo', 'bar', 'baz', 1, 2, 3);
#  mat <- matrix(vec, ncol=2);
#  mat;

#
#  Create a vector again from the matrix:
#
c(mat);
#
#  "foo" "bar" "baz" "1"   "2"   "3" 


#
#  Same thing, but using byrow=TRUE
#
mat <- matrix(vec, ncol=2, byrow=TRUE)
mat;
#
#       [,1]  [,2] 
#  [1,] "foo" "bar"
#  [2,] "baz" "1"  
#  [3,] "2"   "3"  

#
#  Using c on a matrix gets the element
#  by iterating over the columns from
#  left to right and then for each element
#  in the column from top to bottom
#
c(mat);
#
#  "foo" "baz" "2"   "bar" "1"   "3" 
