#
#   S.a. -> substring()
#        ../examples/basic_string_manipulation.R
#
#

letters_ = paste0(letters, collapse="")
substr(letters_, 10, 13)
# [1] "jklm"

letters_
# [1] "abcdefghijklmnopqrstuvwxyz"

substr(letters_, 10, 13) <- '#'
letters_
# [1] "abcdefghi#klmnopqrstuvwxyz"

substr(letters_,  4,  7) <- '____'
letters_
# [1] "abc____hi#klmnopqrstuvwxyz"

# With recycling

a <- c('foo', 'bar', 'baz', 'one', 'two', 'three')
substr( a , 2, 2) <- c(',', '_')
a
