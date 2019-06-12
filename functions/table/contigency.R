contigency_table  <- table(c('AAA', 'AAA', 'BBB', 'AAA', 'AAA', 'CCC', 'BBB', 'BBB', 'AAA'),
                           c('yyy', 'yyy', 'qqq', 'yyy', 'qqq', 'iii', 'yyy', 'qqq', 'iii')
                          );
contigency_table;
# 
#       iii qqq yyy
#   AAA   1   1   3
#   BBB   0   2   1
#   CCC   1   0   0

attributes(contigency_table);
# $dim
# [1] 3 3
# 
# $dimnames
# $dimnames[[1]]
# [1] "AAA" "BBB" "CCC"
# 
# $dimnames[[2]]
# [1] "iii" "qqq" "yyy"
# 
# 
# $class
# [1] "table"
