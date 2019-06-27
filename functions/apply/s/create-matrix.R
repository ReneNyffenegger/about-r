vec <- c('abc', 'd', 'ef');

mat <- sapply(
         vec,
         function(elem) {
            c(length(elem), toupper(elem))
         });

class(mat);
#
#  matrix

mat;
#
#       abc   d   ef  
#  [1,] "1"   "1" "1" 
#  [2,] "ABC" "D" "EF"
