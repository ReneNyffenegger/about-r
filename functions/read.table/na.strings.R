df <- read.table(
  header     = TRUE ,          
  na.strings ='null',
  text       ='id val
1 foo
2 null
3 bar
4 baz'
)

df
# 
#   id  val
# 1  1  foo
# 2  2 <NA>
# 3  3  bar
# 4  4  baz
