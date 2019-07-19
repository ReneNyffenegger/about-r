cat(
  paste0(
    sprintf('%s - %d', c('foo','bar', 'baz'), 3:8),
    collapse="\n"
  )
)
#
# foo - 3
# bar - 4
# baz - 5
# foo - 6
# bar - 7
# baz - 8
