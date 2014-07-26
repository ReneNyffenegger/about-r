typeof(42)
# [1] "double"

typeof("foo")
# [1] "character"

typeof(as.Date("2014-06-25"))
# [1] double

typeof(c(1,2,3))
# [1] "double"

typeof(TRUE)
# [1] "logical"

typeof(typeof)
# [1] "closure"

typeof(NA)
# [1] "logical"

typeof(NULL)
# [1] "NULL"

typeof(+Inf)
# [1] "double"

typeof(data.frame())
# [1] "list"

data <- read.csv("data.csv")
typeof(data)
# [1] "list"
