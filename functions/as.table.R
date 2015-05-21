

m <- matrix( c(  5, 1, 3,
                 9, 2, 8,
                 1, 5, 7
              ),
              nrow=3 )

colnames(m) = c("foo" , "bar" , "baz" )
rownames(m) = c("oone", "twoo", "thri")

t <- as.table(m)

t
#      foo bar baz
# oone   5   9   1
# twoo   1   2   5
# thri   3   8   7
