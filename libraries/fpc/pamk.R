#
#  Compare with ../../functions/kmeans.R
#
library(fpc)
x11()

set.seed(280870)

df <- data.frame (
      x = runif(30, 0, 20),
      y = runif(30, 0, 20)
)


pr <- pamk(data = df)

cat(paste('Number of clusters:' , pr$nc))
# Number of clusters: 3

layout(matrix(c(1,2), 1, 2)) # 2 Graphs per page


plot(pr$pamobject)
z <- locator(1)

