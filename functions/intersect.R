#
#   S.a. ../examples/set_operations.R
#

set_1 = c('the', 'foo', 'the', 'bar', 'and', 'the', 'baz')
set_2 = c('The', 'Foo', 'the', 'Bar', 'and', 'the', 'Baz')

intersect (set_1, set_2)
# [1] "the" "and"
