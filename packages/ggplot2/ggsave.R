X11()

library(ggplot2)

x = seq(-1, 1, length=400)
y = x^2 + cos(x*20)/3

p <- qplot(x, y)

ggsave("plot.png", p)
