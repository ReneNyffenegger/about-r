vec <- c('one', 'two', 'three');
is.vector(vec);
#
#  TRUE

names(vec) <- c('A', 'B', 'C');
is.vector(vec);
#
#  TRUE

attr(vec, 'foo') <- 'bar';
is.vector(vec);
#
#  FALSE

lst <- list('e_1', 'e_2', 'e_3');
is.vector(lst);
#
#  TRUE

exp <- expression( 4 + 2:5 );
is.vector(exp);
#
#  TRUE
