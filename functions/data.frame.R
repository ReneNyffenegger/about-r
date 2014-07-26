alphabeth <- c("Alpha", "Beta", "Gamma")
numbers   <- c( 1.1   ,  2.02 ,  3.003 )
blabla    <- c("Foo"  , "Bar" , "Baz"  )

dataFrame <- data.frame(alphabeth, numbers, blabla)

show (dataFrame)
#   alphabeth numbers blabla
# 1     Alpha   1.100    Foo
# 2      Beta   2.020    Bar
# 3     Gamma   3.003    Baz

dataFrame_2 <- data.frame (
                 col_1 = c("Foo", "Bar", "Baz"),
                 col_2 = c(  11 ,   22 ,   33 ),
                 col_3 = c("abc", "def", "ghi") )
#   col_1 col_2 col_3
# 1   Foo    11   abc
# 2   Bar    22   def
# 3   Baz    33   ghi

show (dataFrame_2)

dim(dataFrame_2)
# [1] 3 3
