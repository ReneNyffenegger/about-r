gsub("xyz", "bar", "foo xyz baz xyz")
# [1] "foo bar baz bar"

# Note the regular expression (^)
gsub("^xyz", "bar", "foo xyz baz abcxyz")
# [1] "foo xyz baz abcxyz"
