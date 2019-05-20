days <- factor (c('Wed', 'Mon', 'Fri', 'Fri', 'Wed', 'Sun', 'Mon', 'Wed', 'Thu', 'Thu', 'Sat'),
                ordered = TRUE,
                levels = c('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat')
               );

attr(days, 'class');
#
#  "ordered" "factor"
#

table(days);
#
#  Sun Mon Tue Wed Thu Fri Sat 
#    1   2   0   3   2   2   1 
#
