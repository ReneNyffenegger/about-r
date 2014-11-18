#
#   Compare with -> typeof
#


mode(42)
# [1] "numeric"

mode("foo")
# [1] "character"

mode(2+4i)
# [1] "complex"

mode(as.Date("2014-06-25"))
# [1] "numeric"

mode(c(1,2,3))
# [1] "numeric"

mode(vector())
# [1] "logical"

mode(factor(c(1,2,3)))
# [1] "numeric"

mode(TRUE)
# [1] "logical"

mode(mode)
# [1] "function"

mode(NA)
# [1] "logical"

mode(NULL)
# [1] "NULL"

mode(+Inf)
# [1] "numeric"

mode(table(c("Foo", "Bar", "Baz")))
# [1] "numeric"

mode(data.frame())
# [1] "list"

data <- read.csv("data.csv")
mode(data)
# [1] "list"
