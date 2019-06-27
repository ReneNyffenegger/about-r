library(foreach);

squares <- foreach( i = 1:10 ) %do% {
  i^2;
}

typeof(squares);
#
#  "list"


as.integer(squares);
#
#   1   4   9  16  25  36  49  64  81 100
