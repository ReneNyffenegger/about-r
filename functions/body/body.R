f <- function(x, y) {
  if (x > 0) {
    x * y;
  } else {
    y - x;
  }
}

b <- body(f);

typeof(b);
#
#  "language"

class(b);
#
#  "{"

mode(b);
#
#  "call"

is.language(b);
#
#   TRUE

f(2, 3);
#
#  6

body(f) <- x + y ;

f(2, 3);
