library(FNN)

known    <- read.csv("known.csv"  , header=FALSE)
unknown  <- read.csv("unknown.csv", header=FALSE)

labels <- known[, 1]
known  <- known[,-1]

results <- (0:4)[knn(known, unknown, labels, k = 10, algorithm="cover_tree")]

write(results, file="out.csv", ncolumns=1) 

