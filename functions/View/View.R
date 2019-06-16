
m <- matrix( c(
       10, 'foo', 22.5,
       20, 'bar', 18.9,
       30, 'baz', 13.4
     ),
     ncol = 3,
     byrow = TRUE
)

rownames(m) <- c('Col 1', 'Col 2', 'Col 3')

View(m)

# TODO: Is there not a more elegant way to keep the opened window of View,
Sys.sleep(10)
