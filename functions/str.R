#
#  str stands for structure
#
#  s.a. -> structure()


d <- data.frame (
  foo = c(   1 ,    2 ,      3 ),
  bar = c('one', 'two', 'three')
)

str(d)
# 'data.frame':   3 obs. of  2 variables:
#  $ foo: num  1 2 3
#  $ bar: Factor w/ 3 levels "one","three",..: 1 3 2
