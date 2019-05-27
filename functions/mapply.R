func <- function(a, b, c) {
  a*b + c
}

mapply(func,
  c(1, 4, 0, 6),
  c(1, 2, 3, 0),
  c(5, 0, 4, 3)
);
#
#  6 8 4 3
