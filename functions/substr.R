#
#   S.a. 
#     ../examples/basic_string_manipulation.R
#
#

text = '1234567890'
substr(text, 0, 5)
# [1] "12345"

substr(text, 1, 5)
# [1] "12345"

substr(text, 2, 5)
# [1] "2345"

substr(text, -4, 3)
# [1] "123"

substr(text, 3, 3)
# [1] "3"

substr(text, 3, 7) <- 'xy'
text
# [1] "12xy567890"

substr(text, 6, 7) <- 'abcd'
text
# [1] "12xy5ab890"


# With recycling
a <- c('foo', 'bar', 'baz', 'one', 'two', 'three')
substr(a , 2, 2) <- c(',', '_')
a
# [1] "f,o"   "b_r"   "b,z"   "o_e"   "t,o"   "t_ree"
