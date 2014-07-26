tab_1 <- table(c("ABC", "DEF", "ABC", "ABC", "GHI", "DEF", "ABC"))

# Elements with their frequencies:
tab_1
# ABC DEF GHI
#   4   2   1


tab_2 <- table(c("AAA", "AAA", "BBB", "AAA", "AAA", "CCC", "BBB", "BBB", "AAA"),
               c("yyy", "yyy", "qqq", "yyy", "qqq", "iii", "yyy", "qqq", "iii")
              )
tab_2
# 
#       iii qqq yyy
#   AAA   1   1   3
#   BBB   0   2   1
#   CCC   1   0   0

attributes(tab_2)
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

tab_3 <- table(c("AAA", "AAA", "BBB", "AAA", "AAA", "CCC", "BBB", "BBB", "AAA"),
               c("yyy", "yyy", "qqq", "yyy", "qqq", "iii", "yyy", "qqq", "iii"),
               c("___", "###", "___", "___", "###", "___", "___", "###", "???")
              )
tab_3
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
