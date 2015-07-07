print("foo")
# [1] "foo"

print(c("bar", "baz"))
# [1] "bar" "baz"

print("foo\"bar")
# [1] "foo\"bar"

print("foo\"bar", quote=FALSE)
# [1] foo"bar

# See also cat
