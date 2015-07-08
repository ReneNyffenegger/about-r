words=c("Foo", "Bar", "Baz", "One", "Two", "Three")

# grep returns a Vector of the indices of the matched elements (value=FALSE), or
# of the matched (value=TRUE)

grep("Ba", words, value=FALSE)
# [1] 2 3

grep("Ba", words, value=TRUE)
# [1] "Bar" "Baz"

# { Lowercase and uppercase
grep("o", words, value=TRUE)
# [1] "Foo" "Two"

grep("[Oo]", words, value=TRUE)
# [1] "Foo" "One" "Two"

# }

colors()[grep('red', colors())]
#  [1] "darkred"         "indianred"       "indianred1"      "indianred2"
#  [5] "indianred3"      "indianred4"      "mediumvioletred" "orangered"
#  [9] "orangered1"      "orangered2"      "orangered3"      "orangered4"
# [13] "palevioletred"   "palevioletred1"  "palevioletred2"  "palevioletred3"
# [17] "palevioletred4"  "red"             "red1"            "red2"
# [21] "red3"            "red4"            "violetred"       "violetred1"
# [25] "violetred2"      "violetred3"      "violetred4"
