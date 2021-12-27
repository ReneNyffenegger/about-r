strsplit( "Foo,Bar,Baz", ",")
# [[1]]
# [1] "Foo" "Bar" "Baz"

strsplit(c("Foo,Bar,Baz", "One,Two,Three"), ",")
# [[1]]
# [1] "Foo" "Bar" "Baz"
# 
# [[2]]
# [1] "One"   "Two"   "Three"

strsplit( "Foo,Bar,Baz", ",")[[1]][2]
# [1] "Bar"
