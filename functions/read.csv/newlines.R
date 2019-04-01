data <- read.csv("newlines.csv", stringsAsFactors = FALSE)

subset(data, col_1 == 2)$col_2
