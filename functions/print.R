#
#   S.a. ../examples/printing_characters.R
#

print("foo")
# [1] "foo"

print(c("bar", "baz"))
# [1] "bar" "baz"

print("foo\"bar")
# [1] "foo\"bar"

print("foo\"bar", quote=FALSE)
# [1] foo"bar

print(matrix(c('foo', 1, 2, 'bar', 3, 4), 2, 3))
#      [,1]  [,2]  [,3]
# [1,] "foo" "2"   "3"
# [2,] "1"   "bar" "4"

print(10/7)
# [1] 1.428571

print(10/7, digits=4)
# [1] 1.429

string_with_new_line = "foo\nbar"
print(string_with_new_line)
# [1] "foo\nbar"

cat  (string_with_new_line)
# foo
# bar
