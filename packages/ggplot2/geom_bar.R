X11()

library(ggplot2)

df = data.frame (
       item = c('foo', 'bar', 'foo', 'bar', 'foo', 'baz', 'foo', 'bar', 'baz'),
       val  = c(   9 ,    6 ,    4 ,    7 ,    6 ,    7 ,    3 ,    8 ,    6 )
)

ggplot(data = df) + geom_bar(mapping = aes(x = item))
ggsave('img/geom_bar.png', width=12, height=12, units='cm', dpi=72)

cat ("Press enter...")
readLines("stdin", n = 1)
