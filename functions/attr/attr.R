obj <- c('Foo', 'Bar', 'Baz')

attr(obj, 'First attribute' ) <- "Value for 1st attribute"
attr(obj, 'Second attribute') <- 1:5

str(obj)
# atomic [1:3] Foo Bar Baz
# - attr(*, "First attribute")= chr "Value for 1st attribute"
# - attr(*, "Second attribute")= int [1:5] 1 2 3 4 5

cat("\n\n")
attributes(obj)
# $`First attribute`
# [1] "Value for 1st attribute"
# 
# $`Second attribute`
# [1] 1 2 3 4 5
