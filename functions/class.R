class(NA)
# [1] "logical"

class(as.Date('2015-03-12'))
# [1] "Date"

class("foo")
# [1] "character"

class(letters[1:5])
# [1] "character"

class(data.frame(c1=1:2, c2=letters[1:2]))
# [1] "data.frame"

class(noquote("foo"))
# [1] "noquote"

class( typeof )
# [1] "function"

class( function(x) { x*x} )
# [1] "function"

x<-1:5
y<-x^2
class( x~y )
# [1] "formula"
