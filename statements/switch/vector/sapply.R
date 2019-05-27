en2gr <- function(en) {
  switch(en, 
    'one'   = 'eins',
    'two'   = 'zwei',
    'three' = 'drei',
    'four'  = 'vier'
  );
}

sapply(english, en2gr);
