#
#   S.a. 
#     ../examples/basic_string_manipulation.R
#
#

text = '1234567890'
substring(text, 0, 5)
# [1] "12345"

substring(text, 1, 5)
# [1] "12345"

substring(text, 2, 5)
# [1] "2345"

substring(text, -4, 3)
# [1] "123"

substring(text, 3, 3)
# [1] "3"

substring(text, 3, 7) <- 'xy'
text
# [1] "12xy567890"

substring(text, 6, 7) <- 'abcd'
text
# [1] "12xy5ab890"


# With recycling
a <- c('foo', 'bar', 'baz', 'one', 'two', 'three')
substring(a , 2, 2) <- c(',', '_')
a
# [1] "f,o"   "b_r"   "b,z"   "o_e"   "t,o"   "t_ree"
