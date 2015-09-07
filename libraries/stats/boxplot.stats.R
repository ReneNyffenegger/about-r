#
# Chapter 7, pp 70f in Zhao - R and data mining
#
set.seed(3147)

df <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)

bs_x = boxplot.stats(df$x)
bs_y = boxplot.stats(df$y)

# outliers
outlier_x <- bs_x$out
outlier_y <- bs_y$out

outlier_x
# [1] -3.315391  2.685922 -3.055717  2.571203

# Find the index of outliers
index_outlier_x <- which(df$x %in% outlier_x)
index_outlier_x
# [1]  1 33 64 74

index_outlier_y <- which(df$y %in% outlier_y)
index_outlier <- intersect(index_outlier_x, index_outlier_y)

x11()
plot(df)
points(df[index_outlier, ], col='red', pch='+', cex=2)
z <- locator(1)
