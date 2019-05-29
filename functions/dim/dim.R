#
#    S.a. ../examples/having_a_look_at_data.R
#


dataFrame <- data.frame (
               col_1 = c("Foo", "Bar", "Baz"),
               col_2 = c(  11 ,   22 ,   33 ))

dim(dataFrame)
# [1] 3 2


#
#  dim can also be used to set or chagne the dimension:

a <- 1:50
dim(a) <- c(10, 5)
a
# 
#       [,1] [,2] [,3] [,4] [,5]
#  [1,]    1   11   21   31   41
#  [2,]    2   12   22   32   42
#  [3,]    3   13   23   33   43
#  [4,]    4   14   24   34   44
#  [5,]    5   15   25   35   45
#  [6,]    6   16   26   36   46
#  [7,]    7   17   27   37   47
#  [8,]    8   18   28   38   48
#  [9,]    9   19   29   39   49
# [10,]   10   20   30   40   50
