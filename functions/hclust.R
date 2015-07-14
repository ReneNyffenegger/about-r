#
#  The «complete» aggregation method (default for hclust) defines the cluster
#  distance between two clusters to be the maximum distance between their
#  individual components. At every stage of the clustering process, the two
#  nearest clusters are merged into a new cluster. The process is repeated
#  until the whole data set is agglomerated into one single cluster.
#

X11()

xy <- matrix (

  c( 1,  5,
     2, 18,
     2,  3,
     4, 16,
    11,  7,
     2,  5,
     7, 10,
    12,  2,
    13,  6,
     3,  5),
   ncol   = 2,
   byrow  = TRUE
)

xy_names = c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J')

rownames(xy) = xy_names

plot(xy, pch=19)
text(
  xy[, 1], xy[, 2],
  xy_names,
  col='darkgreen',
  adj=c(-0.2, -0.8),
  cex=0.8)

z <- locator(1)

xy_dist  = dist(xy)
xy_clust = hclust(xy_dist)
plot(xy_clust)
z <- locator(1)

dist(xy[c('G', 'D', 'E', 'J'), ])



# ----------------------------

abc <- matrix (
   c( 0, 0, 0,
      0, 0, 3,
      0, 4, 0,
      0, 4, 3,
      4, 0, 0),
    ncol  = 3,
    byrow = TRUE
)

rownames(abc) <- c('0/0/0', '0/0/3', '0/4/0', '0/4/3', '4/0/0')

dist <- dist(abc)

dist
#          0/0/0    0/0/3    0/4/0    0/4/3
# 0/0/3 3.000000
# 0/4/0 4.000000 5.000000
# 0/4/3 5.000000 4.000000 3.000000
# 4/0/0 4.000000 5.000000 5.656854 6.403124

clust <- hclust(dist)

plot(clust)

z <- locator(1)
