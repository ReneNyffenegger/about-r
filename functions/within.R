df <- data.frame(val_1=c(  5,  9,  3),
                 val_2=c(  3,  2,  4));


within(
  within(df,
    prod <- val_1 * val_2
  ),
  sum <- val_1 + val_2
);

#
# val_1 val_2 prod sum
#     5     3   15   8
#     9     2   18  11
#     3     4   12   7
