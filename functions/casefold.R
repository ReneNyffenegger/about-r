#
#   S.a. -> tolower(), -> toupper()
#           ../examples/basic_string_manipulation.R
#

str = "Foo Bar Baz"

casefold(str)
# [1] "foo bar baz"

casefold(str, upper = TRUE)
# [1] "FOO BAR BAZ"

