a <- data.frame (
  foo = c(  15 ,    9 ,   13 ,   12 ,   11 ,   14 ,   15 ,   11 ,    9 ,   10 ,   12 ,   13 ),
  bar = c(  11 ,   15 ,   10 ,    9 ,    8 ,   12 ,   14 ,   13 ,   15 ,   16 ,   12 ,   11 ),
  baz = c(   8 ,   10 ,    9 ,   10 ,   11 ,   13 ,   15 ,   14 ,   14 ,   13 ,   13 ,   10 )
)


row.names(a) <- c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')

a
#
#     foo bar baz
# Jan  15  11   8
# Feb   9  15  10
# Mar  13  10   9
# Apr  12   9  10
# May  11   8  11
# Jun  14  12  13
# Jul  15  14  15
# Aug  11  13  14
# Sep   9  15  14
# Oct  10  16  13
# Nov  12  12  13
# Dec  13  11  10

rowSums(a)
#
# Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
#  34  34  32  31  30  39  44  38  38  39  37  34
