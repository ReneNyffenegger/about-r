a <- data.frame (
  foo   <- c(  15 ,    9 ,   13 ,   12 ,   11 ,   14 ,   15 ,   11 ,    9 ,   10 ,   12 ,   13 ),
  bar   <- c(  11 ,   15 ,   10 ,    9 ,    8 ,   12 ,   14 ,   13 ,   15 ,   16 ,   12 ,   11 ),
  baz   <- c(   8 ,   10 ,    9 ,   10 ,   11 ,   13 ,   15 ,   14 ,   14 ,   13 ,   13 ,   10 )
)


row.names(a) <- c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')

rowSums(a)
#
# Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
#  34  34  32  31  30  39  44  38  38  39  37  34
