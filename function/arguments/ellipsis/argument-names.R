print_argument_names <- function (p1, ...) {

  args <- list(...);

  for (argName in names(args)) {
    print(paste('Argument', argName, 'was passed with value', args[[argName]]));
  }
}

print_argument_names(10, foo=1, bar='baz');
#
#  Argument foo was passed with value 1
#  Argument bar was passed with value baz
