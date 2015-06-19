#
#    A data frame is like a matrix, but: while matrices
#    have the same data type for all elements, a data frame
#    can have different datatypes in its columns.
#


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

# -----------------------------------------------
#
#        Data Frame with «default value» for
#        all elements in a column:

dataFrame_3 <- data.frame (
                 col_1 = TRUE,
                 col_2 = c("one", "two", "three"),
                 col_3 = c("Foo", "Bar", "Baz"  ),
                 col_4 =  NA )
dataFrame_3
#   col_1 col_2 col_3 col_4
# 1  TRUE   one   Foo    NA
# 2  TRUE   two   Bar    NA
# 3  TRUE three   Baz    NA

dataFrame_4 <- data.frame (
  s1 = rnorm(10, mean = 5, sd = 1),
  s2 = rnorm(10, mean = 9, sd = 9),
  s3 = rnorm(10, mean = 0, sd = 5)
)

show (dataFrame_4)
#          s1         s2         s3
# 1  6.331567 24.8329281  0.3696351
# 2  5.923443 -0.9340891 12.3321180
# 3  5.157972 12.2860296 -2.1322848
# 4  5.967498 10.3329538 -0.2394767
# 5  4.507737  6.3054715  1.4312542
# 6  5.668018  8.7391802  1.0235536
# 7  4.866247  5.4963913  2.3345568
# 8  5.946127  1.3370167 -7.4614434
# 9  3.989125 10.4986192  1.0924467
# 10 5.301544 11.5762866 -3.0578400

attributes(dataFrame_4)
# $names
# [1] "s1" "s2" "s3"
# 
# $row.names
#  [1]  1  2  3  4  5  6  7  8  9 10
# 
# $class
# [1] "data.frame"



# -----------------------------------------------
#
#        Subscripts
#

dataFrame_5 <- data.frame (

                col_1 = c(   1 ,    2 ,    3 ,         4 ,         5 ,         6 ),
                col_2 = c('foo', 'bar', 'baz', 'more-foo', 'more-bar', 'more-baz'),
                col_3 = c(  "a",   "b",   "c",        "d",        "e",        "f"),
                col_4 = c(  22 ,    38,   17 ,        65 ,        72 ,        48 ),
                col_5 = c("ABC", "DEF", "GHI",      "JKL",      "MNO",      "PQR")
             )

dataFrame_5[,2:4]
#      col_2 col_3 col_4
# 1      foo     a    22
# 2      bar     b    38
# 3      baz     c    17
# 4 more-foo     d    65
# 5 more-bar     e    72
# 6 more-baz     f    48

cat("\n\n")

dataFrame_5[3:5,2:3]
#      col_2 col_3
# 3      baz     c
# 4 more-foo     d
# 5 more-bar     e
