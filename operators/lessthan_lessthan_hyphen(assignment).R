g1 <- 1
g2 <- 2

f <- function(a, b, c, d, call_f) {

  if (call_f) f(100, 200, 300, 400, FALSE)

  g1  <- a
  g2 <<- b
  g3  <- c
  g4 <<- d

}

f(10, 20, 30, 40, TRUE)

g1
# [1] 1

g2
# [1] 20

# g3  # Error: object 'g3' not found

g4
# [1] 40
