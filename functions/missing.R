f <- function(a = 'default', b = 'default') {

  if (missing(a)) cat("Argument a is missing") else cat(paste("Argument a =", a));
  cat ("\n");
  if (missing(b)) cat("Argument b is missing") else cat(paste("Argument b =", b));
  cat("\n\n");

}

f(b = "foo");
#
#  Argument a is missing
#  Argument b = foo

f(a = "bar", b = "baz");
#
#  Argument a = bar
#  Argument b = baz

f(a = "default");
#
#  Argument a = default
#  Argument b is missing
