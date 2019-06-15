library(RSQLite)


sqlLite <- dbConnect(RSQLite::SQLite(), ':memory:');

df <- data.frame(
   col_one   = c( 1   ,  2   ,  3     ),
   col_two   = c('one', 'two', 'three'),
   col_three = c('foo', 'bar', 'baz'  )
);

dbWriteTable(sqlLite, 'tab', df);

res <- dbGetQuery(sqlLite,
' select
     col_one * 5     as one_5,
     upper(col_two)  as two_U
  from
     tab
  where
     col_one != 2
  order by
     col_three');

print(res);
#
#  one_5 two_U
#      15 THREE
#       5   ONE

dbDisconnect(sqlLite);
