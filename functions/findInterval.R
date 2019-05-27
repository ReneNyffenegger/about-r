#             |       |           |        |
ranges    <- c(0  ,  2.5     ,   6.5 ,  10 );
quality   <- c( 'low' , 'medium',   'high' )
#             |       |           |        |


values   <- c( 4, 1, 7, 8, 6);
intervals<- findInterval(values, intervals);

quality[intervals]
#
#  "medium" "low"    "high"   "high"   "medium"
