#
#  See also https://rpubs.com/minma/cart_with_rpart
#
library(rpart)
X11()

set.seed(280870)


f <- function(a, b, c) {

  if      (a > 8) {

    if      (b > 7) {

      if (c > 7) {
         return('FOO')
      }
      else if (c > 4) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }
    else if (b > 6) {

      if (c > 3) {
         return('FOO')
      }
      else if (c > 7) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }
    else {

      if (c > 2) {
         return('FOO')
      }
      else if (c > 6) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }

  }
  else if (a > 5) {

    if      (b > 7) {

      if (c > 1) {
         return('FOO')
      }
      else if (c > 4) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }
    else if (b > 3) {

      if      (c > 3) {
         return('FOO')
      }
      else if (c > 7) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }
    else {

      if      (c > 6) {
         return('FOO')
      }
      else if (c > 2) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }

  }
  else {

    if      (b > 7) {

      if      (c > 7) {
         return('FOO')
      }
      else if (c > 6) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }
    else if (b > 5) {

      if (c > 3) {
         return('FOO')
      }
      else if (c > 7) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }
    else {

      if (c > 6) {
         return('FOO')
      }
      else if (c > 2) {
         return('BAR')
      }
      else {
         return('BAZ')
      }

    }

  }
  
}

df <- data.frame (
  a = runif( 1000, 0, 10),
  b = runif( 1000, 0, 10),
  c = runif( 1000, 0, 10)
)

df$r = sapply(1:nrow(df), function(i) f(df[i,]$a, df[i,]$b, df[i,]$c))
df$r = factor(df$r)


tree <- rpart(r ~ . , data = df , control = rpart.control(cp=0.0001))

# printcp(tree)


bestcp <- tree$cptable[which.min(tree$cptable[,"xerror"]),"CP"]
tree.pruned <- prune(tree, cp = bestcp)

plot(tree.pruned)
text(tree.pruned, cex = 0.8, use.n = TRUE, xpd = TRUE)


z <- locator(1)
