val_1 <-  (1:10) - 3
val_2 <- ((1:10) + 5) / 2

barplot (
  cbind(val_1, val_2),
  beside =  TRUE,
  names  = c('Values one', 'Values two')
);
