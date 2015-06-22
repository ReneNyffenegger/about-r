#   See also
#     -> summary
#

quantile(c(1, 10, 100, 1000, 2, 20, 200, 2000))
#  0%  25%  50%  75% 100%
#   1    8   60  400 2000

cat("\n\n")
quantile(100:200, .15) # the 15 percentile
# 15%
# 115
