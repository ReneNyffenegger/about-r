fnc <- function(x) x$val <- x$val * x$val;

lst <- list(val = 3);
fnc(lst);
lst$val;
#
# 3

env <- new.env();
env$val <- 3;
fnc(env);
env$val;
#
# 9
