df <- data.frame (
   col_1 = c(   1,     2 ,      3 ),
   col_2 = c('one', 'two', 'three')
);

library(RSQLite)

db <- dbConnect(
         RSQLite::SQLite(),
         paste0(Sys.getenv('HOME'), '/dbWriteTable.test')
      );

dbWriteTable(db, 'r_data', df);

dbDisconnect(db);
