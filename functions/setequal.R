#
#   S.a. ../examples/set_operations.R
#

set_a <- c('Foo', 'Bar', 'Baz'  )
set_b <- c('One', 'Two', 'Three')
set_c <- c('Bar', 'Baz', 'Foo'  )
set_d <- c('Bar', 'Baz', 'Foo', 'Foo', 'Foo')

setequal(set_a, set_b)
# [1] FALSE

setequal(set_a, set_c)
# [1] TRUE

setequal(set_a, set_d)
# [1] TRUE
