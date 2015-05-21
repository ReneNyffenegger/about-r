attributes(42)
# NULL

attributes("Foo")
# NULL

attributes(TRUE)
# NULL

attributes(c(1:10))
# NULL

attributes(factor(c(1:10)))
# $levels
#  [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10"
# 
# $class
# [1] "factor"

csv_data <- read.csv("data.csv")
attributes(csv_data)
# $names
# [1] "col_1" "col_2" "col_3"
# 
# $class
# [1] "data.frame"
# 
# $row.names
# [1] 1 2
