library(tidyr)

df <- read.table(
  header = TRUE,
  text   =
'fruit  items_sold_Q1  items_sold_Q2  items_sold_Q3  items_sold_Q4
Apple             501            873            724            619
Banana            109            187            179            155
Cherry             58            218            209             74'
)


df %>% gather(
  key    = 'period',
  value  = 'items_sold',
  c('items_sold_Q1':'items_sold_Q4')
)
#
#      fruit        period items_sold
#  1   Apple items_sold_Q1        501
#  2  Banana items_sold_Q1        109
#  3  Cherry items_sold_Q1         58
#  4   Apple items_sold_Q2        873
#  5  Banana items_sold_Q2        187
#  6  Cherry items_sold_Q2        218
#  7   Apple items_sold_Q3        724
#  8  Banana items_sold_Q3        179
#  9  Cherry items_sold_Q3        209
#  10  Apple items_sold_Q4        619
#  11 Banana items_sold_Q4        155
#  12 Cherry items_sold_Q4         74
#  
