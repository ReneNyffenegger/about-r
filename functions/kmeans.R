x11()

set.seed(280870)

df <- data.frame (
      x = runif(30, 0, 20),
      y = runif(30, 0, 20)
)

km <- kmeans(df, 3)
plot(df, col=km$cluster, pch=19)
points(km$centers, col=1:3, pch=8, cex=2) # Show center of clusters
z <- locator(1)

km <- kmeans(df, 4)
plot(df, col=km$cluster, pch=19)
points(km$centers, col=1:4, pch=8, cex=2)
z <- locator(1)

km <- kmeans(df, 5)
plot(df, col=km$cluster, pch=19)
points(km$centers, col=1:5, pch=8, cex=2)
z <- locator(1)
