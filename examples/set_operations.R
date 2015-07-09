set_1 = c('the', 'foo', 'the', 'bar', 'and', 'the', 'baz')
set_2 = c('The', 'Foo', 'the', 'Bar', 'and', 'the', 'Baz')

union (set_1, set_2)
# [1] "the" "foo" "bar" "and" "baz" "The" "Foo" "Bar" "Baz"

intersect (set_1, set_2)
# [1] "the" "and"

setdiff (set_1, set_2)
# [1] "foo" "bar" "baz"

# { setequal

set_a <- c('Foo', 'Bar', 'Baz'  )
set_c <- c('Bar', 'Baz', 'Foo'  )

setequal(set_a, set_c)
# [1] TRUE

# }

# { identical

set_a <- c('Bar', 'Baz', 'Foo'  )
set_b <- c('Baz', 'Foo', 'Bar'  )

identical(set_a, set_b)
# [1] FALSE

# }

# { is.element

is.element( 5, 1:10)
# [1] TRUE

is.element(15, 1:10)
# [1] FALSE

# }
