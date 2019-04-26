library(dplyr)

df_orig <- data.frame (
    id  = c(    1 ,     2 ,     3  ,     4 ,     5 ,     6 ,      7 ,      8 ,     9 ,     10 ),
    num = c( 'one',  'two', 'three', 'four', 'five',  'six', 'seven', 'eight', 'nine',   'ten'),
    val = c( 8.32 ,  5.41 ,   0.01 ,  7.71 ,  2.18 ,  7.35 ,   8.69 ,   4.72 , 12.68 ,   5.31 )
)


#
#    select
#       id     as ident,
#       num    as num_english,
#       val    as price
#    from
#       df_orig
rename(df_orig, ident = id, num_english = num, price = val)

#
#   create table
#      df_val_between_3_and_10 as
#   select
#      *
#   from
#     df_orig
#   where
#     val >   3 and
#     val <= 10;
#   
#
df_val_between_3_and_10 <- filter(df_orig, val > 3, val <= 10)

#
#    create table
#       df_val_ordered as
#    select
#       *
#    from
#       df_val_between_3_and_10
#    order by
#       val;
#
df_val_ordered <- arrange(df_val_between_3_and_10, val)

#
#    create table
#       df_with_val_squared as
#    select
#       *
#    from
#       df_val_between_3_and_10
#    order by
#       val;
#
df_with_val_squared <- mutate(df_val_ordered, val_squared = val *  2)

#
#    select
#       round(val),
#       min  (val),
#       max  (val),
#       avg  (val_squared)
#    from
#       df_with_val_squared 
#    group by
#       round(val);
#
#
summarise ( 
            group_by(df_with_val_squared, round(val)),
            min(val),
            max(val),
            mean(val_squared)
          )
