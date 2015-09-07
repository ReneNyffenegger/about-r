library(fpc)
x11()

set.seed(280870)

df <- data.frame (
      x = runif(90, 0, 20),
      y = runif(90, 0, 20)
)

ds <- dbscan(df, eps=2.5, MinPts=3)

plot(ds, df)
z <- locator(1)

plotcluster(df, ds$cluster)
z <- locator(1)
