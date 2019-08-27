df <- data.frame (
  col_1 = c(  2 ,  3 ),
  col_2 = c(  5 ,  7 ),
  col_3 = c( 11 , 13 )
);

mx <- matrix(
        c(2, 3, 5, 7, 11, 13),
        nrow=2
      );

df
#
#   col_1 col_2 col_3
# 1     2     5    11
# 2     3     7    13

mx
#
#      [,1] [,2] [,3]
# [1,]    2    5   11
# [2,]    3    7   13

identical(df, mx)
#
# [1] FALSE

attributes(df)
#
# $names
# [1] "col_1" "col_2" "col_3"
#
# $class
# [1] "data.frame"
#
# $row.names
# [1] 1 2

attributes(mx)
#
# $dim
# [1] 2 3

length(df)
#
# [1] 3

length(mx)
#
# [1] 6
