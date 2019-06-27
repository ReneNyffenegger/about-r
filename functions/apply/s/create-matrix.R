vec <- c('abc', 'd', 'ef');

mat <- sapply(
         vec,
         function(elem) {
            c(nchar(elem), toupper(elem))
         });

class(mat);
#
#  matrix

mat;
#
#       abc   d   ef  
#  [1,] "3"   "1" "2"
#  [2,] "ABC" "D" "EF"
