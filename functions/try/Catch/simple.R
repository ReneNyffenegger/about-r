divide <- function(a, b) {
  if (b == 0) {
    stop("Don't divide by 0!");
  }
  return(a/b);
}

cause_stop = TRUE

for (z in -2:2) {

  tryCatch (
    {

     if (! cause_stop && z == 0) {
       print('Not going to divide by 0 because cause_stop is FALSE');
       next;
     }
      print(paste('Going to device 5 by', z));
      print(paste('Result is', divide(5, z)));
      print('After division.');
    },
    error = function(cond) {
      print(paste('Error caught:', cond));
      return(NA);
    },
    finally = {
    #
    # Print a new line, regardless wheather division was ok or not.
    #
      cat("\n");
    }
  );
}
