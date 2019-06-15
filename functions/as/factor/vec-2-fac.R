vec <- c('foo', 'bar', 'baz');

is.factor(vec);
#
#  FALSE

typeof(vec);
#
#  character

# --------------------

fac <- as.factor(vec);

is.factor(fac);
#
#  TRUE

typeof(fac);
#
#  integer
