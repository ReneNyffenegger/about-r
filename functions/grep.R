words=c("Foo", "Bar", "Baz", "One", "Two", "Three")

# grep returns a Vector of the indices of the matched elements (value=FALSE), or
# of the matched (value=TRUE)

grep("Ba", words, value=FALSE)
# [1] 2 3

grep("Ba", words, value=TRUE)
# [1] "Bar" "Baz"
