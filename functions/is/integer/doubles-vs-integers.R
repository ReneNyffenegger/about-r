doubles      <- c(1.1 , 2.2 , 3.3, 4.4 );
doubles_too  <- c(1   , 2   , 3  , 4   );
integers     <- c(1L  , 2L  , 3L , 4L  );
hmmmm        <- c(1L  , 2L  , 3L , 4   );

is.integer(doubles    );
#
#  FALSE

is.integer(doubles_too);
#
#  FALSE

is.integer(integers   );
#
#  TRUE

is.integer(hmmmm      );
#
#  FALSE
