s <- function (p1, ...) {

  ret <- p1;

  for (v in list(...))  ret <- ret + v;

  return(ret);

}

s(10, 2, 9, 7);
#
#  28
