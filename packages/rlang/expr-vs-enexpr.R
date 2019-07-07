library(rlang)

f_expr  <- function(ex) expr  (ex);
f_enexpr<- function(ex) enexpr(ex);

f_expr  (22 + x);
#
#  ex

f_enexpr(22 + x);
#
#  22 + x
