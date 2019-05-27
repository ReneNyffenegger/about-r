library(broman)

en <- c('one', 'four', 'two', 'three', 'one', 'three');

gr<-switchv(en ,
        'one'   = 'eins'  ,
        'two'   = 'zwei'  ,
        'three' = 'drei'  ,
        'four'  = 'vier'  ,
        'five'  = 'fünf'  );

cat(gr, sep="\n");
