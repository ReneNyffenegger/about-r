library(party)
X11()


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
  
}

df <- data.frame (
  a = runif( 100, 0, 10),
  b = runif( 100, 0, 10),
  c = runif( 100, 0, 10)
)

df$r = sapply(1:nrow(df), function(i) f(df[i,]$a, df[i,]$b, df[i,]$c))
df$r = factor(df$r)

# str(df)

mod <- df$r ~ df$a + df$b + df$c
ct  <- ctree(mod, data = df)

print (ct)
plot(ct)

# Why, oh why, is this necessary?
Sys.sleep(1)

cat ("Press any key...\n")
readLines("stdin", n=1)
