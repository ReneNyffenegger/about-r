#
#     http://stackoverflow.com/questions/1296646/how-to-sort-a-dataframe-by-columns-in-r
#

dat_fram <- data.frame (
      col_1  = factor (
                 c('Bar', 'Baz', 'Foo', 'Foo', 'Baz', 'Bar'),
                 levels = c('Foo', 'Bar', 'Baz'),
                 ordered = TRUE
               ),
      col_2  = c(  1 ,  1 ,  1 ,  2 ,  2 ,  2 ),
      col_3  = c( 'A', 'B', 'A', 'C', 'B', 'A'),
      col_4  = c( 18 , 17 , 16 , 11 , 12 , 13 )
   )

cat("\n")
dat_fram

cat("\n\n")

dat_fram[with(dat_fram, order(-col_2, col_1)), ]
