library(stringr)


str_c ('Foo', 'Bar', NULL, 'Baz', character(0))
# [1] "FooBarBaz"

paste0('Foo', 'Bar', NULL, 'Baz', character(0))
# [1] "FooBarBaz"
