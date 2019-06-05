body(body);
#
#  {
#      if (is.character(fun)) 
#          fun <- get(fun, mode = "function", envir = parent.frame())
#      .Internal(body(fun))
#  }
