class(NA)
# [1] "logical"

class("foo")
# [1] "character"

class(letters[1:5])
# [1] "character"

class(data.frame(c1=1:2, c2=letters[1:2]))
# [1] "data.frame"

class(noquote("foo"))
# [1] "noquote"
