X11()

library(ggplot2)
x = seq(-1, 4, length=25)
y = sin(x)

q = qplot(x, y)

print(q)

# Why, oh why is this necessary?
Sys.sleep(0.1)

cat ("Press any key...")
readLines("stdin", n = 1)
