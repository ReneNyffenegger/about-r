abc <- matrix (
   c( 0, 0, 0,
      0, 0, 3,
      0, 4, 0,
      0, 4, 3,
      4, 0, 0),
    ncol = 3
)

rownames(abc) <- c('Zero', 'Three', 'Four (y)', 'Five', 'Four (x)')

dist <- dist(abc)

as.matrix(dist)

clust <- hclust(dist)

X11()

plot(clust)

z <- locator(1)
