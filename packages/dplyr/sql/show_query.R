library(dplyr  )
library(RSQLite)

sqlLite <- dbConnect(RSQLite::SQLite(), ':memory:');

# df <- data.frame(
#    col_one   = c('foo', 'bar', 'baz'  ,'foo' , 'foo' , 'baz', 'bar'  , 'bar'  ),
#    col_two   = c('one', 'two', 'three','four', 'five', 'six', 'seven', 'eight'),
#    col_three = c( 1   ,  2   ,  3     , 4    ,  5    ,  6   ,  7     ,  8     )
# );

dbWriteTable(sqlLite, 'tab', data.frame(
   col_one   = c('foo', 'bar', 'baz'  ,'foo' , 'foo' , 'baz', 'bar'  , 'bar'  ),
   col_two   = c('one', 'two', 'three','four', 'five', 'six', 'seven', 'eight'),
   col_three = c( 1   ,  2   ,  3     , 4    ,  5    ,  6   ,  7     ,  8     )
));

ref_tibble <- tbl(sqlLite, 'tab');

query <- ref_tibble                            %>%
         filter    (col_three %% 3 > 0      )  %>%
         group_by  (col_one                 )  %>%
         summarise (min_two = min(col_two),
                    max_two = max(col_two)  )

show_query(query);
#
#   <SQL>
#   SELECT `col_one`, MIN(`col_two`) AS `min_two`, MAX(`col_two`) AS `max_two`
#   FROM `tab`
#   WHERE (`col_three` % 3.0 > 0.0)
#   GROUP BY `col_one`


dbDisconnect(sqlLite);
