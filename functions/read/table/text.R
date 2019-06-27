df <- read.table(
  text='name val_1 val_2
foo 42 18.8
bar 123456789 -28.2
baz 0 99.9',
header = TRUE)

class(df)   # data.frame
mode(df)    # list
typeof(df)  # list

df
# 
#   name     val_1 val_2
# 1  foo        42  18.8
# 2  bar 123456789 -28.2
# 3  baz         0  99.9

class (df$name )  # factor
class (df$val_1)  # integer
class (df$val_2)  # numeric

mode  (df$name )  # numeric
mode  (df$val_1)  # numeric
mode  (df$val_2)  # numeric

typeof(df$name )  # integer
typeof(df$val_1)  # integer
typeof(df$val_2)  # double
