#
#   S.a. ../examples/set_operations.R
#

set_a <- c('Bar', 'Baz', 'Foo'  )
set_b <- c('Baz', 'Foo', 'Bar'  )
set_c <- c('Bar', 'Baz', 'Foo'  )
set_d <- c('Bar', 'Baz', 'Foo', 'Foo', 'Foo')

identical(set_a, set_b)
# [1] FALSE

identical(set_a, set_c)
# [1] TRUE

identical(set_a, set_d)
# [1] FALSE
