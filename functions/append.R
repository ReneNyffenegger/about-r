v <- c(1)

v <- append(v, 2)
v <- append(v, 3)
v <- append(v, 4)

v
# [1] 1 2 3 4

v <- append(v, 99, 2)
v
# [1]  1  2 99  3  4

v <- append(v, 1000:1004, 2)
v
#  [1]    1    2 1000 1001 1002 1003 1004   99    3    4
