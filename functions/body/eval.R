fun <- function(a, b) {
  a * b;
}

bod <- body(fun);

eval(bod, list(a=6, b=7));
#
#  42
