n_way_ct <- table(c("AAA", "AAA", "BBB", "AAA", "AAA", "CCC", "BBB", "BBB", "AAA"),
                  c("yyy", "yyy", "qqq", "yyy", "qqq", "iii", "yyy", "qqq", "iii"),
                  c("___", "###", "___", "___", "###", "___", "___", "###", "???")
              );

n_way_ct;
#
# , ,  = ###
# 
#      
#       iii qqq yyy
#   AAA   0   1   1
#   BBB   0   1   0
#   CCC   0   0   0
# 
# , ,  = ???
# 
#      
#       iii qqq yyy
#   AAA   1   0   0
#   BBB   0   0   0
#   CCC   0   0   0
# 
# , ,  = ___
# 
#      
#       iii qqq yyy
#   AAA   0   0   2
#   BBB   0   1   1
#   CCC   1   0   0
