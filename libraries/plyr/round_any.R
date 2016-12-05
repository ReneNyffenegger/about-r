library(plyr)
nums <- c(-3, 1, 8, 11, 15, 19, 21, 28)

round_any(nums, 10)
# [1]  0  0 10 10 20 20 20 30

round_any(nums, 20)
# [1]  0  0  0 20 20 20 20 20

round_any(nums,  7)
# [1]  0  0  7 14 14 21 21 28
