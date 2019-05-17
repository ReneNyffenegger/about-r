
f <- function(a) {

  five    <-  5;
  result  <- -1;

  if ( a > five) {
    result <- a * a;
    v      <- 'greater than';
  }
  else {
    result <- result * a;
    v      <- 'less than';
  }

  paste(v, result);
}

f(4); # less than -4
f(6); # greater than 36

# print(cat('five = ', five)) # object five not found
