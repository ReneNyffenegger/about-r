library(tidyr)

df <- read.table(
  header = TRUE,
  text = 
'fruit  period K                 V
Apple   Q1     items-sold      501
Apple   Q1     price          1.09
Apple   Q2     items-sold      873
Apple   Q2     price          0.97
Apple   Q3     items-sold      724
Apple   Q3     price          0.81
Apple   Q4     items-sold      619
Apple   Q4     price          0.55
Banana  Q1     items-sold      109
Banana  Q1     price          2.11
Banana  Q2     items-sold      187
Banana  Q2     price          2.08
Banana  Q3     items-sold      179
Banana  Q3     price          1.94
Banana  Q4     items-sold      155
Banana  Q4     price          2.01
Cherry  Q1     items-sold       58
Cherry  Q1     price          3.55
Cherry  Q2     items-sold      218
Cherry  Q2     price          3.07
Cherry  Q3     items-sold      209
Cherry  Q3     price          2.88
Cherry  Q4     items-sold       74
Cherry  Q4     price          3.00'
)

normalized <- spread(df, key = K, value = V)

normalized
#
#      fruit period items-sold price
#  1   Apple     Q1        501  1.09
#  2   Apple     Q2        873  0.97
#  3   Apple     Q3        724  0.81
#  4   Apple     Q4        619    NA
#  5  Banana     Q1        109  2.11
#  6  Banana     Q2        187  2.08
#  7  Banana     Q3        179  1.94
#  8  Banana     Q4        155  2.01
#  9  Cherry     Q1         58  3.55
#  10 Cherry     Q2        218  3.07
#  11 Cherry     Q3        209  2.88
#  12 Cherry     Q4         74  3.00
#
