library(lattice)
X11()

nofM <- 50

df <- data.frame (

  x = rnorm (nofM, mean =  3, sd = 1),
  y = rnorm (nofM, mean = 10, sd = 4)
)

df$r = df$x * 2 + 
       df$y / 5    + rnorm(nofM, mean=0, sd = 2)

# print(levelplot(Petal.Width~Sepal.Length*Sepal.Width, iris, cuts=9))
print(levelplot(df$r ~ df$x + df$y, cuts=9))


cat ("Press any key...")
readLines("stdin", n = 1)
