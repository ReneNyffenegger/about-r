#
#   S.a. ../examples/printing_characters.R
#

nq <- noquote("foo bar baz")
nq
# [1] foo bar baz

class(nq)
# [1] "noquote"

is.character(nq)
# [1] TRUE
