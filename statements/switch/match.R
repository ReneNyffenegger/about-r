txt <- 'three';

num <- switch(txt,
   'one'   = 1,
   'two'   = 2,
   'three' = 3,
   'four'  = 4,
   'five'  = 5
);

print(paste(txt, '=', num)); # three = 3
