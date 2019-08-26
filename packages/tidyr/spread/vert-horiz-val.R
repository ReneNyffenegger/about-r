df <- data.frame (
   vert  = gl(4, 3,          , labels=c('Apple', 'Pear', 'Cherry', 'Orange')),
   horiz = gl(3, 1, length=12, labels=c('July', 'August', 'September')),
   val   = 1:12 + 22
);

df
#
#      vert     horiz val
# 1   Apple      July  23
# 2   Apple    August  24
# 3   Apple September  25
# 4    Pear      July  26
# 5    Pear    August  27
# 6    Pear September  28
# 7  Cherry      July  29
# 8  Cherry    August  30
# 9  Cherry September  31
# 10 Orange      July  32
# 11 Orange    August  33
# 12 Orange September  34

library(tidyverse)
pivot <- spread(df, key = horiz, value = val);

colnames(pivot);
#
# "vert"      "July"      "August"    "September"

rownames(pivot):
#
# "1" "2" "3" "4"

pivot
#
#     vert July August September
# 1  Apple   23     24        25
# 2   Pear   26     27        28
# 3 Cherry   29     30        31
# 4 Orange   32     33        34
