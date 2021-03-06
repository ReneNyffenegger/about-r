# Possible values returned by typeof and what they are {
# ----------------------------------------------------
#
#    Compare http://cran.r-project.org/doc/manuals/R-lang.pdf, Chapter 2 «Objects»
# 
# 
#      "NULL"         NULL
#      "symbol"       a variable name
#      "pairlist"     a pairlist object (mainly internal)
#      "closure"      a function
#      "environment"  an environment
#      "promise"      an object used to implement lazy evaluation
#      "language"     an R language construct
#      "special"      an internal function that does not evaluate its arguments
#      "builtin"      an internal function that evaluates its arguments
#      "char"         a ‘scalar’ string object (internal only)                                 ***
#      "logical"      a vector containing logical values
#      "integer"      a vector containing integer values
#      "double"       a vector containing real values
#      "complex"      a vector containing complex values
#      "character"    a vector containing character values
#      "..."          the special variable length argument                                     ***
#      "any"          a special type that matches all types: there are no objects of this type
#      "expression"   an expression object
#      "list"         a list
#      "bytecode"     byte code (internal only)                                                ***
#      "externalptr"  an external pointer object
#      "weakref"      a weak reference object
#      "raw"          a vector containing bytes
#      "S4"           an S4 object which is not a simple object
# 
#   *** Users cannot easily get hold of objects of these types.
# }
#
# Compare with -> mode and -> ../dataTypes/vector_types.R

typeof(42)
# [1] "double"

typeof("foo")
# [1] "character"

typeof(2+4i)
# [1] "complex"

typeof(as.Date("2014-06-25"))
# [1] double

typeof(c(1,2,3))
# [1] "double"

typeof(vector())
# [1] "logical" 

typeof(factor(c(1,2,3)))
# [1] "integer"

typeof(TRUE)
# [1] "logical"

typeof(typeof)
# [1] "closure"

typeof(NA)
# [1] "logical"

typeof(NULL)
# [1] "NULL"

typeof(+Inf)
# [1] "double"

typeof(table(c("Foo", "Bar", "Baz")))
# [1] "integer"

typeof(data.frame())
# [1] "list"

data <- read.csv("data.csv")
typeof(data)
# [1] "list"

typeof(list (c('foo', 'bar', 'baz'), c(11, 27, 39, 47, 51)))
# [1] "list"

typeof( quote(z<-x*y))
# [1] "language"

x<-1:5
y<-3+x*4
typeof( x~y )
# [1] "language"

typeof( function(x) {x*x} )
# [1] "closure"

typeof(return)
# [1] "special"

typeof(as.name('foo'));
# [1] "symbol"
