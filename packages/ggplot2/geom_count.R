X11()

library(ggplot2)
library(dplyr  )

df <- data.frame(
       val_one = c('foo', 'foo', 'bar', 'foo', 'bar', 'baz', 'bar', 'foo', 'baz', 'bar', 'baz', 'bar'),
       val_two = c('B'  , 'A'  , 'A'  , 'A'  , 'C'  , 'A'  , 'B'  , 'A'  , 'B'  , 'C'  , 'B'  , 'A'  )
)

df %>% count(val_one, val_two)
#
# val_one val_two     n
# <fct>   <fct>   <int>
# bar     A           2
# bar     B           1
# bar     C           2
# baz     A           1
# baz     B           2
# foo     A           3
# foo     B           1

ggplot(data = df) +
  geom_count(mapping = aes(x=val_one, y=val_two))

# ggsave('img/geom_count.png', width=12, height=12, units='cm', dpi=72)

cat ("Press enter...")
readLines("stdin", n = 1)
