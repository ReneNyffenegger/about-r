#  S.a. -> print(),
#          ../examples/printing_characters.R


cat("foo\nbar\nbaz\n")
# foo
# bar
# baz

cat(1:10, sep=",")
# 1,2,3,4,5,6,7,8,9,10

cat("writing to a file", file="written-by-cat.txt")

cat("\n")
file.show("written-by-cat.txt")
