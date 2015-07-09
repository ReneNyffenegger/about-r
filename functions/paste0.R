#
#   paste0(...., collapse) is the equivalent of paste(...., sep = "", collapse)
#

paste0(c('foo', 'bar', 'baz'), 1:5, collapse="/")
# [1] "foo1/bar2/baz3/foo4/bar5"
