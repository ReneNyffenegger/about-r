op    <- 'times';
val_1 <- 12 ;
val_2 <-  3 ;

switch (op,
  plus       = { res <- val_1 + val_2; },
  times      = { res <- val_1 * val_2; },
  minus      = { res <- val_1 - val_2; },
  divided_by = { res <- val_1 / val_2; }
);

cat(paste(val_1, op, val_2, '=', res, "\n"));
#
#  12 times 3 = 36
