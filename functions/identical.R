set_a <- c('Bar', 'Baz', 'Foo'              );
set_b <- c('Baz', 'Foo', 'Bar'              );
set_c <- c('Bar', 'Baz', 'Foo'              );
set_d <- c('Bar', 'Baz', 'Foo', 'Foo', 'Foo');

identical(set_a, set_b)
# FALSE

identical(set_a, set_c)
# TRUE

identical(set_a, set_d)
# FALSE
