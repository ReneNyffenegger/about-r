summary(c(  4, 9, 5, 1000, 11, 5, 8) )
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
#   4.0     5.0     8.0   148.9    10.0  1000.0

summary("Foo")
#  Length     Class      Mode
#       1 character character

# Summary of a Factor:
#
#   print Elements along with their frequency:
summary (factor (c ( "foo", "bar", "bar", "foo", "foo", "baz")))
#  bar baz foo
#    2   1   3
