X11()
library(ggplot2)

df <- data.frame(
  val_one = c('bar', 'bar', 'bar', 'baz', 'baz', 'foo', 'foo'),
  val_two = c('A'  , 'B'  , 'C'  , 'A'  , 'B'  , 'A'  , 'B'  ),
  count   = c( 2   ,  1   ,  2   ,  1   ,  2   ,  3   ,  1   )
)

ggplot(
     data    = df,
     mapping = aes(x = val_one, y = val_two)
   ) +
   geom_point(aes(size = count))


# ggsave('img/geom_point-size.png', width=12, height=12, units='cm', dpi=72)

cat ("Press enter...")
readLines("stdin", n = 1)
