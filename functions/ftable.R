#
#   S.a. -> table()  [ ftable stands for «flatten table» ]
#

tab_3 <- ftable(c("AAA", "AAA", "BBB", "AAA", "AAA", "CCC", "BBB", "BBB", "AAA"),
                c("yyy", "yyy", "qqq", "yyy", "qqq", "iii", "yyy", "qqq", "iii"),
                c("___", "###", "___", "___", "###", "___", "___", "###", "???")
              )
tab_3

#          ### ??? ___
# 
# AAA iii    0   1   0
#     qqq    1   0   0
#     yyy    1   0   2
# BBB iii    0   0   0
#     qqq    1   0   1
#     yyy    0   0   1
# CCC iii    0   0   1
#     qqq    0   0   0
#     yyy    0   0   0
