X11()

df <- data.frame (
   x = c(10, 11,  14, 15, 16),
   y = c( 1,  2,   4,  4,  6)
)

plot (df)

z <- locator(1)

ds <- dist(df)

dm <- as.matrix(ds)

dm

heatmap(dm)

z <- locator(1)
