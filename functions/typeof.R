typeof(42)
# [1] "double"

typeof("foo")
# [1] "character"

typeof(c(1,2,3))
# [1] "double"

typeof(TRUE)
# [1] "logical"

typeof(typeof)
# [1] "closure"

typeof(NA)
# [1] "logical"

typeof(NULL)
# [1] "logical"

data <- read.csv("data.csv")
typeof(data)
# [1] "list"
