vec <- c(1, 2, 3, 4, 5, 6, 7, 8);
is.matrix(vec);
#
# FALSE

dim(vec) <- c(8);
is.matrix(vec);
#
# FALSE

dim(vec) <- c(4, 2);
is.matrix(vec);
#
# TRUE

dim(vec) <- c(2, 2, 2);
is.matrix(vec);
#
# FALSE
