jitter(1:10)
# [1] 1.183698 1.859474 2.842926 4.031113 4.860753 5.848419 7.053830 7.843459
# [9] 9.007546 9.891883


X11()

x <- c(1, 2, 2, 1, 2, 3, 2, 1, 2, 1, 2, 2)
y <- c(2, 1, 2, 2, 3, 1, 3, 2, 2, 2, 1, 2)

plot(x,y)
z <- locator(1)

plot(jitter(x), jitter(y))
z <- locator(1)
