#
#   S.a. ../examples/set_operations.R
#


elem_1 = 'Foo'
elem_2 = 'Bar'
elem_3 = 'Baz'
elem_4 = 'Bla'

set_1  = c(elem_1, elem_2, elem_3)

is.element(elem_2, set_1)
# [1] TRUE

is.element(elem_4, set_1)
# [1] FALSE
