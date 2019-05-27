f <- function(a, b) {
  if (a > b) {
     paste(a, '>', b);
  }
  else if (a == b) {
     paste(a, '=', b);
  }
  else {
     paste(a, '<', b);
  }
};


# 
# f(2,5);
# #
# #  9
# 
# vec_a <- c(2, 6, 3);
# vec_b <- c(5, 6, 7);


vec_a <- c(2, 6, 7);
vec_b <- c(5, 6, 3);

res <- f(vec_a, vec_b);
#
#  Warning messages:
#   … the condition has length > 1 and only the first element will be used

#
#  Clearly, the result is wrong:
#
cat(res, sep = "\n");
#     2 < 5
#     6 < 6
#     7 < 3

#
#   Creating »vectorized« version of the function:
#
f_vec <- Vectorize(f);

#
#   And using the new function:
#
res <- f_vec(vec_a, vec_b);

#
#  The result looks much better now:
#
cat(res, sep = "\n");
#     2 < 5
#     6 = 6
#     7 > 3
