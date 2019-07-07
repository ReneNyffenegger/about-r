library(lobstr)

ast( if (x > y) yes() else no() );
#
#  o-`if` 
#  +-o-`>` 
#  | +-x 
#  | \-y 
#  +-o-yes 
#  \-o-no 
