rl <- readLines('readLines.R')

for (r in seq_along(rl)) {
  print (paste("line", r, "is", rl[r]))
}
